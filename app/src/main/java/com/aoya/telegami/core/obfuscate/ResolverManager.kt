package com.aoya.telegami.core.obfuscate

import com.aoya.telegami.core.TelegramTarget
import com.aoya.telegami.util.loge

object ResolverManager {
    private lateinit var resolver: Resolver

    fun init(
        packageName: String,
        modulePath: String,
    ) {
        require(packageName in TelegramTarget.PACKAGE_NAMES) { "Unsupported Telegram package: $packageName" }
        resolver =
            try {
                JsonResolver.fromModuleAssets(modulePath, "telegram")
            } catch (e: Exception) {
                loge("Telegami: Failed to load mappings", e)
                Default
            }
    }

    fun get(className: String): String = resolver.get(className)

    fun getMethod(
        className: String,
        methodName: String,
    ): String = resolver.getMethod(className, methodName)

    fun getField(
        className: String,
        fieldName: String,
    ): String = resolver.getField(className, fieldName)
}
