package com.aoya.telegami.translation.providers

import com.aoya.telegami.translation.*
import kotlinx.coroutines.suspendCancellableCoroutine
import java.lang.reflect.Proxy
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

class TelegramNativeTranslator(private val target: TelegramTranslationResolver) : TranslationProvider {
    override val id = "telegram_native"
    override val nativeEntities = true
    override suspend fun translate(request: TranslationRequest): TranslationText = suspendCancellableCoroutine { continuation ->
        val t = target
        val manager = t.getConnections.invoke(null, request.account)
        val native = t.requestType.getConstructor().newInstance()
        t.requestFlags.setInt(native, 2)
        t.requestTexts.set(native, arrayListOf(t.native(request.content)))
        t.requestLanguage.set(native, request.toLanguage)
        val callback = Proxy.newProxyInstance(t.c.loader, arrayOf(t.delegate)) { proxy, method, args ->
            when (method.name) {
                "run" -> {
                    if (continuation.isActive) {
                        try {
                            val result = args?.get(0)
                            if (args?.get(1) != null || !t.resultType.isInstance(result)) throw TranslationException(TranslationError.UNAVAILABLE)
                            val value = (t.results.get(result) as List<*>).firstOrNull()
                                ?: throw TranslationException(TranslationError.INVALID_RESPONSE)
                            continuation.resume(t.read(value))
                        } catch (_: Exception) {
                            if (continuation.isActive) continuation.resumeWithException(TranslationException(TranslationError.UNAVAILABLE))
                        }
                    }
                    null
                }
                "hashCode" -> System.identityHashCode(proxy)
                "equals" -> proxy === args?.firstOrNull()
                "toString" -> "TelegamiTranslationDelegate"
                else -> null
            }
        }
        val requestId = t.send.invoke(manager, native, callback) as Int
        continuation.invokeOnCancellation { runCatching { t.cancel.invoke(manager, requestId, true) } }
    }
}
