package com.aoya.telegami.translation

import org.junit.Assert.*
import org.junit.Test

class TranslationSelectionTest {
    @Test fun unconfiguredAiAndUnknownProviderAreNeverUsable() {
        assertFalse(TranslationSelection.allowed("openai_compatible", false))
        assertTrue(TranslationSelection.allowed("openai_compatible", true))
        assertTrue(TranslationSelection.allowed("google", false))
        assertFalse(TranslationSelection.allowed("unknown", true))
    }
}
