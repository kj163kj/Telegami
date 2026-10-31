package com.aoya.telegami.hooks.messages

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class HistoryVersionTest {
    private val version = HistoryVersion("#2 edited", "2026-10-31", "captured 10:00", "Caption ABC", emptyList(), "Photo", null)

    @Test
    fun searchesTextLabelsDatesAndMediaCaseInsensitively() {
        listOf("caption", " abc ", "PHOTO", "#2", "2026-10", "captured").forEach {
            assertTrue(it, version.matches(it))
        }
    }

    @Test
    fun blankQueryRestoresAllVersionsAndNonmatchesAreHidden() {
        assertTrue(version.matches(""))
        assertTrue(version.matches("  "))
        assertFalse(version.matches("missing"))
    }
}
