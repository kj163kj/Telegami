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
| P1 | Source configuration checked; runtime gate/device acceptance pending | `02_MODERN_API_102.md`; two packages and confirmed IO writes |
| P2 | Core capture/render contract analyzed | `03_TELEGRAM_1311_DEX_ANALYSIS.md`; actual supplied 13.1.0, optional hooks tracked separately |
| P3 | Source implementation in progress | Account-scoped Room v2 storage, storage-queue capture, deletion permits and targeted notification filtering; unit tests pass, no device test |
| P4 | Source implementation in progress | Telegram time-state field and span-aware marker rendering implemented; display/layout remains unverified on device |
| P5 | In progress | Exact resolver added for marker/deletion targets; legacy feature mappings still require review |
| P6 | Not started | Requires working implementation and actual device |
| P7 | Not started | Requires accepted earlier phases and release signing |

**This is not a completed or device-accepted adaptation.** The supplied 13.1.0
website APK is the only DEX build inspected. Runtime initialization now checks
the exact reflected structure before installing hooks; a package/version match
alone is not sufficient. The Play APK and its runtime behavior remain
unverified.

The deletion capture and edit/deletion marker implementations are present in
the current source changes, and unit tests pass. No device test pass, installable
release APK or final-delivery SHA-256 is claimed. Existing unrelated feature
implementations remain present; the old 12.10.3 mapping is not treated as
13.1.0/13.1.1 DEX evidence.

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
and resolver selection. A stable 13.1.x name is accepted only when the exact
resolver initializes; only the supplied `.web` package was inspected. The Play
package is included by user request but its build structure is unverified.

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

Next: verify the P3 UI/storage ordering path on-device when available, review
older feature mappings, and complete device tests. The 13.1.0 reference
resolver and source-level marker implementation are present; no Play APK or
device is available for runtime verification.

Each checkpoint is committed separately. Use `git revert <commit>` to undo a
committed stage; do not use destructive reset/clean commands.

## Current source validation (2026-10-30)

- `:app:testDebugUnitTest`: 12 tests passed (0 failures/errors/skips), covering
  package/version acceptance, deletion permits, pending retention keys and
  exact reflection descriptors.
- Review fixed a database reflection mistake: pre-delete capture now queries
  the `SQLiteDatabase` instance already obtained from Telegram storage, rather
  than looking up the database field on that instance a second time. Marker
  refresh removes stale decorations before remeasurement, including when
  marker widths happen to match.
- KSP generated Room DAO code for the concrete `@Transaction` methods; the
  generated implementation wraps both methods in transactions. Generated v2
  schema matches the migration table columns, nullability, composite primary
  key and `(accountId, dialogId)` index.
- `:app:assembleDebug` and `:app:assembleRelease`: passed. The release output is
  `app-release-unsigned.apk` because no `keystore.properties` is present; it is
  not a signed installable release deliverable.
- `git diff --check`: passed after the final source changes.
- `adb devices -l`: no connected Android device; hook, settings, layout and
  SQLite migration behavior remain unverified on-device.
- `lintDebug`: failed with 61 errors and 81 warnings. No error locations are in
  changed source files; this is not a passing lint run. The initial baseline
  comparison found all six error-bearing files unchanged from baseline.
- APK SHA-256: debug
  `955691B898AAAE8E14F14384A306C5AD227EF11EEE7FE70DF578B8CC58C32FFF`;
  unsigned release
  `D2C7C9346AAB503917B063ED5B7316C0794751A27D4F5DF63B8F6B1D0DD2283A`.
- Changes in this stage are kept as a new checkpoint after
  `af6f0a83630fd0c6d48fe5326fdc7439568aa58d`; the earlier commit is not amended.
