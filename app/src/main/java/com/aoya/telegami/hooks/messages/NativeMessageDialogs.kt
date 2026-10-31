package com.aoya.telegami.hooks.messages

import android.app.Activity
import android.app.Dialog
import android.content.Context
import android.content.DialogInterface
import com.aoya.telegami.core.TelegramMessageResolver
import com.aoya.telegami.util.exactMethod
import java.lang.reflect.Proxy

/** Telegram's own Builder and chat resource provider, verified against the target DEX. */
class NativeMessageDialogs(c: TelegramMessageResolver) {
    private val builder = c.type("org.telegram.ui.ActionBar.AlertDialog\$Builder")
    private val provider = c.type("org.telegram.ui.ActionBar.j6")
    private val button = c.type("org.telegram.ui.ActionBar.e2")
    private val dialog = c.type("org.telegram.ui.ActionBar.f2")
    private val constructor = builder.getConstructor(Context::class.java, provider)
    private val getProvider = c.chat.exactMethod("getResourceProvider", provider)
    private val title = builder.exactMethod("l", Void.TYPE, CharSequence::class.java)
    private val message = builder.exactMethod("g", Void.TYPE, CharSequence::class.java)
    private val positive = builder.exactMethod("k", Void.TYPE, CharSequence::class.java, button)
    private val negative = builder.exactMethod("h", Void.TYPE, String::class.java, button)
    private val onDismiss = builder.exactMethod("j", Void.TYPE, DialogInterface.OnDismissListener::class.java)
    private val show = builder.exactMethod("o", dialog)
    private val clicked = button.exactMethod("i", Void.TYPE, dialog, Int::class.javaPrimitiveType!!)

    fun show(
        activity: Activity,
        chat: Any,
        titleText: String,
        messageText: String,
        positiveText: String? = null,
        negativeText: String = "\u53d6\u6d88",
        onPositive: () -> Unit = {},
        onNegative: () -> Unit = {},
        onCancel: () -> Unit = {},
    ): Dialog {
        check(!activity.isFinishing && !activity.isDestroyed) { "Chat activity is closed" }
        val instance = constructor.newInstance(activity, getProvider.invoke(chat))
        var answered = false
        fun listener(action: () -> Unit): Any =
            Proxy.newProxyInstance(button.classLoader, arrayOf(button)) { proxy, method, args ->
                when (method) {
                    clicked -> {
                        if (!answered) {
                            answered = true
                            action()
                        }
                        null
                    }
                    else -> when (method.name) {
                        "toString" -> "TelegamiDialogButton"
                        "hashCode" -> System.identityHashCode(proxy)
                        "equals" -> proxy === args?.firstOrNull()
                        else -> null
                    }
                }
            }
        title.invoke(instance, titleText)
        message.invoke(instance, messageText)
        if (positiveText != null) positive.invoke(instance, positiveText, listener(onPositive))
        negative.invoke(instance, negativeText, listener(onNegative))
        onDismiss.invoke(instance, DialogInterface.OnDismissListener {
            if (!answered) {
                answered = true
                onCancel()
            }
        })
        return show.invoke(instance) as Dialog
    }
}
