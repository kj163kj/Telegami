package com.aoya.telegami.core

object TelegramTarget {
    val PACKAGE_NAMES = Constants.SUPPORTED_TELEGRAM_PACKAGES.keys

    fun rejectionReason(
        packageName: String,
        versionName: String?,
        versionCode: Long,
    ): String? =
        when {
            packageName !in PACKAGE_NAMES -> "Unsupported package: $packageName"
            versionName == null || !versionName.matches(Regex("^13\\.1\\.\\d+$")) ->
                "Unsupported versionName: $versionName (expected 13.1.x stable)"
            else -> null
        }
}
