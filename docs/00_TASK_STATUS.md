# Telegami Modern API 102 / Telegram 13.1.1 task status

Date: 2026-10-30 (Asia/Shanghai).
Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `feat/modern-api102-telegram1311`.
Original baseline: `b62401d528d76ed2b8f062b6bd6ee345817866b3`.
GitHub login and Git identity were verified before code changes.
The initial worktree was clean.

## Phase acceptance

| Phase | Status | Evidence / remaining dependency |
| --- | --- | --- |
| P0 | Source audit complete | `01_PROJECT_AUDIT.md`, commit `8e0f845` |
| P1 | Partial checkpoint; acceptance pending | `02_MODERN_API_102.md`; real target and configuration/device checks missing |
| P2 | DEX analysis resumed after minor-version waiver | Actual supplied build: org.telegram.messenger.web 13.1.0 |
| P3 | Not started | Requires P2 deletion/storage/UI evidence |
| P4 | Not started | Requires P2 edit/render evidence |
| P5 | Not started | Requires verified marker paths |
| P6 | Not started | Requires working implementation and actual device |
| P7 | Not started | Requires accepted earlier phases and release signing |

**This repository checkpoint is not a completed 13.1.1 adaptation. All business
hooks are disabled by the empty verified-target allowlist.**

No deletion/edit rendering fix, device test pass, installable release APK or
final-delivery SHA-256 is claimed. The original feature implementations remain
present. The old 12.10.3 mapping has not been presented as 13.1.1 evidence.

## Supplied APK follow-up

Follow-up baseline: `d2cf50e5c5897a8c0a2038a5db220bbde8f85096`.
Worktree was clean; the same task branch, configured Git identity and GitHub
login were verified again.

The user supplied `Telegram.apk`. Actual APK inspection found package
`org.telegram.messenger.web`, version `13.1.0`, versionCode `72299`, and four
DEX files. Android SDK apkanalyzer and DexSQL MCP get_manifest agree.
APK SHA-256 is
`4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`.
Signature verification returned exit code 0; official provenance was not
independently established.

This does not match the original exact target. The user then clarified that
minor-version differences can be ignored temporarily, so DEX analysis proceeds
on this actual 13.1.0 build. The user subsequently explicitly authorized both `org.telegram.messenger`
and `org.telegram.messenger.web`. Both now appear in scope, package selection,
and resolver selection. The build gate remains closed pending resolver validation.
No build/test rerun was needed for the initial identity-only checkpoint.

Evidence: `docs/evidence/supplied_apk_identity.json` and the updated P2 record.
The APK remains ignored by Git and was not modified or committed.

## Checkpoint validation

- Passed: Git/GitHub preflight, baseline recording, independent task branch.
- Passed: nine static metadata/source/XML checks, including API 102 metadata,
  two-package scope (after the user scope clarification), entry class, absence of deprecated Xposed metadata,
  application label/description, launcher retention, no Legacy APIs in Kotlin
  source, unchanged exact API dependency and XML parsing.
- Passed: JDK 21 + Gradle 9.4.1 bootstrap.
- Passed: DexSQL binary/license SHA-256 verification, executable checks, MCP
  initialize and required tool discovery through a temporary stdio probe.
- Passed: debug Kotlin/Java compilation and 3 version-gate unit tests
  (0 failures/errors/skips).
- Failed: lintDebug, 61 errors / 81 warnings, combined Gradle exit code 1.
  The errors comprise 8 NewApi and 53 MissingTranslation findings. All six
  error-bearing files are unchanged from the original baseline.
  No lint suppression/baseline or SDK/dependency downgrade was applied.
- Device testing: unavailable; `adb devices -l` returned no attached devices.

Local validation logs are retained under `artifacts/validation/`. Logs are
ignored by the existing repository ignore rules, but remain in this workspace:

- `p1-gradle-initial.log`: initial SDK/license failure.
- `sdk-setup.log`: SDK package installation.
- `p1-gradle.log`: subsequent unit/lint run.
- `p1-static-checks.log`: static-check results.
- `p1-lint-provenance.log`: lint error categories and baseline comparison.

## P1 modified files

- `app/build.gradle.kts`
- `app/proguard-rules.pro`
- `app/src/main/AndroidManifest.xml`
- `app/src/main/resources/META-INF/xposed/module.prop`
- `app/src/main/resources/META-INF/xposed/scope.list`
- `app/src/main/res/values/module.xml`
- `app/src/main/java/com/aoya/telegami/XposedInit.kt`
- `app/src/main/java/com/aoya/telegami/core/Constants.kt`
- `app/src/main/java/com/aoya/telegami/core/TelegramTarget.kt`
- `app/src/main/java/com/aoya/telegami/service/Config.kt`
- `app/src/main/java/com/aoya/telegami/util/Logger.kt`
- `app/src/test/java/com/aoya/telegami/core/TelegramTargetTest.kt`
- `docs/00_TASK_STATUS.md`
- `docs/02_MODERN_API_102.md`
- `docs/03_TELEGRAM_1311_DEX_ANALYSIS.md`

P0 separately added `docs/01_PROJECT_AUDIT.md`.

## External local setup

- DexSQL skill installed in `.agents/skills/install-dexsql`.
- DexSQL binary/licenses installed in `%LOCALAPPDATA%/DexSQL/v0.1.1`.
- Only the dexsql MCP entry was added to `.codex/config.toml`, with a backup.
- Local JDK/SDK installed in `%LOCALAPPDATA%/TelegamiBuildTools`.
- No machine environment variables or system PATH were changed.
- Current chat tool attachment requires client/session reload; the local
  DexSQL protocol probe was successful independently of that reload.

## Current follow-up (2026-10-30)

The supplied 13.1.0 APK is the accepted analysis input. Do not request another
APK merely because the original specification said 13.1.1 or omitted `.web`.
Both Android distribution packages are in scope. No browser-based Telegram Web
application is involved. Play-specific build identity and runtime behavior
remain untested; the supplied website APK is the actual evidence source.

Remote settings now expose service availability, disable editing while
unavailable, reload on reconnect, and commit edits on an IO dispatcher before
showing success. Multi-select flags are saved in one editor commit. Failed
writes disable editing rather than displaying an optimistic saved state.
Framework/device verification remains outstanding.

Next: finish current-APK method and layout evidence, replace the old target
mapping, then implement deletion persistence and marker rendering in phase
order. No device is attached. Preserve that limitation in P6/P7 results.

Each checkpoint is committed separately. Use `git revert <commit>` to undo a
committed stage; do not use destructive reset/clean commands.
