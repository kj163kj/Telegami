package com.aoya.telegami.hooks

import com.aoya.telegami.Telegami
import com.aoya.telegami.data.DeletedMessage
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.util.logd
import com.aoya.telegami.util.logw
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import java.util.concurrent.ConcurrentHashMap

object Globals {
    val coroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    private val deletedMessagesCache = ConcurrentHashMap<MessageKey, DeletedMessage>()
    private val permits = DeletionPermits()
    private val pendingDeletions = PendingDeletionKeys()

    data class StorageCandidate(val key: MessageKey, val isChannel: Boolean)

    fun isDeletedMessage(
        dialogId: Long,
        msgId: Int,
        accountId: Long,
    ): Boolean = deletedMessagesCache.containsKey(MessageKey(accountId, dialogId, msgId))

    fun getDeletedMessage(
        dialogId: Long,
        msgId: Int,
        accountId: Long,
    ): DeletedMessage? = deletedMessagesCache[MessageKey(accountId, dialogId, msgId)]

    fun loadDeletedMessagesForDialog(dialogId: Long, accountId: Long) {
        coroutineScope.launch {
            try {
                val deleted = Telegami.db.deletedMessageDao().getAllForDialog(dialogId, accountId)
                deleted.forEach(::addDeletedMessageToCache)
                MarkMessages.refreshDialog(accountId, dialogId)
            } catch (e: Exception) {
                logw("Failed to load deleted messages for dialog $dialogId: ${e.message}")
            }
        }
    }

    fun clearDeletedMessageFromCache(
        dialogId: Long,
        msgIds: List<Int>,
        accountId: Long,
    ) {
        msgIds.forEach { msgId ->
            val key = MessageKey(accountId, dialogId, msgId)
            deletedMessagesCache.remove(key)
        }
    }

    fun addDeletedMessageToCache(msg: DeletedMessage) {
        val key = MessageKey(msg.accountId, msg.dialogId, msg.id)
        deletedMessagesCache[key] = msg
    }

    fun addDeletedMessagesToCache(messages: List<DeletedMessage>) {
        messages.forEach { msg -> addDeletedMessageToCache(msg) }
    }

    fun allowDeletion(keys: Collection<MessageKey>) {
        permits.allow(keys)
    }

    fun discardDeletionPermits(keys: Collection<MessageKey>) {
        permits.discard(keys)
    }

    fun markPendingRetention(keys: Collection<MessageKey>) {
        pendingDeletions.add(keys.filterNot(permits::contains))
    }

    fun resolvePendingRetention(keys: Collection<MessageKey>) {
        pendingDeletions.resolve(keys)
    }

    fun shouldKeepDeletionEvent(key: MessageKey): Boolean =
        deletedMessagesCache.containsKey(key) || pendingDeletions.contains(key)

    fun retainBeforeStorageDeletion(
        rows: List<StorageCandidate>,
        retainUnpermitted: Boolean = true,
    ): Set<MessageKey> {
        val keys = rows.map { it.key }
        val completed = permits.consumeMatching(keys)
        val removeExisting = completed
        val retained = if (retainUnpermitted) rows.filterNot { it.key in completed }.toSet() else emptySet()
        removeExisting.groupBy { it.dialogId }.forEach { (dialogId, keysInDialog) ->
            val accountId = keysInDialog.first().accountId
            Telegami.db.deletedMessageDao().deleteCaptured(keysInDialog)
            clearDeletedMessageFromCache(dialogId, keysInDialog.map { it.messageId }, accountId)
        }
        if (retained.isNotEmpty()) {
            val stored = Telegami.db.deletedMessageDao().capture(
                retained.map { row ->
                    DeletedMessage(
                        id = row.key.messageId,
                        dialogId = row.key.dialogId,
                        accountId = row.key.accountId,
                        isChannel = row.isChannel,
                    )
                },
            )
            addDeletedMessagesToCache(stored)
            stored.groupBy { it.accountId to it.dialogId }.forEach { (scope, _) ->
                runCatching { MarkMessages.refreshDialog(scope.first, scope.second) }
                    .onFailure { logw("Failed to schedule marker refresh: ${it.message}") }
            }
        }
        return retained.map { it.key }.toSet()
    }

    fun handleDeletedMessages(
        dialogId: Long,
        msgIds: List<Int>,
        accountId: Long,
    ): Boolean {
        if (msgIds.isEmpty()) return false

        val keys = msgIds.map { MessageKey(accountId, dialogId, it) }
        if (permits.consumeAll(keys)) {
            coroutineScope.launch {
                runCatching {
                    Telegami.db.deletedMessageDao().deleteAllByIdsBatched(msgIds, dialogId, accountId)
                    clearDeletedMessageFromCache(dialogId, msgIds, accountId)
                }.onFailure { logw("Failed to clear an authorised deletion: ${it.message}") }
            }
            return true
        }
        permits.consumeMatching(keys)

        logd("Storing ${msgIds.size} deleted messages in dialog $dialogId")
        coroutineScope.launch {
            try {
                val messages = msgIds.map { mid -> DeletedMessage(id = mid, dialogId = dialogId, accountId = accountId) }
                val stored = Telegami.db.deletedMessageDao().capture(messages)
                addDeletedMessagesToCache(stored)
                stored.map { it.dialogId }.distinct().forEach { MarkMessages.refreshDialog(accountId, it) }
            } catch (e: Exception) {
                logw("Failed to store deleted messages: ${e.message}")
            }
        }

        return false
    }
}
