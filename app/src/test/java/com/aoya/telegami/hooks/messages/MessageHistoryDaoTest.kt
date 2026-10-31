package com.aoya.telegami.hooks.messages

import com.aoya.telegami.data.MessageHistoryDao
import com.aoya.telegami.data.MessageHistoryEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MessageHistoryDaoTest {
    private class MemoryDao : MessageHistoryDao() {
        val rows = mutableListOf<MessageHistoryEntry>()
        override fun read(accountId: Long, dialogId: Long, messageId: Int) =
            rows.filter { it.accountId == accountId && it.dialogId == dialogId && it.messageId == messageId }.sortedBy { it.versionId }
        override fun latest(accountId: Long, dialogId: Long, messageId: Int) = read(accountId, dialogId, messageId).lastOrNull()
        override fun insert(entry: MessageHistoryEntry) { rows.add(entry) }
        override fun trim(accountId: Long, dialogId: Long, messageId: Int, maxVersions: Int) {
            rows.removeAll(read(accountId, dialogId, messageId).dropLast(maxVersions).toSet())
        }
        override fun expire(before: Long) { rows.removeAll { it.capturedAt < before } }
        override fun referencedPreviews() = rows.mapNotNull { it.previewPath }.distinct()
    }
    private fun entry(hash: String, edit: Int = 0, account: Long = 1, dialog: Long = -2, id: Int = 3) =
        MessageHistoryEntry(
            account, dialog, id, 0, 1000, 100, edit, hash, "[]", byteArrayOf(),
            "none", "{}", byteArrayOf(), byteArrayOf(), hash, null,
        )

    @Test fun repeatedBatchDoesNotCreateFakeRevisionsAndReversionIsKept() {
        val dao = MemoryDao()
        dao.append(listOf(entry("A"), entry("B", 101)), 100)
        dao.append(listOf(entry("A"), entry("B", 101)), 100)
        dao.append(listOf(entry("B", 101), entry("A", 102)), 100)
        assertEquals(listOf("A", "B", "A"), dao.rows.map { it.contentHash })
        assertEquals(listOf(1L, 2L, 3L), dao.rows.map { it.versionId })
    }

    @Test fun versionTrimmingDoesNotCrossAccountDialogOrMessage() {
        val dao = MemoryDao()
        dao.append(listOf(entry("otherAccount", account = 9)), 2)
        dao.append(listOf(entry("otherDialog", dialog = -4)), 2)
        dao.append(listOf(entry("otherMessage", id = 5)), 2)
        dao.append(listOf(entry("A"), entry("B", 101)), 2)
        dao.append(listOf(entry("B", 101), entry("C", 102)), 2)
        assertEquals(listOf(2L, 3L), dao.read(1, -2, 3).map { it.versionId })
        assertEquals(5, dao.rows.size)
    }

    @Test fun staleUpdateIsIgnoredAndExpiryRemovesOldRows() {
        val dao = MemoryDao()
        dao.append(listOf(entry("A", 101)), 100)
        dao.append(listOf(entry("stale", 100)), 100)
        assertEquals(listOf("A"), dao.rows.map { it.contentHash })
        dao.expire(1001)
        assertTrue(dao.rows.isEmpty())
    }

    @Test fun recoversMissedIntermediateVersionWhenContentReverts() {
        val dao = MemoryDao()
        dao.append(listOf(entry("A")), 100)
        // Last known A, but native DB contains a previously missed B before a new A arrives.
        dao.append(listOf(entry("B", 101), entry("A", 102)), 100)
        assertEquals(listOf("A", "B", "A"), dao.rows.map { it.contentHash })
        dao.append(listOf(entry("B", 101), entry("A", 102)), 100)
        assertEquals(3, dao.rows.size)
    }

    @Test(expected = IllegalArgumentException::class)
    fun refusesMixedScopesInOneTransaction() {
        MemoryDao().append(listOf(entry("A"), entry("B", account = 2)), 100)
    }

    @Test fun ingestionAndEditsCaptureWithoutOpeningViewerIncludingMissingNativeRow() {
        val dao = MemoryDao()
        var native: MessageHistoryEntry? = null
        val pipeline = HistoryCapturePipeline<MessageHistoryEntry, MessageHistoryEntry>(
            readOld = { _: MessageHistoryEntry -> native }, snapshot = { it },
            persist = { dao.append(it, 100) }, failed = { throw AssertionError(it) },
        )
        val a = entry("initial caption")
        pipeline.capture(listOf(a))
        native = a
        val b = entry("edited caption", 101)
        pipeline.capture(listOf(b))
        native = null // Native cache may be evicted; the independent initial snapshot remains.
        pipeline.capture(listOf(entry("formatted caption", 102)))
        pipeline.capture(listOf(entry("formatted caption", 102)))
        assertEquals(listOf("initial caption", "edited caption", "formatted caption"), dao.rows.map { it.contentHash })
    }

    @Test fun corruptOldRowAndOneFailedWriteDoNotDiscardOtherMessages() {
        val dao = MemoryDao()
        var errors = 0
        val pipeline = HistoryCapturePipeline<MessageHistoryEntry, MessageHistoryEntry>(
            readOld = { _: MessageHistoryEntry -> error("corrupt native TL") }, snapshot = { it },
            persist = { rows: List<MessageHistoryEntry> ->
                if (rows.first().messageId == 4) error("database unavailable")
                dao.append(rows, 100)
            },
            failed = { errors++ },
        )
        val counts = pipeline.capture(listOf(entry("A"), entry("B", id = 4), entry("C", account = 2)))
        assertEquals(4, errors)
        assertEquals(2, counts.snapshots)
        assertEquals(listOf("A", "C"), dao.rows.map { it.contentHash })
    }

    @Test fun autoDeleteRetentionDoesNotExcludeOrdinaryHistory() {
        assertTrue(!MessageSendPolicy.isSelfDestructing(0, 0, 86400))
        assertTrue(MessageSendPolicy.isSelfDestructing(0, 10, 86400))
    }
}
