package com.aoya.telegami.service

import android.content.ComponentName
import android.content.Context
import android.content.SharedPreferences
import android.content.pm.PackageManager
import androidx.appcompat.app.AppCompatDelegate
import com.aoya.telegami.core.Constants.COMPONENT_NAME_DEFAULT
import com.aoya.telegami.telegamiApp
import com.aoya.telegami.util.PackageHelper.findEnabledAppComponent
import com.aoya.telegami.util.logi
import com.aoya.telegami.util.loge
import com.aoya.telegami.util.logw
import io.github.libxposed.service.XposedService
import io.github.libxposed.service.XposedServiceHelper
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.coroutines.runBlocking

object PrefManager {
    private const val PREF_DARK_THEME = "dark_theme"
    private const val PREF_BLACK_DARK_THEME = "black_dark_theme"
    private const val PREF_FOLLOW_SYSTEM_ACCENT = "follow_system_accent"
    private const val PREF_THEME_COLOR = "theme_color"

    private val appPref by lazy { telegamiApp.getSharedPreferences("app_settings", Context.MODE_PRIVATE) }

    @Volatile
    private var xposedService: XposedService? = null

    @Volatile
    private var remotePreferences: SharedPreferences? = null
    private val mutableServiceAvailable = MutableStateFlow(false)
    val serviceAvailable = mutableServiceAvailable.asStateFlow()

    val isLauncherIconInvisible = MutableSharedFlow<Boolean>(replay = 1)

    fun init() {
        XposedServiceHelper.registerListener(
            object : XposedServiceHelper.OnServiceListener {
                override fun onServiceBind(service: XposedService) {
                    try {
                        xposedService = service
                        remotePreferences =
                            if (service.frameworkProperties and XposedService.PROP_CAP_REMOTE != 0L) {
                                service.getRemotePreferences("features")
                            } else {
                                null
                            }
                        mutableServiceAvailable.value = remotePreferences != null
                        logi("LibXposed remote preferences available: ${mutableServiceAvailable.value}")
                    } catch (error: Exception) {
                        remotePreferences = null
                        mutableServiceAvailable.value = false
                        loge("Failed to bind remote preferences", error)
                    }
                }

                override fun onServiceDied(service: XposedService) {
                    if (xposedService === service) {
                        xposedService = null
                        remotePreferences = null
                        mutableServiceAvailable.value = false
                        logw("Disconnected from LibXposed remote preferences")
                    }
                }
            },
        )
    }

    suspend fun updateFeatures(
        booleans: Map<String, Boolean> = emptyMap(),
        integers: Map<String, Int> = emptyMap(),
    ): Boolean = withContext(Dispatchers.IO) {
        val preferences = remotePreferences ?: return@withContext false
        val success =
            try {
                val editor = preferences.edit()
                booleans.forEach { (key, value) -> editor.putBoolean(key, value) }
                integers.forEach { (key, value) -> editor.putInt(key, value) }
                editor.commit()
            } catch (error: Exception) {
                loge("Failed to write remote feature preferences", error)
                false
            }
        // RemotePreferences updates its local snapshot before IPC. A failed commit
        // must not leave that optimistic snapshot displayed as persisted settings.
        if (!success && remotePreferences === preferences) {
            remotePreferences = null
            mutableServiceAvailable.value = false
        }
        success && remotePreferences === preferences
    }

    fun isFeatureEnabled(featureKey: String): Boolean = remotePreferences?.getBoolean(featureKey, false) ?: false

    fun getFeatureValue(
        featureKey: String,
        defaultValue: Int = 0,
    ): Int = remotePreferences?.getInt(featureKey, defaultValue) ?: defaultValue

    var darkTheme: Int
        get() = appPref.getInt(PREF_DARK_THEME, AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM)
        set(value) = appPref.edit().putInt(PREF_DARK_THEME, value).apply()

    var blackDarkTheme: Boolean
        get() = appPref.getBoolean(PREF_BLACK_DARK_THEME, false)
        set(value) = appPref.edit().putBoolean(PREF_BLACK_DARK_THEME, value).apply()

    var followSystemAccent: Boolean
        get() = appPref.getBoolean(PREF_FOLLOW_SYSTEM_ACCENT, true)
        set(value) = appPref.edit().putBoolean(PREF_FOLLOW_SYSTEM_ACCENT, value).apply()

    var themeColor: String
        get() = appPref.getString(PREF_THEME_COLOR, "MATERIAL_BLUE")!!
        set(value) = appPref.edit().putString(PREF_THEME_COLOR, value).apply()

    var hideIcon: Boolean
        get() = runCatching { isLauncherIconInvisible.replayCache.first() }.getOrElse { false }
        set(value) {
            val enabled = findEnabledAppComponent(telegamiApp)
            if (value && enabled != null) {
                telegamiApp.packageManager.setComponentEnabledSetting(
                    enabled,
                    PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                    PackageManager.DONT_KILL_APP,
                )
            } else if (!value && enabled == null) {
                telegamiApp.packageManager.setComponentEnabledSetting(
                    ComponentName(telegamiApp, COMPONENT_NAME_DEFAULT),
                    PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                    PackageManager.DONT_KILL_APP,
                )
            }

            runBlocking { isLauncherIconInvisible.emit(value) }
        }
}
