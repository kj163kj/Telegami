package com.aoya.telegami.translation.llm

import com.aoya.telegami.translation.*
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull

/** Intentionally not a data class: credentials must never appear in generated toString(). */
class LlmConfig(
    val baseUrl: String,
    val apiKey: String,
    val model: String,
    val systemPrompt: String = TranslationSettings.DEFAULT_SYSTEM,
    val userPrompt: String = TranslationSettings.DEFAULT_USER,
) {
    fun endpoint(path: String, requireModel: Boolean = true): HttpUrl {
        if (baseUrl.isBlank() || (requireModel && model.isBlank())) throw TranslationException(TranslationError.UNCONFIGURED)
        val base = baseUrl.trim().trimEnd('/').toHttpUrlOrNull()
            ?: throw TranslationException(TranslationError.INVALID_CONFIG)
        if (base.username.isNotEmpty() || base.password.isNotEmpty() || base.query != null || base.fragment != null ||
            (base.scheme != "https" && !(base.scheme == "http" && base.host in setOf("localhost", "127.0.0.1", "::1"))))
            throw TranslationException(TranslationError.INVALID_CONFIG)
        if (apiKey.any { it.code < 32 || it.code > 126 }) throw TranslationException(TranslationError.INVALID_CONFIG)
        if (apiKey.isBlank() && base.host !in setOf("localhost", "127.0.0.1", "::1"))
            throw TranslationException(TranslationError.UNCONFIGURED)
        return base.newBuilder().addPathSegments(path).build()
    }

    override fun toString() = "LlmConfig(redacted)"
}
