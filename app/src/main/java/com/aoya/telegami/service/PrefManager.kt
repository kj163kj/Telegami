package com.aoya.telegami.service

import android.content.ComponentName
import android.content.Context
import android.content.SharedPreferences
import android.content.pm.PackageManager
import androidx.appcompat.app.AppCompatDelegate
import com.aoya.telegami.core.Constants.COMPONENT_NAME_DEFAULT
import com.aoya.telegami.core.TelegramTarget
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

data class ModuleStatusInfo(
    val isModuleEnabled: Boolean = false,
    val frameworkName: String? = null,
    val frameworkVersion: String? = null,
    val frameworkVersionCode: Long? = null,
    val apiVersion: Int? = null,
    val isTelegramInScope: Boolean = false,
)

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
    private val mutableModuleStatus = MutableStateFlow(ModuleStatusInfo())
    val moduleStatus = mutableModuleStatus.asStateFlow()

    val isLauncherIconInvisible = MutableSharedFlow<Boolean>(replay = 1)

    private fun readModuleStatus(service: XposedService?): ModuleStatusInfo {
        if (service == null) return ModuleStatusInfo()
        return runCatching {
            val fwName = service.frameworkName.takeIf { it.isNotBlank() }
            val fwVersion = service.frameworkVersion.takeIf { it.isNotBlank() }
            val fwCode = service.frameworkVersionCode
            val apiVer = service.apiVersion
            val scopeList = runCatching { service.scope }.getOrNull()
            val telegramScoped = scopeList?.any { it in TelegramTarget.PACKAGE_NAMES } ?: true
            ModuleStatusInfo(
                isModuleEnabled = true,
                frameworkName = fwName,
                frameworkVersion = fwVersion,
                frameworkVersionCode = fwCode,
                apiVersion = apiVer,
                isTelegramInScope = telegramScoped,
            )
        }.getOrElse {
            ModuleStatusInfo()
        }
    }

    fun refreshModuleStatus() {
        val service = xposedService
        val status = readModuleStatus(service)
        if (service != null && !status.isModuleEnabled) {
            xposedService = null
            remotePreferences = null
            mutableServiceAvailable.value = false
        }
        mutableModuleStatus.value = status
    }

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
                        mutableModuleStatus.value = readModuleStatus(service)
                        logi("LibXposed remote preferences available: ${mutableServiceAvailable.value}")
                    } catch (error: Exception) {
                        xposedService = null
                        remotePreferences = null
                        mutableServiceAvailable.value = false
                        mutableModuleStatus.value = ModuleStatusInfo()
                        loge("Failed to bind remote preferences", error)
                    }
                }

                override fun onServiceDied(service: XposedService) {
                    if (xposedService === service) {
                        xposedService = null
                        remotePreferences = null
                        mutableServiceAvailable.value = false
                        mutableModuleStatus.value = ModuleStatusInfo()
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
            refreshModuleStatus()
        }
        success && remotePreferences === preferences
    }

    fun isFeatureEnabled(featureKey: String): Boolean = remotePreferences?.getBoolean(featureKey, false) ?: false

    fun getBoolean(key: String, defaultValue: Boolean): Boolean =
        runCatching { remotePreferences?.getBoolean(key, defaultValue) ?: defaultValue }.getOrDefault(defaultValue)

    suspend fun updateMessageTools(
        booleans: Map<String, Boolean> = emptyMap(),
        integers: Map<String, Int> = emptyMap(),
    ): Boolean {
        if (!MessageToolSettings.booleanDefaults.keys.containsAll(booleans.keys) ||
            !MessageToolSettings.integerDefaults.keys.containsAll(integers.keys)) return false
        return updateFeatures(booleans, integers.mapValues { (key, value) -> MessageToolSettings.bounded(key, value) })
    }

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
