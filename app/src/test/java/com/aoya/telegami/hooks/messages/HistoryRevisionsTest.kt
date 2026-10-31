package com.aoya.telegami.hooks.messages

import com.aoya.telegami.data.HistoryRevisions
import com.aoya.telegami.data.MessageHistoryEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class HistoryRevisionsTest {
    private fun entry(text: String, edit: Int = 0, version: Long = 1) = MessageHistoryEntry(
        1, -2, 3, version, 1000, 100, edit, text, "[]", byteArrayOf(),
        "none", "{}", byteArrayOf(), byteArrayOf(), "legacy-$text-$version", null,
    )

    @Test fun legacyEmptyMediaDuplicatesAreHiddenWithoutChangingStoredRows() {
        val original = entry("A")
        val duplicate = original.copy(versionId = 2, mediaType = "TL_messageMediaEmpty", contentHash = "different-old-hash")
        val rows = listOf(original, duplicate, entry("B", 101, 3))
        val visible = HistoryRevisions.visible(rows)
        assertEquals(listOf("A", "B"), visible.map { it.messageText })
        assertEquals(listOf(1L, 3L), visible.map { it.versionId })
        assertEquals(3, rows.size)
        assertEquals("different-old-hash", rows[1].contentHash)
    }

    @Test fun oldCallbackReplayIsHiddenButRealReversionsRemain() {
        val rows = listOf(entry("A"), entry("B", 101, 2), entry("A", 0, 3), entry("B", 101, 4), entry("A", 102, 5))
        assertEquals(listOf("A", "B", "A"), HistoryRevisions.visible(rows).map { it.messageText })
        val sameSecond = listOf(entry("A", 101), entry("B", 101, 2), entry("A", 101, 3))
        assertEquals(3, HistoryRevisions.visible(sameSecond).size)
    }

    @Test fun emptyAndTrimmedHistoriesAreHandledWithoutInventingOriginals() {
        assertTrue(HistoryRevisions.visible(emptyList()).isEmpty())
        assertEquals(listOf(8L), HistoryRevisions.visible(listOf(entry("B", 101, 8))).map { it.versionId })
    }

    @Test fun legacyOriginalReplayAroundOptimisticAndAcknowledgedEditsIsHidden() {
        val rows = listOf(entry("A"), entry("B", 0, 2), entry("A", 0, 3), entry("B", 101, 4))
        assertEquals(listOf("A", "B"), HistoryRevisions.visible(rows).map { it.messageText })
    }

    @Test(expected = IllegalArgumentException::class)
    fun mixedAccountRowsAreNotMerged() {
        HistoryRevisions.visible(listOf(entry("A"), entry("A").copy(accountId = 9)))
    }
}
