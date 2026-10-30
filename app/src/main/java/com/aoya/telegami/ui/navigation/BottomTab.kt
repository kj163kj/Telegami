package com.aoya.telegami.ui.navigation

import androidx.annotation.DrawableRes
import androidx.annotation.StringRes
import com.aoya.telegami.R

enum class BottomTab(
    @param:StringRes val titleRes: Int,
    @param:DrawableRes val iconRes: Int,
) {
    Features(
        titleRes = R.string.title_features,
        iconRes = R.drawable.outline_extension_24,
    ),
    Settings(
        titleRes = R.string.title_settings,
        iconRes = R.drawable.outline_settings_24,
    ),
    About(
        titleRes = R.string.title_about,
        iconRes = R.drawable.outline_info_24,
    ),
}
