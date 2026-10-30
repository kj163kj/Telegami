package com.aoya.telegami.core

object TelegramTarget {
    val PACKAGE_NAMES = setOf("org.telegram.messenger", "org.telegram.messenger.web")
    const val VERSION_NAME = "13.1.1"

    // Populate only from the real target APK after identity and DEX verification.
    private val verifiedVersionCodes: Set<Long> = emptySet()

    fun rejectionReason(
        packageName: String,
        versionName: String?,
        versionCode: Long,
    ): String? =
        when {
            packageName !in PACKAGE_NAMES -> "Unsupported package: $packageName"
            versionName != VERSION_NAME -> "Unsupported versionName: $versionName (expected $VERSION_NAME)"
            verifiedVersionCodes.isEmpty() -> "Target APK identity and 13.1.1 DEX evidence are not verified; business hooks disabled"
            versionCode !in verifiedVersionCodes -> "Unverified versionCode: $versionCode"
            else -> null
        }
}
