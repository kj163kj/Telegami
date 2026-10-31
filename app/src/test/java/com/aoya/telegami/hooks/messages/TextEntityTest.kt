package com.aoya.telegami.hooks.messages

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class TextEntityTest {
    @Test fun rejectsInvalidAndOverflowingRanges() {
        assertFalse(TextEntity("", -1, 2).fits(10))
        assertFalse(TextEntity("", 2, Int.MAX_VALUE).fits(10))
        assertFalse(TextEntity("", 9, 2).fits(10))
        assertFalse(TextEntity("", 0, 0).fits(10))
        assertTrue(TextEntity("", 2, 8).fits(10))
        // Telegram and Android spans both use UTF-16 offsets.
        assertTrue(TextEntity("", 1, 2).fits("a\uD83D\uDE00b".length))
    }
}
