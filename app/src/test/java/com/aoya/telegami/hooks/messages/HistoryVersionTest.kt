package com.aoya.telegami.hooks.messages

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.assertEquals
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

    @Test fun oneEditDisplaysOriginalAndLatestOnlyOnce() {
        val original = version.copy(text = "A", contentHash = "A")
        val edited = version.copy(text = "B", contentHash = "B", editDate = 101)
        val current = edited.copy(current = true)
        val result = HistoryVersionTimeline.withCurrent(listOf(original, edited), current)
        assertEquals(listOf("A", "B"), result.map { it.text })
        assertTrue(result.last().current)
        assertEquals(1, result.count { it.current })
    }

    @Test fun formatOnlyChangesAndNonAdjacentReversionsAreNotMerged() {
        val original = version.copy(contentHash = "plain")
        val bold = version.copy(contentHash = "bold", editDate = 101)
        val reverted = original.copy(current = true, editDate = 102)
        assertEquals(2, HistoryVersionTimeline.withCurrent(listOf(original), bold).size)
        assertEquals(3, HistoryVersionTimeline.withCurrent(listOf(original, bold), reverted).size)
    }

    @Test fun currentWithoutHistoryIsShownAndStaleCurrentIsNotAppended() {
        val current = version.copy(contentHash = "A", editDate = 101, current = true)
        assertEquals(listOf(current), HistoryVersionTimeline.withCurrent(emptyList(), current))
        val newer = version.copy(contentHash = "B", editDate = 102)
        assertEquals(listOf(newer), HistoryVersionTimeline.withCurrent(listOf(newer), current))
    }
}
