package com.aoya.telegami.hooks.messages

import android.app.AlertDialog
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramForwardResolver
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import java.lang.reflect.Proxy

class MessageForwardPicker(private val target: TelegramSendResolver) {
    private val c = target.common
    private val native by lazy { TelegramForwardResolver(target) }
    private val codec by lazy { TelegramHistoryResolver(c) }
    private val sender = MessageSender(target)

    fun open(original: MessageMenuActions.Selection) {
        check(Config.isFeatureEnabled("enable_message_copy") && c.isProtectedGroup(original.message, original.chat)) {
            "\u4ec5\u5728\u9650\u5236\u8f6c\u53d1\u7684\u7fa4\u7ec4\u4e2d\u53ef\u7528"
        }
        val slot = c.messageAccount.getInt(original.message)
        val accountId = Telegami.telegram.accountIdForSlot(slot)
        val owner = sender.validateSource(original.message)
        val sourceDialog = c.dialogForOwner.invoke(null, owner) as Long
        // Freeze the selected version while the native picker is open. No dependency on c5 after Fa cleanup.
        val detached = codec.cloneOwner(owner)
        c.attachPath.set(detached, c.attachPath.get(owner))
        val selection = original.copy(message = native.detachedMessage(slot, detached))
        val picker = native.newPicker(slot)
        val session = MessageForwardSession()
        var selectionConsumed = false

        fun validate() {
            check(Config.isFeatureEnabled("enable_message_copy")) { "\u529f\u80fd\u5df2\u5173\u95ed" }
            check(Telegami.telegram.accountIdForSlot(slot) == accountId &&
                native.currentAccount.invoke(picker) == slot && native.currentAccount.invoke(original.chat) == slot) {
                "\u8d26\u53f7\u5df2\u5207\u6362\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u6d88\u606f"
            }
            check(!original.activity.isFinishing && !original.activity.isDestroyed) { "\u804a\u5929\u9875\u9762\u5df2\u5173\u95ed" }
            check(Telegami.telegram.chatDialog.getLong(original.chat) == sourceDialog &&
                c.isProtectedGroup(selection.message, original.chat)) { "\u6765\u6e90\u7fa4\u72b6\u6001\u5df2\u53d8\u5316" }
        }

        fun report(error: Throwable) {
            Logger.e("Protected forward picker rejected", error, "MessageTools")
            MessageMenuActions.toast(original.activity, error.cause?.message ?: error.message ?: "\u8f6c\u53d1\u5931\u8d25")
        }

        fun closePicker() {
            runCatching { native.finish.invoke(picker) }.onFailure {
                Logger.e("Unable to close native forward picker", it, "MessageTools")
            }
        }

        val proxy = Proxy.newProxyInstance(c.loader, arrayOf(native.delegate)) callback@{ proxyObject, method, args ->
            when (method) {
                native.defaultD, native.defaultJ -> false
                native.selected -> {
                    if (!session.acceptingSelection) return@callback selectionConsumed
                    try {
                        validate()
                        val destinations = (args?.get(1) as? List<*>)?.filterNotNull()
                            ?.map { native.destination(it, slot) }?.distinctBy { it.key }.orEmpty()
                        if (session.select(destinations.map { it.key }) != null) {
                            val comment = args?.get(2) as? CharSequence
                            val notify = args?.get(4) as Boolean
                            val schedule = args[5] as Int
                            val scheduleRepeat = args[6] as Int
                            val send = {
                                try {
                                    validate()
                                    // Preflight all destinations before queueing any of them.
                                    val jobs = destinations.flatMap { destination ->
                                        buildList {
                                            if (!comment.isNullOrEmpty()) add(sender.prepareComment(slot, destination, comment, notify, schedule, scheduleRepeat))
                                            add(sender.prepare(selection, destination, true, notify, schedule, scheduleRepeat))
                                        }
                                    }
                                    if (session.submit()) {
                                        selectionConsumed = true
                                        jobs.forEach { it() }
                                        Logger.i("Protected forward queued destinations=${destinations.size}", "MessageTools", xposed = true)
                                        closePicker()
                                        MessageMenuActions.toast(original.activity, "\u5df2\u63d0\u4ea4\u5230 Telegram")
                                    }
                                } catch (error: Throwable) {
                                    report(error)
                                    if (selectionConsumed) closePicker() else session.cancelConfirmation()
                                }
                            }
                            if (Config.getBoolean("enable_copy_confirmation", true)) {
                                AlertDialog.Builder(original.activity)
                                    .setTitle("\u8f6c\u53d1")
                                    .setMessage("\u53d1\u9001\u5230\u9009\u4e2d\u7684 ${destinations.size} \u4e2a\u4f1a\u8bdd\u6216\u8bdd\u9898\uff1f")
                                    .setPositiveButton("\u53d1\u9001") { _, _ -> send() }
                                    .setNegativeButton("\u53d6\u6d88", null)
                                    .setOnDismissListener { session.cancelConfirmation() }
                                    .show()
                            } else send()
                        }
                    } catch (error: Throwable) {
                        session.cancelConfirmation()
                        report(error)
                    }
                    // We close the native picker ourselves, after confirmation and submission.
                    selectionConsumed
                }
                else -> when (method.name) {
                    "toString" -> "TelegamiForwardDelegate"
                    "hashCode" -> System.identityHashCode(proxyObject)
                    "equals" -> proxyObject === args?.firstOrNull()
                    else -> error("Unexpected native delegate method $method")
                }
            }
        }
        native.pickerDelegate.set(picker, proxy)
        validate()
        check(native.present.invoke(original.chat, picker) == true) { "\u65e0\u6cd5\u6253\u5f00 Telegram \u8f6c\u53d1\u9009\u62e9\u5668" }
        Logger.i("Opened protected forward native picker", "MessageTools", xposed = true)
    }
}
