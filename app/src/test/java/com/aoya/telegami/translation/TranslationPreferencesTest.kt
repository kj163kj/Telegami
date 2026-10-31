package com.aoya.telegami.translation

import org.junit.Assert.*
import org.junit.Test

class TranslationPreferencesTest {
    @Test fun callerMustMatchBothOfficialPackageAndCertificate() {
        val cert = TranslationCallerPolicy.certificates.single()
        assertTrue(TranslationCallerPolicy.accepts(mapOf("org.telegram.messenger.web" to setOf(cert))))
        assertFalse(TranslationCallerPolicy.accepts(mapOf("org.telegram.messenger.web" to setOf("wrong"))))
        assertFalse(TranslationCallerPolicy.accepts(mapOf("org.example.spoof" to setOf(cert))))
        assertFalse(TranslationCallerPolicy.accepts(emptyMap()))
    }

    @Test fun defaultsAreGoogleAndAiUnconfigured() {
        val config = TranslationPreferences.settings({ _, default -> default }, { _, default -> default })
        assertEquals("google", config.config.providerId)
        assertFalse(config.aiConfigured)
        assertTrue(config.config.keepFormatting)
        assertTrue(config.enabled)
    }

    @Test fun exportNeverContainsKeyEvenIfCallerSuppliesIt() {
        val exported = TranslationSettings.export(mapOf(TranslationSettings.AI_KEY to "keystore:v1:private", TranslationSettings.AI_MODEL to "m"))
        assertEquals(mapOf(TranslationSettings.AI_MODEL to "m"), exported)
    }
}
