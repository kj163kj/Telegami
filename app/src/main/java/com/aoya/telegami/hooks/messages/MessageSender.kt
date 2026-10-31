package com.aoya.telegami.hooks.messages

import android.app.AlertDialog
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.data.MessageKey
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger

class MessageSender(private val target: TelegramSendResolver) {
    private val c = target.common
    private val gate = MessageActionGate<MessageKey>()

    fun execute(selection: MessageMenuActions.Selection, asCopy: Boolean, configKey: String, confirmationKey: String) {
        val owner = c.ownerField.get(selection.message) ?: return
        val slot = c.messageAccount.getInt(selection.message)
        val accountId = Telegami.telegram.accountIdForSlot(slot)
        val dialog = c.dialogForOwner.invoke(null, owner) as Long
        val key = MessageKey(accountId, dialog, c.id.getInt(owner))
        if (!gate.acquire(key)) {
            MessageMenuActions.toast(selection.activity, "操作过于频繁，请稍后重试")
            return
        }
        var performed = false
        val send = {
            try {
                check(Config.isFeatureEnabled(configKey)) { "功能已关闭" }
                check(Telegami.telegram.accountIdForSlot(slot) == accountId) { "账号已切换，请重新选择消息" }
                check(Telegami.telegram.chatDialog.getLong(selection.chat) == dialog) { "聊天已变化，请重新选择消息" }
                check(!selection.activity.isFinishing && !selection.activity.isDestroyed) { "聊天页面已关闭" }
                sendNow(selection, asCopy)
                performed = true
                Logger.i("Native send accepted for message ${key.messageId}", "MessageTools", xposed = true)
            } catch (error: Throwable) {
                Logger.e("Native message send rejected", error, "MessageTools")
                MessageMenuActions.toast(selection.activity, error.message ?: "发送失败")
            } finally {
                gate.release(key, performed)
            }
        }
        try {
            if (Config.getBoolean(confirmationKey, true)) {
                AlertDialog.Builder(selection.activity)
                    .setTitle(if (asCopy) "作为新消息发送" else "复读")
                    .setMessage("将选中消息发送到当前聊天？")
                    .setPositiveButton("发送") { _, _ -> send() }
                    .setNegativeButton("取消", null)
                    .setOnDismissListener { gate.release(key, performed) }
                    .show()
            } else {
                send()
            }
        } catch (error: Throwable) {
            gate.release(key, false)
            throw error
        }
    }

    private fun sendNow(selection: MessageMenuActions.Selection, requestedCopy: Boolean) {
        val message = selection.message
        val owner = c.ownerField.get(message) ?: error("消息内容不可用")
        val dialog = c.dialogForOwner.invoke(null, owner) as Long
        val slot = c.messageAccount.getInt(message)
        check(dialog != 0L && !(c.encryptedDialog.invoke(null, dialog) as Boolean)) { "暂不支持此会话类型" }
        check(c.chatMode.getInt(selection.chat) == 0) { "暂不支持定时、快捷回复或特殊会话" }
        val chat = c.currentChat.get(selection.chat)
        if (chat != null) {
            check(!(target.forum.invoke(null, chat) as Boolean) && !(target.monoForum.invoke(null, chat) as Boolean)) {
                "暂不支持话题或频道私信复读，避免发送到错误位置"
            }
            check(target.canWrite.invoke(null, chat) as Boolean) { "当前聊天没有发送权限" }
        }
        check(!(target.slowMode.invoke(selection.chat, selection.activity.window.decorView) as Boolean)) {
            "慢速模式限制，请等待后再发送"
        }
        check(c.id.getInt(owner) > 0 && c.sendState.getInt(owner) == 0 && !c.scheduled.getBoolean(message)) {
            "只能重新发送已发送成功的普通消息"
        }
        check(c.action.get(owner) == null && c.richMessage.get(owner) == null &&
            c.forbiddenKinds.none { it.invoke(message) as Boolean }) { "暂不支持此消息类型" }
        val media = c.mediaField.get(owner)
        check(c.ttl.getInt(owner) == 0 && c.ttlPeriod.getInt(owner) == 0 &&
            (media == null || c.mediaTtl.getInt(media) == 0)) { "不支持阅后即焚或限时消息" }
        val mediaName = media?.javaClass?.simpleName
        val textOnly = media == null || mediaName in setOf("TL_messageMediaEmpty", "TL_messageMediaWebPage")
        check(textOnly || mediaName in setOf("TL_messageMediaPhoto", "TL_messageMediaDocument")) {
            "暂不支持此媒体类型，未发送任何内容"
        }
        if (chat != null) {
            val permission = when {
                textOnly -> "canSendPlain"
                target.kinds.getValue("isPhoto").invoke(message) == true -> "canSendPhoto"
                target.kinds.getValue("isSticker").invoke(message) == true ||
                    target.kinds.getValue("isAnimatedSticker").invoke(message) == true -> "canSendStickers"
                target.kinds.getValue("isRoundVideo").invoke(message) == true -> "canSendRoundVideo"
                target.kinds.getValue("isVoice").invoke(message) == true -> "canSendVoice"
                target.kinds.getValue("isMusic").invoke(message) == true -> "canSendMusic"
                target.kinds.getValue("isVideo").invoke(message) == true -> "canSendVideo"
                else -> "canSendDocument"
            }
            check(target.permissionChecks.getValue(permission).invoke(null, chat) as Boolean) { "当前聊天不允许发送此类内容" }
        }
        val protected = c.isProtectedGroup(message, selection.chat) || c.noForwards.getBoolean(owner)
        val copy = requestedCopy || protected
        val helper = target.instance.invoke(null, slot)!!
        if (!copy) {
            check(c.canForward.invoke(message) as Boolean) { "此消息不允许转发" }
            val result = target.forward.invoke(helper, arrayListOf(message), dialog, false, false, true, 0, 0L) as Int
            check(result == 0) { "Telegram 拒绝发送（$result）" }
            return
        }
        check(textOnly || !protected) { "受保护媒体暂不支持重新发送；未修改保护标记" }
        val text = c.text.get(owner) as? String ?: ""
        check(!textOnly || text.isNotEmpty()) { "没有可发送的文本" }
        val params = target.textParams.invoke(null, if (textOnly) text else null, dialog)!!
        target.paramsEntities.set(params, ArrayList(c.entities.get(owner) as? List<*> ?: emptyList<Any>()))
        if (!textOnly) {
            target.paramsCaption.set(params, text)
            target.paramsPath.set(params, c.attachPath.get(owner))
            target.paramsParent.set(params, message)
            target.paramsInvert.setBoolean(params, target.invert.getBoolean(owner))
            target.paramsSpoiler.setBoolean(params, target.spoiler.getBoolean(media))
            if (mediaName == "TL_messageMediaPhoto") {
                val photo = target.mediaPhoto.get(media)
                check(photo != null && target.paramsPhoto.type.isInstance(photo)) { "图片数据不可用" }
                target.paramsPhoto.set(params, photo)
            } else {
                val document = target.mediaDocument.get(media)
                check(document != null && target.paramsDocument.type.isInstance(document)) { "文件数据不可用" }
                target.paramsDocument.set(params, document)
            }
        }
        target.send.invoke(helper, params)
    }
}
