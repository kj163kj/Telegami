# P0 UI Audit Report

Date: 2026-10-30 (Asia/Shanghai)
Workspace: `C:/Users/Administrator/Desktop/Telegami`
Branch: `feat/miuix-liquid-glass-ui`
Baseline commit: `c904294e215e7866dd55e688922e2f817321387d`

## 1. MainActivity (`app/src/main/java/com/aoya/telegami/ui/activity/MainActivity.kt`)
- Extends `AppCompatActivity`.
- Calls `enableEdgeToEdge()`, applies `DynamicColors` with optional `ThemeUtils.getColorThemeStyleRes(this)`, and inflates `ActivityMainBinding` (`res/layout/activity_main.xml`).
- Hosts a single `NavHostFragment` bound to `res/navigation/home_nav_graph.xml`.

## 2. Home Screen (`app/src/main/java/com/aoya/telegami/ui/fragment/HomeFragment.kt`, `res/layout/fragment_home.xml`)
- Uses `MaterialToolbar` displaying `@string/app_name` ("Telegami").
- Renders `view_status_card.xml` showing `R.drawable.sentiment_calm_24px` and `@string/home_module_version` formatted with `BuildConfig.VERSION_NAME` (`v3.1.3-DEBUG` in debug builds, `v3.1.3` in release builds).
- Renders three vertical menu cards (`view_home_item.xml`):
  1. `Features` (`R.drawable.outline_extension_24` -> `R.id.nav_features`)
  2. `Settings` (`R.drawable.outline_settings_24` -> `R.id.nav_settings`)
  3. `About` (`R.drawable.outline_info_24` -> `R.id.nav_about`)

## 3. Features Screen (`app/src/main/java/com/aoya/telegami/ui/fragment/FeaturesFragment.kt`, `res/xml/features.xml`)
- Uses `PreferenceFragmentCompat` backed by `SettingsPreferenceDataStore` and `PrefManager`.
- Observes `PrefManager.serviceAvailable` (`StateFlow<Boolean>`). When unavailable, displays `@string/remote_preferences_unavailable` and `@string/remote_preferences_unavailable_hint` and disables preference editing.
- Categories and items (exact keys and types):
  - **Privacy** (`@string/feat_category_privacy`)
    1. `hideOnlineStatus` -> remote boolean key `"HideOnlineStatus"` (`@string/feat_hide_online_status` / `@string/feat_hide_online_status_desc`)
    2. `hideTyping` -> remote boolean key `"HideTyping"` (`@string/feat_hide_typing` / `@string/feat_hide_typing_desc`)
    3. `hideStoryViewStatus` -> remote boolean key `"HideStoryViewStatus"` (`@string/feat_hide_story_view_status` / `@string/feat_hide_story_view_status_desc`)
    4. `hideSeen` (Multi-select) -> remote boolean keys `"HideSeenPrivateChat"` (`private_chat`) and `"HideSeenChannel"` (`channel`) (`@string/feat_hide_seen` / `@string/feat_hide_seen_desc`)
  - **Messages** (`@string/feat_category_messages`)
    5. `showDeletedMessages` -> remote boolean key `"ShowDeletedMessages"` (`@string/feat_show_deleted_messages` / `@string/feat_show_deleted_messages_desc`)
    6. `markMessages` (Multi-select) -> remote boolean keys `"MarkMessagesDeleted"` (`deleted`) and `"MarkMessagesEdited"` (`edited`) (`@string/feat_mark_messages` / `@string/feat_mark_messages_desc`)
    7. `preventSecretMediaDeletion` -> remote boolean key `"PreventSecretMediaDeletion"` (`@string/feat_prevent_secret_media_deletion` / `@string/feat_prevent_secret_media_deletion_desc`)
    8. `allowSaveVideos` -> remote boolean key `"AllowSaveVideos"` (`@string/feat_allow_save_videos` / `@string/feat_allow_save_videos_desc`)
  - **Misc** (`@string/feat_category_misc`)
    9. `disableAds` -> remote boolean key `"DisableAds"` (`@string/feat_disable_ads` / `@string/feat_disable_ads_desc`)
    10. `unlockChannelFeatures` -> remote boolean key `"UnlockChannelFeatures"` (`@string/feat_unlock_channel_features` / `@string/feat_unlock_channel_features_desc`)
    11. `boostDownload` (Single-select list) -> remote integer key `"BoostDownload"` with values `0` (`@string/feat_boost_download_off`), `1` (`@string/feat_boost_download_on`), `2` (`@string/feat_boost_download_extreme`) (`@string/feat_boost_download` / `@string/feat_boost_download_desc`)
    12. `fakePremium` -> remote boolean key `"FakePremium"` (`@string/feat_fake_premium` / `@string/feat_fake_premium_desc`)
- Writes via `PrefManager.updateFeatures(...)` on IO dispatcher; shows Toast `@string/remote_preferences_write_failed` on failure.

## 4. Settings Screen (`app/src/main/java/com/aoya/telegami/ui/fragment/SettingsFragment.kt`, `res/xml/settings.xml`)
- Uses `PreferenceFragmentCompat` backed by `PrefManager` (`SharedPreferences("app_settings", Context.MODE_PRIVATE)` and `PackageManager` component state).
- Categories and items (exact keys and types):
  - **Theme** (`@string/settings_theme`)
    1. `followSystemAccent` -> `PrefManager.followSystemAccent` (`"follow_system_accent"`, default `true`), visible when `DynamicColors.isDynamicColorAvailable()` (Android 12+ / API 31+), icon `R.drawable.outline_palette_24`, title `@string/settings_system_theme_color`.
    2. `themeColor` -> `PrefManager.themeColor` (`"theme_color"`, default `"MATERIAL_BLUE"`), enabled when `!followSystemAccent` or dynamic colors unavailable, icon `R.drawable.outline_format_color_fill_24`, title `@string/settings_theme_color`, 19 color options (`@array/color_texts` / `@array/color_values`).
    3. `darkTheme` -> `PrefManager.darkTheme` (`"dark_theme"`, default `-1` `MODE_NIGHT_FOLLOW_SYSTEM`), icon `R.drawable.outline_dark_mode_24`, title `@string/dark_theme`, options `1` (`@string/dark_theme_off`), `2` (`@string/dark_theme_on`), `-1` (`@string/follow_system`). Updates `AppCompatDelegate.setDefaultNightMode(newMode)`.
    4. `blackDarkTheme` -> `PrefManager.blackDarkTheme` (`"black_dark_theme"`, default `false`), icon `R.drawable.outline_invert_colors_24`, title `@string/settings_pure_black_dark_theme`, summary `@string/settings_pure_black_dark_theme_summary`.
  - **Module** (`@string/settings_module`)
    5. `hideIcon` -> `PrefManager.hideIcon` (toggles `com.aoya.telegami.MainActivityLauncher` component enabled setting), icon `R.drawable.outline_hide_image_24`, title `@string/settings_hide_icon`, summary `@string/settings_hide_icon_summary`.

## 5. About Screen (`app/src/main/java/com/aoya/telegami/ui/fragment/AboutFragment.kt`, `res/layout/fragment_about.xml`)
- Header card:
  - App icon (`R.mipmap.ic_launcher` or active launcher component icon).
  - App name (`@string/app_name` = "Telegami").
  - App version (`BuildConfig.VERSION_NAME`).
  - Support text (`@string/about_support`) + action buttons:
    - `GitHub` -> `Constants.GITHUB_REPO` (`https://github.com/aoya111/Telegami`)
    - `Telegram` -> `Constants.TELEGRAM_CHANNEL` (`https://t.me/TGamiApp`)
- Sections:
  - `@string/title_about_fork` + `@string/about_fork_description`
  - `@string/title_about` + `@string/about_description`
  - Open Source License: GPL-3.0 (`LICENSE` in repository root)
  - `@string/about_developer`: `soul2x` ("Telegami Developer", avatar `R.drawable.cont_soul2x`, URL `https://github.com/aoya111`)

## 6. Navigation, Theme, Localization & Baseline Build
- Navigation: previously `androidx.navigation.fragment.NavHostFragment` with `home_nav_graph.xml` (`nav_home` -> `nav_features` / `nav_settings` / `nav_about`).
- Dependencies: previously XML ViewBinding + AndroidX Preference + Material3 XML themes; no Compose dependencies were configured.
- Localization: `values/strings.xml` (English), `values-zh-rCN/strings.xml` (Simplified Chinese), `values-ar/strings.xml` (Arabic).
- Dark mode & colors: managed via `PrefManager.darkTheme`, `PrefManager.blackDarkTheme`, `PrefManager.followSystemAccent`, and `PrefManager.themeColor` (19 Material color presets).
- Baseline verification: `:app:testDebugUnitTest` and `:app:assembleDebug` succeeded on baseline `c904294e215e7866dd55e688922e2f817321387d`.
