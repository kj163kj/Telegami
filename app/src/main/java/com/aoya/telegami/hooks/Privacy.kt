package com.aoya.telegami.hooks

import com.aoya.telegami.service.Config
import com.aoya.telegami.util.logd
import com.aoya.telegami.virt.tgnet.RequestDelegate
import com.aoya.telegami.virt.tgnet.TLRPC
import com.aoya.telegami.util.findMethod
import com.aoya.telegami.core.obfuscate.ResolverManager as resolver
import android.util.Log
import io.github.libxposed.api.XposedInterface

object Privacy {
    const val CONNECTIONS_MANAGER_CN = "org.telegram.tgnet.ConnectionsManager"

    fun install(xposed: XposedInterface, classLoader: ClassLoader) {
        val classOf: (String) -> Class<*> = { classLoader.loadClass(resolver.get(it)) }
        val tlMessagesSetEncTypingClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_setEncryptedTyping")
        val tlMessagesSetTypingClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_setTyping")
        val tlMessagesReadHistoryClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_readHistory")
        val tlMessagesReadEncHistoryClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_readEncryptedHistory")
        val tlMessagesReadDiscussionClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_readDiscussion")
        val tlMessagesReadMessageContentsClass = classOf("org.telegram.tgnet.TLRPC\$TL_messages_readMessageContents")
        val tlChannelsReadHistoryClass = classOf("org.telegram.tgnet.TLRPC\$TL_channels_readHistory")
        val tlChannelsReadMessageContentsClass = classOf("org.telegram.tgnet.TLRPC\$TL_channels_readMessageContents")
        val sendRequestInternal = classLoader.findMethod(CONNECTIONS_MANAGER_CN, "sendRequestInternal")
        xposed.hook(sendRequestInternal).intercept { chain ->
            val args = chain.args.toMutableList()
            var result: Any? = null
            var hasResult = false
            try {
                run before@ {
                    val o = args[0] ?: return@before

                    if ((tlMessagesSetTypingClass.isInstance(o) || tlMessagesSetEncTypingClass.isInstance(o)) &&
                        Config.isFeatureEnabled("HideTyping")
                    ) {
                        logd("[PrivacyHook] should HideTyping")
                        result = null
                        hasResult = true
                    }

                    if ((
                            (
                                tlMessagesReadHistoryClass.isInstance(o) || tlMessagesReadEncHistoryClass.isInstance(o) ||
                                    tlMessagesReadDiscussionClass.isInstance(o) ||
                                    tlMessagesReadMessageContentsClass.isInstance(o)
                            ) && Config.isFeatureEnabled("HideSeenPrivateChat")
                        ) ||
                        (
                            (
                                tlChannelsReadHistoryClass.isInstance(o) ||
                                    tlChannelsReadMessageContentsClass.isInstance(o)
                            ) && Config.isFeatureEnabled("HideSeenChannel")
                        )
                    ) {
                        logd("[PrivacyHook] should HideSeen")
                        val fakeRes = TLRPC.TLMessagesAffectedMessages()
                        fakeRes.pts = -1
                        fakeRes.ptsCount = 0
                        val onComplete = args[1]
                        onComplete?.let {
                            RequestDelegate(it).run(fakeRes.getNativeInstance(), null)
                        }
                        result = null
                        hasResult = true
                    }
                }
            } catch (throwable: Throwable) {
                Log.e("Telegami", "Hook callback failed before ${sendRequestInternal.name}", throwable)
            }
            if (!hasResult) {
                result = chain.proceed(args.toTypedArray())
                hasResult = true
            }
            result
        }

    }
}
