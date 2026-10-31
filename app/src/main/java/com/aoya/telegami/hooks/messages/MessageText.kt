package com.aoya.telegami.hooks.messages

import android.graphics.Typeface
import android.text.SpannableString
import android.text.Spanned
import android.text.style.StrikethroughSpan
import android.text.style.StyleSpan
import android.text.style.TypefaceSpan
import android.text.style.URLSpan
import android.text.style.UnderlineSpan
import com.aoya.telegami.core.TelegramMessageResolver
import com.aoya.telegami.util.exactField

data class TextEntity(val kind: String, val offset: Int, val length: Int, val url: String? = null) {
    fun fits(textLength: Int): Boolean = offset >= 0 && length > 0 &&
        offset <= textLength && length <= textLength - offset
}

object MessageText {
    fun entities(c: TelegramMessageResolver, owner: Any): List<TextEntity> {
        val type = c.type("org.telegram.tgnet.TLRPC\$MessageEntity")
        val offset = type.exactField("offset", c.int)
        val length = type.exactField("length", c.int)
        val url = type.exactField("url", String::class.java)
        return (c.entities.get(owner) as? List<*>)?.filterNotNull()?.map {
            TextEntity(it.javaClass.simpleName, offset.getInt(it), length.getInt(it), url.get(it) as? String)
        }.orEmpty()
    }

    fun styled(text: String, entities: List<TextEntity>): Spanned {
        val result = SpannableString(text)
        entities.filter { it.fits(text.length) }.forEach { entity ->
            val span = when (entity.kind) {
                "TL_messageEntityBold" -> StyleSpan(Typeface.BOLD)
                "TL_messageEntityItalic" -> StyleSpan(Typeface.ITALIC)
                "TL_messageEntityUnderline" -> UnderlineSpan()
                "TL_messageEntityStrike" -> StrikethroughSpan()
                "TL_messageEntityCode", "TL_messageEntityPre" -> TypefaceSpan("monospace")
                "TL_messageEntityTextUrl" -> entity.url?.takeIf(::safeUrl)?.let(::URLSpan)
                "TL_messageEntityUrl" -> text.substring(entity.offset, entity.offset + entity.length)
                    .takeIf(::safeUrl)?.let(::URLSpan)
                else -> null
            }
            if (span != null) result.setSpan(
                span, entity.offset, entity.offset + entity.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE,
            )
        }
        return result
    }

    private fun safeUrl(value: String): Boolean =
        value.startsWith("https://", true) || value.startsWith("http://", true) ||
            value.startsWith("mailto:", true) || value.startsWith("tg://", true)
}
