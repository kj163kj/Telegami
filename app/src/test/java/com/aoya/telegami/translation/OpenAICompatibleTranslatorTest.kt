package com.aoya.telegami.translation

import com.aoya.telegami.translation.llm.LlmConfig
import com.aoya.telegami.translation.providers.OpenAICompatibleTranslator
import com.google.gson.JsonParser
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.Protocol
import okhttp3.Response
import okhttp3.ResponseBody.Companion.toResponseBody
import okio.Buffer
import org.junit.Assert.*
import org.junit.Test

class OpenAICompatibleTranslatorTest {
    private val config = LlmConfig("https://example.test/custom/v1/", "test-not-a-real-key", "manual-model")
    private fun provider(status: Int = 200, body: String, inspect: (okhttp3.Request) -> Unit = {}) =
        OpenAICompatibleTranslator(TranslationHttp(OkHttpClient.Builder().addInterceptor { chain ->
            inspect(chain.request())
            Response.Builder().request(chain.request()).code(status).message("test").protocol(Protocol.HTTP_1_1)
                .body(body.toResponseBody()).build()
        }.build())) { config }

    @Test fun completionProtocol() = runBlocking {
        val result = provider(body = """{"choices":[{"message":{"content":"translated"},"finish_reason":"stop"}]}""") { request ->
            assertEquals("/custom/v1/chat/completions", request.url.encodedPath)
            assertEquals("Bearer test-not-a-real-key", request.header("Authorization"))
            assertEquals("POST", request.method)
            val buffer = Buffer(); request.body!!.writeTo(buffer)
            val json = JsonParser.parseString(buffer.readUtf8()).asJsonObject
            assertEquals("manual-model", json["model"].asString)
            assertEquals("system", json.getAsJsonArray("messages")[0].asJsonObject["role"].asString)
        }.translate(TranslationRequest(TranslationText("source"), "en"))
        assertEquals("translated", result.text)
        assertFalse(config.toString().contains("test-not-a-real-key"))
    }

    @Test fun modelDiscoveryAndConnectionTest() = runBlocking {
        assertEquals(listOf("a", "b"), provider(body = """{"data":[{"id":"b"},{"id":"a"},{"id":"a"}]}""") {
            assertEquals("GET", it.method); assertEquals("/custom/v1/models", it.url.encodedPath)
        }.listModels())
        assertTrue(provider(body = """{"choices":[{"message":{"content":"OK"}}]}""").testConnection())
    }

    @Test fun errorsAndMalformedResponses() = runBlocking {
        for ((status, expected) in listOf(400 to TranslationError.UNAVAILABLE, 401 to TranslationError.AUTH, 404 to TranslationError.UNAVAILABLE, 429 to TranslationError.RATE_LIMIT, 500 to TranslationError.SERVER)) {
            try { provider(status, "private body").testConnection(); fail() }
            catch (e: TranslationException) { assertEquals(expected, e.code); assertFalse(e.toString().contains("private")) }
        }
        for (body in listOf("not json", "{}", """{"choices":[]}""", """{"choices":[{"message":{"content":null}}]}""", """{"choices":[{"message":{"content":"partial"},"finish_reason":"length"}]}""")) {
            try { provider(body = body).testConnection(); fail() }
            catch (e: TranslationException) { assertEquals(TranslationError.INVALID_RESPONSE, e.code) }
        }
        try { provider(body = "{}").listModels(); fail() }
        catch (e: TranslationException) { assertEquals(TranslationError.INVALID_RESPONSE, e.code) }
    }

    @Test fun endpointValidation() {
        for (url in listOf("http://example.test/v1", "https://user:pass@example.test/v1", "https://example.test/v1?key=secret", "invalid")) {
            try { LlmConfig(url, "key", "model").endpoint("models"); fail() }
            catch (e: TranslationException) { assertEquals(TranslationError.INVALID_CONFIG, e.code) }
        }
        assertEquals("/v1/models", LlmConfig("http://127.0.0.1:11434/v1", "", "model").endpoint("models").encodedPath)
    }
}
