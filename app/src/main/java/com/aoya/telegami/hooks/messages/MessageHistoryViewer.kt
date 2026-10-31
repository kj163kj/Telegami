package com.aoya.telegami.hooks.messages

import android.app.AlertDialog
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.core.TelegramHistoryUiResolver
import com.aoya.telegami.data.MessageHistoryEntry
import com.aoya.telegami.data.MessageHistoryStorage
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import com.google.gson.Gson
import java.text.DateFormat
import java.util.Date
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean

object MessageHistoryViewer {
    private val executor = Executors.newSingleThreadExecutor { task ->
        Thread(task, "TelegamiHistoryViewer").apply { isDaemon = true }
    }

    fun install(target: TelegramHistoryResolver) {
        val c = target.c
        MessageMenuActions.register(MessageMenuActions.Action(
            MessageMenuActions.HISTORY, "\u7f16\u8f91\u5386\u53f2", "msg_recent",
            { _, _ -> Config.isFeatureEnabled("enable_edit_history") },
            { selection ->
                val slot = c.messageAccount.getInt(selection.message)
                val accountId = Telegami.telegram.accountIdForSlot(slot)
                val owner = c.ownerField.get(selection.message)!!
                val key = MessageKey(accountId, c.dialogForOwner.invoke(null, owner) as Long, c.id.getInt(owner))
                // Detach current version on UI thread; background work never reads a live MessageObject.
                val currentText = c.text.get(owner) as? String ?: ""
                val currentEntities = MessageText.entities(c, owner)
                val currentMedia = c.mediaField.get(owner)?.javaClass?.simpleName ?: "none"
                val currentEditDate = c.editDate.getInt(owner)
                val currentDate = c.date.getInt(owner)
                val currentOwner = target.encode(owner)
                val activity = selection.activity
                val active = AtomicBoolean(true)
                val loading = AlertDialog.Builder(activity).setMessage("\u6b63\u5728\u8bfb\u53d6\u672c\u5730\u5386\u53f2\u2026")
                    .setOnCancelListener { active.set(false) }.show()
                executor.execute {
                    val result = runCatching {
                        var previewBudget = 12
                        MessageHistoryStorage.read(key).map { entry ->
                            val bitmap = if (previewBudget > 0) loadPreview(entry) else null
                            if (bitmap != null) previewBudget--
                            entry to bitmap
                        }
                    }
                    activity.runOnUiThread {
                        if (activity.isFinishing || activity.isDestroyed || !active.get() ||
                            !Config.isFeatureEnabled("enable_edit_history") ||
                            Telegami.telegram.accountIdForSlot(slot) != accountId ||
                            Telegami.telegram.chatDialog.getLong(selection.chat) != key.dialogId) {
                            result.getOrNull()?.forEach { it.second?.recycle() }
                            if (!activity.isDestroyed) loading.dismiss()
                            return@runOnUiThread
                        }
                        loading.dismiss()
                        result.fold(
                            onSuccess = { rows ->
                                try {
                                    Logger.i("History query loaded ${rows.size} captured versions", "EditHistory", xposed = true)
                                    show(target, selection, rows, currentText, currentEntities, currentMedia, currentEditDate, currentDate, currentOwner, key.messageId)
                                } catch (error: Throwable) {
                                    rows.forEach { it.second?.recycle() }
                                    Logger.e("History viewer failed", error, "EditHistory")
                                    MessageMenuActions.toast(activity, "\u65e0\u6cd5\u663e\u793a\u672c\u5730\u5386\u53f2")
                                }
                            },
                            onFailure = {
                                Logger.e("History query failed", it, "EditHistory")
                                MessageMenuActions.toast(activity, "\u672c\u5730\u5386\u53f2\u8bfb\u53d6\u5931\u8d25")
                            },
                        )
                    }
                }
            },
        ))
    }

    private fun show(
        target: TelegramHistoryResolver, selection: MessageMenuActions.Selection, rows: List<Pair<MessageHistoryEntry, Bitmap?>>,
        currentText: String, currentEntities: List<TextEntity>, currentMedia: String, currentEditDate: Int,
        currentDate: Int, currentOwner: ByteArray, messageId: Int,
    ) {
        val versions = rows.map { (entry, bitmap) ->
            val time = (entry.editDate.takeIf { it > 0 } ?: entry.messageDate).toLong() * 1000
            val entities = runCatching {
                Gson().fromJson(entry.messageEntities, Array<TextEntity>::class.java).toList()
            }.getOrDefault(emptyList())
            HistoryVersion(
                title = "#${entry.versionId}  ${if (entry.editDate == 0) "\u539f\u59cb\u7248\u672c" else "\u7f16\u8f91\u7248\u672c"}",
                time = date(time), captured = "\u6355\u83b7: ${date(entry.capturedAt)}",
                text = entry.messageText, entities = entities,
                media = mediaLabel(entry.mediaType) + if (entry.mediaType == "TL_messageMediaPhoto" && bitmap == null) {
                    " \u00b7 \u672c\u5730\u5feb\u7167\u4e0d\u53ef\u7528"
                } else "",
                preview = bitmap,
                ownerTl = entry.ownerTl,
            )
        }
        val current = HistoryVersion(
            "\u5f53\u524d\u6d88\u606f\uff08\u6253\u5f00\u65f6\uff09", date((currentEditDate.takeIf { it > 0 } ?: currentDate) * 1000L),
            "", currentText, currentEntities, mediaLabel(currentMedia), null, current = true, ownerTl = currentOwner,
        )
        val notice = when {
            rows.isEmpty() -> "\u5c1a\u65e0\u5df2\u6355\u83b7\u7684\u5386\u53f2\u7248\u672c"
            rows.first().first.let { it.versionId > 1 || it.editDate != 0 } -> "\u539f\u59cb\u7248\u672c\u672a\u6355\u83b7\u6216\u5df2\u6e05\u7406"
            else -> "\u4ec5\u663e\u793a\u672c\u5730\u5df2\u6355\u83b7\u7684\u7248\u672c"
        }
        MessageHistoryScreen.show(selection.activity, selection.chat, target.c.messageAccount.getInt(selection.message),
            TelegramHistoryUiResolver(target), messageId, versions + current, notice) {
            rows.forEach { it.second?.recycle() }
        }
    }

    private fun date(timestamp: Long): String =
        DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.MEDIUM).format(Date(timestamp))

    private fun mediaLabel(type: String): String = when (type) {
        "none", "TL_messageMediaEmpty" -> "\u6587\u672c"
        "TL_messageMediaPhoto" -> "\u56fe\u7247"
        "TL_messageMediaDocument" -> "\u6587\u4ef6\u3001\u89c6\u9891\u6216\u97f3\u9891"
        "TL_messageMediaWebPage" -> "\u7f51\u9875\u9884\u89c8"
        else -> "\u5176\u4ed6\u5a92\u4f53"
    }

    private fun loadPreview(entry: MessageHistoryEntry): Bitmap? = runCatching {
        val file = entry.previewPath?.let(MessageHistoryStorage::previewFile) ?: return null
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeFile(file.absolutePath, bounds)
        if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null
        val options = BitmapFactory.Options().apply {
            inSampleSize = 1
            while (bounds.outWidth / inSampleSize > 512 || bounds.outHeight / inSampleSize > 512) inSampleSize *= 2
            inPreferredConfig = Bitmap.Config.RGB_565
        }
        BitmapFactory.decodeFile(file.absolutePath, options)
    }.getOrNull()
}
