package com.aoya.telegami.hooks

import android.util.Log
import com.aoya.telegami.Telegami
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.service.Config
import android.os.Looper
import io.github.libxposed.api.XposedInterface
import java.util.ArrayList

object ShowDeletedMessages {
    fun install(xposed: XposedInterface, classLoader: ClassLoader) {
        val target = Telegami.telegram
        val storageDelete = target.storageDelete
        val ownDelete = target.ownDelete

        xposed.hook(target.processUpdateUiDeletion).intercept { chain ->
            val args = chain.args.toTypedArray()
            try {
                val retentionEnabled = Config.isFeatureEnabled("ShowDeletedMessages") ||
                    Config.isFeatureEnabled("MarkMessagesDeleted")
                val deletionMap = args.getOrNull(4)
                if (retentionEnabled && deletionMap != null) {
                    val accountId = target.accountIdForController(chain.thisObject!!)
                    val count = target.dialogMapSize.invoke(deletionMap) as Int
                    val keys = buildList {
                        repeat(count) { index ->
                            val dialogId = target.dialogMapKey.invoke(deletionMap, index) as Long
                            val ids = target.dialogMapValue.invoke(deletionMap, index) as? List<*> ?: return@repeat
                            ids.filterIsInstance<Int>().forEach { id -> add(MessageKey(accountId, dialogId, id)) }
                        }
                    }
                    Globals.markPendingRetention(keys)
                }
            } catch (error: Throwable) {
                Log.e("Telegami", "Unable to mark queued deletion rows", error)
            }
            chain.proceed(args)
        }

        xposed.hook(ownDelete).intercept { chain ->
            val args = chain.args.toTypedArray()
            try {
                if (args[5] != 0) return@intercept chain.proceed(args)
                val ids = args[0] as? List<*> ?: return@intercept chain.proceed(args)
                val dialogId = args[3] as Long
                val accountId = target.accountIdForController(chain.thisObject!!)
                val keys = ids.mapNotNull { (it as? Int)?.let { id -> MessageKey(accountId, dialogId, id) } }
                Globals.allowDeletion(keys)
            } catch (error: Throwable) {
                Log.e("Telegami", "Unable to scope a local deletion permit", error)
            }
            chain.proceed(args)
        }

        xposed.hook(storageDelete).intercept { chain ->
            val originalArgs = chain.args.toTypedArray()
            val mode = originalArgs[3] as? Int ?: return@intercept chain.proceed(originalArgs)
            val ids = originalArgs[1] as? ArrayList<*> ?: return@intercept chain.proceed(originalArgs)
            if (mode != 0 || ids.isEmpty()) return@intercept chain.proceed(originalArgs)

            var pendingAccountId: Long? = null
            var pendingMessageIds: List<Int> = emptyList()
            var pendingDialogId = 0L
            try {
                val accountId = target.accountIdForController(chain.thisObject!!)
                val integerIds = ids.mapNotNull { it as? Int }.distinct()
                val dialogId = originalArgs[0] as Long
                pendingAccountId = accountId
                pendingMessageIds = integerIds
                pendingDialogId = dialogId
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    Log.e("Telegami", "Refusing synchronous message capture on the UI thread")
                    if (dialogId != 0L) {
                        Globals.resolvePendingRetention(integerIds.map { MessageKey(accountId, dialogId, it) })
                    }
                    return@intercept chain.proceed(originalArgs)
                }
                val shouldRetain = Config.isFeatureEnabled("ShowDeletedMessages") ||
                    Config.isFeatureEnabled("MarkMessagesDeleted")
                val storage = chain.thisObject!!
                val storageQueue = target.getQueue.invoke(storage) as Thread
                if (Thread.currentThread() !== storageQueue) {
                    Log.e("Telegami", "Refusing pre-delete capture outside Telegram's storage queue")
                    if (dialogId != 0L) {
                        Globals.resolvePendingRetention(integerIds.map { MessageKey(accountId, dialogId, it) })
                    }
                    return@intercept chain.proceed(originalArgs)
                }
                val db = target.storageDatabase.get(storage)!!
                val queryRows = readRows(db, accountId, dialogId, integerIds, target)
                val pendingKeys = if (dialogId != 0L) {
                    integerIds.map { MessageKey(accountId, dialogId, it) }
                } else {
                    queryRows.map { it.key }
                }
                if (dialogId != 0L) {
                    val foundKeys = queryRows.mapTo(mutableSetOf()) { it.key }
                    val missingPermits = integerIds
                        .map { MessageKey(accountId, dialogId, it) }
                        .filterNot { it in foundKeys }
                    Globals.discardDeletionPermits(missingPermits)
                }
                if (queryRows.isEmpty()) {
                    Globals.resolvePendingRetention(pendingKeys)
                    return@intercept chain.proceed(originalArgs)
                }
                val retained = try {
                    Globals.retainBeforeStorageDeletion(queryRows, retainUnpermitted = shouldRetain)
                } finally {
                    Globals.resolvePendingRetention(pendingKeys)
                }
                if (retained.isEmpty()) return@intercept chain.proceed(originalArgs)

                // Keep normal Telegram deletion behavior for rows not retained by the module.
                val retainedIds = retained.mapTo(hashSetOf()) { it.messageId }
                val allowedIds = ids.filterNot { (it as? Int) in retainedIds }.toCollection(ArrayList())
                if (allowedIds.isEmpty()) return@intercept ArrayList<Any>()
                val args = originalArgs.copyOf()
                args[1] = allowedIds
                chain.proceed(args)
            } catch (error: Throwable) {
                pendingAccountId?.let { accountId ->
                    if (pendingDialogId != 0L) {
                        Globals.resolvePendingRetention(
                            pendingMessageIds.map { MessageKey(accountId, pendingDialogId, it) },
                        )
                    }
                }
                Log.e("Telegami", "Pre-delete capture failed; letting Telegram continue", error)
                chain.proceed(originalArgs)
            }
        }

        xposed.hook(target.chatNotification).intercept { chain ->
            val args = chain.args.toTypedArray()
            if (args.size < 2 || args[0] != target.deletedEvent.getInt(null)) {
                return@intercept chain.proceed(args)
            }
            if (!Config.isFeatureEnabled("ShowDeletedMessages") &&
                !Config.isFeatureEnabled("MarkMessagesDeleted")
            ) return@intercept chain.proceed(args)

            try {
                val payload = args[1] as? Array<*> ?: return@intercept chain.proceed(args)
                if (payload.size < 3 || payload[2] == true) return@intercept chain.proceed(args)
                val ids = payload[0] as? ArrayList<*> ?: return@intercept chain.proceed(args)
                val chat = chain.thisObject!!
                val dialogId = target.chatDialog.getLong(chat)
                val accountSlot = target.chatAccount.getInt(chat)
                val accountId = target.accountIdForSlot(accountSlot)
                val eventDialog = payload[1] as? Long ?: 0L
                if (eventDialog != 0L && dialogId != -eventDialog && dialogId != eventDialog) {
                    return@intercept chain.proceed(args)
                }
                val filtered = ids.filterNot { id ->
                    val intId = id as? Int ?: return@filterNot false
                    Globals.shouldKeepDeletionEvent(MessageKey(accountId, dialogId, intId))
                }
                if (filtered.size == ids.size) return@intercept chain.proceed(args)
                if (filtered.isEmpty()) return@intercept null

                val argsCopy = args.copyOf()
                val payloadCopy = Array<Any?>(payload.size) { payload[it] }
                payloadCopy[0] = ArrayList(filtered)
                argsCopy[1] = payloadCopy
                chain.proceed(argsCopy)
            } catch (error: Throwable) {
                Log.e("Telegami", "Failed to filter a retained deletion event", error)
                chain.proceed(args)
            }
        }

        ModifyDeletedMessagesMenu.install(xposed, classLoader)
    }

    private fun readRows(
        database: Any,
        accountId: Long,
        dialogId: Long,
        ids: List<Int>,
        target: com.aoya.telegami.core.Telegram131Resolver,
    ): List<Globals.StorageCandidate> {
        if (ids.isEmpty()) return emptyList()
        val rows = mutableListOf<Globals.StorageCandidate>()
        ids.chunked(500).forEach { chunk ->
            val idsSql = chunk.joinToString(",") { it.toString() }
            val dialogClause = if (dialogId != 0L) "uid = $dialogId" else "is_channel = 0"
            val sql = "SELECT uid, mid, is_channel FROM messages_v2 WHERE mid IN ($idsSql) AND $dialogClause"
            val cursor = target.query.invoke(database, sql, emptyArray<Any>()) ?: return@forEach
            try {
                while (target.cursorNext.invoke(cursor) as Boolean) {
                    val actualDialog = target.cursorLong.invoke(cursor, 0) as Long
                    val messageId = target.cursorInt.invoke(cursor, 1) as Int
                    val isChannel = target.cursorInt.invoke(cursor, 2) as Int != 0
                    rows += Globals.StorageCandidate(MessageKey(accountId, actualDialog, messageId), isChannel)
                }
            } finally {
                target.cursorDispose.invoke(cursor)
            }
        }
        return rows
    }
}
