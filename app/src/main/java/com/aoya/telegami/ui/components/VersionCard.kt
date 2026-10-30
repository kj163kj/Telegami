package com.aoya.telegami.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.aoya.telegami.BuildConfig
import com.aoya.telegami.R
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardColors
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.theme.MiuixTheme

@Composable
fun VersionCard(
    serviceAvailable: Boolean,
    modifier: Modifier = Modifier,
) {
    val primaryColor = MiuixTheme.colorScheme.primary
    val containerColor =
        if (serviceAvailable) {
            MiuixTheme.colorScheme.tertiaryContainer
        } else {
            MiuixTheme.colorScheme.surfaceContainer
        }
    val titleColor =
        if (serviceAvailable) {
            MiuixTheme.colorScheme.onTertiaryContainer
        } else {
            MiuixTheme.colorScheme.onSurfaceContainer
        }
    val summaryColor = MiuixTheme.colorScheme.onSurfaceVariantSummary

    Card(
        modifier = modifier.fillMaxWidth(),
        insideMargin = PaddingValues(horizontal = 18.dp, vertical = 14.dp),
        colors = CardColors(color = containerColor, contentColor = titleColor),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            Box(
                modifier =
                    Modifier
                        .size(40.dp)
                        .clip(CircleShape)
                        .background(primaryColor.copy(alpha = 0.14f)),
                contentAlignment = Alignment.Center,
            ) {
                Icon(
                    painter =
                        painterResource(
                            if (serviceAvailable) {
                                R.drawable.sentiment_calm_24px
                            } else {
                                R.drawable.sentiment_very_dissatisfied_24px
                            },
                        ),
                    contentDescription = null,
                    tint = primaryColor,
                    modifier = Modifier.size(22.dp),
                )
            }

            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp),
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    Text(
                        text = stringResource(R.string.app_name),
                        style = MiuixTheme.textStyles.headline1,
                        fontWeight = FontWeight.SemiBold,
                        color = titleColor,
                    )
                    Text(
                        text = stringResource(R.string.home_module_version, BuildConfig.VERSION_NAME),
                        style = MiuixTheme.textStyles.body2,
                        fontWeight = FontWeight.Medium,
                        color = primaryColor,
                    )
                }
                Text(
                    text =
                        if (serviceAvailable) {
                            stringResource(R.string.module_description)
                        } else {
                            stringResource(R.string.remote_preferences_unavailable)
                        },
                    style = MiuixTheme.textStyles.body2,
                    color = summaryColor,
                )
            }
        }

        if (!serviceAvailable) {
            Text(
                text = stringResource(R.string.remote_preferences_unavailable_hint),
                style = MiuixTheme.textStyles.footnote1,
                color = summaryColor,
                modifier = Modifier.padding(top = 8.dp),
            )
        }
    }
}
