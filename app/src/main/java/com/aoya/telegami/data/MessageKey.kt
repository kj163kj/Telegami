package com.aoya.telegami.data

data class DialogKey(val accountId: Long, val dialogId: Long)

data class MessageKey(val accountId: Long, val dialogId: Long, val messageId: Int)
