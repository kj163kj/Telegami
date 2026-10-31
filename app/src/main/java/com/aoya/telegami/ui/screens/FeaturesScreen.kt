package com.aoya.telegami.ui.screens

import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.calculateEndPadding
import androidx.compose.foundation.layout.calculateStartPadding
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.aoya.telegami.R
import com.aoya.telegami.service.MessageToolSettings
import com.aoya.telegami.service.PrefManager
import com.aoya.telegami.ui.components.MiuixMultiSelectPreference
import com.aoya.telegami.ui.components.MiuixPreferenceDivider
import com.aoya.telegami.ui.components.MiuixPreferenceGroup
import com.aoya.telegami.ui.components.ModuleStatusCard
import com.aoya.telegami.ui.components.MultiSelectOption
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.basic.BasicComponentDefaults
import top.yukonga.miuix.kmp.basic.ButtonDefaults
import top.yukonga.miuix.kmp.basic.HorizontalDivider
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.basic.TextButton
import top.yukonga.miuix.kmp.basic.TextField
import top.yukonga.miuix.kmp.overlay.OverlayDialog
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.preference.OverlayDropdownPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.utils.overScrollVertical

internal const val RETENTION_DAYS_MIN = 1
internal const val RETENTION_DAYS_MAX = 3650
internal const val RETENTION_DAYS_DEFAULT = 30

internal const val MAX_VERSIONS_MIN = 2
internal const val MAX_VERSIONS_MAX = 1000
internal const val MAX_VERSIONS_DEFAULT = 100

private val STRICT_INTEGER_REGEX = Regex("^-?\\d+$")
private val SubPreferenceInsideMargin =
    PaddingValues(
        start = 32.dp,
        top = 14.dp,
        end = 16.dp,
        bottom = 14.dp,
    )

@Composable
private fun MiuixSubPreferenceDivider() {
    HorizontalDivider(
        modifier = Modifier.padding(start = 32.dp, end = 16.dp),
    )
}

internal sealed interface IntInputValidation {
    data class Valid(
        val value: Int,
    ) : IntInputValidation

    data object Empty : IntInputValidation

    data object NotInteger : IntInputValidation

    data object OutOfRange : IntInputValidation
}

internal fun validateIntInput(
    rawInput: String,
    minValue: Int,
    maxValue: Int,
): IntInputValidation {
    val trimmed = rawInput.trim()
    if (trimmed.isEmpty()) return IntInputValidation.Empty
    if (!STRICT_INTEGER_REGEX.matches(trimmed)) return IntInputValidation.NotInteger
    val parsed = trimmed.toIntOrNull() ?: return IntInputValidation.OutOfRange
    if (parsed !in minValue..maxValue) return IntInputValidation.OutOfRange
    return IntInputValidation.Valid(parsed)
}

internal data class MessageToolsSnapshot(
    val enableMessageRepeat: Boolean = false,
    val enableMessageCopy: Boolean = false,
    val enableSourcelessForward: Boolean = false,
    val enableEditHistory: Boolean = false,
    val enableRepeatConfirmation: Boolean = true,
    val enableCopyConfirmation: Boolean = true,
    val editHistoryRetentionDays: Int = RETENTION_DAYS_DEFAULT,
    val editHistoryMaxVersions: Int = MAX_VERSIONS_DEFAULT,
) {
    fun repeatConfirmationEnabled(canEdit: Boolean): Boolean = canEdit && enableMessageRepeat

    fun copyConfirmationEnabled(canEdit: Boolean): Boolean = canEdit && enableSourcelessForward

    fun retentionDaysEnabled(canEdit: Boolean): Boolean = canEdit && enableEditHistory

    fun maxVersionsEnabled(canEdit: Boolean): Boolean = canEdit && enableEditHistory
}

internal interface MessageToolsConfigPort {
    fun getBoolean(
        key: String,
        defaultValue: Boolean,
    ): Boolean

    fun getInt(
        key: String,
        defaultValue: Int,
    ): Int

    suspend fun update(
        booleans: Map<String, Boolean> = emptyMap(),
        integers: Map<String, Int> = emptyMap(),
    ): Boolean
}

internal object PrefManagerMessageToolsPort : MessageToolsConfigPort {
    override fun getBoolean(
        key: String,
        defaultValue: Boolean,
    ): Boolean = PrefManager.getBoolean(key, defaultValue)

    override fun getInt(
        key: String,
        defaultValue: Int,
    ): Int = runCatching { PrefManager.getFeatureValue(key, defaultValue) }.getOrDefault(defaultValue)

    override suspend fun update(
        booleans: Map<String, Boolean>,
        integers: Map<String, Int>,
    ): Boolean = PrefManager.updateMessageTools(booleans = booleans, integers = integers)
}

internal data class MessageToolWriteResult(
    val saved: Boolean,
    val snapshot: MessageToolsSnapshot,
)

internal fun readMessageToolsSnapshot(
    port: MessageToolsConfigPort = PrefManagerMessageToolsPort,
): MessageToolsSnapshot =
    MessageToolsSnapshot(
        enableMessageRepeat = port.getBoolean(MessageToolSettings.REPEAT, false),
        enableMessageCopy = port.getBoolean(MessageToolSettings.COPY, false),
        enableSourcelessForward = port.getBoolean(MessageToolSettings.SOURCELESS_FORWARD, false),
        enableEditHistory = port.getBoolean(MessageToolSettings.HISTORY, false),
        enableRepeatConfirmation = port.getBoolean(MessageToolSettings.REPEAT_CONFIRM, true),
        enableCopyConfirmation = port.getBoolean(MessageToolSettings.COPY_CONFIRM, true),
        editHistoryRetentionDays =
            MessageToolSettings.bounded(
                MessageToolSettings.RETENTION,
                port.getInt(MessageToolSettings.RETENTION, RETENTION_DAYS_DEFAULT),
            ),
        editHistoryMaxVersions =
            MessageToolSettings.bounded(
                MessageToolSettings.MAX_VERSIONS,
                port.getInt(MessageToolSettings.MAX_VERSIONS, MAX_VERSIONS_DEFAULT),
            ),
    )

internal suspend fun persistMessageToolBoolean(
    port: MessageToolsConfigPort,
    key: String,
    newValue: Boolean,
): MessageToolWriteResult {
    val saved = port.update(booleans = mapOf(key to newValue))
    return MessageToolWriteResult(
        saved = saved,
        snapshot = readMessageToolsSnapshot(port),
    )
}

internal suspend fun persistMessageToolInt(
    port: MessageToolsConfigPort,
    key: String,
    newValue: Int,
): MessageToolWriteResult {
    val saved = port.update(integers = mapOf(key to newValue))
    return MessageToolWriteResult(
        saved = saved,
        snapshot = readMessageToolsSnapshot(port),
    )
}

private data class FeaturesSnapshot(
    val hideOnlineStatus: Boolean = false,
    val hideTyping: Boolean = false,
    val hideStoryViewStatus: Boolean = false,
    val hideSeenValues: Set<String> = emptySet(),
    val showDeletedMessages: Boolean = false,
    val markMessagesValues: Set<String> = emptySet(),
    val preventSecretMediaDeletion: Boolean = false,
    val allowSaveVideos: Boolean = false,
    val disableAds: Boolean = false,
    val unlockChannelFeatures: Boolean = false,
    val boostDownload: Int = 0,
    val fakePremium: Boolean = false,
    val messageTools: MessageToolsSnapshot = MessageToolsSnapshot(),
)

private fun readFeaturesSnapshot(): FeaturesSnapshot {
    val hideSeen =
        buildSet {
            if (PrefManager.isFeatureEnabled("HideSeenPrivateChat")) add("private_chat")
            if (PrefManager.isFeatureEnabled("HideSeenChannel")) add("channel")
        }
    val markMessages =
        buildSet {
            if (PrefManager.isFeatureEnabled("MarkMessagesDeleted")) add("deleted")
            if (PrefManager.isFeatureEnabled("MarkMessagesEdited")) add("edited")
        }
    return FeaturesSnapshot(
        hideOnlineStatus = PrefManager.isFeatureEnabled("HideOnlineStatus"),
        hideTyping = PrefManager.isFeatureEnabled("HideTyping"),
        hideStoryViewStatus = PrefManager.isFeatureEnabled("HideStoryViewStatus"),
        hideSeenValues = hideSeen,
        showDeletedMessages = PrefManager.isFeatureEnabled("ShowDeletedMessages"),
        markMessagesValues = markMessages,
        preventSecretMediaDeletion = PrefManager.isFeatureEnabled("PreventSecretMediaDeletion"),
        allowSaveVideos = PrefManager.isFeatureEnabled("AllowSaveVideos"),
        disableAds = PrefManager.isFeatureEnabled("DisableAds"),
        unlockChannelFeatures = PrefManager.isFeatureEnabled("UnlockChannelFeatures"),
        boostDownload = PrefManager.getFeatureValue("BoostDownload", 0).coerceIn(0, 2),
        fakePremium = PrefManager.isFeatureEnabled("FakePremium"),
        messageTools = readMessageToolsSnapshot(),
    )
}

@Composable
private fun MiuixIntInputPreference(
    title: String,
    summary: String,
    currentValue: Int,
    minValue: Int,
    maxValue: Int,
    unit: String,
    enabled: Boolean,
    onConfirm: (Int) -> Unit,
    modifier: Modifier = Modifier,
    insideMargin: PaddingValues = BasicComponentDefaults.InsideMargin,
) {
    var showDialog by rememberSaveable { mutableStateOf(false) }
    var draftText by rememberSaveable { mutableStateOf(currentValue.toString()) }
    var isHoldDown by remember { mutableStateOf(false) }

    LaunchedEffect(enabled) {
        if (!enabled && showDialog) {
            showDialog = false
            isHoldDown = false
        }
    }

    val valueWithUnitText =
        stringResource(
            R.string.msg_tool_int_value_with_unit,
            currentValue,
            unit,
        )

    ArrowPreference(
        title = title,
        summary = summary,
        modifier = modifier,
        insideMargin = insideMargin,
        enabled = enabled,
        holdDownState = isHoldDown,
        endActions = {
            Text(
                text = valueWithUnitText,
                style = MiuixTheme.textStyles.body2,
                color =
                    if (enabled) {
                        MiuixTheme.colorScheme.onSurfaceVariantActions
                    } else {
                        MiuixTheme.colorScheme.disabledOnSecondaryVariant
                    },
            )
        },
        onClick = {
            if (enabled) {
                draftText = currentValue.toString()
                showDialog = true
                isHoldDown = true
            }
        },
    )

    val validation =
        remember(draftText, minValue, maxValue) {
            validateIntInput(
                rawInput = draftText,
                minValue = minValue,
                maxValue = maxValue,
            )
        }
    val errorMessage =
        when (validation) {
            is IntInputValidation.Valid -> null
            IntInputValidation.Empty ->
                stringResource(R.string.msg_tool_int_error_empty, minValue, maxValue)
            IntInputValidation.NotInteger ->
                stringResource(R.string.msg_tool_int_error_not_integer)
            IntInputValidation.OutOfRange ->
                stringResource(R.string.msg_tool_int_error_out_of_range, minValue, maxValue)
        }

    fun submitIfValid() {
        val valid = validation as? IntInputValidation.Valid ?: return
        showDialog = false
        onConfirm(valid.value)
    }

    OverlayDialog(
        show = showDialog,
        title = title,
        summary = summary,
        onDismissRequest = { showDialog = false },
        onDismissFinished = { isHoldDown = false },
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            TextField(
                value = draftText,
                onValueChange = { next ->
                    if (next.length <= 16) {
                        draftText = next
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                label = stringResource(R.string.msg_tool_int_range_label, minValue, maxValue),
                borderColor =
                    if (errorMessage != null) {
                        MiuixTheme.colorScheme.error
                    } else {
                        MiuixTheme.colorScheme.primary
                    },
                useLabelAsPlaceholder = true,
                singleLine = true,
                trailingIcon = {
                    Text(
                        text = unit,
                        style = MiuixTheme.textStyles.body2,
                        color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        modifier = Modifier.padding(end = 14.dp),
                    )
                },
                keyboardOptions =
                    KeyboardOptions(
                        keyboardType = KeyboardType.Number,
                        imeAction = ImeAction.Done,
                    ),
                keyboardActions =
                    KeyboardActions(
                        onDone = { submitIfValid() },
                    ),
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text =
                    errorMessage
                        ?: stringResource(
                            R.string.msg_tool_int_range_hint,
                            minValue,
                            maxValue,
                            unit,
                        ),
                style = MiuixTheme.textStyles.body2,
                color =
                    if (errorMessage != null) {
                        MiuixTheme.colorScheme.error
                    } else {
                        MiuixTheme.colorScheme.onSurfaceVariantSummary
                    },
                modifier = Modifier.padding(horizontal = 4.dp),
            )

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
                    enabled = validation is IntInputValidation.Valid,
                    onClick = { submitIfValid() },
                    colors = ButtonDefaults.textButtonColorsPrimary(),
                    modifier = Modifier.weight(1f),
                )
            }
        }
    }
}

@Composable
fun FeaturesScreen(
    isDarkTheme: Boolean,
    contentPadding: PaddingValues,
    bottomBarPadding: Dp,
    scrollBehavior: ScrollBehavior,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val coroutineScope = rememberCoroutineScope()
    val serviceAvailable by PrefManager.serviceAvailable.collectAsState()
    val moduleStatus by PrefManager.moduleStatus.collectAsState()
    var saving by remember { mutableStateOf(false) }
    var reloadTrigger by remember { mutableIntStateOf(0) }

    val snapshot =
        remember(serviceAvailable, reloadTrigger) {
            readFeaturesSnapshot()
        }
    val messageTools = snapshot.messageTools

    LaunchedEffect(serviceAvailable) {
        if (!saving) {
            reloadTrigger++
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer =
            LifecycleEventObserver { _, event ->
                if (event == Lifecycle.Event.ON_RESUME && !saving) {
                    reloadTrigger++
                }
            }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    val canEdit = serviceAvailable && !saving

    fun updateBooleanFeature(
        remoteKey: String,
        newValue: Boolean,
    ) {
        if (!canEdit) return
        saving = true
        coroutineScope.launch {
            val success =
                try {
                    PrefManager.updateFeatures(booleans = mapOf(remoteKey to newValue))
                } finally {
                    saving = false
                }
            reloadTrigger++
            if (!success) {
                Toast
                    .makeText(
                        context,
                        R.string.remote_preferences_write_failed,
                        Toast.LENGTH_LONG,
                    ).show()
            }
        }
    }

    fun updateMultiBooleanFeatures(booleans: Map<String, Boolean>) {
        if (!canEdit) return
        saving = true
        coroutineScope.launch {
            val success =
                try {
                    PrefManager.updateFeatures(booleans = booleans)
                } finally {
                    saving = false
                }
            reloadTrigger++
            if (!success) {
                Toast
                    .makeText(
                        context,
                        R.string.remote_preferences_write_failed,
                        Toast.LENGTH_LONG,
                    ).show()
            }
        }
    }

    fun updateIntFeature(
        remoteKey: String,
        newValue: Int,
    ) {
        if (!canEdit) return
        saving = true
        coroutineScope.launch {
            val success =
                try {
                    PrefManager.updateFeatures(integers = mapOf(remoteKey to newValue))
                } finally {
                    saving = false
                }
            reloadTrigger++
            if (!success) {
                Toast
                    .makeText(
                        context,
                        R.string.remote_preferences_write_failed,
                        Toast.LENGTH_LONG,
                    ).show()
            }
        }
    }

    fun updateMessageToolBoolean(
        remoteKey: String,
        newValue: Boolean,
    ) {
        if (!canEdit) return
        saving = true
        coroutineScope.launch {
            val result =
                try {
                    persistMessageToolBoolean(
                        port = PrefManagerMessageToolsPort,
                        key = remoteKey,
                        newValue = newValue,
                    )
                } finally {
                    saving = false
                }
            reloadTrigger++
            if (!result.saved) {
                Toast
                    .makeText(
                        context,
                        R.string.remote_preferences_write_failed,
                        Toast.LENGTH_LONG,
                    ).show()
            }
        }
    }

    fun updateMessageToolInt(
        remoteKey: String,
        newValue: Int,
    ) {
        if (!canEdit) return
        saving = true
        coroutineScope.launch {
            val result =
                try {
                    persistMessageToolInt(
                        port = PrefManagerMessageToolsPort,
                        key = remoteKey,
                        newValue = newValue,
                    )
                } finally {
                    saving = false
                }
            reloadTrigger++
            if (!result.saved) {
                Toast
                    .makeText(
                        context,
                        R.string.remote_preferences_write_failed,
                        Toast.LENGTH_LONG,
                    ).show()
            }
        }
    }

    val hideSeenOptions =
        listOf(
            MultiSelectOption(
                value = "private_chat",
                label = stringResource(R.string.feat_hide_seen_private_chat),
            ),
            MultiSelectOption(
                value = "channel",
                label = stringResource(R.string.feat_hide_seen_channel),
            ),
        )

    val markMessagesOptions =
        listOf(
            MultiSelectOption(
                value = "deleted",
                label = stringResource(R.string.feat_mark_messages_deleted),
            ),
            MultiSelectOption(
                value = "edited",
                label = stringResource(R.string.feat_mark_messages_edited),
            ),
        )

    val boostDownloadItems = stringArrayResource(R.array.boost_download_texts).toList()
    val boostDownloadValues = stringArrayResource(R.array.boost_download_values).toList()
    val selectedBoostIndex =
        boostDownloadValues
            .indexOf(snapshot.boostDownload.toString())
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
        item(key = "module_status_card") {
            ModuleStatusCard(
                serviceAvailable = serviceAvailable,
                statusInfo = moduleStatus,
                isDarkTheme = isDarkTheme,
                onRefresh = { PrefManager.refreshModuleStatus() },
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 4.dp),
            )
        }

        item(key = "category_privacy") {
            Spacer(modifier = Modifier.height(6.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_privacy)) {
                SwitchPreference(
                    title = stringResource(R.string.feat_hide_online_status),
                    summary = stringResource(R.string.feat_hide_online_status_desc),
                    checked = snapshot.hideOnlineStatus,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("HideOnlineStatus", checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_hide_typing),
                    summary = stringResource(R.string.feat_hide_typing_desc),
                    checked = snapshot.hideTyping,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("HideTyping", checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_hide_story_view_status),
                    summary = stringResource(R.string.feat_hide_story_view_status_desc),
                    checked = snapshot.hideStoryViewStatus,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("HideStoryViewStatus", checked)
                    },
                )
                MiuixPreferenceDivider()
                MiuixMultiSelectPreference(
                    title = stringResource(R.string.feat_hide_seen),
                    summary = stringResource(R.string.feat_hide_seen_desc),
                    options = hideSeenOptions,
                    selectedValues = snapshot.hideSeenValues,
                    enabled = canEdit,
                    onConfirm = { newValues ->
                        updateMultiBooleanFeatures(
                            mapOf(
                                "HideSeenPrivateChat" to ("private_chat" in newValues),
                                "HideSeenChannel" to ("channel" in newValues),
                            ),
                        )
                    },
                )
            }
        }

        item(key = "category_message_records") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_message_records)) {
                SwitchPreference(
                    title = stringResource(R.string.feat_show_deleted_messages),
                    summary = stringResource(R.string.feat_show_deleted_messages_desc),
                    checked = snapshot.showDeletedMessages,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("ShowDeletedMessages", checked)
                    },
                )
                MiuixPreferenceDivider()
                MiuixMultiSelectPreference(
                    title = stringResource(R.string.feat_mark_messages),
                    summary = stringResource(R.string.feat_mark_messages_desc),
                    options = markMessagesOptions,
                    selectedValues = snapshot.markMessagesValues,
                    enabled = canEdit,
                    onConfirm = { newValues ->
                        updateMultiBooleanFeatures(
                            mapOf(
                                "MarkMessagesDeleted" to ("deleted" in newValues),
                                "MarkMessagesEdited" to ("edited" in newValues),
                            ),
                        )
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_edit_history),
                    summary = stringResource(R.string.feat_enable_edit_history_desc),
                    checked = messageTools.enableEditHistory,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.HISTORY, checked)
                    },
                )
                MiuixSubPreferenceDivider()
                MiuixIntInputPreference(
                    title = stringResource(R.string.feat_edit_history_retention_days),
                    summary = stringResource(R.string.feat_edit_history_retention_days_desc),
                    currentValue = messageTools.editHistoryRetentionDays,
                    minValue = RETENTION_DAYS_MIN,
                    maxValue = RETENTION_DAYS_MAX,
                    unit = stringResource(R.string.feat_edit_history_retention_unit),
                    enabled = messageTools.retentionDaysEnabled(canEdit),
                    insideMargin = SubPreferenceInsideMargin,
                    onConfirm = { newDays ->
                        updateMessageToolInt(MessageToolSettings.RETENTION, newDays)
                    },
                )
                MiuixSubPreferenceDivider()
                MiuixIntInputPreference(
                    title = stringResource(R.string.feat_edit_history_max_versions),
                    summary = stringResource(R.string.feat_edit_history_max_versions_desc),
                    currentValue = messageTools.editHistoryMaxVersions,
                    minValue = MAX_VERSIONS_MIN,
                    maxValue = MAX_VERSIONS_MAX,
                    unit = stringResource(R.string.feat_edit_history_max_versions_unit),
                    enabled = messageTools.maxVersionsEnabled(canEdit),
                    insideMargin = SubPreferenceInsideMargin,
                    onConfirm = { newMaxVersions ->
                        updateMessageToolInt(MessageToolSettings.MAX_VERSIONS, newMaxVersions)
                    },
                )
            }
        }

        item(key = "category_message_actions") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_message_actions)) {
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_message_repeat),
                    summary = stringResource(R.string.feat_enable_message_repeat_desc),
                    checked = messageTools.enableMessageRepeat,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.REPEAT, checked)
                    },
                )
                MiuixSubPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_repeat_confirmation),
                    summary = stringResource(R.string.feat_enable_repeat_confirmation_desc),
                    checked = messageTools.enableRepeatConfirmation,
                    insideMargin = SubPreferenceInsideMargin,
                    enabled = messageTools.repeatConfirmationEnabled(canEdit),
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.REPEAT_CONFIRM, checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_message_copy),
                    summary = stringResource(R.string.feat_enable_message_copy_desc),
                    checked = messageTools.enableMessageCopy,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.COPY, checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_sourceless_forward),
                    summary = stringResource(R.string.feat_enable_sourceless_forward_desc),
                    checked = messageTools.enableSourcelessForward,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.SOURCELESS_FORWARD, checked)
                    },
                )
                MiuixSubPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_enable_copy_confirmation),
                    summary = stringResource(R.string.feat_enable_copy_confirmation_desc),
                    checked = messageTools.enableCopyConfirmation,
                    insideMargin = SubPreferenceInsideMargin,
                    enabled = messageTools.copyConfirmationEnabled(canEdit),
                    onCheckedChange = { checked ->
                        updateMessageToolBoolean(MessageToolSettings.COPY_CONFIRM, checked)
                    },
                )
            }
        }

        item(key = "category_media_channel") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_media_channel)) {
                SwitchPreference(
                    title = stringResource(R.string.feat_prevent_secret_media_deletion),
                    summary = stringResource(R.string.feat_prevent_secret_media_deletion_desc),
                    checked = snapshot.preventSecretMediaDeletion,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("PreventSecretMediaDeletion", checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_allow_save_videos),
                    summary = stringResource(R.string.feat_allow_save_videos_desc),
                    checked = snapshot.allowSaveVideos,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("AllowSaveVideos", checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_unlock_channel_features),
                    summary = stringResource(R.string.feat_unlock_channel_features_desc),
                    checked = snapshot.unlockChannelFeatures,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("UnlockChannelFeatures", checked)
                    },
                )
                MiuixPreferenceDivider()
                OverlayDropdownPreference(
                    items = boostDownloadItems,
                    selectedIndex = selectedBoostIndex,
                    title = stringResource(R.string.feat_boost_download),
                    summary = stringResource(R.string.feat_boost_download_desc),
                    enabled = canEdit,
                    onSelectedIndexChange = { newIndex ->
                        val newVal =
                            boostDownloadValues
                                .getOrNull(newIndex)
                                ?.toIntOrNull() ?: 0
                        if (newVal != snapshot.boostDownload) {
                            updateIntFeature("BoostDownload", newVal)
                        }
                    },
                )
            }
        }

        item(key = "category_misc") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_misc)) {
                SwitchPreference(
                    title = stringResource(R.string.feat_disable_ads),
                    summary = stringResource(R.string.feat_disable_ads_desc),
                    checked = snapshot.disableAds,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("DisableAds", checked)
                    },
                )
                MiuixPreferenceDivider()
                SwitchPreference(
                    title = stringResource(R.string.feat_fake_premium),
                    summary = stringResource(R.string.feat_fake_premium_desc),
                    checked = snapshot.fakePremium,
                    enabled = canEdit,
                    onCheckedChange = { checked ->
                        updateBooleanFeature("FakePremium", checked)
                    },
                )
            }
        }
    }
}
