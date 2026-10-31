# Repeat menu icon

The repeat action previously used Telegram's `msg_forward` arrow. It now uses
NagramX's original circle/+1 `msg_repeat.png`, without changing repeat behavior
or the management application UI.

## Asset provenance

- Project: https://github.com/risin42/NagramX
- Commit: `2db685af00a4352c877ecf96474cbf0494284715`
- Source: `TMessagesProj/src/main/res/drawable-xxhdpi/msg_repeat.png`
- Local copy: `app/src/main/assets/icons/nagramx_msg_repeat.png` (unmodified).
- License: NagramX repository GPL-3.0; see its `LICENSE` and this project's
  `LICENSE`. No other reference-project code or resources were imported.
- Original size/density: 72 x 72 pixels, xxhdpi (480 dpi), displayed at 24 dp.
- PNG SHA-256: `d9514e52ea2824862e272c48af0c96d99c3c4996d5d51146760e4a644b67851c`.

## Hook evidence

The supplied Telegram APK has no `drawable/msg_repeat`. Its ordinary `msg_add`
is a bare plus, not the reference circle/+1. Module resource IDs cannot be
passed directly to Telegram's resource loader.

DexSQL against the unmodified supplied `Telegram.apk` confirms:

- `classes3.dex`, method 23574:
  `Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V`.
- It delegates to method 23575:
  `Lorg/telegram/ui/ActionBar/h1;->g(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V`.
- `g` uses the supplied Drawable when non-null, sets the native icon view
  visible and retains the normal 43 dp text inset. The constructor configures
  the native icon view's theme color filter.
- Existing menu-creation evidence:
  `artifacts/dexsql/message-tools-1310/menu_create.smali`, call to `h1.f`.

The Modern API 102 hook replaces only the private negative repeat icon token
at `g` entry with a fresh Drawable from the cached bitmap. Native icons and
other custom actions pass through unchanged. No host resource table is changed.
Asset/hook installation failure is logged and retains the previous native
fallback without preventing repeat registration.

Reproduce the new setter evidence:

```powershell
dexsql decode --input Telegram.apk --file-id 2 --method-idx 23574
dexsql decode --input Telegram.apk --file-id 2 --method-idx 23575
```

## Validation

Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `fix/repeat-circle-plus-icon`.
Baseline: `327197dc6ad70714de237db807a599f74af5f934`.
Initial worktree clean; Git identity and GitHub login verified before changes.

- `:app:testDebugUnitTest :app:assembleDebug`: passed; 78 tests, zero failures,
  errors or skips. Build log: `artifacts/validation/repeat-icon-build.log`.
- Packaged asset SHA-256 matches the original NagramX PNG above.
- APK signature verification: passed, v2 signing.
- `git diff --check`: passed.
- No ADB device connected. LSPosed hook execution, theme tint and on-screen
  appearance are **UNVERIFIED on a real device**. JVM tests do not run the hook.
- No management UI, sending behavior, preference keys or database changes.

APK: `app/build/outputs/apk/debug/app-debug.apk`.
SHA-256: `89e8d1039f25812f0a7aa970b0faa937964b3646711e394e4d2b102d4ab428fa`.

Install over the existing debug module without clearing its data, then
force-stop and reopen the scoped Telegram app. Long-press a message and verify
Repeat's circle/+1 icon. The successful setter path logs
`Applied NagramX msg_repeat drawable` under `MessageTools`.
