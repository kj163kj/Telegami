package com.aoya.telegami.translation

import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test

class TranslationManagerTest {
    @Test fun stableIdsAndSecretFreeExport() {
        assertEquals(setOf("google", "yandex", "bing", "telegram_native", "openai_compatible"), TranslationProviderRegistry.ids)
        assertFalse(TranslationSettings.export(mapOf(TranslationSettings.AI_KEY to "secret")).containsKey(TranslationSettings.AI_KEY))
    }

    @Test fun cacheAndForceAndAccountIsolation() = runBlocking {
        var calls = 0
        val provider = object : TranslationProvider {
            override val id = "google"
            override suspend fun translate(request: TranslationRequest): TranslationText { calls++; return TranslationText("translated") }
        }
        val manager = TranslationManager(listOf(provider)) { TranslationConfig() }
        val request = TranslationRequest(TranslationText("hello"), "zh-CN")
        assertFalse(manager.translate(request).cached)
        assertTrue(manager.translate(request).cached)
        manager.translate(request, force = true)
        manager.translate(request.copy(account = 1))
        assertEquals(3, calls)
    }

    @Test fun timeoutIsTyped() = runBlocking {
        val provider = object : TranslationProvider {
            override val id = "google"
            override suspend fun translate(request: TranslationRequest): TranslationText { delay(10_000); error("unreachable") }
        }
        val manager = TranslationManager(listOf(provider)) { TranslationConfig(timeoutMillis = 20) }
        try { manager.translate(TranslationRequest(TranslationText("hello"), "zh")); fail() }
        catch (e: TranslationException) { assertEquals(TranslationError.TIMEOUT, e.code) }
    }

    @Test fun providerFailureNeverSendsTextToAnotherSource() = runBlocking {
        var fallbackCalls = 0
        val failed = object : TranslationProvider {
            override val id = "openai_compatible"
            override suspend fun translate(request: TranslationRequest): TranslationText = throw TranslationException(TranslationError.AUTH)
        }
        val fallback = object : TranslationProvider {
            override val id = "google"
            override suspend fun translate(request: TranslationRequest): TranslationText { fallbackCalls++; return TranslationText("wrong") }
        }
        val manager = TranslationManager(listOf(failed, fallback)) { TranslationConfig(providerId = "openai_compatible") }
        try { manager.translate(TranslationRequest(TranslationText("private"), "en")); fail() }
        catch (e: TranslationException) { assertEquals(TranslationError.AUTH, e.code) }
        assertEquals(0, fallbackCalls)
    }

    @Test fun emptyOutputIsAnErrorAndInvalidEntityRangesAreDropped() = runBlocking {
        var output = TranslationText("")
        val provider = object : TranslationProvider {
            override val id = "google"
            override suspend fun translate(request: TranslationRequest) = output
        }
        val manager = TranslationManager(listOf(provider)) { TranslationConfig() }
        val request = TranslationRequest(TranslationText("hello"), "en")
        try { manager.translate(request); fail() }
        catch (e: TranslationException) { assertEquals(TranslationError.INVALID_RESPONSE, e.code) }
        output = TranslationText("hello", listOf(TranslationEntity("Bold", -1, 5)))
        val result = manager.translate(request)
        assertTrue(result.formattingFallback)
        assertTrue(result.content.entities.isEmpty())
    }
}
