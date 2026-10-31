package com.aoya.telegami.translation

data class TranslationEntity(
    val kind: String,
    val offset: Int,
    val length: Int,
    val url: String? = null,
    val language: String? = null,
    val identity: Long? = null,
    val collapsed: Boolean = false,
)

data class TranslationText(val text: String, val entities: List<TranslationEntity> = emptyList())

data class TranslationRequest(
    val content: TranslationText,
    val toLanguage: String,
    val account: Int = 0,
    val fromLanguage: String = "auto",
)

enum class TranslationError {
    UNCONFIGURED, NETWORK, TIMEOUT, CANCELLED, AUTH, RATE_LIMIT, SERVER,
    UNSUPPORTED_LANGUAGE, INVALID_RESPONSE, INVALID_CONFIG, TOO_LONG, UNAVAILABLE,
}

class TranslationException(val code: TranslationError, val httpStatus: Int? = null) :
    Exception("Translation failed: ${code.name}${httpStatus?.let { " (HTTP $it)" }.orEmpty()}")

data class TranslationResult(
    val providerId: String,
    val content: TranslationText,
    val formattingFallback: Boolean = false,
    val cached: Boolean = false,
)

interface TranslationProvider {
    val id: String
    val nativeEntities: Boolean get() = false
    suspend fun translate(request: TranslationRequest): TranslationText
}

object TranslationProviderRegistry {
    data class Descriptor(val id: String, val name: String, val ai: Boolean = false, val selectable: Boolean = true)
    val descriptors = listOf(
        Descriptor("google", "Google Translate"), Descriptor("yandex", "Yandex Translate"),
        Descriptor("bing", "Bing Translator", selectable = false), Descriptor("telegram_native", "Telegram Native"),
        Descriptor("openai_compatible", "OpenAI-Compatible", true),
    )
    val ids = descriptors.map { it.id }.toSet()
}
