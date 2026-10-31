package com.aoya.telegami.hooks.messages

import com.aoya.telegami.data.HistoryContent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class HistoryContentTest {
    @Test fun deduplicatesOnlyAdjacentVersions() {
        assertEquals(listOf("A", "B", "A"), HistoryContent.appendHashes(null, listOf("A", "A", "B", "B", "A")))
        assertEquals(emptyList<String>(), HistoryContent.appendHashes("A", listOf("A", "A")))
    }

    @Test fun entityOnlyChangesAndFieldBoundariesAffectHashes() {
        fun hash(text: String, entities: String) = HistoryContent.hash(text.toByteArray(), entities.toByteArray())
        assertNotEquals(hash("same", "bold"), hash("same", "italic"))
        assertNotEquals(hash("ab", "c"), hash("a", "bc"))
        assertEquals(hash("same", "bold"), hash("same", "bold"))
    }
}
