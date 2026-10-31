package com.aoya.telegami.core

object TelegramTarget {
    val PACKAGE_NAMES = setOf("org.telegram.messenger", "org.telegram.messenger.web")

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
