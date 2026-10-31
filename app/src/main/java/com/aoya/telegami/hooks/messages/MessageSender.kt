package com.aoya.telegami.hooks.messages

import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.core.TelegramMediaResolver
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.hooks.UnlockChannelFeatures
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger

class MessageSender(private val target: TelegramSendResolver) {
    private val c = target.common
    private val codec by lazy { TelegramHistoryResolver(c) }
    private val dialogs by lazy { NativeMessageDialogs(c) }
    private val mediaResolver by lazy { TelegramMediaResolver(target) }

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

    fun repeat(selection: MessageMenuActions.Selection) {
        val configKey = "enable_message_repeat"
        val confirmationKey = "enable_repeat_confirmation"
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
                prepare(selection, destination, false)()
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
                dialogs.show(
                    selection.activity, selection.chat, "\u590d\u8bfb",
                    "\u5c06\u9009\u4e2d\u6d88\u606f\u53d1\u9001\u5230\u5f53\u524d\u804a\u5929\u6216\u8bdd\u9898\uff1f",
                    positiveText = "\u53d1\u9001",
                    onPositive = send,
                    onNegative = { gate.release(key, false) },
                    onCancel = { gate.release(key, false) },
                )
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
        localMedia: LocalForwardMedia? = null,
        textOnly: Boolean = false,
    ): () -> Unit {
        val message = selection.message
        val owner = validateSource(message)
        val dialog = destination.key.dialogId
        val slot = c.messageAccount.getInt(message)
        val controller = c.getController.invoke(null, slot)!!
        check(!(target.frozen.invoke(controller) as Boolean)) { "\u5f53\u524d\u8d26\u53f7\u65e0\u6cd5\u53d1\u9001\u6d88\u606f" }
        check(dialog != 0L && !(c.encryptedDialog.invoke(null, dialog) as Boolean)) { "\u6682\u4e0d\u652f\u6301\u6b64\u4f1a\u8bdd\u7c7b\u578b" }
        val media = c.mediaField.get(owner)
        val chat = if (dialog < 0) target.getChat.invoke(controller, -dialog) else null
        check(dialog > 0 || chat != null) { "\u76ee\u6807\u7fa4\u4fe1\u606f\u4e0d\u53ef\u7528" }
        if (chat != null) {
            check(target.canWrite.invoke(null, chat) as Boolean) { "\u76ee\u6807\u7fa4\u6ca1\u6709\u53d1\u9001\u6743\u9650" }
            val permission = if (textOnly) 0 else target.canSend.invoke(null, chat, message) as Int
            check(permission == 0) { "Telegram \u4e0d\u5141\u8bb8\u5411\u76ee\u6807\u7fa4\u53d1\u9001\u6b64\u5185\u5bb9\uff08$permission\uff09" }
            val plain = textOnly || media == null || media.javaClass.simpleName in setOf("TL_messageMediaEmpty", "TL_messageMediaWebPage")
            check(!plain || target.permissionChecks.getValue("canSendPlain").invoke(null, chat) == true) { "\u76ee\u6807\u7fa4\u4e0d\u5141\u8bb8\u53d1\u9001\u6587\u672c" }
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
        val params = copyParams(owner, message, destination, localMedia, textOnly)
        target.paramsNotify.setBoolean(params, notify)
        target.paramsSchedule.setInt(params, scheduleDate)
        target.paramsScheduleRepeat.setInt(params, scheduleRepeat)
        return {
            check(localMedia == null || mediaResolver.completeFile(localMedia.file, 0)) {
                "\u672c\u5730\u5a92\u4f53\u6587\u4ef6\u5df2\u4e0d\u53ef\u7528\uff0c\u672a\u53d1\u9001"
            }
            target.send.invoke(helper, params)
            Unit
        }
    }

    fun isProtectedSource(message: Any): Boolean {
        val owner = c.ownerField.get(message) ?: return false
        if (c.noForwards.getBoolean(owner)) return true
        val dialog = c.dialogForOwner.invoke(null, owner) as Long
        if (dialog >= 0) return false
        val controller = c.getController.invoke(null, c.messageAccount.getInt(message))
        val chat = target.getChat.invoke(controller, -dialog) ?: return false
        return UnlockChannelFeatures.withOriginalProtection {
            c.protectedChat.invoke(controller, chat) as Boolean
        }
    }

    fun validateSource(message: Any): Any {
        val owner = c.ownerField.get(message) ?: error("\u6d88\u606f\u5185\u5bb9\u4e0d\u53ef\u7528")
        check(c.id.getInt(owner) > 0 && c.sendState.getInt(owner) == 0) { "\u6d88\u606f\u5c1a\u672a\u53d1\u9001\u6210\u529f" }
        check(c.action.get(owner) == null && c.richMessage.get(owner) == null &&
            c.forbiddenKinds.none { it.invoke(message) as Boolean }) { "\u6682\u4e0d\u652f\u6301\u6b64\u7279\u6b8a\u6d88\u606f\u7c7b\u578b" }
        val media = c.mediaField.get(owner)
        check(!MessageSendPolicy.isSelfDestructing(c.ttl.getInt(owner), media?.let(c.mediaTtl::getInt) ?: 0, c.ttlPeriod.getInt(owner))) {
            "\u4e0d\u652f\u6301\u9605\u540e\u5373\u711a\u6d88\u606f"
        }
        return owner
    }

    fun prepareComment(
        slot: Int, destination: Destination, comment: CharSequence,
        notify: Boolean, scheduleDate: Int, scheduleRepeat: Int,
    ): () -> Unit {
        val controller = c.getController.invoke(null, slot)!!
        val dialog = destination.key.dialogId
        val chat = if (dialog < 0) target.getChat.invoke(controller, -dialog) else null
        check(chat == null || target.permissionChecks.getValue("canSendPlain").invoke(null, chat) == true) {
            "\u76ee\u6807\u7fa4\u4e0d\u5141\u8bb8\u53d1\u9001\u6587\u672c"
        }
        val text = arrayOf(comment)
        val entities = target.extractEntities.invoke(target.mediaControllerInstance.invoke(null, slot), text, true)
        val params = target.textParams.invoke(null, text[0].toString(), dialog)!!
        target.paramsEntities.set(params, entities)
        target.paramsReply.set(params, destination.thread)
        target.paramsTop.set(params, destination.thread)
        target.paramsMonoPeer.setLong(params, destination.key.monoForumPeer)
        target.paramsNotify.setBoolean(params, notify)
        target.paramsSchedule.setInt(params, scheduleDate)
        target.paramsScheduleRepeat.setInt(params, scheduleRepeat)
        val helper = target.instance.invoke(null, slot)!!
        return {
            target.send.invoke(helper, params)
            Unit
        }
    }

    private fun copyParams(
        owner: Any, message: Any, destination: Destination,
        localMedia: LocalForwardMedia?, forceText: Boolean,
    ): Any {
        // Telegram may normalize these objects. Never hand it the selected owner's mutable fields.
        val copyOwner = codec.cloneOwner(owner)
        val media = c.mediaField.get(copyOwner)
        val mediaName = media?.javaClass?.simpleName
        val textOnly = forceText || media == null || mediaName in setOf("TL_messageMediaEmpty", "TL_messageMediaWebPage")
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
            target.paramsPath.set(params, localMedia?.file?.absolutePath ?: c.attachPath.get(owner))
            target.paramsParent.set(params, if (localMedia == null) message else null)
            target.paramsInvert.setBoolean(params, target.invert.getBoolean(copyOwner))
            target.paramsSpoiler.setBoolean(params, target.spoiler.getBoolean(media))
            if (mediaName == "TL_messageMediaPhoto") {
                val photo = if (localMedia == null) target.mediaPhoto.get(media) else {
                    check(localMedia.photo != null) { "Local photo preparation is missing" }
                    mediaResolver.copyLocalPhoto(localMedia.photo)
                }
                check(photo != null && target.paramsPhoto.type.isInstance(photo)) { "\u56fe\u7247\u6570\u636e\u4e0d\u53ef\u7528" }
                target.paramsPhoto.set(params, photo)
            } else {
                val document = target.mediaDocument.get(media)
                check(document != null && target.paramsDocument.type.isInstance(document)) { "\u6587\u4ef6\u6570\u636e\u4e0d\u53ef\u7528" }
                if (localMedia != null) mediaResolver.makeLocalDocument(document, localMedia.file)
                target.paramsDocument.set(params, document)
            }
        }
        return params
    }
}
