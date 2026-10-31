package com.aoya.telegami.core

import android.app.Activity
import android.view.View
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod

/** Descriptors verified in artifacts/dexsql/message-tools-1310. */
class TelegramMessageResolver(val loader: ClassLoader) {
    fun type(name: String): Class<*> = loader.loadClass(name)
    val int = Int::class.javaPrimitiveType!!
    val long = Long::class.javaPrimitiveType!!
    val bool = Boolean::class.javaPrimitiveType!!
    val list = ArrayList::class.java
    val message = type("org.telegram.messenger.MessageObject")
    val owner = type("org.telegram.tgnet.TLRPC\$Message")
    val media = type("org.telegram.tgnet.TLRPC\$MessageMedia")
    val chat = type("org.telegram.ui.ko")
    val chatType = type("org.telegram.tgnet.TLRPC\$Chat")
    val controller = type("org.telegram.messenger.MessagesController")
    val ownerField = message.exactField("messageOwner", owner)
    val text = owner.exactField("message", String::class.java)
    val entities = owner.exactField("entities", list)
    val mediaField = owner.exactField("media", media)
    val id = owner.exactField("id", int)
    val date = owner.exactField("date", int)
    val editDate = owner.exactField("edit_date", int)
    val noForwards = owner.exactField("noforwards", bool)
    val ttl = owner.exactField("ttl", int)
    val ttlPeriod = owner.exactField("ttl_period", int)
    val sendState = owner.exactField("send_state", int)
    val action = owner.exactField("action", type("org.telegram.tgnet.TLRPC\$MessageAction"))
    val richMessage = owner.exactField("rich_message", type("org.telegram.tgnet.tl.TL_iv\$RichMessage"))
    val attachPath = owner.exactField("attachPath", String::class.java)
    val mediaTtl = media.exactField("ttl_seconds", int)
    val dialogForOwner = message.exactMethod("getDialogId", long, owner)
    val messageAccount = message.exactField("currentAccount", int)
    val selected = chat.exactField("c5", message)
    val currentChat = chat.exactField("e", chatType)
    val chatMode = chat.exactField("Q3", int)
    val fillMenu = chat.exactMethod("q8", Void.TYPE, message, list, list, list)
    val dispatch = chat.exactMethod("Fa", Void.TYPE, int)
    val parentActivity = chat.exactMethod("getParentActivity", Activity::class.java)
    val getController = controller.exactMethod("getInstance", controller, int)
    val encryptedDialog = type("org.telegram.messenger.DialogObject").exactMethod("isEncryptedDialog", bool, long)
    val protectedChat = controller.exactMethod("isChatNoForwards", bool, chatType)
    val canForward = message.exactMethod("canForwardMessage", bool)
    val scheduled = message.exactField("scheduled", bool)
    val forbiddenKinds = listOf("isSecretMedia", "isSponsored", "isEphemeral").map {
        message.exactMethod(it, bool)
    }

    fun isProtectedGroup(messageObject: Any, chatObject: Any): Boolean {
        val slot = messageAccount.getInt(messageObject)
        val ownerObject = ownerField.get(messageObject) ?: return false
        return (dialogForOwner.invoke(null, ownerObject) as Long) < 0 &&
            currentChat.get(chatObject)?.let {
                protectedChat.invoke(getController.invoke(null, slot), it) as Boolean
            } == true
    }
}

class TelegramSendResolver(val common: TelegramMessageResolver) {
    private val c = common
    val helper = c.type("org.telegram.messenger.SendMessagesHelper")
    val params = c.type("org.telegram.messenger.SendMessagesHelper\$SendMessageParams")
    val instance = helper.exactMethod("getInstance", helper, c.int)
    val suggestion = c.type("org.telegram.messenger.MessageSuggestionParams")
    val forward = helper.exactMethod(
        "sendMessage", c.int, c.list, c.long, c.bool, c.bool, c.bool, c.int, c.int,
        c.message, c.int, c.long, c.long, suggestion,
    )
    val send = helper.exactMethod("sendMessage", Void.TYPE, params)
    val textParams = params.exactMethod("of", params, String::class.java, c.long)
    val paramsEntities = params.exactField("entities", c.list)
    val paramsCaption = params.exactField("caption", String::class.java)
    val paramsPhoto = params.exactField("photo", c.type("org.telegram.tgnet.TLRPC\$TL_photo"))
    val paramsDocument = params.exactField("document", c.type("org.telegram.tgnet.TLRPC\$TL_document"))
    val paramsPath = params.exactField("path", String::class.java)
    val paramsParent = params.exactField("parentObject", Any::class.java)
    val paramsSpoiler = params.exactField("hasMediaSpoilers", c.bool)
    val paramsInvert = params.exactField("invert_media", c.bool)
    val paramsReply = params.exactField("replyToMsg", c.message)
    val paramsTop = params.exactField("replyToTopMsg", c.message)
    val paramsMonoPeer = params.exactField("monoForumPeer", c.long)
    val paramsSuggestion = params.exactField("suggestionParams", suggestion)
    val paramsNotify = params.exactField("notify", c.bool)
    val paramsSchedule = params.exactField("scheduleDate", c.int)
    val paramsScheduleRepeat = params.exactField("scheduleRepeatPeriod", c.int)
    val invert = c.owner.exactField("invert_media", c.bool)
    val spoiler = c.media.exactField("spoiler", c.bool)
    val mediaPhoto = c.media.exactField("photo", c.type("org.telegram.tgnet.TLRPC\$Photo"))
    val mediaDocument = c.media.exactField("document", c.type("org.telegram.tgnet.TLRPC\$Document"))
    val slowMode = c.chat.exactMethod("h7", c.bool, View::class.java)
    val thread = c.chat.exactField("W3", c.message)
    val topicId = c.chat.exactMethod("d", c.long)
    val monoPeer = c.chat.exactMethod("S8", c.long)
    val currentSuggestion = c.chat.exactField("f5", suggestion)
    val frozen = c.controller.exactMethod("isFrozen", c.bool)
    val getChat = c.controller.exactMethod("getChat", c.chatType, Long::class.javaObjectType)
    val canSend = helper.exactMethod("canSendMessageToChat", c.int, c.chatType, c.message)
    private val mediaController = c.type("org.telegram.messenger.MediaDataController")
    val mediaControllerInstance = mediaController.exactMethod("getInstance", mediaController, c.int)
    val extractEntities = mediaController.exactMethod("getEntities", c.list, Array<CharSequence>::class.java, c.bool)
    private val chatObject = c.type("org.telegram.messenger.ChatObject")
    val forum = chatObject.exactMethod("isForum", c.bool, c.chatType)
    val monoForum = chatObject.exactMethod("isMonoForum", c.bool, c.chatType)
    val canWrite = chatObject.exactMethod("canWriteToChat", c.bool, c.chatType)
    val permissionChecks = listOf(
        "canSendPlain", "canSendPhoto", "canSendVideo", "canSendDocument",
        "canSendMusic", "canSendVoice", "canSendStickers", "canSendRoundVideo",
    ).associateWith { chatObject.exactMethod(it, c.bool, c.chatType) }
    val kinds = listOf("isPhoto", "isVideo", "isMusic", "isVoice", "isSticker", "isAnimatedSticker", "isRoundVideo")
        .associateWith { c.message.exactMethod(it, c.bool) }
}
