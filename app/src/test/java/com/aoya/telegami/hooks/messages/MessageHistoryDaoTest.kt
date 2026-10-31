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
}
