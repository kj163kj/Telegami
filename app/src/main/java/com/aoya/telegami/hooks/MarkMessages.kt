package com.aoya.telegami.hooks

import android.util.Log
import android.view.View
import com.aoya.telegami.Telegami
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.MessageHelper
import io.github.libxposed.api.XposedInterface
import java.util.WeakHashMap

object MarkMessages {
    private val boundCells = WeakHashMap<Any, MessageKey>()
    private val originalTimes = WeakHashMap<Any, CharSequence>()

    fun refreshDialog(accountId: Long, dialogId: Long) {
        refreshCells { it.accountId == accountId && it.dialogId == dialogId }
    }

    fun refreshAll() {
        refreshCells { true }
    }

    private fun refreshCells(matches: (MessageKey) -> Boolean) {
        Telegami.runOnMainThread { _ ->
            val cells = synchronized(boundCells) {
                boundCells.filterValues(matches).keys.toList()
            }
            cells.forEach { cell ->
                runCatching {
                    val message = Telegami.telegram.boundMessage.get(cell) ?: return@runCatching
                    val originalTime = synchronized(originalTimes) { originalTimes.remove(cell) }
                    if (originalTime != null) Telegami.telegram.timeText.set(cell, originalTime)
                    Telegami.telegram.measureTime.invoke(cell, message)
                    (cell as? View)?.apply {
                        requestLayout()
                        invalidate()
                    }
                }.onFailure { Log.e("Telegami", "Failed to refresh a message cell", it) }
            }
        }
    }

    fun install(xposed: XposedInterface, classLoader: ClassLoader) {
        val target = Telegami.telegram
        val createView = target.chatCreateView
        xposed.hook(createView).intercept { chain ->
            val result = chain.proceed(chain.args.toTypedArray())
            try {
                val chat = chain.thisObject!!
                val dialogId = target.chatDialog.getLong(chat)
                val accountId = target.accountIdForSlot(target.chatAccount.getInt(chat))
                Globals.loadDeletedMessagesForDialog(dialogId, accountId)
            } catch (error: Throwable) {
                Log.e("Telegami", "Failed to queue deleted-message cache load", error)
            }
            result
        }

        xposed.hook(target.measureTime).intercept { chain ->
            val result = chain.proceed(chain.args.toTypedArray())
            try {
                val cell = chain.thisObject!!
                val message = chain.args[0] ?: return@intercept result
                val accountSlot = target.messageAccount.getInt(message)
                val accountId = target.accountIdForSlot(accountSlot)
                val dialogId = target.messageDialog.invoke(message) as Long
                val messageId = target.messageId.invoke(message) as Int
                val key = MessageKey(accountId, dialogId, messageId)
                synchronized(boundCells) { boundCells[cell] = key }

                val isRetained = Globals.isDeletedMessage(dialogId, messageId, accountId)
                val markDeleted = Config.isFeatureEnabled("MarkMessagesDeleted") && isRetained
                val markEdited = Config.isFeatureEnabled("MarkMessagesEdited") &&
                    target.edited.getBoolean(cell)
                if (!markDeleted && !markEdited) {
                    synchronized(originalTimes) { originalTimes.remove(cell) }
                    return@intercept result
                }

                val original = target.timeText.get(cell) as? CharSequence ?: return@intercept result
                synchronized(originalTimes) { originalTimes[cell] = original }
                var decorated: CharSequence = original
                if (markDeleted) decorated = MessageHelper.appendDeleted(decorated)
                if (markEdited) decorated = MessageHelper.appendEdited(decorated)
                val delta = MessageHelper.measured(decorated, target.timePaint.get(null) as android.text.TextPaint) -
                    MessageHelper.measured(original, target.timePaint.get(null) as android.text.TextPaint)
                target.timeText.set(cell, decorated)
                target.timeTextWidth.setInt(cell, target.timeTextWidth.getInt(cell) + delta)
                target.timeWidth.setInt(cell, target.timeWidth.getInt(cell) + delta)

            } catch (error: Throwable) {
                Log.e("Telegami", "Failed to apply message-time markers", error)
            }
            result
        }
    }

}
