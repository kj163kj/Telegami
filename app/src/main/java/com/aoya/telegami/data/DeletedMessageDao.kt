package com.aoya.telegami.data

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Transaction

@Dao
interface DeletedMessageDao {
    @Insert(onConflict = OnConflictStrategy.IGNORE)
    fun insertCaptured(messages: List<DeletedMessage>)

    @Query("SELECT * FROM DeletedMessage WHERE accountId = :accountId AND dialogId = :dialogId AND id IN (:ids)")
    fun readCaptured(accountId: Long, dialogId: Long, ids: List<Int>): List<DeletedMessage>

    @Transaction
    fun capture(messages: List<DeletedMessage>): List<DeletedMessage> {
        insertCaptured(messages)
        return messages.groupBy { DialogKey(it.accountId, it.dialogId) }.flatMap { (key, rows) ->
            rows.map { it.id }.chunked(500).flatMap { readCaptured(key.accountId, key.dialogId, it) }
        }
    }

    @Query("DELETE FROM DeletedMessage WHERE accountId = :accountId AND dialogId = :dialogId AND id IN (:ids)")
    fun deleteCapturedForDialog(accountId: Long, dialogId: Long, ids: List<Int>)

    @Transaction
    fun deleteCaptured(keys: List<MessageKey>) {
        keys.groupBy { DialogKey(it.accountId, it.dialogId) }.forEach { (scope, rows) ->
            rows.map { it.messageId }.distinct().chunked(500).forEach {
                deleteCapturedForDialog(scope.accountId, scope.dialogId, it)
            }
        }
    }

    @Query("SELECT * FROM DeletedMessage WHERE accountId = :accountId AND id = :messageId AND dialogId = :dialogId")
    suspend fun get(
        messageId: Int,
        dialogId: Long,
        accountId: Long,
    ): DeletedMessage?

    @Query("SELECT * FROM DeletedMessage WHERE accountId = :accountId AND dialogId = :dialogId")
    suspend fun getAllForDialog(dialogId: Long, accountId: Long): List<DeletedMessage>

    @Query("SELECT * FROM DeletedMessage WHERE accountId = :accountId ORDER BY createdAt DESC")
    suspend fun getAllOrderByCreatedAt(accountId: Long): List<DeletedMessage>

    @Query("DELETE FROM DeletedMessage WHERE accountId = :accountId AND id = :messageId AND dialogId = :dialogId")
    suspend fun delete(
        messageId: Int,
        dialogId: Long,
        accountId: Long,
    )

    @Delete
    suspend fun deleteAll(messages: List<DeletedMessage>)

    @Query("DELETE FROM DeletedMessage WHERE accountId = :accountId AND id IN (:messageIds) AND dialogId = :dialogId")
    fun deleteAllByIds(
        messageIds: List<Int>,
        dialogId: Long,
        accountId: Long,
    )

    fun deleteAllByIdsBatched(messageIds: List<Int>, dialogId: Long, accountId: Long) {
        messageIds.distinct().chunked(500).forEach { deleteAllByIds(it, dialogId, accountId) }
    }

    @Query("DELETE FROM DeletedMessage WHERE accountId = :accountId AND dialogId = :dialogId")
    suspend fun deleteAllForDialog(dialogId: Long, accountId: Long)

    @Query("DELETE FROM DeletedMessage WHERE accountId = :accountId")
    suspend fun deleteAllForAccount(accountId: Long)
}
