package com.aoya.telegami.hooks.messages

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.text.Html
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.service.Config

object MessageCopyHook {
    fun install() {
        val c = MessageMenuActions.target
        val sender = MessageSender(TelegramSendResolver(c))
        fun canCopy(chat: Any, message: Any): Boolean {
            if (!Config.isFeatureEnabled("enable_message_copy") || !c.isProtectedGroup(message, chat)) return false
            val owner = c.ownerField.get(message) ?: return false
            val media = c.mediaField.get(owner)
            return c.ttl.getInt(owner) == 0 && c.ttlPeriod.getInt(owner) == 0 &&
                (media == null || c.mediaTtl.getInt(media) == 0) &&
                c.forbiddenKinds.none { it.invoke(message) as Boolean } &&
                !(c.text.get(owner) as? String).isNullOrEmpty()
        }
        MessageMenuActions.register(
            MessageMenuActions.Action(
                MessageMenuActions.COPY, "\u590d\u5236\u6587\u672c", "msg_copy", ::canCopy,
                { selection ->
                    if (canCopy(selection.chat, selection.message)) {
                        val owner = c.ownerField.get(selection.message)!!
                        val text = c.text.get(owner) as String
                        val styled = MessageText.styled(text, MessageText.entities(c, owner))
                        val clipboard = selection.activity.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                        clipboard.setPrimaryClip(ClipData.newHtmlText(
                            "Telegram", styled, Html.toHtml(styled, Html.TO_HTML_PARAGRAPH_LINES_CONSECUTIVE),
                        ))
                        MessageMenuActions.toast(selection.activity, "\u5df2\u590d\u5236")
                    }
                },
            ),
        )
        MessageMenuActions.register(
            MessageMenuActions.Action(
                MessageMenuActions.SEND_COPY, "\u4f5c\u4e3a\u65b0\u6d88\u606f\u53d1\u9001", "msg_forward_replace",
                { _, _ -> Config.isFeatureEnabled("enable_message_copy") },
                { sender.execute(it, true, "enable_message_copy", "enable_copy_confirmation") },
                fallbackIcons = listOf("msg_copy", "msg_forward"),
            ),
        )
    }
}
