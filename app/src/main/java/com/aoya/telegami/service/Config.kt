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
            if (key == null || key == "HideOnlineStatus") {
                runCatching { com.aoya.telegami.hooks.HideOnlineStatus.onPreferenceChanged() }
                    .onFailure { Logger.e("Failed to refresh offline presence", it, "Configuration") }
            }
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

    fun isFeatureEnabled(featureKey: String): Boolean = getBoolean(featureKey, false)

    fun getString(key: String, defaultValue: String = ""): String =
        runCatching { featPref?.getString(key, defaultValue) ?: defaultValue }.getOrDefault(defaultValue)

    fun getBoolean(key: String, defaultValue: Boolean): Boolean =
        runCatching { featPref?.getBoolean(key, defaultValue) ?: defaultValue }
            .onFailure { Logger.e("Cannot read remote boolean $key", it, "Configuration") }
            .getOrDefault(defaultValue)

    fun historyRetentionDays(): Int = MessageToolSettings.bounded(
        MessageToolSettings.RETENTION, getFeatureValue(MessageToolSettings.RETENTION, 30),
    )

    fun historyMaxVersions(): Int = MessageToolSettings.bounded(
        MessageToolSettings.MAX_VERSIONS, getFeatureValue(MessageToolSettings.MAX_VERSIONS, 100),
    )

    fun getFeatureValue(
        featureKey: String,
        defaultValue: Int = 0,
    ): Int {
        val value = runCatching { featPref?.getInt(featureKey, defaultValue) ?: defaultValue }
            .onFailure { Logger.e("Cannot read remote integer $featureKey", it, "Configuration") }
            .getOrDefault(defaultValue)
        logi("Read remote feature value $featureKey: $value")
        return value
    }
}
