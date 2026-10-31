package com.aoya.telegami.translation

import kotlinx.coroutines.suspendCancellableCoroutine
import okhttp3.Call
import okhttp3.Callback
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.net.SocketTimeoutException
import java.util.concurrent.TimeUnit
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

/** Never follow redirects, log bodies or include provider error messages in exceptions. */
class TranslationHttp(val client: OkHttpClient = defaultClient()) {
    suspend fun execute(request: Request): String = suspendCancellableCoroutine { continuation ->
        val call = client.newCall(request)
        continuation.invokeOnCancellation { call.cancel() }
        call.enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                if (continuation.isActive) continuation.resumeWithException(
                    TranslationException(if (e is SocketTimeoutException) TranslationError.TIMEOUT else TranslationError.NETWORK),
                )
            }

            override fun onResponse(call: Call, response: Response) {
                try {
                    val value = response.use {
                        if (!it.isSuccessful) throw statusError(it.code)
                        val body = it.body ?: throw TranslationException(TranslationError.INVALID_RESPONSE)
                        body.byteStream().use { input ->
                            val out = ByteArrayOutputStream()
                            val bytes = ByteArray(8192)
                            while (true) {
                                val n = input.read(bytes)
                                if (n < 0) break
                                if (out.size() + n > 2 * 1024 * 1024) throw TranslationException(TranslationError.TOO_LONG)
                                out.write(bytes, 0, n)
                            }
                            out.toString("UTF-8")
                        }
                    }
                    if (continuation.isActive) continuation.resume(value)
                } catch (e: Exception) {
                    if (continuation.isActive) continuation.resumeWithException(
                        if (e is TranslationException) e else TranslationException(TranslationError.NETWORK),
                    )
                }
            }
        })
    }

    companion object {
        fun defaultClient(): OkHttpClient = OkHttpClient.Builder()
            .connectTimeout(10, TimeUnit.SECONDS).readTimeout(25, TimeUnit.SECONDS)
            .callTimeout(28, TimeUnit.SECONDS).followRedirects(false).followSslRedirects(false)
            .retryOnConnectionFailure(false).build()

        fun statusError(status: Int) = TranslationException(when (status) {
            401, 403 -> TranslationError.AUTH
            429 -> TranslationError.RATE_LIMIT
            in 500..599 -> TranslationError.SERVER
            else -> TranslationError.UNAVAILABLE
        }, status)

        fun form(vararg fields: Pair<String, String>): FormBody = FormBody.Builder().apply {
            fields.forEach { (name, value) -> add(name, value) }
        }.build()
    }
}
