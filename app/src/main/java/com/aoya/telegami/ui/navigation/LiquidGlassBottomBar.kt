package com.aoya.telegami.ui.navigation

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.kyant.backdrop.Backdrop
import com.kyant.shapes.Capsule
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.theme.MiuixTheme

@Composable
fun LiquidGlassBottomBar(
    selectedTab: BottomTab,
    onTabSelected: (BottomTab) -> Unit,
    backdrop: Backdrop,
    isDarkTheme: Boolean,
    modifier: Modifier = Modifier,
) {
    val tabs = BottomTab.entries
    val bottomInsets =
        WindowInsets.systemBars
            .union(WindowInsets.displayCutout)
            .only(WindowInsetsSides.Horizontal + WindowInsetsSides.Bottom)

    Box(
        modifier =
            modifier
                .fillMaxWidth()
                .windowInsetsPadding(bottomInsets)
                .padding(horizontal = 24.dp, vertical = 12.dp),
        contentAlignment = Alignment.Center,
    ) {
        Row(
            modifier =
                Modifier
                    .widthIn(max = 420.dp)
                    .fillMaxWidth()
                    .height(64.dp)
                    .clip(Capsule())
                    .background(MiuixTheme.colorScheme.surfaceContainerHigh)
                    .padding(4.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            tabs.forEach { tab ->
                val isSelected = tab == selectedTab
                val title = stringResource(tab.titleRes)
                val tintColor =
                    if (isSelected) {
                        MiuixTheme.colorScheme.primary
                    } else {
                        MiuixTheme.colorScheme.onSurfaceVariantSummary
                    }

                Column(
                    modifier =
                        Modifier
                            .weight(1f)
                            .fillMaxHeight()
                            .clip(Capsule())
                            .background(
                                if (isSelected) {
                                    MiuixTheme.colorScheme.tertiaryContainer
                                } else {
                                    MiuixTheme.colorScheme.surfaceContainerHigh
                                },
                            ).semantics(mergeDescendants = true) {
                                role = Role.Tab
                                selected = isSelected
                            }.clickable {
                                onTabSelected(tab)
                            },
                    verticalArrangement = Arrangement.spacedBy(2.dp, Alignment.CenterVertically),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Icon(
                        painter = painterResource(tab.iconRes),
                        contentDescription = title,
                        tint = tintColor,
                        modifier = Modifier.size(22.dp),
                    )
                    Text(
                        text = title,
                        style = MiuixTheme.textStyles.footnote1,
                        fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
                        color = tintColor,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        }
    }
}
