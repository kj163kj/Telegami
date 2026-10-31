package com.aoya.telegami.hooks.messages

import android.graphics.BitmapFactory
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.view.View
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.ModuleAssets
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.exactMethod
import io.github.libxposed.api.XposedInterface

object MessageRepeatHook {
    private const val ICON_TOKEN = -MessageMenuActions.REPEAT

    fun install(xposed: XposedInterface, modulePath: String) {
        val icon = runCatching { installIcon(xposed, modulePath) }.onFailure {
            Logger.e("Unable to install NagramX repeat icon; using native fallback", it, "MessageTools")
        }.getOrNull()
        val sender = MessageSender(TelegramSendResolver(MessageMenuActions.target))
        MessageMenuActions.register(
            MessageMenuActions.Action(
                MessageMenuActions.REPEAT, "复读", "msg_forward",
                { _, _ -> Config.isFeatureEnabled("enable_message_repeat") },
                sender::repeat,
                iconOverride = icon,
            ),
        )
    }

    private fun installIcon(xposed: XposedInterface, modulePath: String): Int {
        val resources = Telegami.context.resources
        val bitmap = ModuleAssets.open(modulePath, "icons/nagramx_msg_repeat.png").use {
            requireNotNull(BitmapFactory.decodeStream(it, null, BitmapFactory.Options().apply {
                inDensity = 480
                inTargetDensity = resources.displayMetrics.densityDpi
            })) { "NagramX repeat icon could not be decoded" }
        }
        val state = requireNotNull(BitmapDrawable(resources, bitmap).constantState)
        val target = MessageMenuActions.target
        // classes3.dex h1.f(int, CharSequence) delegates to this drawable-aware setter.
        val setter = target.type("org.telegram.ui.ActionBar.h1").exactMethod(
            "g", Void.TYPE, CharSequence::class.java, target.int, Drawable::class.java,
        )
        xposed.hook(setter).intercept { chain ->
            val arguments = chain.args.toTypedArray()
            if (arguments[1] == ICON_TOKEN) {
                arguments[1] = 0
                arguments[2] = state.newDrawable((chain.thisObject as View).resources).mutate()
                Logger.i("Applied NagramX msg_repeat drawable", "MessageTools", xposed = true)
            }
            chain.proceed(arguments)
        }
        return ICON_TOKEN
    }
}
