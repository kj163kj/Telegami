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
        val factory = HistorySnapshotFactory(target)
        xposed.hook(target.edit).intercept { chain ->
            if (chain.args[0] == 0 && Config.isFeatureEnabled("enable_edit_history")) {
                runCatching {
                    val owners = chain.args[1]?.let(target.messages::get) as? List<*>
                    capture(target, factory, persist, chain.thisObject!!, owners, "batch/${chain.args[4]}")
                }.onFailure { Logger.e("History batch capture failed; native write continues", it, "EditHistory") }
            }
            chain.proceed(chain.args.toTypedArray())
        }
        xposed.hook(target.ingest).intercept { chain ->
            if (chain.args[5] == 0 && Config.isFeatureEnabled("enable_edit_history")) {
                runCatching {
                    capture(target, factory, persist, chain.thisObject!!, chain.args[0] as? List<*>, "ingest")
                }.onFailure { Logger.e("History ingestion capture failed; native write continues", it, "EditHistory") }
            }
            chain.proceed(chain.args.toTypedArray())
        }
    }

    private fun capture(
        target: TelegramHistoryResolver, factory: HistorySnapshotFactory, persist: (List<HistorySnapshot>) -> Unit,
        storage: Any, owners: List<*>?, source: String,
    ) {
        if (owners.isNullOrEmpty()) return
        check(Thread.currentThread() === Telegami.telegram.getQueue.invoke(storage))
        check(Looper.myLooper() != Looper.getMainLooper())
        val slot = target.account.getInt(storage)
        val accountId = Telegami.telegram.accountIdForSlot(slot)
        if (accountId <= 0) return
        val c = target.c
        val counts = HistoryCapturePipeline<Any, HistorySnapshot>(
            readOld = { owner -> readOld(target, storage, accountId, c.dialogForOwner.invoke(null, owner) as Long, c.id.getInt(owner)) },
            snapshot = { factory.snapshot(it, slot, accountId) },
            // Stay on storageQueue so old local media survives native replacement/deletion.
            persist = persist,
            failed = { Logger.e("History message capture failed; native write continues", it, "EditHistory") },
        ).capture(owners.filterNotNull())
        Logger.i("Capture $source slot=$slot messages=${counts.messages} old=${counts.oldFound} snapshots=${counts.snapshots} failures=${counts.failures}", "EditHistory", xposed = true)
    }

    private fun readOld(target: TelegramHistoryResolver, storage: Any, accountId: Long, dialog: Long, id: Int): Any? {
        if (accountId <= 0 || id <= 0 || dialog == 0L) return null
        for (table in listOf("messages_v2", "messages_topics")) {
            readTable(target, storage, accountId, dialog, id, table)?.let { return it }
        }
        return null
    }

    private fun readTable(target: TelegramHistoryResolver, storage: Any, accountId: Long, dialog: Long, id: Int, table: String): Any? {
        val t = Telegami.telegram
        val cursor = t.query.invoke(
            t.storageDatabase.get(storage),
            "SELECT data FROM $table WHERE mid = $id AND uid = $dialog LIMIT 1", emptyArray<Any>(),
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
