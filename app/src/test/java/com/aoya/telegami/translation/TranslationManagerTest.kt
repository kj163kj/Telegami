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
}
