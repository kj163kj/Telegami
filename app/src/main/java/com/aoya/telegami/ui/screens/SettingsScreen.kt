package com.aoya.telegami.ui.screens

import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.calculateEndPadding
import androidx.compose.foundation.layout.calculateStartPadding
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.aoya.telegami.R
import com.aoya.telegami.service.PrefManager
import com.aoya.telegami.telegamiApp
import com.aoya.telegami.ui.components.MiuixColorDot
import com.aoya.telegami.ui.components.MiuixPreferenceDivider
import com.aoya.telegami.ui.components.MiuixPreferenceGroup
import com.aoya.telegami.ui.components.MiuixSettingIcon
import com.aoya.telegami.ui.theme.TelegamiColorOptions
import com.aoya.telegami.ui.theme.TelegamiThemeState
import com.aoya.telegami.ui.theme.isSystemDynamicColorSupported
import com.aoya.telegami.util.PackageHelper.findEnabledAppComponent
import top.yukonga.miuix.kmp.basic.DropdownEntry
import top.yukonga.miuix.kmp.basic.DropdownItem
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.preference.OverlayDropdownPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference
import top.yukonga.miuix.kmp.utils.overScrollVertical

@Composable
fun SettingsScreen(
    themeState: TelegamiThemeState,
    contentPadding: PaddingValues,
    bottomBarPadding: Dp,
    scrollBehavior: ScrollBehavior,
    modifier: Modifier = Modifier,
) {
    val dynamicColorSupported = isSystemDynamicColorSupported()
    var hideIcon by remember {
        mutableStateOf(findEnabledAppComponent(telegamiApp) == null)
    }

    LaunchedEffect(Unit) {
        val invisible = findEnabledAppComponent(telegamiApp) == null
        PrefManager.isLauncherIconInvisible.emit(invisible)
        hideIcon = invisible
    }

    val colorTexts = stringArrayResource(R.array.color_texts).toList()
    val colorValues = stringArrayResource(R.array.color_values).toList()
    val colorMap = remember { TelegamiColorOptions.toMap() }

    val themeColorEnabled = !dynamicColorSupported || !themeState.followSystemAccent
    val colorDropdownEntry =
        remember(colorTexts, colorValues, themeState.themeColor, themeColorEnabled) {
            DropdownEntry(
                items =
                    colorValues.mapIndexed { index, key ->
                        val label = colorTexts.getOrElse(index) { key }
                        val swatch = colorMap[key] ?: Color(0xFF2196F3)
                        DropdownItem(
                            text = label,
                            selected = key == themeState.themeColor,
                            icon = { MiuixColorDot(color = swatch, enabled = themeColorEnabled) },
                            onClick = {
                                if (key != themeState.themeColor) {
                                    themeState.updateThemeColor(key)
                                }
                            },
                        )
                    },
            )
        }

    val darkThemeTexts = stringArrayResource(R.array.theme_texts).toList()
    val darkThemeValues = stringArrayResource(R.array.theme_values).toList()
    val selectedDarkThemeIndex =
        darkThemeValues
            .indexOf(themeState.darkTheme.toString())
            .coerceAtLeast(0)
    val layoutDirection = LocalLayoutDirection.current

    LazyColumn(
        modifier =
            modifier
                .fillMaxSize()
                .overScrollVertical()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
        overscrollEffect = null,
        contentPadding =
            PaddingValues(
                start = contentPadding.calculateStartPadding(layoutDirection),
                top = contentPadding.calculateTopPadding() + 8.dp,
                end = contentPadding.calculateEndPadding(layoutDirection),
                bottom = contentPadding.calculateBottomPadding() + bottomBarPadding + 16.dp,
            ),
    ) {
        item(key = "settings_theme") {
            MiuixPreferenceGroup(title = stringResource(R.string.settings_theme)) {
                if (dynamicColorSupported) {
                    SwitchPreference(
                        title = stringResource(R.string.settings_system_theme_color),
                        checked = themeState.followSystemAccent,
                        startAction = {
                            MiuixSettingIcon(iconRes = R.drawable.outline_palette_24)
                        },
                        onCheckedChange = { checked ->
                            themeState.updateFollowSystemAccent(checked)
                        },
                    )
                    MiuixPreferenceDivider()
                }

                OverlayDropdownPreference(
                    entry = colorDropdownEntry,
                    title = stringResource(R.string.settings_theme_color),
                    enabled = themeColorEnabled,
                    startAction = {
                        MiuixSettingIcon(
                            iconRes = R.drawable.outline_format_color_fill_24,
                            enabled = themeColorEnabled,
                        )
                    },
                )
                MiuixPreferenceDivider()

                OverlayDropdownPreference(
                    items = darkThemeTexts,
                    selectedIndex = selectedDarkThemeIndex,
                    title = stringResource(R.string.dark_theme),
                    startAction = {
                        MiuixSettingIcon(iconRes = R.drawable.outline_dark_mode_24)
                    },
                    onSelectedIndexChange = { newIndex ->
                        val newMode =
                            darkThemeValues
                                .getOrNull(newIndex)
                                ?.toIntOrNull() ?: -1
                        if (newMode != themeState.darkTheme) {
                            themeState.updateDarkTheme(newMode)
                        }
                    },
                )
                MiuixPreferenceDivider()

                SwitchPreference(
                    title = stringResource(R.string.settings_pure_black_dark_theme),
                    summary = stringResource(R.string.settings_pure_black_dark_theme_summary),
                    checked = themeState.blackDarkTheme,
                    startAction = {
                        MiuixSettingIcon(iconRes = R.drawable.outline_invert_colors_24)
                    },
                    onCheckedChange = { checked ->
                        themeState.updateBlackDarkTheme(checked)
                    },
                )
            }
        }

        item(key = "settings_module") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.settings_module)) {
                SwitchPreference(
                    title = stringResource(R.string.settings_hide_icon),
                    summary = stringResource(R.string.settings_hide_icon_summary),
                    checked = hideIcon,
                    startAction = {
                        MiuixSettingIcon(iconRes = R.drawable.outline_hide_image_24)
                    },
                    onCheckedChange = { checked ->
                        PrefManager.hideIcon = checked
                        hideIcon = checked
                    },
                )
            }
        }
    }
}
