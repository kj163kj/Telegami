package com.aoya.telegami.translation

import com.aoya.telegami.core.TelegramMessageResolver
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod

/** Exact native contracts: artifacts/dexsql/translation-1310. */
class TelegramTranslationResolver(val c: TelegramMessageResolver) {
    val textType = c.type("org.telegram.tgnet.TLRPC\$TL_textWithEntities")
    val text = textType.exactField("text", String::class.java)
    val entities = textType.exactField("entities", c.list)
    val requestType = c.type("org.telegram.tgnet.TLRPC\$TL_messages_translateText")
    val requestFlags = requestType.exactField("flags", c.int)
    val requestTexts = requestType.exactField("text", c.list)
    val requestLanguage = requestType.exactField("to_lang", String::class.java)
    val resultType = c.type("org.telegram.tgnet.TLRPC\$TL_messages_translateResult")
    val results = resultType.exactField("result", c.list)
    val errorType = c.type("org.telegram.tgnet.TLRPC\$TL_error")
    val connections = c.type("org.telegram.tgnet.ConnectionsManager")
    val getConnections = connections.exactMethod("getInstance", connections, c.int)
    val delegate = c.type("org.telegram.tgnet.RequestDelegate")
    val send = connections.exactMethod("sendRequest", c.int, c.type("org.telegram.tgnet.TLObject"), delegate)
    val cancel = connections.exactMethod("cancelRequest", Void.TYPE, c.int, c.bool)
    private val entity = c.type("org.telegram.tgnet.TLRPC\$MessageEntity")
    private val offset = entity.exactField("offset", c.int)
    private val length = entity.exactField("length", c.int)
    private val url = entity.exactField("url", String::class.java)
    private val language = entity.exactField("language", String::class.java)
    private val collapsed = entity.exactField("collapsed", c.bool)
    private val kinds = listOf("Bold", "Italic", "Underline", "Strike", "Code", "Pre", "TextUrl", "Mention",
        "MentionName", "CustomEmoji", "Blockquote", "Spoiler", "Url", "Email", "Hashtag", "BotCommand", "Phone", "Cashtag")
        .associateWith { c.type("org.telegram.tgnet.TLRPC\$TL_messageEntity$it") }
    private val userId = kinds.getValue("MentionName").exactField("user_id", c.long)
    private val documentId = kinds.getValue("CustomEmoji").exactField("document_id", c.long)

    fun read(value: Any): TranslationText = TranslationText(text.get(value) as? String ?: "", readEntities(entities.get(value)))

    fun readEntities(value: Any?): List<TranslationEntity> = (value as? List<*>)?.mapNotNull { item ->
        val kind = kinds.entries.firstOrNull { it.value.isInstance(item) }?.key ?: return@mapNotNull null
        TranslationEntity(kind, offset.getInt(item), length.getInt(item), url.get(item) as? String,
            language.get(item) as? String, when (kind) { "MentionName" -> userId.getLong(item); "CustomEmoji" -> documentId.getLong(item); else -> null },
            collapsed.getBoolean(item))
    }.orEmpty()

    fun native(value: TranslationText): Any = textType.getConstructor().newInstance().also { result ->
        text.set(result, value.text)
        entities.set(result, ArrayList(value.entities.mapNotNull { e ->
            if (e.offset < 0 || e.length <= 0 || e.offset.toLong() + e.length > value.text.length) return@mapNotNull null
            kinds[e.kind]?.getConstructor()?.newInstance()?.also { item ->
                offset.setInt(item, e.offset); length.setInt(item, e.length)
                url.set(item, e.url); language.set(item, e.language); collapsed.setBoolean(item, e.collapsed)
                if (e.kind == "MentionName") userId.setLong(item, e.identity ?: 0)
                if (e.kind == "CustomEmoji") documentId.setLong(item, e.identity ?: 0)
            }
        }))
    }
}
