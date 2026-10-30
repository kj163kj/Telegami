package com.aoya.telegami.ui.activity

import android.graphics.Color
import android.os.Build
import android.os.Bundle
import androidx.activity.SystemBarStyle
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.runtime.DisposableEffect
import com.aoya.telegami.ui.navigation.MainNavigation
import com.aoya.telegami.ui.theme.TelegamiTheme
import com.aoya.telegami.ui.theme.isTelegamiDarkTheme
import com.aoya.telegami.ui.theme.rememberTelegamiThemeState

class MainActivity : AppCompatActivity() {
    var readyToKill: Boolean = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        enableEdgeToEdge()

        setContent {
            val themeState = rememberTelegamiThemeState()
            val isDarkTheme = isTelegamiDarkTheme(themeState.darkTheme)

            DisposableEffect(isDarkTheme) {
                enableEdgeToEdge(
                    statusBarStyle =
                        SystemBarStyle.auto(Color.TRANSPARENT, Color.TRANSPARENT) { isDarkTheme },
                    navigationBarStyle =
                        SystemBarStyle.auto(Color.TRANSPARENT, Color.TRANSPARENT) { isDarkTheme },
                )
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                    window.isNavigationBarContrastEnforced = false
                }
                onDispose {}
            }

            TelegamiTheme(themeState = themeState) {
                MainNavigation(themeState = themeState)
            }
        }
    }
}
