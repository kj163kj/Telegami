package com.aoya.telegami.ui.activity

import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import com.aoya.telegami.ui.navigation.MainNavigation
import com.aoya.telegami.ui.theme.TelegamiTheme
import com.aoya.telegami.ui.theme.rememberTelegamiThemeState

class MainActivity : AppCompatActivity() {
    var readyToKill: Boolean = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        enableEdgeToEdge()

        setContent {
            val themeState = rememberTelegamiThemeState()
            TelegamiTheme(themeState = themeState) {
                MainNavigation(themeState = themeState)
            }
        }
    }
}
