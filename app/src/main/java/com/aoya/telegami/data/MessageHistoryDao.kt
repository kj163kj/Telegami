package com.aoya.telegami.data

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Transaction

@Dao
abstract class MessageHistoryDao {
    @Query("SELECT * FROM MessageHistoryEntry WHERE accountId = :accountId AND dialogId = :dialogId AND messageId = :messageId ORDER BY versionId")
    abstract fun read(accountId: Long, dialogId: Long, messageId: Int): List<MessageHistoryEntry>

    @Query("SELECT * FROM MessageHistoryEntry WHERE accountId = :accountId AND dialogId = :dialogId AND messageId = :messageId ORDER BY versionId DESC LIMIT 1")
    abstract fun latest(accountId: Long, dialogId: Long, messageId: Int): MessageHistoryEntry?

    @Insert
    abstract fun insert(entry: MessageHistoryEntry)

    @Query("DELETE FROM MessageHistoryEntry WHERE accountId = :accountId AND dialogId = :dialogId AND messageId = :messageId AND versionId NOT IN (SELECT versionId FROM MessageHistoryEntry WHERE accountId = :accountId AND dialogId = :dialogId AND messageId = :messageId ORDER BY versionId DESC LIMIT :maxVersions)")
    abstract fun trim(accountId: Long, dialogId: Long, messageId: Int, maxVersions: Int)

    @Query("DELETE FROM MessageHistoryEntry WHERE capturedAt < :before")
    abstract fun expire(before: Long)

    @Query("SELECT DISTINCT previewPath FROM MessageHistoryEntry WHERE previewPath IS NOT NULL")
    abstract fun referencedPreviews(): List<String>

    @Transaction
    open fun append(candidates: List<MessageHistoryEntry>, maxVersions: Int) {
        if (candidates.isEmpty()) return
        val first = candidates.first()
        require(candidates.all {
            it.accountId == first.accountId && it.dialogId == first.dialogId && it.messageId == first.messageId
        })
        var last = latest(first.accountId, first.dialogId, first.messageId)
        val newest = candidates.last()
        if (last != null) {
            if (last.editDate > newest.editDate) return
            if (last.contentHash == newest.contentHash) {
                if (candidates.all { it.contentHash == newest.contentHash }) return
                val previous = read(first.accountId, first.dialogId, first.messageId).dropLast(1).lastOrNull()
                // A duplicate old+new pair differs from a missed intermediate edit
                // followed by a reversion to the last known content.
                if (previous?.contentHash == first.contentHash && last.editDate != 0 && last.editDate == newest.editDate) return
            }
        }
        candidates.forEach { candidate ->
            if (candidate.contentHash != last?.contentHash) {
                val entry = candidate.copy(versionId = (last?.versionId ?: 0L) + 1)
                insert(entry)
                last = entry
            }
        }
        trim(first.accountId, first.dialogId, first.messageId, maxVersions.coerceAtLeast(2))
    }
}
