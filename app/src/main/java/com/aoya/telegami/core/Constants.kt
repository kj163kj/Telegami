package com.aoya.telegami.core

object Constants {
    const val APP_ID = "com.aoya.telegami"
    const val APP_DEBUG_ID = "com.aoya.telegami.debug"

    const val COMPONENT_NAME_DEFAULT = "com.aoya.telegami.MainActivityLauncher"

    const val GITHUB_REPO = "https://github.com/aoya111/Telegami"
    const val TELEGRAM_CHANNEL = "https://t.me/TGamiApp"

    val SUPPORTED_TELEGRAM_PACKAGES =
        mapOf(
            "org.telegram.messenger" to "Telegram",
        )

    val SUPPORTED_TELEGRAM_PACKAGES_LIST = SUPPORTED_TELEGRAM_PACKAGES.keys.toList()
}
