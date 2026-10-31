package com.aoya.telegami.ui.screens

import android.widget.Toast
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.calculateEndPadding
import androidx.compose.foundation.layout.calculateStartPadding
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.aoya.telegami.R
import com.aoya.telegami.service.PrefManager
import com.aoya.telegami.ui.components.MiuixMultiSelectPreference
import com.aoya.telegami.ui.components.MiuixPreferenceDivider
import com.aoya.telegami.ui.components.MiuixPreferenceGroup
import com.aoya.telegami.ui.components.ModuleStatusCard
import com.aoya.telegami.ui.components.MultiSelectOption
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.preference.OverlayDropdownPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference
import top.yukonga.miuix.kmp.utils.overScrollVertical

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
    )
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
    val coroutineScope = rememberCoroutineScope()
    val serviceAvailable by PrefManager.serviceAvailable.collectAsState()
    val moduleStatus by PrefManager.moduleStatus.collectAsState()
    var saving by remember { mutableStateOf(false) }
    var reloadTrigger by remember { mutableIntStateOf(0) }

    val snapshot =
        remember(serviceAvailable, reloadTrigger) {
            readFeaturesSnapshot()
        }

    LaunchedEffect(serviceAvailable) {
        if (!saving) {
            reloadTrigger++
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

        item(key = "category_messages") {
            Spacer(modifier = Modifier.height(8.dp))
            MiuixPreferenceGroup(title = stringResource(R.string.feat_category_messages)) {
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
