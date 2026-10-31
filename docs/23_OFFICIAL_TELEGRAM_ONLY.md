# Official Telegram Only

Date: 2026-10-31.
Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `refactor/official-telegram-only`.
Baseline: `a9775143bfd10c08b0dc271136212d022a687c64`.
Initial worktree clean; Git identity and GitHub authentication verified.

## Supported Targets

Only `org.telegram.messenger` (Google Play) and `org.telegram.messenger.web`
(website) are allowed. The existing stable 13.1.x version gate is unchanged;
this cleanup does not enable other Telegram versions or beta builds.
`TelegramTarget.PACKAGE_NAMES` now shares the same official package keys as
`Constants`, avoiding independent allowlists drifting apart.

## Removed Compatibility

- Removed Nekogram, Octogram and Cherrygram JSON mapping assets and resolver
  registrations. Both official application IDs use only `telegram.json`.
- `ResolverManager.init` rejects unsupported packages before touching assets;
  unknown clients no longer silently use the default resolver.
- Removed all ten retired client/beta entries from the old `xposed_scope`
  Android resource array. Modern API 102 scope already had the two official IDs.
- Removed third-party theme/download exclusions, Nagram cache and story-storage
  deletion paths, Nekogram secret-viewer/theme handling, and alternate fork-only
  media-save signatures.
- Removed Nekogram from bulletin/item-options dispatch lists. Existing official
  Play/website behavior is preserved, rather than guessing replacement methods.
- Removed `HideUpdate` and its installer: its only branches handled Telegram
  beta and Nekogram; it never installed a hook for either supported official app.
- Removed the fork-dependent profile parameter heuristic. Official APK evidence
  confirms `ProfileActivity.C4(float, float, int, View)`: row/view remain arguments
  2 and 3, with a four-parameter lookup. The old fork comment was misleading.
- Removed Nekogram from version-check configuration and `versions.json`.
  Official release tracking metadata is otherwise unchanged. Runtime website
  support is independent of the Play release-feed tracking entry.

Production Kotlin contains no retired client package identifiers. Tests and
the verification script intentionally retain them as rejection fixtures.
Historical reports and DEX evidence are not rewritten to hide prior support.

## Preserved Behavior And Limits

NagramX's original circle/+1 repeat icon, message tools, native history viewer,
history database and capture/deduplication logic are retained. They are feature
references, not permission to hook a NagramX client.

No management UI layout, configuration keys, database schema, module application
ID (`com.techsky.telegami`), version (`3.1.3` / `30005`) or signing identity changes.
The existing formal key is reused without logging or committing credentials.

The official legacy `telegram.json` still has its preexisting 12.10.3 metadata
and legacy member names. This change does not claim that every old hook has
been re-adapted to 13.1. Current message tools continue using their separately
verified exact resolvers. Official Play/website branches in legacy helpers are
left intact to keep this removal scoped. See `docs/obfuscation.md`.

## DEX Evidence

Input is the same supplied official website APK documented in report 03:
13.1.0 / 72299; the minor-version waiver remains unchanged.
Query: `artifacts/dexsql/official-only-1310/contracts.sql`.
Output: `artifacts/dexsql/official-only-1310/contracts.txt`.

- `classes3.dex`, method 42925:
  `Lorg/telegram/ui/ProfileActivity;->C4(FFILandroid/view/View;)Z`.
- `classes.dex`, method 39143:
  `Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V`.

The six-argument media method remains the official path; the removed fork
branch additionally passed a boolean. No new obfuscated class names were guessed.

## Verification

`scripts/verify_official_targets.py` checks source scopes, mapping assets,
production package branches and version tracking. Optional `--apk` checks the
actual packaged mapping set, scope, API metadata, retained original repeat PNG
and absence of signing secrets. It was first run against the previous Release
APK and correctly rejected its three retired mappings before the rebuild.

New JVM tests cover allowlist consistency and rejecting unsupported packages
before asset access. Existing rejection tests now include every removed scope.

Final checks:

- `:app:testDebugUnitTest`: 82 tests, zero failures/errors/skips.
- `:app:assembleDebug`, `:app:assembleRelease`, `:app:lintVitalRelease`: passed.
  Build log: `artifacts/validation/official-only-build.log`.
- Official-only source/APK verification: passed for both newly built APKs.
- `aapt2 dump resources` confirms compiled `array/xposed_scope` has exactly the
  two official IDs. `dump badging` confirms the Release application ID remains
  `com.techsky.telegami`, version `3.1.3` / `30005`.
- `scripts/verify_history_migration.py`: passed, including preservation of
  deletion records and generated Room schema equivalence.
- Debug and Release APK signature checks: passed. Release retains certificate
  SHA-256 `bc80329b9ba7c8c8da2bc2b57057544d7b967477038f2037a2fb332d5a0186d7`.
  Signature log: `artifacts/validation/official-only-release-signature.log`.
- `git diff --check`: passed.
- No ADB device connected. Installation, retained legacy hooks, Telegram UI,
  sending, history capture and regression behavior are **UNVERIFIED on device**.

Release APK: `app/build/outputs/apk/release/app-release.apk`, 13,006,662 bytes.
SHA-256: `5d3b0f38452b847bb178a79cb800b08282e06a2ea8da7b2e145e758dc0947878`.

Debug APK: `app/build/outputs/apk/debug/app-debug.apk`.
SHA-256: `384ac0917d6c3384542c176fe1e93c5c8b9156d128b72e0e34d013a2c5a50a59`.
