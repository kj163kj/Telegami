package com.aoya.telegami.ui.navigation

import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.SpringSpec
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
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
import kotlin.math.sqrt

internal val PagerNavigationSpringSpec: SpringSpec<Float> =
    spring(
        stiffness = 322.2f,
        dampingRatio = 32.31f / (2f * sqrt(322.2f)),
        visibilityThreshold = 0.01f,
    )

@Composable
fun MainNavigation(
    themeState: TelegamiThemeState,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val isDarkTheme = isTelegamiDarkTheme(themeState.darkTheme)
    val animationsEnabled =
        AccessibilityUtils.isAnimationEnabled(context.contentResolver)
    val tabs = BottomTab.entries
    var selectedTabOrdinal by rememberSaveable { mutableIntStateOf(BottomTab.Features.ordinal) }
    val selectedTab =
        tabs.getOrElse(selectedTabOrdinal) { BottomTab.Features }

    val pagerState =
        rememberPagerState(
            initialPage = selectedTabOrdinal,
            pageCount = { tabs.size },
        )

    LaunchedEffect(selectedTabOrdinal, animationsEnabled) {
        val targetPage = selectedTabOrdinal.coerceIn(0, tabs.lastIndex)
        if (pagerState.currentPage != targetPage || pagerState.currentPageOffsetFraction != 0f) {
            if (animationsEnabled) {
                pagerState.animateScrollToPage(
                    page = targetPage,
                    animationSpec = PagerNavigationSpringSpec,
                )
            } else {
                pagerState.scrollToPage(targetPage)
            }
        }
    }

    BackHandler(enabled = selectedTab != BottomTab.Features) {
        selectedTabOrdinal = BottomTab.Features.ordinal
    }

    val appTitle = stringResource(R.string.app_name)
    val surfaceColor = MiuixTheme.colorScheme.surface
    val pageBackdrop =
        rememberLayerBackdrop {
            drawRect(surfaceColor)
            drawContent()
        }

    Scaffold(
        modifier = modifier.fillMaxSize(),
        containerColor = surfaceColor,
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        bottomBar = {
            Box(
                modifier = Modifier.fillMaxWidth(),
                contentAlignment = Alignment.BottomCenter,
            ) {
                LiquidGlassBottomBar(
                    selectedTab = selectedTab,
                    onTabSelected = { newTab ->
                        selectedTabOrdinal = newTab.ordinal
                    },
                    backdrop = pageBackdrop,
                    isDarkTheme = isDarkTheme,
                )
            }
        },
    ) { outerPadding ->
        val bottomBarPadding = outerPadding.calculateBottomPadding()

        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .background(surfaceColor)
                    .layerBackdrop(pageBackdrop),
        ) {
            HorizontalPager(
                state = pagerState,
                beyondViewportPageCount = 2,
                userScrollEnabled = false,
                overscrollEffect = null,
                modifier = Modifier.fillMaxSize(),
            ) { pageIndex ->
                val pageTab = tabs[pageIndex]
                val pageSubtitle =
                    if (pageTab == BottomTab.About) {
                        stringResource(R.string.about_section_title)
                    } else {
                        stringResource(pageTab.titleRes)
                    }
                val pageScrollBehavior = MiuixScrollBehavior(rememberTopAppBarState())

                Scaffold(
                    modifier = Modifier.fillMaxSize(),
                    containerColor = surfaceColor,
                    popupHost = {},
                    contentWindowInsets =
                        WindowInsets.systemBars
                            .union(WindowInsets.displayCutout)
                            .only(WindowInsetsSides.Top + WindowInsetsSides.Horizontal),
                    topBar = {
                        TopAppBar(
                            title = "$appTitle - $pageSubtitle",
                            largeTitle = appTitle,
                            subtitle = pageSubtitle,
                            scrollBehavior = pageScrollBehavior,
                        )
                    },
                ) { pagePadding ->
                    when (pageTab) {
                        BottomTab.Features -> {
                            FeaturesScreen(
                                isDarkTheme = isDarkTheme,
                                contentPadding = pagePadding,
                                bottomBarPadding = bottomBarPadding,
                                scrollBehavior = pageScrollBehavior,
                            )
                        }

                        BottomTab.Settings -> {
                            SettingsScreen(
                                themeState = themeState,
                                contentPadding = pagePadding,
                                bottomBarPadding = bottomBarPadding,
                                scrollBehavior = pageScrollBehavior,
                            )
                        }

                        BottomTab.About -> {
                            AboutScreen(
                                contentPadding = pagePadding,
                                bottomBarPadding = bottomBarPadding,
                                scrollBehavior = pageScrollBehavior,
                            )
                        }
                    }
                }
            }
        }
    }
}
