package com.aoya.telegami.translation

import org.junit.Assert.*
import org.junit.Test

/** Requires an Android device: do not count compilation as a Keystore runtime test. */
class TranslationSecretVaultTest {
    @Test fun ciphertextIsRandomizedAndAuthenticated() {
        val sample = "instrumentation-placeholder-not-a-service-key"
        val first = TranslationSecretVault.encrypt(sample)
        val second = TranslationSecretVault.encrypt(sample)
        assertNotEquals(first, second)
        assertFalse(first.contains(sample))
        assertEquals(sample, TranslationSecretVault.decrypt(first))
        val damaged = first.dropLast(4) + "AAAA"
        try { TranslationSecretVault.decrypt(damaged); fail() }
        catch (e: TranslationException) { assertEquals(TranslationError.UNCONFIGURED, e.code) }
    }
}
