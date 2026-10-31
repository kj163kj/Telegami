package com.aoya.telegami.hooks

import android.graphics.Canvas
import com.aoya.telegami.core.TelegramStoryPrivacyResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.exactMethod
import io.github.libxposed.api.XposedInterface
import java.util.concurrent.atomic.AtomicBoolean

object HideStoryViewStatus {
    private const val KEY = "HideStoryViewStatus"

    fun install(xposed: XposedInterface, loader: ClassLoader) {
        val target = TelegramStoryPrivacyResolver(loader)
        for (method in listOf(target.markRead, target.incrementViews)) {
            val firstOverride = AtomicBoolean()
            xposed.hook(method).intercept { chain ->
                if (!Config.isFeatureEnabled(KEY)) return@intercept chain.proceed(chain.args.toTypedArray())
                if (firstOverride.compareAndSet(false, true)) {
                    Logger.i("Suppressed story-view producer ${method.declaringClass.name}.${method.name}", KEY, xposed = true)
                }
                false
            }
        }
        val drawStory = loader.loadClass("xg.m2").exactMethod("b", Void.TYPE, Canvas::class.java)
        runCatching { xposed.deoptimize(drawStory) }
            .onFailure { Logger.e("Unable to deoptimize story viewer", it, KEY) }
        Logger.i("Installed both exact story-view producers; live=${Config.isFeatureEnabled(KEY)}", KEY, xposed = true)
    }
}
