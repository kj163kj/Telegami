package com.aoya.telegami.ui.theme

import android.app.Activity
import android.os.Build
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat
import com.aoya.telegami.service.PrefManager
import top.yukonga.miuix.kmp.theme.ColorSchemeMode
import top.yukonga.miuix.kmp.theme.Colors
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.theme.ThemeController

val TelegamiColorOptions: List<Pair<String, Color>> =
    listOf(
        "SAKURA" to Color(0xFFFF9CA8),
        "MATERIAL_RED" to Color(0xFFF44336),
        "MATERIAL_PINK" to Color(0xFFE91E63),
        "MATERIAL_PURPLE" to Color(0xFF9C27B0),
        "MATERIAL_DEEP_PURPLE" to Color(0xFF673AB7),
        "MATERIAL_INDIGO" to Color(0xFF3F51B5),
        "MATERIAL_BLUE" to Color(0xFF2196F3),
        "MATERIAL_LIGHT_BLUE" to Color(0xFF03A9F4),
        "MATERIAL_CYAN" to Color(0xFF00BCD4),
        "MATERIAL_TEAL" to Color(0xFF009688),
        "MATERIAL_GREEN" to Color(0xFF4FAF50),
        "MATERIAL_LIGHT_GREEN" to Color(0xFF8BC3A4),
        "MATERIAL_LIME" to Color(0xFFCDDC39),
        "MATERIAL_YELLOW" to Color(0xFFFFEB3B),
        "MATERIAL_AMBER" to Color(0xFFFFC107),
        "MATERIAL_ORANGE" to Color(0xFFFF9800),
        "MATERIAL_DEEP_ORANGE" to Color(0xFFFF5722),
        "MATERIAL_BROWN" to Color(0xFF795548),
        "MATERIAL_BLUE_GREY" to Color(0xFF607D8F),
    )

private val ThemeKeyColorMap: Map<String, Color> = TelegamiColorOptions.toMap()

@Stable
class TelegamiThemeState(
    followSystemAccent: Boolean = PrefManager.followSystemAccent,
    themeColor: String = PrefManager.themeColor,
    darkTheme: Int = PrefManager.darkTheme,
    blackDarkTheme: Boolean = PrefManager.blackDarkTheme,
) {
    var followSystemAccent by mutableStateOf(followSystemAccent)
        private set
    var themeColor by mutableStateOf(themeColor)
        private set
    var darkTheme by mutableIntStateOf(darkTheme)
        private set
    var blackDarkTheme by mutableStateOf(blackDarkTheme)
        private set

    fun updateFollowSystemAccent(enabled: Boolean) {
        PrefManager.followSystemAccent = enabled
        followSystemAccent = enabled
    }

    fun updateThemeColor(colorKey: String) {
        PrefManager.themeColor = colorKey
        themeColor = colorKey
    }

    fun updateDarkTheme(mode: Int) {
        PrefManager.darkTheme = mode
        darkTheme = mode
        runCatching {
            AppCompatDelegate.setDefaultNightMode(mode)
        }
    }

    fun updateBlackDarkTheme(enabled: Boolean) {
        PrefManager.blackDarkTheme = enabled
        blackDarkTheme = enabled
    }
}

@Composable
fun rememberTelegamiThemeState(): TelegamiThemeState =
    remember {
        TelegamiThemeState()
    }

@Composable
fun isTelegamiDarkTheme(darkThemeMode: Int): Boolean {
    val systemDark = isSystemInDarkTheme()
    return when (darkThemeMode) {
        AppCompatDelegate.MODE_NIGHT_NO -> false
        AppCompatDelegate.MODE_NIGHT_YES -> true
        else -> systemDark
    }
}

fun isSystemDynamicColorSupported(): Boolean = Build.VERSION.SDK_INT >= Build.VERSION_CODES.S

@Composable
fun TelegamiTheme(
    themeState: TelegamiThemeState,
    content: @Composable () -> Unit,
) {
    val isDark = isTelegamiDarkTheme(themeState.darkTheme)
    val useSystemDynamic = isSystemDynamicColorSupported() && themeState.followSystemAccent
    val seedColor =
        if (useSystemDynamic) {
            null
        } else {
            ThemeKeyColorMap[themeState.themeColor] ?: Color(0xFF2196F3)
        }

    val mode = if (isDark) ColorSchemeMode.MonetDark else ColorSchemeMode.MonetLight
    val controller =
        remember(mode, seedColor, isDark) {
            ThemeController(
                colorSchemeMode = mode,
                keyColor = seedColor,
                isDark = isDark,
            )
        }

    val baseColors = controller.currentColors()
    val resolvedColors: Colors =
        remember(baseColors, isDark, themeState.blackDarkTheme) {
            if (isDark && themeState.blackDarkTheme) {
                baseColors.copy(
                    background = Color.Black,
                    surface = Color.Black,
                    surfaceVariant = Color(0xFF121212),
                    surfaceContainer = Color(0xFF121212),
                    surfaceContainerHigh = Color(0xFF1A1A1A),
                    surfaceContainerHighest = Color(0xFF222222),
                )
            } else {
                baseColors
            }
        }

    val view = LocalView.current
    val context = LocalContext.current
    if (!view.isInEditMode) {
        SideEffect {
            val window = (context as? Activity)?.window ?: return@SideEffect
            val insetsController = WindowCompat.getInsetsController(window, view)
            insetsController.isAppearanceLightStatusBars = !isDark
            insetsController.isAppearanceLightNavigationBars = !isDark
        }
    }

    MiuixTheme(
        colors = resolvedColors,
        content = content,
    )
}
