package com.aoya.telegami.translation

import com.aoya.telegami.translation.providers.*
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.Protocol
import okhttp3.Response
import okhttp3.ResponseBody.Companion.toResponseBody
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test

class WebTranslatorsTest {
    private val request = TranslationRequest(TranslationText("Hello world"), "zh-CN")

    @Test fun googleConcatenatesSegments() = runBlocking {
        val http = fake { ResponseData("""{"sentences":[{"trans":"one"},{"trans":"two"}]}""") }
        assertEquals("onetwo", GoogleTranslator(http).translate(request).text)
    }

    @Test fun yandexSessionErrorIsNotTranslation() = runBlocking {
        try {
            YandexTranslator(fake { ResponseData("""{"code":405,"message":"Session is invalid"}""") }).translate(request)
            fail()
        } catch (e: TranslationException) { assertEquals(TranslationError.UNAVAILABLE, e.code) }
    }

    @Test fun bingFetchesDynamicParameters() = runBlocking {
        var pageCalls = 0
        var posts = 0
        val http = fake { req ->
            if (req.url.encodedPath == "/translator") {
                pageCalls++
                ResponseData("""IG:"dynamic-ig" data-iid="translator.1" params_AbusePreventionHelper = [123,"ephemeral",60000];""")
            } else {
                posts++
                assertEquals("dynamic-ig", req.url.queryParameter("IG"))
                ResponseData("""[{"translations":[{"text":"translated"}]}]""")
            }
        }
        val provider = BingTranslator(http)
        assertEquals("translated", provider.translate(request).text)
        provider.translate(request)
        assertEquals(1, pageCalls)
        assertEquals(2, posts)
    }

    @Test fun statusesAreSanitized() = runBlocking {
        for ((status, expected) in listOf(401 to TranslationError.AUTH, 429 to TranslationError.RATE_LIMIT, 500 to TranslationError.SERVER)) {
            try { GoogleTranslator(fake { ResponseData("sensitive upstream body", status) }).translate(request); fail() }
            catch (e: TranslationException) {
                assertEquals(expected, e.code)
                assertFalse(e.message.orEmpty().contains("sensitive"))
            }
        }
    }

    @Test fun livePublicSources() = runBlocking {
        assumeTrue(System.getenv("TELEGAMI_TRANSLATION_LIVE") == "1")
        val http = TranslationHttp()
        val samples = listOf("你好，世界。" to "en", "Hello, world." to "zh-CN", "こんにちは、世界。" to "zh-CN", "你好，世界。" to "ja")
        for (provider in listOf(GoogleTranslator(http), YandexTranslator(http), BingTranslator(http))) {
            for ((text, target) in samples) {
                try {
                    val translated = provider.translate(TranslationRequest(TranslationText(text), target)).text
                    println("LIVE ${provider.id} auto->$target OK: $translated")
                    assertTrue(translated.isNotBlank())
                } catch (e: Exception) {
                    println("LIVE ${provider.id} auto->$target FAILED: ${if (e is TranslationException) e.code else "INVALID_RESPONSE"}")
                }
            }
        }
    }

    data class ResponseData(val text: String, val status: Int = 200)
    private fun fake(reply: (okhttp3.Request) -> ResponseData) = TranslationHttp(OkHttpClient.Builder().addInterceptor { chain ->
        val response = reply(chain.request())
        Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(response.status).message("test")
            .body(response.text.toResponseBody()).build()
    }.build())
}
