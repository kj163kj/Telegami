# Message tools device-feedback follow-up

Date: 2026-10-31. Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `feat/nagramx-message-tools`. Baseline: `0cdafca9a57a98aa5ffd51a5038e78acc092e9c0`.
Git identity and GitHub authentication verified. Initial worktree clean.
Management-app UI from `44252a0` is preserved without modification.

## Root cause and repair

The previous hook reversed q8's two integer lists. Its actual Java argument
order is `message, icons, labels, ids`, not `message, ids, labels, icons`.
This sent private action IDs to drawable loading and drawable resource IDs
to the click dispatcher, explaining missing icons and unrecognized actions.
The same error in the retained/deleted-message menu is repaired using the
same tested argument adapter, `MessageMenuLists`.

Evidence: `artifacts/dexsql/telegram-1310/chat_menu.smali`, native Copy
branch (580-585); `message-tools-1310/menu_create.smali`, row construction
(3255-3275) and `mf.c2` listener installation (3394-3398). DexSQL decode of
DEX 2 / method 6753 confirms case 5 reads the selected action ID from that
list before calling `ko.Fa(int)`. No class/method names were guessed.

Custom actions now execute before native `Fa` cleanup. Native actions pass
through unchanged. Menu/action/resource/selection errors are logged without
recording message text. Native forwarding acceptance remains distinct from
server delivery. Repeat's existing confirmation/cooldown gate is unchanged.

Icons reuse Telegram's own NagramX-style assets: `msg_forward`, `msg_copy`,
`msg_forward_replace`, `msg_recent`. Missing copy-send icons fall back to
`msg_copy`, then `msg_forward`. No hard-coded resource IDs are injected.

Menu repair validation: 42 JVM tests pass (0 failures/errors/skips), including
three new menu-order/duplicate/alignment tests. Debug assembly passes. Log:
`artifacts/validation/menu-fix-build.log`. `git diff --check` passes. An initial
SDK-path failure and an occupied Gradle JAR were resolved using existing local
JDK/SDK and stopping the stale Gradle daemon; no build-file changes were made.

## History viewer redesign

Reference: NagramX `com/radolyn/ayugram/ui/AyuMessageHistory.java`, especially
`createView` and `applySearchFilter`. Kept interactions: independent full-window
view, search over revisions, chronological message-style rows, version/time
labels, latest snapshot and local media preview. The old tall AlertDialog is
replaced. Search includes text/caption, version label, time and media label.
The current snapshot remains separate and clearly marked as captured at open.

This is an adaptation, not direct reuse of NagramX's Fragment/ChatMessageCell:
those rely on Neko/Ayu-specific classes absent from official Telegram. The
host-safe Android Dialog/ListView avoids inventing obfuscated Fragment methods
or importing the reference app. Telegami Room schema/capture and Modern API 102
remain unchanged. No management-app UI, preferences or navigation were edited.
Day/night appearance follows Android configuration; exact synchronization with
Telegram's independent custom theme is not implemented. No pixel-identical
NagramX appearance or on-device visual acceptance is claimed.

The screen handles system/cutout/keyboard insets, scrolling/selecting long text,
empty search results, missing originals and unavailable local photos. The same
12-preview/512-pixel decode budget is preserved; previews never download media.
Closing the screen dismisses image overlays before releasing bitmap memory.

Changed files in this follow-up: `MessageMenuActions.kt`, `MessageMenuLists.kt`,
`MessageCopyHook.kt`, `ModifyDeletedMessagesMenu.kt`, `MessageHistoryViewer.kt`,
`MessageHistoryScreen.kt`, `MessageMenuListsTest.kt`, `HistoryVersionTest.kt`,
and reports 07, 12, 16. Configuration keys/database schema are unchanged.

## Final validation and debug artifact

- JVM: 44 tests, 0 failures, 0 errors, 0 skipped (3 new menu tests and 2
  new history-search tests). These do not execute Android views or LSPosed.
- `:app:assembleDebug`: passed. Success log:
  `artifacts/validation/message-tools-fix-build.log`.
- SQLite migration regression: `python scripts/verify_history_migration.py`
  passes, including preservation of deletion records and generated Room schema.
- APK signing: `apksigner verify --verbose --print-certs` passes with v2 and
  the existing Android debug certificate. Embedded metadata is API 102 with
  both Telegram scopes and the unchanged Xposed entry.
- `git diff --check`: passed. Management UI/resources are unchanged from
  baseline `0cdafca`; no preference or database migration was added.
- `:app:lintDebug`: **failed**, 91 errors / 110 warnings. Errors are 87
  MissingTranslation and 4 NewApi in existing resource files unchanged from
  this follow-up baseline. The menu resource lookup also has DiscouragedApi
  warnings for `getIdentifier`. No lint suppression/baseline was added.
  Combined build/lint log: `artifacts/validation/message-tools-fix-final-build.log`.
- No release APK was rebuilt in this follow-up; older release artifacts do
  not contain these fixes.

Debug APK: `app/build/outputs/apk/debug/app-debug.apk`.
SHA-256: `8f3162112315168f5b257fc4bb99da9b84b2cf1372be2dc0e64e5cf9b724677c`.
This is a test build, **not device-accepted delivery**.

## Device validation

No ADB device is connected. Runtime behavior is **UNVERIFIED**, including
LSPosed loading, menus/icons, sending, edit capture and viewer appearance.
Installing a build alone is not a device test pass.

After replacing the debug APK, ensure its LSPosed module is enabled with the
correct Telegram scope, then force-stop and reopen Telegram. Capture startup
as well as menu clicks. With Android platform-tools on PATH:

```powershell
adb devices -l
adb logcat -c
adb logcat -v threadtime > telegami-log.txt
```

While capture runs, reopen Telegram; long-press a normal text message and
test Repeat, Send as Copy and Edit History. Confirm sends only in a test chat.
For clipboard copying, use a protected test group, where that item is visible.
Stop capture with Ctrl+C, then filter:

```powershell
Select-String -Path .\telegami-log.txt -Pattern 'Telegami|MessageTools|EditHistory|ModuleInit|HookInstall|TelegramVersion|Configuration' |
    Set-Content -Encoding utf8 .\telegami-filtered.log
```

Send `telegami-filtered.log` and the LSPosed module log (export from LSPosed's
Logs page), Telegram package/version, and whether each action shows an icon,
confirmation, error or result. Logs may contain chat/account identifiers;
review/redact unrelated private information before sharing. Do not clear
Telegram or module data to troubleshoot: that can remove local history.
