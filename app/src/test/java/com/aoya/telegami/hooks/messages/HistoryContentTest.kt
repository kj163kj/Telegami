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

    @Test fun noMediaUsesOneFingerprintRegardlessOfTlWrapper() {
        fun hash(type: String, metadata: String, entities: String = "bold") =
            HistoryContent.contentHash("caption", entities.toByteArray(), type, metadata)
        assertEquals(hash("none", "{}"), hash("TL_messageMediaEmpty", "{\"payloadHash\":\"transport-only\"}"))
        assertNotEquals(hash("none", "{}"), hash("none", "{}", "italic"))
        assertNotEquals(hash("TL_messageMediaPhoto", "{\"photoId\":1}"), hash("TL_messageMediaPhoto", "{\"photoId\":2}"))
    }
}
