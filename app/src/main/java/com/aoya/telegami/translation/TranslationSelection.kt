package com.aoya.telegami.translation

data class TranslationHookSettings(
    val config: TranslationConfig = TranslationConfig(),
    val enabled: Boolean = true,
    val targetLanguage: String = "zh-CN",
    val aiName: String = "OpenAI-Compatible",
    val aiConfigured: Boolean = false,
)

/** Source selection is explicit; an unavailable AI never silently falls back to a different service. */
object TranslationSelection {
    fun allowed(providerId: String, aiConfigured: Boolean): Boolean =
        providerId in TranslationProviderRegistry.ids && (providerId != "openai_compatible" || aiConfigured)
}
