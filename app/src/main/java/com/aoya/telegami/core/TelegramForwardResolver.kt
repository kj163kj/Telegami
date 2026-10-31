package com.aoya.telegami.core

import android.os.Bundle
import android.util.SparseArray
import com.aoya.telegami.hooks.messages.MessageDestinationKey
import com.aoya.telegami.hooks.messages.MessageSender
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod

/** Native Fa(2), bz.M3, ko.v and jf.d.a contracts, not inferred obfuscated names. */
class TelegramForwardResolver(private val send: TelegramSendResolver) {
    private val c = send.common
    val picker = c.type("org.telegram.ui.bz")
    val delegate = c.type("org.telegram.ui.vy")
    private val fragment = c.type("org.telegram.ui.ActionBar.r2")
    private val topicUi = c.type("org.telegram.ui.og1")
    private val topicKey = c.type("org.telegram.messenger.MessagesStorage\$TopicKey")
    private val topic = c.type("org.telegram.tgnet.TLRPC\$TL_forumTopic")
    private val topics = c.type("org.telegram.messenger.TopicsController")
    private val keyDialog = topicKey.exactField("dialogId", c.long)
    private val keyTopic = topicKey.exactField("topicId", c.long)
    private val topicStart = topic.exactField("topicStartMessage", c.owner)
    private val topicMain = c.message.exactField("isTopicMainMessage", c.bool)
    private val getTopics = c.controller.exactMethod("getTopicsController", topics)
    private val findTopic = topics.exactMethod("findTopic", topic, c.long, c.long)
    private val manageMono = c.type("org.telegram.messenger.ChatObject")
        .exactMethod("canManageMonoForum", c.bool, c.int, c.chatType)
    private val messageConstructor = c.message.getConstructor(c.int, c.owner, c.bool, c.bool)
    private val chatConstructor = c.chat.getConstructor(Bundle::class.java)
    private val dialogObject = c.type("org.telegram.messenger.DialogObject")
    private val encryptedId = dialogObject.exactMethod("getEncryptedChatId", c.int, c.long)
    private val userDialog = dialogObject.exactMethod("isUserDialog", c.bool, c.long)
    private val checkCanOpen = c.controller.exactMethod("checkCanOpenChat", c.bool, Bundle::class.java, fragment)
    private val monoManageRights = c.controller.exactMethod("isMonoForumWithManageRights", c.bool, c.long)
    private val storage = c.type("org.telegram.messenger.MessagesStorage")
    private val storageInstance = storage.exactMethod("getInstance", storage, c.int)
    private val storageMonoForum = storage.exactMethod("isMonoForum", c.bool, c.long)
    private val applyTopic = c.type("jf.d").exactMethod("a", Void.TYPE, c.chat, topicKey)
    val pickerDelegate = picker.exactField("B2", delegate)
    val currentAccount = fragment.exactMethod("getCurrentAccount", c.int)
    private val setAccount = fragment.exactMethod("setCurrentAccount", Void.TYPE, c.int)
    val present = fragment.exactMethod("presentFragment", c.bool, fragment)
    private val presentReplacing = fragment.exactMethod("presentFragment", c.bool, fragment, c.bool)
    private val removeFromStack = fragment.exactMethod("removeSelfFromStack", Void.TYPE)
    val selected = delegate.exactMethod("v", c.bool, picker, c.list, CharSequence::class.java, c.bool, c.bool, c.int, c.int, topicUi)
    val defaultD = delegate.exactMethod("D", c.bool)
    val defaultJ = delegate.exactMethod("J", c.bool, picker)
    val nativeForward = c.chat.exactMethod(
        "v", c.bool, picker, c.list, CharSequence::class.java, c.bool, c.bool, c.int, c.int, topicUi,
    )
    private val grouped = c.type("org.telegram.messenger.MessageObject\$GroupedMessages")
    private val forwardMessage = c.chat.exactField("g5", c.message)
    private val forwardGroup = c.chat.exactField("h5", grouped)
    private val groupMessages = grouped.exactField("messages", c.list)
    private val sparseArrayType = java.lang.reflect.Array.newInstance(SparseArray::class.java, 0).javaClass
    private val selectedArrays = listOf("V5", "W5", "X5").map { c.chat.exactField(it, sparseArrayType) }
    private val editingMessage = c.chat.exactField("m5", c.message)
    private val endSelection = c.chat.exactMethod("ad", Void.TYPE, c.bool)

    /** Same single-message/album/ordered multi-selection extraction as native ko.v. */
    fun forwardSources(chat: Any): List<Any> {
        if (editingMessage.get(chat) != null) return emptyList()
        val single = forwardMessage.get(chat)
        if (single != null) {
            val group = forwardGroup.get(chat)
            return (group?.let { groupMessages.get(it) as? List<*> } ?: listOf(single)).filterNotNull()
        }
        val arrays = selectedArrays.first().get(chat) as? Array<*> ?: return emptyList()
        return arrays.reversed().flatMap {
            val array = it as? SparseArray<*> ?: return@flatMap emptyList()
            (0 until array.size()).map { index -> array.keyAt(index) }.sorted()
                .mapNotNull { key -> array.get(key) }
        }
    }

    fun clearForwardSelection(chat: Any) {
        forwardMessage.set(chat, null)
        forwardGroup.set(chat, null)
        selectedArrays.forEach { field ->
            (field.get(chat) as? Array<*>)?.forEach { (it as? SparseArray<*>)?.clear() }
        }
        endSelection.invoke(chat, false)
    }

    fun newPicker(slot: Int): Any {
        val args = Bundle().apply {
            putBoolean("onlySelect", true)
            putInt("dialogsType", 3)
            putInt("messagesCount", 1)
            putBoolean("canSelectTopics", true)
        }
        return picker.getConstructor(Bundle::class.java).newInstance(args).also {
            setAccount.invoke(it, slot)
        }
    }

    fun detachedMessage(slot: Int, owner: Any): Any = messageConstructor.newInstance(slot, owner, false, false)

    fun destinationIdentity(key: Any): MessageDestinationKey {
        check(topicKey.isInstance(key)) { "Unexpected native destination type" }
        return MessageDestinationKey(keyDialog.getLong(key), keyTopic.getLong(key))
    }

    /** Same Bundle, topic application and replacing presentation as native ko.v. */
    fun openDestination(sourceChat: Any, fromPicker: Any, key: Any, slot: Int, fromTopicUi: Boolean) {
        val identity = destinationIdentity(key)
        val dialog = identity.dialogId
        check(dialog != 0L) { "Invalid native destination" }
        val controller = c.getController.invoke(null, slot)!!
        val args = Bundle().apply {
            putBoolean("historyPreloaded", false)
            when {
                c.encryptedDialog.invoke(null, dialog) == true -> putInt("enc_id", encryptedId.invoke(null, dialog) as Int)
                userDialog.invoke(null, dialog) == true -> putLong("user_id", dialog)
                else -> putLong("chat_id", -dialog)
            }
            if (storageMonoForum.invoke(storageInstance.invoke(null, slot), dialog) == true) {
                putInt("chatMode", 8)
                if (monoManageRights.invoke(controller, dialog) != true) putBoolean("isSubscriberSuggestions", true)
            }
        }
        check(checkCanOpen.invoke(controller, args, fromPicker) == true) { "Telegram \u65e0\u6cd5\u6253\u5f00\u76ee\u6807\u4f1a\u8bdd" }
        val chat = chatConstructor.newInstance(args)
        setAccount.invoke(chat, slot)
        if (identity.topicId != 0L || fromTopicUi) {
            applyTopic.invoke(null, chat, key)
            removeFromStack.invoke(fromPicker)
        }
        check(presentReplacing.invoke(sourceChat, chat, true) == true) { "\u65e0\u6cd5\u8fdb\u5165\u76ee\u6807\u804a\u5929" }
    }

    fun destination(key: Any, slot: Int): MessageSender.Destination {
        val (dialogId, topicId) = destinationIdentity(key)
        if (topicId == 0L) return MessageSender.Destination(MessageDestinationKey(dialogId))
        val controller = c.getController.invoke(null, slot)!!
        val chat = if (dialogId < 0) send.getChat.invoke(controller, -dialogId) else null
        if (chat != null && send.monoForum.invoke(null, chat) == true && manageMono.invoke(null, slot, chat) == true) {
            return MessageSender.Destination(MessageDestinationKey(dialogId, topicId, topicId))
        }
        val forumTopic = findTopic.invoke(getTopics.invoke(controller), -dialogId, topicId)
            ?: error("\u8bdd\u9898\u4fe1\u606f\u672a\u5c31\u7eea\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u8bdd\u9898")
        val owner = topicStart.get(forumTopic) ?: error("\u8bdd\u9898\u6839\u6d88\u606f\u4e0d\u53ef\u7528")
        val root = detachedMessage(slot, owner)
        topicMain.setBoolean(root, true)
        return MessageSender.Destination(MessageDestinationKey(dialogId, topicId), root)
    }
}
