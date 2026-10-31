package com.aoya.telegami.translation

import com.aoya.telegami.translation.providers.GoogleTranslator
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test

class TranslationFormattingTest {
    @Test fun everySupportedStyleRoundTrips() {
        val kinds = listOf("Bold", "Italic", "Underline", "Strike", "Code", "Pre", "TextUrl", "Mention", "MentionName", "CustomEmoji", "Blockquote", "Spoiler")
        for (kind in kinds) {
            val original = TranslationText("A 😀 hello\n\n<code>&", listOf(TranslationEntity(kind, 2, 2, "https://original.test", "kotlin", 123L, true)))
            val encoded = TranslationFormatting.encode(original)
            val decoded = TranslationFormatting.decode(encoded, encoded.html)
            assertFalse("$kind fallback", decoded.fallback)
            assertEquals(original, decoded.content)
        }
    }

    @Test fun overlappingNestedAndUtf16Offsets() {
        val original = TranslationText("😀abcdefgh", listOf(TranslationEntity("Bold", 2, 6), TranslationEntity("Italic", 4, 6)))
        val encoded = TranslationFormatting.encode(original)
        assertEquals(original, TranslationFormatting.decode(encoded, encoded.html).content)
        val invalid = TranslationText("😀", listOf(TranslationEntity("Bold", 1, 1)))
        assertFalse(TranslationFormatting.encode(invalid).valid)
    }

    @Test fun changedLengthKeepsMetadataNotProviderLinks() {
        val original = TranslationText("hello", listOf(TranslationEntity("TextUrl", 0, 5, "https://original.test")))
        val translated = "<a data-tg=\"0\" href=\"https://attacker.test\">你好世界</a>"
        val decoded = TranslationFormatting.decode(TranslationFormatting.encode(original), translated)
        assertFalse(decoded.fallback)
        assertEquals("https://original.test", decoded.content.entities.single().url)
        assertEquals(4, decoded.content.entities.single().length)
    }

    @Test fun missingDuplicateMalformedAndChangedIdentityFallBackSafely() {
        val original = TranslationText("😀", listOf(TranslationEntity("CustomEmoji", 0, 2, identity = 10L)))
        val encoded = TranslationFormatting.encode(original)
        for (text in listOf("plain", "<span data-tg=\"0\">changed</span>", "<b data-tg=\"0\">wrong type</b>",
            "<span data-tg=\"0\">😀</span><span data-tg=\"0\">😀</span>")) {
            val decoded = TranslationFormatting.decode(encoded, text)
            assertTrue(decoded.fallback)
            assertTrue(decoded.content.entities.isEmpty())
            assertFalse(decoded.content.text.contains("data-tg"))
        }
    }

    @Test fun liveGoogleFormatting() = runBlocking {
        assumeTrue(System.getenv("TELEGAMI_TRANSLATION_LIVE") == "1")
        val manager = TranslationManager(listOf(GoogleTranslator(TranslationHttp()))) { TranslationConfig() }
        val original = TranslationText("Hello world.\n\nSecond paragraph. 😀", listOf(TranslationEntity("Bold", 0, 5)))
        try {
            val result = manager.translate(TranslationRequest(original, "zh-CN"), force = true)
            println("LIVE_FORMAT google fallback=${result.formattingFallback} entities=${result.content.entities.size} text=${result.content.text}")
            assertFalse(result.content.text.contains("data-tg"))
        } catch (e: TranslationException) { println("LIVE_FORMAT google FAILED ${e.code}") }
    }
}
