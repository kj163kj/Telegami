package com.aoya.telegami.hooks.messages

import android.app.AlertDialog
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger

class MessageSender(private val target: TelegramSendResolver) {
    private val c = target.common
    private val codec by lazy { TelegramHistoryResolver(c) }

    data class Destination(
        val key: MessageDestinationKey,
        val thread: Any? = null,
        val suggestion: Any? = null,
    )

    companion object {
        private val gate = MessageActionGate<MessageKey>()
    }

    fun currentDestination(selection: MessageMenuActions.Selection): Destination = Destination(
        MessageDestinationKey(
            Telegami.telegram.chatDialog.getLong(selection.chat),
            target.topicId.invoke(selection.chat) as Long,
            target.monoPeer.invoke(selection.chat) as Long,
        ),
        target.thread.get(selection.chat), target.currentSuggestion.get(selection.chat),
    )

    fun execute(selection: MessageMenuActions.Selection, asCopy: Boolean, configKey: String, confirmationKey: String) {
        val owner = c.ownerField.get(selection.message) ?: return
        val slot = c.messageAccount.getInt(selection.message)
        val accountId = Telegami.telegram.accountIdForSlot(slot)
        val dialog = c.dialogForOwner.invoke(null, owner) as Long
        val key = MessageKey(accountId, dialog, c.id.getInt(owner))
        val destination = currentDestination(selection)
        if (!gate.acquire(key)) {
            MessageMenuActions.toast(selection.activity, "\u64cd\u4f5c\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5")
            return
        }
        var performed = false
        val send = {
            try {
                check(Config.isFeatureEnabled(configKey)) { "\u529f\u80fd\u5df2\u5173\u95ed" }
                check(Telegami.telegram.accountIdForSlot(slot) == accountId) { "\u8d26\u53f7\u5df2\u5207\u6362" }
                val selectedOwner = c.ownerField.get(selection.message)!!
                check(c.id.getInt(selectedOwner) == key.messageId &&
                    c.messageAccount.getInt(selection.message) == slot &&
                    c.dialogForOwner.invoke(null, selectedOwner) == dialog) { "Selected message changed" }
                check(currentDestination(selection).key == destination.key) { "\u804a\u5929\u6216\u8bdd\u9898\u5df2\u53d8\u5316\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9" }
                check(!selection.activity.isFinishing && !selection.activity.isDestroyed) { "\u804a\u5929\u9875\u9762\u5df2\u5173\u95ed" }
                check(!(target.slowMode.invoke(selection.chat, selection.activity.window.decorView) as Boolean)) {
                    "\u6162\u901f\u6a21\u5f0f\u9650\u5236\uff0c\u8bf7\u7b49\u5f85\u540e\u518d\u53d1\u9001"
                }
                prepare(selection, destination, asCopy)()
                performed = true
                Logger.i("Native send queued message=${key.messageId} topic=${destination.key.topicId}", "MessageTools", xposed = true)
            } catch (error: Throwable) {
                Logger.e("Native message send rejected", error, "MessageTools")
                MessageMenuActions.toast(selection.activity, error.cause?.message ?: error.message ?: "\u53d1\u9001\u5931\u8d25")
            } finally {
                gate.release(key, performed)
            }
        }
        try {
            if (Config.getBoolean(confirmationKey, true)) {
                AlertDialog.Builder(selection.activity)
                    .setTitle("\u590d\u8bfb")
                    .setMessage("\u5c06\u9009\u4e2d\u6d88\u606f\u53d1\u9001\u5230\u5f53\u524d\u804a\u5929\u6216\u8bdd\u9898\uff1f")
                    .setPositiveButton("\u53d1\u9001") { _, _ -> send() }
                    .setNegativeButton("\u53d6\u6d88", null)
                    .setOnDismissListener { gate.release(key, performed) }
                    .show()
            } else send()
        } catch (error: Throwable) {
            gate.release(key, false)
            throw error
        }
    }

    /** Validate and build before submitting anything; callers may preflight several destinations. */
    fun prepare(
        selection: MessageMenuActions.Selection,
        destination: Destination,
        requestedCopy: Boolean,
        notify: Boolean = true,
        scheduleDate: Int = 0,
        scheduleRepeat: Int = 0,
    ): () -> Unit {
        val message = selection.message
        val owner = c.ownerField.get(message) ?: error("\u6d88\u606f\u5185\u5bb9\u4e0d\u53ef\u7528")
        val dialog = destination.key.dialogId
        val slot = c.messageAccount.getInt(message)
        val controller = c.getController.invoke(null, slot)!!
        check(!(target.frozen.invoke(controller) as Boolean)) { "\u5f53\u524d\u8d26\u53f7\u65e0\u6cd5\u53d1\u9001\u6d88\u606f" }
        check(dialog != 0L && !(c.encryptedDialog.invoke(null, dialog) as Boolean)) { "\u6682\u4e0d\u652f\u6301\u6b64\u4f1a\u8bdd\u7c7b\u578b" }
        check(c.id.getInt(owner) > 0 && c.sendState.getInt(owner) == 0) { "\u6d88\u606f\u5c1a\u672a\u53d1\u9001\u6210\u529f" }
        check(c.action.get(owner) == null && c.richMessage.get(owner) == null &&
            c.forbiddenKinds.none { it.invoke(message) as Boolean }) { "\u6682\u4e0d\u652f\u6301\u6b64\u7279\u6b8a\u6d88\u606f\u7c7b\u578b" }
        val media = c.mediaField.get(owner)
        check(!MessageSendPolicy.isSelfDestructing(c.ttl.getInt(owner), media?.let(c.mediaTtl::getInt) ?: 0, c.ttlPeriod.getInt(owner))) {
            "\u4e0d\u652f\u6301\u9605\u540e\u5373\u711a\u6d88\u606f"
        }
        val chat = if (dialog < 0) target.getChat.invoke(controller, -dialog) else null
        check(dialog > 0 || chat != null) { "\u76ee\u6807\u7fa4\u4fe1\u606f\u4e0d\u53ef\u7528" }
        if (chat != null) {
            check(target.canWrite.invoke(null, chat) as Boolean) { "\u76ee\u6807\u7fa4\u6ca1\u6709\u53d1\u9001\u6743\u9650" }
            val permission = target.canSend.invoke(null, chat, message) as Int
            check(permission == 0) { "Telegram \u4e0d\u5141\u8bb8\u5411\u76ee\u6807\u7fa4\u53d1\u9001\u6b64\u5185\u5bb9\uff08$permission\uff09" }
            val textOnly = media == null || media.javaClass.simpleName in setOf("TL_messageMediaEmpty", "TL_messageMediaWebPage")
            check(!textOnly || target.permissionChecks.getValue("canSendPlain").invoke(null, chat) == true) { "\u76ee\u6807\u7fa4\u4e0d\u5141\u8bb8\u53d1\u9001\u6587\u672c" }
        }
        check(destination.key.topicId == 0L || destination.thread != null || destination.key.monoForumPeer != 0L) {
            "\u8bdd\u9898\u4fe1\u606f\u672a\u5c31\u7eea\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u8bdd\u9898"
        }
        val helper = target.instance.invoke(null, slot)!!
        val copy = requestedCopy || MessageSendPolicy.requiresCopy(
            c.isProtectedGroup(message, selection.chat), c.noForwards.getBoolean(owner), c.canForward.invoke(message) as Boolean,
        )
        if (!copy) return {
            val result = target.forward.invoke(
                helper, arrayListOf(message), dialog, false, false, notify, scheduleDate, scheduleRepeat,
                destination.thread, -1, 0L, destination.key.monoForumPeer, destination.suggestion,
            ) as Int
            check(result == 0) { "Telegram \u62d2\u7edd\u53d1\u9001\uff08$result\uff09" }
        }
        val params = copyParams(owner, message, destination)
        target.paramsNotify.setBoolean(params, notify)
        target.paramsSchedule.setInt(params, scheduleDate)
        target.paramsScheduleRepeat.setInt(params, scheduleRepeat)
        return { target.send.invoke(helper, params); Unit }
    }

    private fun copyParams(owner: Any, message: Any, destination: Destination): Any {
        // Telegram may normalize these objects. Never hand it the selected owner's mutable fields.
        val copyOwner = codec.cloneOwner(owner)
        val media = c.mediaField.get(copyOwner)
        val mediaName = media?.javaClass?.simpleName
        val textOnly = media == null || mediaName in setOf("TL_messageMediaEmpty", "TL_messageMediaWebPage")
        check(textOnly || mediaName in setOf("TL_messageMediaPhoto", "TL_messageMediaDocument")) {
            "\u6682\u4e0d\u652f\u6301\u5c06\u6b64\u7279\u6b8a\u5a92\u4f53\u4f5c\u4e3a\u65b0\u6d88\u606f\u53d1\u9001\uff0c\u672a\u53d1\u9001\u4efb\u4f55\u5185\u5bb9"
        }
        val text = c.text.get(copyOwner) as? String ?: ""
        check(!textOnly || text.isNotEmpty()) { "\u6ca1\u6709\u53ef\u53d1\u9001\u7684\u6587\u672c" }
        val params = target.textParams.invoke(null, if (textOnly) text else null, destination.key.dialogId)!!
        target.paramsEntities.set(params, ArrayList(c.entities.get(copyOwner) as? List<*> ?: emptyList<Any>()))
        // Topic root only, never the source message or the user's active quoted reply.
        target.paramsReply.set(params, destination.thread)
        target.paramsTop.set(params, destination.thread)
        target.paramsMonoPeer.setLong(params, destination.key.monoForumPeer)
        target.paramsSuggestion.set(params, destination.suggestion)
        if (!textOnly) {
            target.paramsCaption.set(params, text)
            target.paramsPath.set(params, c.attachPath.get(owner))
            target.paramsParent.set(params, message)
            target.paramsInvert.setBoolean(params, target.invert.getBoolean(copyOwner))
            target.paramsSpoiler.setBoolean(params, target.spoiler.getBoolean(media))
            if (mediaName == "TL_messageMediaPhoto") {
                val photo = target.mediaPhoto.get(media)
                check(photo != null && target.paramsPhoto.type.isInstance(photo)) { "\u56fe\u7247\u6570\u636e\u4e0d\u53ef\u7528" }
                target.paramsPhoto.set(params, photo)
            } else {
                val document = target.mediaDocument.get(media)
                check(document != null && target.paramsDocument.type.isInstance(document)) { "\u6587\u4ef6\u6570\u636e\u4e0d\u53ef\u7528" }
                target.paramsDocument.set(params, document)
            }
        }
        return params
    }
}
