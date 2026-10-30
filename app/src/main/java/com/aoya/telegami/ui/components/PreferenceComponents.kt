package com.aoya.telegami.ui.components

import androidx.annotation.DrawableRes
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.aoya.telegami.R
import top.yukonga.miuix.kmp.basic.ButtonDefaults
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.HorizontalDivider
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.basic.TextButton
import top.yukonga.miuix.kmp.overlay.OverlayDialog
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.preference.CheckboxLocation
import top.yukonga.miuix.kmp.preference.CheckboxPreference
import top.yukonga.miuix.kmp.theme.MiuixTheme

data class MultiSelectOption(
    val value: String,
    val label: String,
)

@Composable
fun MiuixPreferenceGroup(
    title: String,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(modifier = modifier.fillMaxWidth()) {
        SmallTitle(text = title)
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp),
            content = content,
        )
    }
}

@Composable
fun MiuixPreferenceDivider() {
    HorizontalDivider(
        modifier = Modifier.padding(horizontal = 16.dp),
    )
}

@Composable
fun MiuixSettingIcon(
    @DrawableRes iconRes: Int,
    enabled: Boolean = true,
    tint: Color = MiuixTheme.colorScheme.primary,
) {
    val resolvedTint =
        if (enabled) {
            tint
        } else {
            MiuixTheme.colorScheme.disabledOnSecondaryVariant
        }
    Box(
        modifier =
            Modifier
                .padding(end = 12.dp)
                .size(34.dp)
                .clip(CircleShape)
                .background(resolvedTint.copy(alpha = 0.12f)),
        contentAlignment = Alignment.Center,
    ) {
        Icon(
            painter = painterResource(iconRes),
            contentDescription = null,
            tint = resolvedTint,
            modifier = Modifier.size(20.dp),
        )
    }
}

@Composable
fun MiuixColorDot(
    color: Color,
    enabled: Boolean = true,
) {
    val resolvedColor = if (enabled) color else color.copy(alpha = 0.4f)
    Box(
        modifier =
            Modifier
                .padding(end = 8.dp)
                .size(16.dp)
                .clip(CircleShape)
                .background(resolvedColor),
    )
}

@Composable
fun MiuixMultiSelectPreference(
    title: String,
    summary: String,
    options: List<MultiSelectOption>,
    selectedValues: Set<String>,
    enabled: Boolean,
    onConfirm: (Set<String>) -> Unit,
    modifier: Modifier = Modifier,
) {
    var showDialog by remember { mutableStateOf(false) }
    var isHoldDown by remember { mutableStateOf(false) }
    val currentSummaryText =
        remember(options, selectedValues) {
            options
                .filter { it.value in selectedValues }
                .joinToString("、") { it.label }
        }

    ArrowPreference(
        title = title,
        summary = summary,
        modifier = modifier,
        enabled = enabled,
        holdDownState = isHoldDown,
        endActions = {
            if (currentSummaryText.isNotEmpty()) {
                Text(
                    text = currentSummaryText,
                    style = MiuixTheme.textStyles.body2,
                    color =
                        if (enabled) {
                            MiuixTheme.colorScheme.onSurfaceVariantActions
                        } else {
                            MiuixTheme.colorScheme.disabledOnSecondaryVariant
                        },
                )
            }
        },
        onClick = {
            if (enabled) {
                showDialog = true
                isHoldDown = true
            }
        },
    )

    val draftSelection =
        remember(showDialog, selectedValues) {
            mutableStateListOf<String>().apply {
                addAll(selectedValues)
            }
        }

    OverlayDialog(
        show = showDialog,
        title = title,
        summary = summary,
        onDismissRequest = { showDialog = false },
        onDismissFinished = { isHoldDown = false },
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            Card(modifier = Modifier.fillMaxWidth()) {
                options.forEachIndexed { index, option ->
                    val isChecked = option.value in draftSelection
                    CheckboxPreference(
                        title = option.label,
                        checked = isChecked,
                        checkboxLocation = CheckboxLocation.End,
                        onCheckedChange = { checked ->
                            if (checked) {
                                if (option.value !in draftSelection) {
                                    draftSelection.add(option.value)
                                }
                            } else {
                                draftSelection.remove(option.value)
                            }
                        },
                    )
                    if (index < options.lastIndex) {
                        MiuixPreferenceDivider()
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                TextButton(
                    text = stringResource(R.string.action_cancel),
                    onClick = { showDialog = false },
                    modifier = Modifier.weight(1f),
                )
                TextButton(
                    text = stringResource(R.string.action_confirm),
                    onClick = {
                        showDialog = false
                        onConfirm(draftSelection.toSet())
                    },
                    colors = ButtonDefaults.textButtonColorsPrimary(),
                    modifier = Modifier.weight(1f),
                )
            }
        }
    }
}
