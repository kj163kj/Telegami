package com.aoya.telegami.translation.providers

import com.aoya.telegami.translation.*
import com.aoya.telegami.translation.llm.LlmConfig
import com.aoya.telegami.translation.llm.LlmPromptManager
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody

/** Minimal common Chat Completions protocol; no vendor-specific optional parameters. */
class OpenAICompatibleTranslator(private val http: TranslationHttp, private val config: () -> LlmConfig) : TranslationProvider {
    override val id = "openai_compatible"

    override suspend fun translate(request: TranslationRequest): TranslationText = guarded {
        val c = config()
        val prompts = LlmPromptManager.render(c, request.content.text, request.toLanguage)
        val messages = JsonArray().apply {
            add(message("system", prompts.system))
            add(message("user", prompts.user))
        }
        TranslationText(complete(c, messages))
    }

    suspend fun listModels(): List<String> = guarded {
        val c = config()
        val req = authorize(Request.Builder().url(c.endpoint("models", requireModel = false)), c).get().build()
        val models = JsonParser.parseString(http.execute(req)).asJsonObject.getAsJsonArray("data")
            .map { it.asJsonObject["id"].asString }.filter { it.isNotBlank() }.distinct().sorted()
        if (models.isEmpty()) throw TranslationException(TranslationError.INVALID_RESPONSE)
        models
    }

    /** A real completion tests model permission; a successful /models alone is insufficient. */
    suspend fun testConnection(): Boolean = guarded {
        complete(config(), JsonArray().apply { add(message("user", "Reply with the single word OK.")) }).isNotBlank()
    }

    private suspend fun complete(c: LlmConfig, messages: JsonArray): String {
        val json = JsonObject().apply { addProperty("model", c.model.trim()); add("messages", messages); addProperty("stream", false) }
        val req = authorize(Request.Builder().url(c.endpoint("chat/completions")), c)
            .post(json.toString().toRequestBody("application/json; charset=utf-8".toMediaType())).build()
        val choice = JsonParser.parseString(http.execute(req)).asJsonObject.getAsJsonArray("choices")[0].asJsonObject
        if (choice["finish_reason"]?.asString == "length") throw TranslationException(TranslationError.INVALID_RESPONSE)
        val result = choice.getAsJsonObject("message")["content"]
        if (result == null || !result.isJsonPrimitive || !result.asJsonPrimitive.isString || result.asString.isBlank())
            throw TranslationException(TranslationError.INVALID_RESPONSE)
        return result.asString
    }

    private fun authorize(builder: Request.Builder, c: LlmConfig): Request.Builder = builder.apply {
        header("Accept", "application/json")
        if (c.apiKey.isNotBlank()) header("Authorization", "Bearer ${c.apiKey}")
    }

    private fun message(role: String, text: String) = JsonObject().apply { addProperty("role", role); addProperty("content", text) }

    private suspend fun <T> guarded(block: suspend () -> T): T = withContext(Dispatchers.IO) {
        try { withTimeout(30_000) { block() } }
        catch (e: kotlinx.coroutines.TimeoutCancellationException) { throw TranslationException(TranslationError.TIMEOUT) }
        catch (e: CancellationException) { throw e }
        catch (e: TranslationException) { throw e }
        catch (_: Exception) { throw TranslationException(TranslationError.INVALID_RESPONSE) }
    }
}
