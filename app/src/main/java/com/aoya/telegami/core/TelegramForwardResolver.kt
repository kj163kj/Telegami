package com.aoya.telegami.core

import android.os.Bundle
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
    val pickerDelegate = picker.exactField("B2", delegate)
    val currentAccount = fragment.exactMethod("getCurrentAccount", c.int)
    private val setAccount = fragment.exactMethod("setCurrentAccount", Void.TYPE, c.int)
    val present = fragment.exactMethod("presentFragment", c.bool, fragment)
    val finish = fragment.exactMethod("finishFragment", Void.TYPE)
    val selected = delegate.exactMethod("v", c.bool, picker, c.list, CharSequence::class.java, c.bool, c.bool, c.int, c.int, topicUi)
    val defaultD = delegate.exactMethod("D", c.bool)
    val defaultJ = delegate.exactMethod("J", c.bool, picker)

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

    fun destination(key: Any, slot: Int): MessageSender.Destination {
        check(topicKey.isInstance(key)) { "Unexpected native destination type" }
        val dialogId = keyDialog.getLong(key)
        val topicId = keyTopic.getLong(key)
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
