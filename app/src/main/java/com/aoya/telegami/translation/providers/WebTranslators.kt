package com.aoya.telegami.translation.providers

import com.aoya.telegami.translation.*
import com.google.gson.JsonParser
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import okhttp3.HttpUrl.Companion.toHttpUrl
import okhttp3.Request
import java.util.UUID

class GoogleTranslator(private val http: TranslationHttp) : TranslationProvider {
    override val id = "google"
    override suspend fun translate(request: TranslationRequest): TranslationText {
        if (request.content.text.length > 5_000) throw TranslationException(TranslationError.TOO_LONG)
        val url = "https://translate.google.com/translate_a/single".toHttpUrl().newBuilder()
            .addQueryParameter("dj", "1").addQueryParameter("client", "at")
            .addQueryParameter("sl", request.fromLanguage).addQueryParameter("tl", request.toLanguage)
            .addQueryParameter("dt", "t").addQueryParameter("q", request.content.text).build()
        val json = JsonParser.parseString(http.execute(Request.Builder().url(url)
            .header("User-Agent", "GoogleTranslate/6.14.0.04.343003216 (Linux; U; Android 10)").build())).asJsonObject
        val text = json.getAsJsonArray("sentences").joinToString("") { it.asJsonObject["trans"]?.asString.orEmpty() }
        if (text.isBlank()) throw TranslationException(TranslationError.INVALID_RESPONSE)
        return TranslationText(text)
    }
}

class YandexTranslator(private val http: TranslationHttp) : TranslationProvider {
    override val id = "yandex"
    private val session = uuid()
    override suspend fun translate(request: TranslationRequest): TranslationText {
        val url = "https://translate.yandex.net/api/v1/tr.json/translate".toHttpUrl().newBuilder()
            .addQueryParameter("srv", "android").addQueryParameter("uuid", session)
            .addQueryParameter("id", "${uuid()}-9-0").build()
        fun language(code: String) = when (code.lowercase()) { "zh-cn", "zh-hans", "zh-tw", "zh-hant" -> "zh"; else -> code }
        val language = if (request.fromLanguage == "auto") language(request.toLanguage)
            else "${language(request.fromLanguage)}-${language(request.toLanguage)}"
        val json = JsonParser.parseString(http.execute(Request.Builder().url(url)
            .header("User-Agent", "Mozilla/5.0")
            .post(TranslationHttp.form("text" to request.content.text, "lang" to language)).build())).asJsonObject
        if (json["code"]?.asInt != 200) throw TranslationException(TranslationError.UNAVAILABLE)
        val text = json.getAsJsonArray("text").joinToString("") { it.asString }
        if (text.isBlank()) throw TranslationException(TranslationError.INVALID_RESPONSE)
        return TranslationText(text)
    }
    private fun uuid() = UUID.randomUUID().toString().replace("-", "")
}

/** Ephemeral tokens are fetched per process, never written to preferences. */
class BingTranslator(private val http: TranslationHttp) : TranslationProvider {
    override val id = "bing"
    private data class Session(val host: String, val ig: String, val iid: String, val key: String, val token: String, val expiry: Long)
    private val mutex = Mutex()
    private var session: Session? = null

    override suspend fun translate(request: TranslationRequest): TranslationText {
        val data = mutex.withLock {
            session?.takeIf { it.expiry > System.nanoTime() } ?: fetch().also { session = it }
        }
        val url = "https://${data.host}/ttranslatev3".toHttpUrl().newBuilder()
            .addQueryParameter("isVertical", "1").addQueryParameter("IG", data.ig)
            .addQueryParameter("IID", data.iid).build()
        val json = JsonParser.parseString(http.execute(Request.Builder().url(url)
            .header("User-Agent", AGENT).header("Referer", "https://${data.host}/translator")
            .post(TranslationHttp.form("fromLang" to if (request.fromLanguage == "auto") "auto-detect" else request.fromLanguage,
                "to" to language(request.toLanguage), "text" to request.content.text, "token" to data.token, "key" to data.key)).build()))
        val text = json.asJsonArray[0].asJsonObject.getAsJsonArray("translations")[0].asJsonObject["text"].asString
        if (text.isBlank()) throw TranslationException(TranslationError.INVALID_RESPONSE)
        return TranslationText(text)
    }

    private suspend fun fetch(): Session {
        var host = "www.bing.com"
        val html = try {
            http.execute(Request.Builder().url(PAGE).header("User-Agent", AGENT).build())
        } catch (e: TranslationException) {
            if (e.httpStatus !in 301..308) throw e
            // A known regional endpoint only; never follow an arbitrary credential-bearing redirect.
            host = "cn.bing.com"
            http.execute(Request.Builder().url("https://$host/translator").header("User-Agent", AGENT).build())
        }
        fun extract(regex: String) = Regex(regex).find(html)?.groupValues?.get(1)
            ?: throw TranslationException(TranslationError.UNAVAILABLE)
        val values = JsonParser.parseString(extract("params_AbusePreventionHelper\\s*=\\s*(\\[[^\\]]+\\])")).asJsonArray
        val duration = values[2].asLong.coerceIn(1_000, 600_000)
        return Session(host, extract("IG:\\s*\"([^\"]+)\""), extract("data-iid=\"([^\"]+)\""),
            values[0].asString, values[1].asString, System.nanoTime() + duration * 1_000_000)
    }

    companion object {
        private const val PAGE = "https://www.bing.com/translator"
        private const val AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36"
        fun language(code: String) = when (code.lowercase()) { "zh", "zh-cn", "zh-hans" -> "zh-Hans"; "zh-tw", "zh-hant" -> "zh-Hant"; else -> code }
    }
}
