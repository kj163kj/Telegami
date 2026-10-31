package com.aoya.telegami

import android.app.Application
import android.content.Context
import android.os.Build
import com.aoya.telegami.core.Constants
import com.aoya.telegami.core.TelegramTarget
import com.aoya.telegami.hooks.AllowSaveVideos
import com.aoya.telegami.hooks.AllowScreenshots
import com.aoya.telegami.hooks.ApplyTheme
import com.aoya.telegami.hooks.BoostDownload
import com.aoya.telegami.hooks.DisableAds
import com.aoya.telegami.hooks.FakePremium
import com.aoya.telegami.hooks.HideStoryViewStatus
import com.aoya.telegami.hooks.HideOnlineStatus
import com.aoya.telegami.hooks.LocaleController
import com.aoya.telegami.hooks.MarkMessages
import com.aoya.telegami.hooks.PreventSecretMediaDeletion
import com.aoya.telegami.hooks.Privacy
import com.aoya.telegami.hooks.ProfileDetails
import com.aoya.telegami.hooks.Settings
import com.aoya.telegami.hooks.ShowDeletedMessages
import com.aoya.telegami.hooks.UnlockChannelFeatures
import com.aoya.telegami.util.Logger
import io.github.libxposed.api.XposedInterface.ExceptionMode
import io.github.libxposed.api.XposedModule
import io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam
import java.util.concurrent.atomic.AtomicBoolean

class XposedInit : XposedModule() {
    private val attachHookInstalled = AtomicBoolean(false)
    private val initializationStarted = AtomicBoolean(false)

    override fun onPackageLoaded(param: PackageLoadedParam) {
        if (param.packageName !in Constants.SUPPORTED_TELEGRAM_PACKAGES) return
        Logger.attachXposedLogger { priority, tag, message, throwable ->
            if (throwable == null) {
                log(priority, tag, message)
            } else {
                log(priority, tag, message, throwable)
            }
        }
        if (!attachHookInstalled.compareAndSet(false, true)) return
        Logger.i("Package loaded: ${param.packageName}", "ModuleInit", xposed = true)
        val attach = Application::class.java.getDeclaredMethod("attach", Context::class.java)
        hook(attach).setExceptionMode(ExceptionMode.PROTECTIVE).intercept { chain ->
            val result = chain.proceed()
            val application = chain.thisObject as Application
            if (application.packageName != param.packageName) return@intercept result
            if (!initializationStarted.compareAndSet(false, true)) return@intercept result
            try {
                val info = application.packageManager.getPackageInfo(application.packageName, 0)
                val versionCode =
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                        info.longVersionCode
                    } else {
                        @Suppress("DEPRECATION")
                        info.versionCode.toLong()
                    }
                val rejection = TelegramTarget.rejectionReason(info.packageName, info.versionName, versionCode)
                if (rejection != null) {
                    Logger.w("Rejected ${info.packageName}/${info.versionName}/$versionCode: $rejection", "TelegramVersion")
                    return@intercept result
                }
                Logger.i("Accepted ${info.packageName}/${info.versionName}/$versionCode", "TelegramVersion", xposed = true)
                Telegami.init(
                    getModuleApplicationInfo().sourceDir,
                    application,
                    getRemotePreferences("features"),
                )
                installHooks(application.classLoader)
            } catch (throwable: Throwable) {
                Logger.e("Module initialization failed; business hooks stopped", throwable, "ModuleInit")
            }
            result
        }
    }

    private fun installHooks(classLoader: ClassLoader) {
        fun install(
            name: String,
            hook: () -> Unit,
        ) {
            try {
                hook()
                Logger.i("Installer completed: $name", "HookInstall", xposed = true)
            } catch (throwable: Throwable) {
                Logger.e("Failed to install $name", throwable)
            }
        }

        install("Settings") { Settings.install(this, classLoader) }
        install("LocaleController") { LocaleController.install(this, classLoader) }
        install("MarkMessages") { MarkMessages.install(this, classLoader) }
        install("AllowScreenshots") { AllowScreenshots.install(this, classLoader) }
        install("ProfileDetails") { ProfileDetails.install(this, classLoader) }
        install("Privacy") { Privacy.install(this, classLoader) }
        install("HideOnlineStatus") { HideOnlineStatus.install(this, classLoader) }
        install("HideStoryViewStatus") { HideStoryViewStatus.install(this, classLoader) }
        install("ShowDeletedMessages") { ShowDeletedMessages.install(this, classLoader) }
        install("PreventSecretMediaDeletion") { PreventSecretMediaDeletion.install(this, classLoader) }
        install("UnlockChannelFeatures") { UnlockChannelFeatures.install(this, classLoader) }
        install("AllowSaveVideos") { AllowSaveVideos.install(this, classLoader) }
        install("DisableAds") { DisableAds.install(this, classLoader) }
        install("FakePremium") { FakePremium.install(this, classLoader) }
        install("BoostDownload") { BoostDownload.install(this, classLoader) }
        install("ApplyTheme") { ApplyTheme.install(this, classLoader) }
        install("MessageMenuActions") {
            com.aoya.telegami.hooks.messages.MessageMenuActions.install(this, classLoader)
        }
        install("MessageRepeatHook") {
            com.aoya.telegami.hooks.messages.MessageRepeatHook.install(this, getModuleApplicationInfo().sourceDir)
        }
        install("MessageCopyHook") { com.aoya.telegami.hooks.messages.MessageCopyHook.install() }
        install("MessageEditHistoryHook") {
            val target = com.aoya.telegami.core.TelegramHistoryResolver(
                com.aoya.telegami.core.TelegramMessageResolver(classLoader),
            )
            com.aoya.telegami.hooks.messages.MessageEditHistoryHook.install(
                this, target, com.aoya.telegami.data.MessageHistoryStorage::persist,
            )
            com.aoya.telegami.hooks.messages.MessageHistoryViewer.install(target)
        }
    }
}
