package com.aoya.telegami.translation

object TranslationCallerPolicy {
    val packages = setOf("org.telegram.messenger", "org.telegram.messenger.web")
    // SHA-256 of the signer of the supplied official APK; no user/service credential.
    val certificates = setOf("49c1522548ebacd46ce322b6fd47f6092bb745d0f88082145caf35e14dcc38e1")
    fun accepts(packageDigests: Map<String, Set<String>>): Boolean = packageDigests.isNotEmpty() &&
        packageDigests.all { (name, digests) -> name in packages && digests.any { it.lowercase() in certificates } }
}
