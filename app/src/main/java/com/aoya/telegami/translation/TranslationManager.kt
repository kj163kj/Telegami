package com.aoya.telegami.translation

import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout
import java.security.MessageDigest

/** One entry point; no implicit fallback to another service with private source text. */
class TranslationManager(providers: List<TranslationProvider>, private val config: () -> TranslationConfig) {
    private val providers = providers.associateBy { it.id }
    private data class Cached(val result: TranslationResult, val expires: Long)
    private val cache = object : LinkedHashMap<String, Cached>(32, .75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, Cached>?): Boolean = size > 64
    }

    init { require(this.providers.size == providers.size) }

    suspend fun translate(
        request: TranslationRequest,
        providerId: String? = null,
        force: Boolean = false,
    ): TranslationResult = withContext(Dispatchers.IO) {
        val settings = config()
        val id = providerId ?: settings.providerId
        val provider = providers[id] ?: throw TranslationException(TranslationError.UNAVAILABLE)
        if (request.content.text.isBlank()) throw TranslationException(TranslationError.INVALID_CONFIG)
        if (!request.toLanguage.matches(Regex("[A-Za-z]{2,8}([-_][A-Za-z0-9]{2,8})*")))
            throw TranslationException(TranslationError.UNSUPPORTED_LANGUAGE)
        if (request.content.text.length > 16_000) throw TranslationException(TranslationError.TOO_LONG)
        val key = digest("$id|$settings|$request")
        if (!force) synchronized(cache) {
            cache[key]?.takeIf { it.expires > System.nanoTime() }?.let { return@withContext it.result.copy(cached = true) }
        }
        try {
            val result = withTimeout(settings.timeoutMillis) {
                val content = if (settings.keepFormatting) request.content else request.content.copy(entities = emptyList())
                translateFormatted(provider, request.copy(content = content), settings.keepFormatting)
            }
            synchronized(cache) { cache[key] = Cached(result, System.nanoTime() + 300_000_000_000L) }
            result
        } catch (_: TimeoutCancellationException) {
            throw TranslationException(TranslationError.TIMEOUT)
        } catch (e: CancellationException) {
            throw e
        } catch (e: TranslationException) {
            throw e
        } catch (_: Exception) {
            // Exceptions may contain a URL, source text or credentials. Do not propagate them.
            throw TranslationException(TranslationError.INVALID_RESPONSE)
        }
    }

    private suspend fun translateFormatted(
        provider: TranslationProvider, request: TranslationRequest, keep: Boolean,
    ): TranslationResult = TranslationResult(provider.id, provider.translate(request))

    fun clearCache() = synchronized(cache) { cache.clear() }

    private fun digest(value: String) = MessageDigest.getInstance("SHA-256")
        .digest(value.toByteArray(Charsets.UTF_8)).joinToString("") { "%02x".format(it) }
}
