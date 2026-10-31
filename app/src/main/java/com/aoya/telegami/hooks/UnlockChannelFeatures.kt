package com.aoya.telegami.hooks

import android.view.View
import com.aoya.telegami.core.TelegramMessageResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.HookBypass
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.exactMethod
import com.aoya.telegami.util.withBooleanOverride
import io.github.libxposed.api.XposedInterface
import java.util.concurrent.atomic.AtomicBoolean

object UnlockChannelFeatures {
    private const val KEY = "UnlockChannelFeatures"
    private val originalChecks = HookBypass()
    private val firstOverride = AtomicBoolean()
    private var target: TelegramMessageResolver? = null

    fun install(xposed: XposedInterface, loader: ClassLoader) {
        val c = TelegramMessageResolver(loader)
        val longOverload = c.controller.exactMethod("isChatNoForwards", c.bool, c.long)
        for (method in listOf(longOverload, c.protectedChat)) {
            xposed.hook(method).intercept { chain ->
                if (!enabled()) return@intercept chain.proceed(chain.args.toTypedArray())
                if (firstOverride.compareAndSet(false, true)) {
                    Logger.i("Overriding local channel protection checks", KEY, xposed = true)
                }
                false
            }
        }
        xposed.hook(c.canForward).intercept { chain ->
            val message = chain.thisObject!!
            withMenuAccess(c, message) { chain.proceed(chain.args.toTypedArray()) }
        }
        target = c
        // Deoptimize known callers so compiled/inlined checks use the installed hooks.
        val callers = listOf(
            longOverload, c.fillMenu, c.chat.exactMethod("D9", c.bool),
            c.chat.exactMethod(
                "L7", c.bool, View::class.java, c.bool, c.bool,
                Float::class.javaPrimitiveType!!, Float::class.javaPrimitiveType!!, c.bool, c.bool, c.bool,
            ),
        )
        callers.forEach { method ->
            runCatching { xposed.deoptimize(method) }
                .onFailure { Logger.e("Unable to deoptimize ${method.name}", it, KEY) }
        }
        Logger.i("Installed both protection overloads; live=${Config.isFeatureEnabled(KEY)}", KEY, xposed = true)
    }

    private fun enabled() = !originalChecks.active && Config.isFeatureEnabled(KEY)

    /** Custom send/copy must still see real protection, even while native UI is unlocked. */
    fun <T> withOriginalProtection(block: () -> T): T = originalChecks.run(block)

    fun <T> withMenuAccess(message: Any?, block: () -> T): T {
        val c = target ?: return block()
        return withMenuAccess(c, message, block)
    }

    private fun <T> withMenuAccess(c: TelegramMessageResolver, message: Any?, block: () -> T): T {
        if (!enabled() || message == null) return block()
        val owner = c.ownerField.get(message) ?: return block()
        if ((c.dialogForOwner.invoke(null, owner) as Long) >= 0 || !c.noForwards.getBoolean(owner)) return block()
        // Only a local menu/eligibility query sees the override; storage and sends retain the flag.
        return withBooleanOverride(owner, c.noForwards, false, block)
    }
}
