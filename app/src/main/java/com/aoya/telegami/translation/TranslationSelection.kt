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
    fun error(providerId: String, aiConfigured: Boolean): TranslationError? {
        val provider = TranslationProviderRegistry.descriptors.firstOrNull { it.id == providerId }
        return when {
            provider == null || !provider.selectable -> TranslationError.UNAVAILABLE
            provider.ai && !aiConfigured -> TranslationError.UNCONFIGURED
            else -> null
        }
    }
    fun allowed(providerId: String, aiConfigured: Boolean): Boolean = error(providerId, aiConfigured) == null
}
