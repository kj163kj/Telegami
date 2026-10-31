package com.aoya.telegami.translation

import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode

/** HTMLKeeper-inspired round trip. Identity metadata always comes from local input, never provider HTML. */
object TranslationFormatting {
    data class Encoded(val source: TranslationText, val html: String, val occurrences: Map<Int, Int>, val valid: Boolean)
    data class Decoded(val content: TranslationText, val fallback: Boolean)
    private val tags = mapOf("Bold" to "b", "Italic" to "i", "Underline" to "u", "Strike" to "s",
        "Code" to "code", "Pre" to "pre", "TextUrl" to "a", "Mention" to "span", "MentionName" to "span",
        "CustomEmoji" to "span", "Blockquote" to "blockquote", "Spoiler" to "span", "Url" to "span",
        "Email" to "span", "Hashtag" to "span", "BotCommand" to "span", "Phone" to "span", "Cashtag" to "span")
    private val verbatim = setOf("CustomEmoji", "Mention", "Url", "Email", "Hashtag", "BotCommand", "Phone", "Cashtag", "Code", "Pre")

    fun validEntities(source: TranslationText): Boolean = source.entities.size <= 512 &&
        source.entities.all { it.kind in tags && it.offset >= 0 && it.length > 0 &&
            it.offset.toLong() + it.length <= source.text.length && boundary(source.text, it.offset) && boundary(source.text, it.offset + it.length) }

    fun encode(source: TranslationText): Encoded {
        val valid = validEntities(source)
        if (!valid) return Encoded(source, escape(source.text), emptyMap(), false)
        val points = (listOf(0, source.text.length) + source.entities.flatMap { listOf(it.offset, it.offset + it.length) }).distinct().sorted()
        val html = StringBuilder()
        val counts = mutableMapOf<Int, Int>()
        var previous = emptyList<Int>()
        for ((start, end) in points.zipWithNext()) {
            val active = source.entities.indices.filter { source.entities[it].let { e -> e.offset <= start && e.offset + e.length >= end } }
                .sortedWith(compareBy<Int> { source.entities[it].offset }.thenByDescending { source.entities[it].length }.thenBy { it })
            val common = previous.zip(active).takeWhile { it.first == it.second }.size
            previous.drop(common).asReversed().forEach { html.append("</${tags.getValue(source.entities[it].kind)}>") }
            active.drop(common).forEach {
                val e = source.entities[it]
                html.append("<${tags.getValue(e.kind)} data-tg=\"$it\"")
                if (e.kind in verbatim) html.append(" translate=\"no\"")
                html.append('>')
                counts[it] = (counts[it] ?: 0) + 1
            }
            html.append(escape(source.text.substring(start, end)))
            previous = active
        }
        previous.asReversed().forEach { html.append("</${tags.getValue(source.entities[it].kind)}>") }
        return Encoded(source, html.toString(), counts, true)
    }

    fun decode(encoded: Encoded, translated: String): Decoded {
        val body = Jsoup.parseBodyFragment(translated).body()
        body.select("script,style,iframe,object").remove()
        val text = StringBuilder()
        val found = mutableMapOf<Int, MutableList<TranslationEntity>>()
        val counts = mutableMapOf<Int, Int>()
        var valid = encoded.valid
        fun visit(node: Node, depth: Int) {
            if (depth > 128) { valid = false; return }
            if (node is TextNode) { text.append(node.wholeText); return }
            val element = node as? Element
            if (element?.normalName() == "br") { text.append('\n'); return }
            val id = element?.attr("data-tg")?.toIntOrNull()
            val original = if (encoded.valid) id?.let { encoded.source.entities.getOrNull(it) } else null
            if (element != null && element !== body && (original == null || tags[original.kind] != element.normalName())) valid = false
            val start = text.length
            node.childNodes().forEach { visit(it, depth + 1) }
            if (original != null && id != null) {
                counts[id] = (counts[id] ?: 0) + 1
                if (text.length <= start) valid = false
                found.getOrPut(id) { mutableListOf() }.add(original.copy(offset = start, length = text.length - start))
            }
        }
        visit(body, 0)
        if (counts != encoded.occurrences) valid = false
        val result = mutableListOf<TranslationEntity>()
        found.forEach { (id, fragments) ->
            val merged = mutableListOf<TranslationEntity>()
            fragments.sortedBy { it.offset }.forEach { e ->
                val last = merged.lastOrNull()
                if (last != null && last.offset + last.length == e.offset) merged[merged.lastIndex] = last.copy(length = last.length + e.length)
                else merged.add(e)
            }
            val original = encoded.source.entities[id]
            if (original.kind in verbatim) {
                val expected = encoded.source.text.substring(original.offset, original.offset + original.length)
                val actual = merged.joinToString("") { text.substring(it.offset, it.offset + it.length) }
                if (actual != expected) valid = false
            }
            result.addAll(merged)
        }
        return Decoded(TranslationText(text.toString(), if (valid) result.sortedWith(compareBy({ it.offset }, { -it.length })) else emptyList()), !valid)
    }

    private fun boundary(text: String, offset: Int) = offset == 0 || offset == text.length ||
        !(text[offset].isLowSurrogate() && text[offset - 1].isHighSurrogate())
    private fun escape(text: String) = text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")
}
