# P15: Message Tools Miuix Compose UI Implementation

Date: 2026-10-31 (Asia/Shanghai)
Workspace: `C:/Users/Administrator/Desktop/Telegami`
Branch: `fix/edit-history-duplicate-revisions`
Baseline commit: `b3c64aa89d0d48facc609e5bbcee43c3ab1a6d36`

## 1. Scope & Modified Files

Incremental Miuix Compose UI completion for the 7 message-tool preferences defined in `docs/14_MESSAGE_TOOLS_CONFIG_HANDOFF.md` and `service/MessageToolSettings.kt`. No UI architecture refactoring, navigation changes, Liquid Glass changes, Hook changes, database changes, or new dependencies were introduced.

- `app/src/main/java/com/aoya/telegami/ui/screens/FeaturesScreen.kt`: Organized all 19 feature preferences into 5 clear Miuix groups (`隐私保护`, `消息记录`, `消息操作`, `媒体与频道`, `其他功能`) with indented subordinate items (`SubPreferenceInsideMargin` + `MiuixSubPreferenceDivider`) directly beneath their parent switches, `MiuixIntInputPreference` (`ArrowPreference` + `OverlayDialog` + `TextField` + `Text` + `TextButton`), strict integer/range validation (`validateIntInput`), master-sub linkage (`MessageToolsSnapshot`), `ON_RESUME` reload observer, and direct `PrefManager` / `MessageToolSettings` read-write binding.
- `app/src/main/res/values/strings.xml`: Added Simplified Chinese titles, descriptions, units, and integer validation messages for the 7 settings.
- `app/src/main/res/values-zh-rCN/strings.xml`: Added matching `zh-rCN` string resources.
- `app/src/test/java/com/aoya/telegami/ui/screens/FeaturesMessageToolsTest.kt`: Added unit tests covering config read/write bindings, failed-commit state preservation, integer validation bounds, and master-sub switch linkage without clearing saved child values.
- `docs/15_MESSAGE_TOOLS_UI_IMPLEMENTATION.md`: Implementation and verification report.

## 2. Seven Configuration Bindings

All 7 items read and write through `PrefManager` (`XposedService.getRemotePreferences("features")` with `commit()` on `Dispatchers.IO`) and `MessageToolSettings`:

| Group | UI Title | Key (`MessageToolSettings`) | Type | Default | Bounds / Unit | Read Call | Write Call |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 消息操作 | 消息复读 | `enable_message_repeat` (`REPEAT`) | `Boolean` | `false` | — | `PrefManager.getBoolean(REPEAT, false)` | `PrefManager.updateMessageTools(booleans = mapOf(REPEAT to checked))` |
| 消息操作 | 复读前确认 | `enable_repeat_confirmation` (`REPEAT_CONFIRM`) | `Boolean` | `true` | — | `PrefManager.getBoolean(REPEAT_CONFIRM, true)` | `PrefManager.updateMessageTools(booleans = mapOf(REPEAT_CONFIRM to checked))` |
| 消息操作 | 启用强制复制 | `enable_message_copy` (`COPY`) | `Boolean` | `false` | — | `PrefManager.getBoolean(COPY, false)` | `PrefManager.updateMessageTools(booleans = mapOf(COPY to checked))` |
| 消息操作 | 无来源转发 | `enable_sourceless_forward` (`SOURCELESS_FORWARD`) | `Boolean` | `false` | — | `PrefManager.getBoolean(SOURCELESS_FORWARD, false)` | `PrefManager.updateMessageTools(booleans = mapOf(SOURCELESS_FORWARD to checked))` |
| 消息操作 | 无来源转发前确认 | `enable_copy_confirmation` (`COPY_CONFIRM`) | `Boolean` | `true` | — | `PrefManager.getBoolean(COPY_CONFIRM, true)` | `PrefManager.updateMessageTools(booleans = mapOf(COPY_CONFIRM to checked))` |
| 消息记录 | 编辑历史 | `enable_edit_history` (`HISTORY`) | `Boolean` | `false` | — | `PrefManager.getBoolean(HISTORY, false)` | `PrefManager.updateMessageTools(booleans = mapOf(HISTORY to checked))` |
| 消息记录 | 编辑历史保留天数 | `edit_history_retention_days` (`RETENTION`) | `Int` | `30` | `1..3650` (`天`) | `MessageToolSettings.bounded(RETENTION, PrefManager.getFeatureValue(RETENTION, 30))` | `PrefManager.updateMessageTools(integers = mapOf(RETENTION to newDays))` |
| 消息记录 | 每条消息最大历史版本数 | `edit_history_max_versions` (`MAX_VERSIONS`) | `Int` | `100` | `2..1000` (`个版本`) | `MessageToolSettings.bounded(MAX_VERSIONS, PrefManager.getFeatureValue(MAX_VERSIONS, 100))` | `PrefManager.updateMessageTools(integers = mapOf(MAX_VERSIONS to newMaxVersions))` |

## 3. Miuix Compose Compliance

- All new UI elements use `top.yukonga.miuix.kmp.*` (`MiuixPreferenceGroup` / `SmallTitle` + `Card`, `SwitchPreference`, `ArrowPreference`, `MiuixPreferenceDivider` / `HorizontalDivider`, `OverlayDialog`, `TextField`, `Text`, `TextButton`, `ButtonDefaults.textButtonColorsPrimary()`, `MiuixTheme.colorScheme`, `MiuixTheme.textStyles`).
- Verified via `rg`: zero `androidx.compose.material*`, `com.google.android.material*`, or Android View widget controls exist in `app/src/main/java/com/aoya/telegami/ui/`.
- Dialog open state (`showDialog`) and input draft (`draftText`) use `rememberSaveable` so recomposition and Activity recreation preserve draft state.

## 4. Master-Sub Linkage & Value Preservation

| Master Key | Child Key | Disabled Condition | Value Preservation |
| --- | --- | --- | --- |
| `enable_message_repeat` | `enable_repeat_confirmation` | `!canEdit \|\| !enableMessageRepeat` | Toggling `REPEAT` off only writes `enable_message_repeat=false`; `enable_repeat_confirmation` keeps its saved value and restores when `REPEAT` turns back on. |
| `enable_sourceless_forward` | `enable_copy_confirmation` | `!canEdit \|\| !enableSourcelessForward` | Toggling `SOURCELESS_FORWARD` off only writes `enable_sourceless_forward=false`; `enable_copy_confirmation` keeps its saved value and restores when `SOURCELESS_FORWARD` turns back on. Independent switch `enable_message_copy` (强制复制) operates standalone without confirmation dialog. |
| `enable_edit_history` | `edit_history_retention_days` | `!canEdit \|\| !enableEditHistory` | Toggling `HISTORY` off disables row & closes open dialog without modifying `edit_history_retention_days`. |
| `enable_edit_history` | `edit_history_max_versions` | `!canEdit \|\| !enableEditHistory` | Toggling `HISTORY` off disables row & closes open dialog without modifying `edit_history_max_versions`. |

## 5. Verification Results

- **JVM Unit Tests** (`:app:testDebugUnitTest`): **Passed** (39 tests across 12 suites, 0 failures), including `FeaturesMessageToolsTest`:
  - `readAndWriteAllSevenSettings_matchesContractKeysDefaultsAndBounds`: Passed.
  - `failedWriteAndMalformedBounds_preservePreviousValuesAndClampSafely`: Passed.
  - `validateIntInput_enforcesRetentionAndMaxVersionsBoundsAndRejectsInvalidInputs`: Passed (`1..3650` and `2..1000` boundaries, empty input, non-integer strings, negative values, overflow, out-of-range values).
  - `masterSubLinkage_disablesSubItemsWhenMasterOffWithoutClearingSavedSubValues`: Passed.
- **Release Lint** (`:app:lintVitalRelease`): **Passed**.
- **APK Builds**:
  - `:app:assembleDebug`: **Passed** (`app/build/outputs/apk/debug/app-debug.apk`, SHA-256: `72CB049ADA0B2A9B9D41628BFF1268EF4D3836B3366F09092688CFFF3E1119D6`).
  - `:app:assembleRelease`: **Passed**.
- **Live Device Note**: No physical Android device with LSPosed + Telegram 13.1.1 is attached in this CLI environment; live IPC persistence across process restart and Light/Dark visual rendering on hardware remain to be confirmed on device using `app-debug.apk`.
