package com.aoya.telegami.hooks

import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramPresenceResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.withBooleanOverride
import io.github.libxposed.api.XposedInterface
import java.util.concurrent.atomic.AtomicBoolean

object HideOnlineStatus {
    private const val KEY = "HideOnlineStatus"
    private var target: TelegramPresenceResolver? = null
    private val firstOverride = AtomicBoolean()

    fun install(xposed: XposedInterface, loader: ClassLoader) {
        val resolved = TelegramPresenceResolver(loader)
        xposed.hook(resolved.serialize).intercept { chain ->
            if (!Config.isFeatureEnabled(KEY)) return@intercept chain.proceed(chain.args.toTypedArray())
            val request = chain.thisObject!!
            if (firstOverride.compareAndSet(false, true)) {
                Logger.i("Serializing presence as offline", KEY, xposed = true)
            }
            withBooleanOverride(request, resolved.offline, true) {
                chain.proceed(chain.args.toTypedArray())
            }
        }
        listOf(resolved.getObjectSize, resolved.sendInternal).forEach { method ->
            runCatching { xposed.deoptimize(method) }
                .onFailure { Logger.e("Unable to deoptimize ${method.name}", it, KEY) }
        }
        target = resolved
        Logger.i("Installed exact presence serializer; live=${Config.isFeatureEnabled(KEY)}", KEY, xposed = true)
        onPreferenceChanged()
    }

    fun onPreferenceChanged() {
        val resolved = target ?: return
        if (!Config.isFeatureEnabled(KEY)) return
        Telegami.runOnMainThread {
            if (!Config.isFeatureEnabled(KEY)) return@runOnMainThread
            runCatching {
                val count = resolved.maxAccounts.invoke(null) as Int
                var queued = 0
                for (slot in 0 until count) {
                    val config = resolved.configInstance.invoke(null, slot)!!
                    if (resolved.activated.invoke(config) != true) continue
                    runCatching {
                        val request = resolved.statusConstructor.newInstance()
                        resolved.offline.setBoolean(request, true)
                        val connection = resolved.connectionInstance.invoke(null, slot)
                        resolved.sendRequest.invoke(connection, request, null)
                        queued++
                    }.onFailure { Logger.e("Unable to queue offline status for slot=$slot", it, KEY) }
                }
                Logger.i("Queued offline status for $queued active accounts; delivery unconfirmed", KEY, xposed = true)
            }.onFailure { Logger.e("Unable to refresh offline presence", it, KEY) }
        }
    }
}
