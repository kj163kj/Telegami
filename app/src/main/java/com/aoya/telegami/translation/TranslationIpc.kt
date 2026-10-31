package com.aoya.telegami.translation

import android.content.Context
import android.net.Uri
import android.os.Bundle
import com.aoya.telegami.BuildConfig
import kotlinx.coroutines.suspendCancellableCoroutine
import java.util.UUID
import java.util.concurrent.ArrayBlockingQueue
import java.util.concurrent.Executors
import java.util.concurrent.ThreadPoolExecutor
import java.util.concurrent.TimeUnit
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

class TranslationIpc(private val context: Context) : TranslationProvider {
    override val id = "openai_compatible"
    private val uri = Uri.parse("content://${BuildConfig.APPLICATION_ID}.translation")
    private val threads = ThreadPoolExecutor(2, 2, 0, TimeUnit.MILLISECONDS, ArrayBlockingQueue(8),
        { task -> Thread(task, "TelegamiTranslationIPC").apply { isDaemon = true } })
    private val cancellations = Executors.newSingleThreadExecutor { task -> Thread(task, "TelegamiTranslationCancel").apply { isDaemon = true } }

    override suspend fun translate(request: TranslationRequest): TranslationText {
        val reply = call("translate", Bundle().apply { putString("text", request.content.text); putString("language", request.toLanguage) })
        return TranslationText(reply.getString("text")?.takeIf { it.isNotBlank() }
            ?: throw TranslationException(TranslationError.INVALID_RESPONSE))
    }

    suspend fun select(provider: String, language: String): Boolean = try {
        call("select", Bundle().apply { putString("provider", provider); putString("language", language) }).getBoolean("success")
    } catch (e: kotlinx.coroutines.CancellationException) { throw e }
    catch (_: TranslationException) { false }

    private suspend fun call(method: String, extras: Bundle): Bundle = suspendCancellableCoroutine { continuation ->
        val token = UUID.randomUUID().toString()
        continuation.invokeOnCancellation {
            cancellations.execute { runCatching { context.contentResolver.call(uri, "cancel", token, null) } }
        }
        try {
            threads.execute {
                if (!continuation.isActive) return@execute
                try {
                    val reply = context.contentResolver.call(uri, method, token, extras)
                        ?: throw TranslationException(TranslationError.UNAVAILABLE)
                    reply.getString("error")?.let { code ->
                        throw TranslationException(TranslationError.entries.firstOrNull { it.name == code } ?: TranslationError.UNAVAILABLE)
                    }
                    if (continuation.isActive) continuation.resume(reply)
                } catch (e: Exception) {
                    if (continuation.isActive) continuation.resumeWithException(if (e is TranslationException) e else TranslationException(TranslationError.UNAVAILABLE))
                }
            }
        } catch (_: java.util.concurrent.RejectedExecutionException) {
            if (continuation.isActive) continuation.resumeWithException(TranslationException(TranslationError.RATE_LIMIT))
        }
    }
}
