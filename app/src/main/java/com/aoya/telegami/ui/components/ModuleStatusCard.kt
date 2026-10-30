package com.aoya.telegami.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.aoya.telegami.R
import com.aoya.telegami.service.ModuleStatusInfo
import com.aoya.telegami.ui.util.AccessibilityUtils
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.utils.PressFeedbackType

internal data class ModuleStatusCardModel(
    val isWorking: Boolean,
    val frameworkName: String,
    val frameworkVersion: String?,
    val apiVersion: Int,
    val showScopeWarning: Boolean,
)

internal object ModuleStatusCardPresentation {
    private const val DEFAULT_FRAMEWORK_NAME = "LSPosed"
    private const val DEFAULT_API_VERSION = 102

    fun resolve(
        serviceAvailable: Boolean,
        statusInfo: ModuleStatusInfo,
    ): ModuleStatusCardModel {
        val isWorking = statusInfo.isModuleEnabled || serviceAvailable
        val frameworkName =
            statusInfo.frameworkName?.takeIf { it.isNotBlank() } ?: DEFAULT_FRAMEWORK_NAME
        val frameworkVersion = statusInfo.frameworkVersion?.takeIf { it.isNotBlank() }
        val apiVersion = statusInfo.apiVersion?.takeIf { it > 0 } ?: DEFAULT_API_VERSION
        val showScopeWarning = isWorking && statusInfo.isModuleEnabled && !statusInfo.isTelegramInScope
        return ModuleStatusCardModel(
            isWorking = isWorking,
            frameworkName = frameworkName,
            frameworkVersion = frameworkVersion,
            apiVersion = apiVersion,
            showScopeWarning = showScopeWarning,
        )
    }
}

@Composable
fun ModuleStatusCard(
    serviceAvailable: Boolean,
    statusInfo: ModuleStatusInfo,
    isDarkTheme: Boolean,
    onRefresh: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val animationsEnabled =
        AccessibilityUtils.isAnimationEnabled(context.contentResolver)
    val model = ModuleStatusCardPresentation.resolve(serviceAvailable, statusInfo)

    val containerColor: Color
    val primaryTextColor: Color
    val secondaryTextColor: Color
    val watermarkTint: Color
    val tagBgColor: Color
    val tagContentColor: Color

    if (model.isWorking) {
        if (isDarkTheme) {
            containerColor = Color(0xFF1A3825)
            primaryTextColor = Color(0xFFEAF7EE)
            secondaryTextColor = Color(0xFFC2DFCA)
            watermarkTint = Color(0xFF36D167)
            if (model.showScopeWarning) {
                tagBgColor = Color(0xFF5C3D14)
                tagContentColor = Color(0xFFFFD599)
            } else {
                tagBgColor = Color(0xFF315D3E)
                tagContentColor = Color(0xFFB8E8C5)
            }
        } else {
            containerColor = Color(0xFFDFFAE4)
            primaryTextColor = Color(0xFF132919)
            secondaryTextColor = Color(0xFF284B33)
            watermarkTint = Color(0xFF36D167)
            if (model.showScopeWarning) {
                tagBgColor = Color(0xFFFFE0B2)
                tagContentColor = Color(0xFF663C00)
            } else {
                tagBgColor = Color(0xFFB8E8C5)
                tagContentColor = Color(0xFF164A29)
            }
        }
    } else {
        if (isDarkTheme) {
            containerColor = Color(0xFF3A1D1F)
            primaryTextColor = Color(0xFFFCEAEB)
            secondaryTextColor = Color(0xFFE4B8BA)
            watermarkTint = Color(0xFFE55451).copy(alpha = 0.85f)
            tagBgColor = Color(0xFF612B2E)
            tagContentColor = Color(0xFFF8C6C5)
        } else {
            containerColor = Color(0xFFFDE8E8)
            primaryTextColor = Color(0xFF2D1416)
            secondaryTextColor = Color(0xFF5C2B2E)
            watermarkTint = Color(0xFFE55451).copy(alpha = 0.85f)
            tagBgColor = Color(0xFFF8C6C5)
            tagContentColor = Color(0xFF69191B)
        }
    }

    val titleText =
        if (model.isWorking) {
            stringResource(R.string.status_module_working)
        } else {
            stringResource(R.string.status_module_disabled)
        }

    val tagText =
        when {
            !model.isWorking -> stringResource(R.string.status_tag_disabled)
            model.showScopeWarning -> stringResource(R.string.status_tag_scope_missing)
            else -> stringResource(R.string.status_tag_enabled)
        }

    val subtitleText =
        when {
            !model.isWorking -> stringResource(R.string.status_module_disabled_summary)
            model.showScopeWarning ->
                stringResource(R.string.status_module_scope_warning, model.frameworkName)
            model.frameworkVersion != null ->
                stringResource(
                    R.string.status_module_enabled_version_summary,
                    model.frameworkName,
                    model.frameworkVersion,
                )
            else -> stringResource(R.string.status_module_enabled_summary, model.frameworkName)
        }

    val bottomCaptionText =
        if (model.isWorking) {
            stringResource(
                R.string.status_module_api_mode,
                model.frameworkName,
                model.apiVersion,
            )
        } else {
            stringResource(R.string.status_module_disabled_hint)
        }

    val watermarkIconRes =
        if (model.isWorking) {
            R.drawable.ic_check_circle_outline_24
        } else {
            R.drawable.ic_error_outline_24
        }

    Card(
        modifier = modifier.fillMaxWidth(),
        colors =
            CardDefaults.defaultColors(
                color = containerColor,
                contentColor = primaryTextColor,
            ),
        onClick = onRefresh,
        showIndication = false,
        pressFeedbackType = if (animationsEnabled) PressFeedbackType.Tilt else PressFeedbackType.None,
    ) {
        Box(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .heightIn(min = 110.dp),
        ) {
            Box(
                modifier =
                    Modifier
                        .matchParentSize()
                        .offset(x = 27.dp, y = 31.dp),
                contentAlignment = Alignment.BottomEnd,
            ) {
                Icon(
                    painter = painterResource(watermarkIconRes),
                    contentDescription = null,
                    tint = watermarkTint,
                    modifier = Modifier.size(110.dp),
                )
            }

            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .heightIn(min = 110.dp)
                        .padding(start = 16.dp, top = 14.dp, end = 64.dp, bottom = 12.dp),
                verticalArrangement = Arrangement.SpaceBetween,
            ) {
                Column {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        Text(
                            text = titleText,
                            fontSize = 22.sp,
                            lineHeight = 28.sp,
                            fontWeight = FontWeight.SemiBold,
                            color = primaryTextColor,
                        )
                        MiuixStatusTag(
                            label = tagText,
                            backgroundColor = tagBgColor,
                            contentColor = tagContentColor,
                        )
                    }
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(
                        text = subtitleText,
                        fontSize = 15.sp,
                        lineHeight = 20.sp,
                        color = secondaryTextColor,
                    )
                }

                Spacer(modifier = Modifier.height(10.dp))

                Text(
                    text = bottomCaptionText,
                    fontSize = 15.sp,
                    lineHeight = 20.sp,
                    fontWeight = FontWeight.Medium,
                    color = primaryTextColor,
                )
            }
        }
    }
}

@Composable
private fun MiuixStatusTag(
    label: String,
    backgroundColor: Color,
    contentColor: Color,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier =
            modifier.background(
                color = backgroundColor,
                shape = RoundedCornerShape(6.dp),
            ),
    ) {
        Text(
            modifier = Modifier.padding(horizontal = 5.dp, vertical = 2.dp),
            text = label,
            color = contentColor,
            fontSize = 10.sp,
            lineHeight = 12.sp,
            fontWeight = FontWeight(750),
            maxLines = 1,
            softWrap = false,
        )
    }
}
