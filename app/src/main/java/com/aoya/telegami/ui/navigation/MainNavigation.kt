package com.aoya.telegami.ui.navigation

import androidx.activity.compose.BackHandler
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.union
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.saveable.rememberSaveableStateHolder
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.aoya.telegami.R
import com.aoya.telegami.ui.screens.AboutScreen
import com.aoya.telegami.ui.screens.FeaturesScreen
import com.aoya.telegami.ui.screens.SettingsScreen
import com.aoya.telegami.ui.theme.TelegamiThemeState
import com.aoya.telegami.ui.theme.isTelegamiDarkTheme
import com.aoya.telegami.ui.util.AccessibilityUtils
import com.kyant.backdrop.backdrops.layerBackdrop
import com.kyant.backdrop.backdrops.rememberLayerBackdrop
import top.yukonga.miuix.kmp.basic.MiuixScrollBehavior
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.basic.TopAppBar
import top.yukonga.miuix.kmp.basic.rememberTopAppBarState
import top.yukonga.miuix.kmp.theme.MiuixTheme

@Composable
fun MainNavigation(
    themeState: TelegamiThemeState,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val density = LocalDensity.current
    val isDarkTheme = isTelegamiDarkTheme(themeState.darkTheme)
    val animationsEnabled =
        AccessibilityUtils.isAnimationEnabled(context.contentResolver)

    var selectedTabName by rememberSaveable { mutableStateOf(BottomTab.Features.name) }
    val selectedTab =
        BottomTab.entries.firstOrNull { it.name == selectedTabName } ?: BottomTab.Features

    BackHandler(enabled = selectedTab != BottomTab.Features) {
        selectedTabName = BottomTab.Features.name
    }

    val featuresScrollBehavior = MiuixScrollBehavior(rememberTopAppBarState())
    val settingsScrollBehavior = MiuixScrollBehavior(rememberTopAppBarState())
    val aboutScrollBehavior = MiuixScrollBehavior(rememberTopAppBarState())

    val activeScrollBehavior =
        when (selectedTab) {
            BottomTab.Features -> featuresScrollBehavior
            BottomTab.Settings -> settingsScrollBehavior
            BottomTab.About -> aboutScrollBehavior
        }

    val appTitle = stringResource(R.string.app_name)
    val tabSubtitle = stringResource(selectedTab.titleRes)
    val surfaceColor = MiuixTheme.colorScheme.surface
    val pageBackdrop =
        rememberLayerBackdrop {
            drawRect(surfaceColor)
            drawContent()
        }

    var bottomBarHeightPx by rememberSaveable { mutableIntStateOf(0) }
    val bottomBarHeightDp =
        with(density) {
            if (bottomBarHeightPx > 0) bottomBarHeightPx.toDp() else 96.dp
        }

    val stateHolder = rememberSaveableStateHolder()

    Scaffold(
        modifier = modifier.fillMaxSize(),
        containerColor = surfaceColor,
        contentWindowInsets = WindowInsets.systemBars.union(WindowInsets.displayCutout),
        topBar = {
            TopAppBar(
                title = "$appTitle - $tabSubtitle",
                largeTitle = appTitle,
                subtitle = tabSubtitle,
                scrollBehavior = activeScrollBehavior,
            )
        },
    ) { scaffoldPadding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .background(surfaceColor),
        ) {
            Box(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .layerBackdrop(pageBackdrop),
            ) {
                AnimatedContent(
                    targetState = selectedTab,
                    transitionSpec = {
                        val duration = if (animationsEnabled) 180 else 0
                        fadeIn(animationSpec = tween(duration)) togetherWith
                            fadeOut(animationSpec = tween(duration))
                    },
                    label = "TabContentTransition",
                ) { tab ->
                    stateHolder.SaveableStateProvider(tab.name) {
                        when (tab) {
                            BottomTab.Features -> {
                                FeaturesScreen(
                                    contentPadding = scaffoldPadding,
                                    bottomBarPadding = bottomBarHeightDp,
                                    scrollBehavior = featuresScrollBehavior,
                                )
                            }

                            BottomTab.Settings -> {
                                SettingsScreen(
                                    themeState = themeState,
                                    contentPadding = scaffoldPadding,
                                    bottomBarPadding = bottomBarHeightDp,
                                    scrollBehavior = settingsScrollBehavior,
                                )
                            }

                            BottomTab.About -> {
                                AboutScreen(
                                    contentPadding = scaffoldPadding,
                                    bottomBarPadding = bottomBarHeightDp,
                                    scrollBehavior = aboutScrollBehavior,
                                )
                            }
                        }
                    }
                }
            }

            LiquidGlassBottomBar(
                selectedTab = selectedTab,
                onTabSelected = { newTab ->
                    if (newTab != selectedTab) {
                        selectedTabName = newTab.name
                    }
                },
                backdrop = pageBackdrop,
                isDarkTheme = isDarkTheme,
                modifier =
                    Modifier
                        .align(Alignment.BottomCenter)
                        .fillMaxWidth()
                        .onSizeChanged { size ->
                            bottomBarHeightPx = size.height
                        },
            )
        }
    }
}
