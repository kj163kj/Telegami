package com.aoya.telegami.hooks.messages

import android.os.Looper
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.data.HistorySnapshot
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import io.github.libxposed.api.XposedInterface

object MessageEditHistoryHook {
    fun install(xposed: XposedInterface, target: TelegramHistoryResolver, persist: (List<HistorySnapshot>) -> Unit) {
        val c = target.c
        val factory = HistorySnapshotFactory(target)
        xposed.hook(target.edit).intercept { chain ->
            if (chain.args[0] == 0 && chain.args[4] == -2 && Config.isFeatureEnabled("enable_edit_history")) {
                try {
                    val storage = chain.thisObject!!
                    check(Thread.currentThread() === Telegami.telegram.getQueue.invoke(storage))
                    check(Looper.myLooper() != Looper.getMainLooper())
                    val slot = target.account.getInt(storage)
                    val accountId = Telegami.telegram.accountIdForSlot(slot)
                    val batch = chain.args[1]
                    (batch?.let(target.messages::get) as? List<*>)?.filterNotNull()?.forEach { newOwner ->
                        try {
                            val dialog = c.dialogForOwner.invoke(null, newOwner) as Long
                            val id = c.id.getInt(newOwner)
                            val oldOwner = readOld(target, storage, accountId, dialog, id)
                            val snapshots = listOfNotNull(
                                oldOwner?.let { factory.snapshot(it, slot, accountId) },
                                factory.snapshot(newOwner, slot, accountId),
                            )
                            // Synchronous on storageQueue: snapshots/previews survive native deletion.
                            if (snapshots.isNotEmpty()) persist(snapshots)
                        } catch (error: Throwable) {
                            Logger.e("History capture failed for one message; native edit continues", error, "EditHistory")
                        }
                    }
                } catch (error: Throwable) {
                    Logger.e("History capture failed; native edit continues", error, "EditHistory")
                }
            }
            chain.proceed(chain.args.toTypedArray())
        }
    }

    private fun readOld(target: TelegramHistoryResolver, storage: Any, accountId: Long, dialog: Long, id: Int): Any? {
        if (accountId <= 0 || id <= 0 || dialog == 0L) return null
        val t = Telegami.telegram
        val cursor = t.query.invoke(
            t.storageDatabase.get(storage),
            "SELECT data FROM messages_v2 WHERE mid = $id AND uid = $dialog", emptyArray<Any>(),
        ) ?: return null
        try {
            if (t.cursorNext.invoke(cursor) != true) return null
            val buffer = target.cursorBytes.invoke(cursor, 0) ?: return null
            return try {
                val owner = target.deserialize.invoke(null, buffer, target.readInt.invoke(buffer, true), true)
                if (owner != null) target.readPath.invoke(owner, buffer, accountId)
                owner
            } finally {
                target.reuse.invoke(buffer)
            }
        } finally {
            t.cursorDispose.invoke(cursor)
        }
    }
}
