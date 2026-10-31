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
        val forwardPicker = MessageForwardPicker(TelegramSendResolver(c))
        fun canCopy(chat: Any, message: Any): Boolean {
            if (!Config.isFeatureEnabled("enable_message_copy") || !c.isProtectedGroup(message, chat)) return false
            val owner = c.ownerField.get(message) ?: return false
            val media = c.mediaField.get(owner)
            return !MessageSendPolicy.isSelfDestructing(
                c.ttl.getInt(owner), media?.let(c.mediaTtl::getInt) ?: 0, c.ttlPeriod.getInt(owner),
            ) &&
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
                MessageMenuActions.SEND_COPY, "\u65e0\u6765\u6e90\u8f6c\u53d1", "msg_forward",
                { _, _ -> MessageForwardSession.visible(Config.isFeatureEnabled("enable_message_copy")) },
                forwardPicker::open,
                fallbackIcons = listOf("msg_forward_replace", "msg_copy"),
            ),
        )
    }
}
