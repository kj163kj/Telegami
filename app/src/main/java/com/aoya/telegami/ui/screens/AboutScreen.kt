package com.aoya.telegami.ui.screens

import android.content.Intent
import android.graphics.BitmapFactory
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.core.net.toUri
import com.aoya.telegami.BuildConfig
import com.aoya.telegami.R
import com.aoya.telegami.core.Constants
import com.aoya.telegami.ui.components.MiuixPreferenceDivider
import com.aoya.telegami.ui.components.MiuixPreferenceGroup
import top.yukonga.miuix.kmp.basic.ButtonDefaults
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.basic.TextButton
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.theme.MiuixTheme

private const val DEVELOPER_GITHUB_URL = "https://github.com/aoya111"
private const val LICENSE_URL = "${Constants.GITHUB_REPO}/blob/main/LICENSE"

@Composable
fun AboutScreen(
    contentPadding: PaddingValues,
    bottomBarPadding: Dp,
    scrollBehavior: ScrollBehavior,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val devAvatarBitmap =
        remember(context) {
            runCatching {
                BitmapFactory.decodeResource(context.resources, R.drawable.cont_soul2x)?.asImageBitmap()
            }.getOrNull()
        }

    fun openUrl(url: String) {
        runCatching {
            val intent = Intent(Intent.ACTION_VIEW, url.toUri())
            context.startActivity(intent)
        }
    }

    LazyColumn(
        modifier =
            modifier
                .fillMaxSize()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
        contentPadding =
            PaddingValues(
                top = contentPadding.calculateTopPadding() + 8.dp,
                bottom = contentPadding.calculateBottomPadding() + bottomBarPadding + 24.dp,
            ),
    ) {
        item(key = "about_header") {
            Card(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp),
                insideMargin = PaddingValues(20.dp),
            ) {
                Column(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Box(
                        modifier =
                            Modifier
                                .size(76.dp)
                                .clip(RoundedCornerShape(22.dp))
                                .background(MiuixTheme.colorScheme.tertiaryContainer),
                        contentAlignment = Alignment.Center,
                    ) {
                        Icon(
                            painter = painterResource(R.drawable.ic_telegami),
                            contentDescription = stringResource(R.string.app_name),
                            tint = MiuixTheme.colorScheme.primary,
                            modifier = Modifier.size(56.dp),
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    Text(
                        text = stringResource(R.string.app_name),
                        style = MiuixTheme.textStyles.title2,
                        fontWeight = FontWeight.Bold,
                        color = MiuixTheme.colorScheme.onSurfaceContainer,
                    )

                    Spacer(modifier = Modifier.height(4.dp))

                    Text(
                        text = BuildConfig.VERSION_NAME,
                        style = MiuixTheme.textStyles.body2,
                        color = MiuixTheme.colorScheme.primary,
                        fontWeight = FontWeight.Medium,
                    )

                    Spacer(modifier = Modifier.height(10.dp))

                    Text(
                        text = stringResource(R.string.about_support),
                        style = MiuixTheme.textStyles.footnote1,
                        color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        textAlign = TextAlign.Center,
                    )

                    Spacer(modifier = Modifier.height(14.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        TextButton(
                            text = "GitHub",
                            onClick = { openUrl(Constants.GITHUB_REPO) },
                            colors = ButtonDefaults.textButtonColorsPrimary(),
                            modifier = Modifier.weight(1f),
                        )
                        TextButton(
                            text = "Telegram",
                            onClick = { openUrl(Constants.TELEGRAM_CHANNEL) },
                            modifier = Modifier.weight(1f),
                        )
                    }
                }
            }
        }

        item(key = "about_fork_section") {
            Spacer(modifier = Modifier.height(10.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.title_about_fork)) {
                Text(
                    text = stringResource(R.string.about_fork_description),
                    style = MiuixTheme.textStyles.body2,
                    color = MiuixTheme.colorScheme.onSurfaceContainer,
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
                )
            }
        }

        item(key = "about_desc_section") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.about_section_title)) {
                Text(
                    text = stringResource(R.string.about_description),
                    style = MiuixTheme.textStyles.body2,
                    color = MiuixTheme.colorScheme.onSurfaceContainer,
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
                )
                MiuixPreferenceDivider()
                ArrowPreference(
                    title = "Open Source License",
                    summary = "GNU General Public License v3.0 (GPL-3.0)",
                    onClick = { openUrl(LICENSE_URL) },
                )
            }
        }

        item(key = "about_developer_section") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.about_developer)) {
                ArrowPreference(
                    title = "soul2x",
                    summary = "Telegami Developer",
                    startAction = {
                        if (devAvatarBitmap != null) {
                            Image(
                                bitmap = devAvatarBitmap,
                                contentDescription = "soul2x",
                                contentScale = ContentScale.Crop,
                                modifier =
                                    Modifier
                                        .padding(end = 12.dp)
                                        .size(42.dp)
                                        .clip(CircleShape),
                            )
                        }
                    },
                    onClick = { openUrl(DEVELOPER_GITHUB_URL) },
                )
            }
        }
    }
}
