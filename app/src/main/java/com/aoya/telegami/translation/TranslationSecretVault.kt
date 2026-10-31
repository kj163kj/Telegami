package com.aoya.telegami.translation

import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import com.aoya.telegami.BuildConfig
import java.security.KeyStore
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

/** Only the management UID can use this key. Remote Preferences contain ciphertext only. */
object TranslationSecretVault {
    const val PREFIX = "keystore:v1:"
    private val alias = BuildConfig.APPLICATION_ID + ".translation.api-key"
    private val aad = TranslationSettings.AI_KEY.toByteArray(Charsets.UTF_8)

    @Synchronized
    private fun key(create: Boolean): SecretKey {
        val store = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        (store.getKey(alias, null) as? SecretKey)?.let { return it }
        if (!create) throw TranslationException(TranslationError.UNCONFIGURED)
        return KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore").apply {
            init(KeyGenParameterSpec.Builder(alias, KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT)
                .setBlockModes(KeyProperties.BLOCK_MODE_GCM).setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
                .setKeySize(256).build())
        }.generateKey()
    }

    fun encrypt(secret: String): String {
        if (secret.isEmpty()) return ""
        try {
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.ENCRYPT_MODE, key(true))
            cipher.updateAAD(aad)
            return PREFIX + Base64.getEncoder().encodeToString(cipher.iv + cipher.doFinal(secret.toByteArray(Charsets.UTF_8)))
        } catch (_: Exception) { throw TranslationException(TranslationError.UNAVAILABLE) }
    }

    fun decrypt(value: String): String {
        if (value.isEmpty()) return ""
        if (!value.startsWith(PREFIX)) throw TranslationException(TranslationError.UNCONFIGURED)
        try {
            val bytes = Base64.getDecoder().decode(value.removePrefix(PREFIX))
            if (bytes.size < 29) throw TranslationException(TranslationError.UNCONFIGURED)
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.DECRYPT_MODE, key(false), GCMParameterSpec(128, bytes.copyOfRange(0, 12)))
            cipher.updateAAD(aad)
            return String(cipher.doFinal(bytes.copyOfRange(12, bytes.size)), Charsets.UTF_8)
        } catch (_: Exception) { throw TranslationException(TranslationError.UNCONFIGURED) }
    }
}
