package com.aoya.telegami.hooks.messages

import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.service.Config

object MessageRepeatHook {
    fun install() {
        val sender = MessageSender(TelegramSendResolver(MessageMenuActions.target))
        MessageMenuActions.register(
            MessageMenuActions.Action(
                MessageMenuActions.REPEAT, "复读", "msg_forward",
                { _, _ -> Config.isFeatureEnabled("enable_message_repeat") },
                { sender.execute(it, false, "enable_message_repeat", "enable_repeat_confirmation") },
            ),
        )
    }
}
