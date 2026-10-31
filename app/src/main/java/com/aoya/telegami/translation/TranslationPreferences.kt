package com.aoya.telegami.translation

import com.aoya.telegami.service.Config
import com.aoya.telegami.service.PrefManager
import com.aoya.telegami.translation.llm.LlmConfig
import com.aoya.telegami.translation.providers.OpenAICompatibleTranslator
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/** Data-only handoff for the management UI. Does not own a second preference store. */
object TranslationPreferences {
    data class PublicConfig(val strings: Map<String, String>, val booleans: Map<String, Boolean>, val hasApiKey: Boolean)
    private val http by lazy { TranslationHttp() }

    fun read(): PublicConfig = PublicConfig(
        TranslationSettings.stringDefaults.mapValues { (key, default) -> PrefManager.getString(key, default) },
        TranslationSettings.booleanDefaults.mapValues { (key, default) -> PrefManager.getBoolean(key, default) },
        PrefManager.getString(TranslationSettings.AI_KEY).startsWith(TranslationSecretVault.PREFIX),
    )

    /** apiKey=null retains the existing key; empty deletes it. Never prefill a password UI with ciphertext. */
    suspend fun save(
        strings: Map<String, String> = emptyMap(),
        booleans: Map<String, Boolean> = emptyMap(),
        apiKey: String? = null,
    ): Boolean = withContext(Dispatchers.IO) {
        if (!TranslationSettings.stringDefaults.keys.containsAll(strings.keys) ||
            !TranslationSettings.booleanDefaults.keys.containsAll(booleans.keys)) return@withContext false
        if (strings.values.any { it.length > 16_000 } || apiKey?.let { it.length > 4096 || it.any { c -> c.code !in 32..126 } } == true)
            return@withContext false
        val limits = mapOf(TranslationSettings.AI_NAME to 80, TranslationSettings.AI_MODEL to 256,
            TranslationSettings.AI_BASE_URL to 4096, TranslationSettings.TARGET to 32, TranslationSettings.PROVIDER to 64)
        if (strings.any { (key, value) -> value.length > (limits[key] ?: 16_000) }) return@withContext false
        if (strings[TranslationSettings.PROVIDER]?.let { it !in TranslationProviderRegistry.ids } == true) return@withContext false
        if (strings[TranslationSettings.TARGET]?.let { !validLanguage(it) } == true) return@withContext false
        val base = strings[TranslationSettings.AI_BASE_URL]
        if (!base.isNullOrBlank() && runCatching { LlmConfig(base, "validation-only", "").endpoint("models", false) }.isFailure)
            return@withContext false
        val values = strings.toMutableMap()
        if (apiKey != null) {
            try { values[TranslationSettings.AI_KEY] = TranslationSecretVault.encrypt(apiKey.trim()) }
            catch (_: TranslationException) { return@withContext false }
        }
        PrefManager.updateFeatures(booleans = booleans, strings = values)
    }

    fun hookSettings(): TranslationHookSettings = settings(Config::getString, Config::getBoolean)

    fun settings(getString: (String, String) -> String, getBoolean: (String, Boolean) -> Boolean): TranslationHookSettings {
        fun string(key: String) = getString(key, TranslationSettings.stringDefaults[key].orEmpty())
        val base = string(TranslationSettings.AI_BASE_URL)
        val model = string(TranslationSettings.AI_MODEL)
        val keySet = getString(TranslationSettings.AI_KEY, "").startsWith(TranslationSecretVault.PREFIX)
        val configured = runCatching { LlmConfig(base, if (keySet) "configured" else "", model).endpoint("chat/completions") }.isSuccess
        val revision = TranslationSettings.stringDefaults.keys.joinToString("|") { string(it) } + getString(TranslationSettings.AI_KEY, "")
        return TranslationHookSettings(
            TranslationConfig(string(TranslationSettings.PROVIDER), getBoolean(TranslationSettings.KEEP_FORMATTING, true), revision = revision),
            getBoolean(TranslationSettings.ENABLED, true), string(TranslationSettings.TARGET), string(TranslationSettings.AI_NAME), configured,
        )
    }

    private fun client(): OpenAICompatibleTranslator = OpenAICompatibleTranslator(http) {
        val values = read().strings
        LlmConfig(values.getValue(TranslationSettings.AI_BASE_URL), TranslationSecretVault.decrypt(PrefManager.getString(TranslationSettings.AI_KEY)),
            values.getValue(TranslationSettings.AI_MODEL), values.getValue(TranslationSettings.AI_SYSTEM), values.getValue(TranslationSettings.AI_USER))
    }

    internal suspend fun translateAi(request: TranslationRequest): TranslationText = client().translate(request)
    suspend fun listModels(): List<String> = client().listModels()
    suspend fun testConnection(): Boolean = client().testConnection()
    fun export(): Map<String, Any?> = read().let { TranslationSettings.export(it.strings + it.booleans) }
    fun validLanguage(value: String) = value.matches(Regex("[A-Za-z]{2,8}([-_][A-Za-z0-9]{2,8})*"))
}
