package com.aoya.telegami.service

import android.content.SharedPreferences
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.logi

object Config {
    @Volatile
    private var featPref: SharedPreferences? = null
    private val preferenceListener =
        SharedPreferences.OnSharedPreferenceChangeListener { _, key ->
            Logger.i("Remote feature changed: $key", "Configuration", xposed = true)
            if (key == null || key in setOf("MarkMessagesDeleted", "MarkMessagesEdited", "ShowDeletedMessages")) {
                runCatching { com.aoya.telegami.hooks.MarkMessages.refreshAll() }
                    .onFailure { Logger.e("Failed to schedule marker refresh", it, "Configuration") }
            }
        }

    fun init(preferences: SharedPreferences) {
        featPref?.unregisterOnSharedPreferenceChangeListener(preferenceListener)
        featPref = preferences
        preferences.registerOnSharedPreferenceChangeListener(preferenceListener)
        logi("Connected to read-only remote feature preferences")
    }

    fun isFeatureEnabled(featureKey: String): Boolean = featPref?.getBoolean(featureKey, false) ?: false

    fun getBoolean(key: String, defaultValue: Boolean): Boolean =
        featPref?.getBoolean(key, defaultValue) ?: defaultValue

    fun getFeatureValue(
        featureKey: String,
        defaultValue: Int = 0,
    ): Int {
        val value = featPref?.getInt(featureKey, defaultValue) ?: defaultValue
        logi("Read remote feature value $featureKey: $value")
        return value
    }
}
