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
    open fun append(candidates: List<MessageHistoryEntry>, maxVersions: Int): Int {
        if (candidates.isEmpty()) return 0
        val first = candidates.first()
        require(candidates.all {
            it.accountId == first.accountId && it.dialogId == first.dialogId && it.messageId == first.messageId
        })
        val normalized = candidates.map(HistoryContent::canonical)
        var last = latest(first.accountId, first.dialogId, first.messageId)?.let(HistoryContent::canonical)
        val newest = normalized.last()
        if (last != null) {
            if (last.editDate > newest.editDate) return 0
            if (newest.editDate == 0 && last.contentHash != newest.contentHash) {
                val originalReplay = read(first.accountId, first.dialogId, first.messageId).any {
                    it.editDate == 0 && HistoryContent.canonical(it).contentHash == newest.contentHash
                }
                if (originalReplay) return 0
            }
            if (last.contentHash == newest.contentHash) {
                // Both storage hooks can observe the same revision with different stale old rows.
                if (last.editDate == newest.editDate || normalized.all { it.contentHash == newest.contentHash }) return 0
                val known = read(first.accountId, first.dialogId, first.messageId).map(HistoryContent::canonical)
                val lastHash = last.contentHash
                val lastDate = last.editDate
                val unseenIntermediate = normalized.dropLast(1).any { old ->
                    old.contentHash != lastHash && old.editDate > 0 && old.editDate >= lastDate &&
                        known.none { it.contentHash == old.contentHash && it.editDate == old.editDate }
                }
                // A server acknowledgement can advance edit_date without changing the optimistic text.
                if (!unseenIntermediate) return 0
            }
        }
        var inserted = 0
        normalized.forEachIndexed { index, candidate ->
            val oldOriginal = index < normalized.lastIndex && last != null && candidate.editDate == 0
            if (!oldOriginal && candidate.editDate >= (last?.editDate ?: 0) && candidate.contentHash != last?.contentHash) {
                val entry = candidate.copy(versionId = (last?.versionId ?: 0L) + 1)
                insert(entry)
                last = entry
                inserted++
            }
        }
        trim(first.accountId, first.dialogId, first.messageId, maxVersions.coerceAtLeast(2))
        return inserted
    }
}
