# P1: Modern API 102 strict configuration

Date: 2026-10-30 (Asia/Shanghai).
Phase status: partially implemented; not accepted as complete.
P0 baseline audit commit: `8e0f845ea9e12a09677541862b6449e5ade771f1`.

## Changes

- Retained the original `XposedInit : XposedModule` and Hooker/Chain architecture.
- Set minApiVersion and targetApiVersion to 102, with staticScope=true.
- Updated scope, the supported-package map, and resolver selection to both
  `org.telegram.messenger` and `org.telegram.messenger.web`, as explicitly
  requested by the user after the original single-package specification.
- Added an Android application description; retained MainActivity, the module
  settings intent category, and the launcher alias.
- Confirmed the five deprecated Xposed metadata fields were already absent.
- Added duplicate initialization guards, protective mode for the attach hook,
  and persistent framework logs for initialization, version decisions and
  completed installers. An installer completion log is not proof that every
  optional method was installed.
- Read PackageManager metadata after Application.attach and before Telegami
  initialization or any Telegram business hook installer.
- Used the attached application's class loader, avoiding the API 29-only
  PackageLoadedParam.defaultClassLoader accessor on older supported devices.
- Added `TelegramTarget`: exact package/version name checks and a deliberately
  empty verified-versionCode allowlist.
- Removed Config's stale Boolean snapshot; reads now use read-only remote
  preferences. A strongly held change listener logs configuration updates.
- Retained the settings-process service 102.0.0 write path.
- Added the official optional R8 entry/resource-adaptation rules.
- Allowed debug/test Gradle configuration without a private release keystore.
  If no signing properties are supplied, release remains unsigned; this is
  not an installable signed-release delivery. Configured signing fields still
  fail clearly when incomplete, and storeType is honored.
- Added focused negative version-gate tests.

No existing feature implementation, translation, theme, Room database, or
Telegram mapping has been removed or rewritten.

## Current target policy

The supplied `org.telegram.messenger.web` 13.1.0 APK is the inspected DEX
reference. The user has authorized both Android package names and asked to
ignore patch-version differences temporarily. `TelegramTarget` therefore
accepts stable `13.1.x` builds for those two exact package names. This is not
proof that every patch build is compatible.

Before any installers run, `Telegami.init` constructs `Telegram131Resolver`.
It resolves the required classes, method descriptors and fields against the
target app class loader; a missing contract aborts initialization before
business Hook installation. This is a structural check rather than a
versionCode allowlist. Only the supplied `.web` APK has been inspected against
the contract. The Google Play `.messenger` package is in scope by explicit user
request but has not been independently inspected or runtime-tested; it still
depends on the resolver succeeding at runtime.

Package-name and version metadata alone cannot prove official origin. The APK
signature was verified as valid, but its provenance was not independently
established. See the P2 analysis for the inspected APK identity and DEX source.

## API/service source verification

Checked primary sources at tag `102.0.0`, rather than relying on a moving branch:

- `https://github.com/libxposed/api/blob/102.0.0/README.md`
- `https://github.com/libxposed/api/blob/102.0.0/api/src/main/java/io/github/libxposed/api/XposedInterface.java`
- `https://github.com/libxposed/api/blob/102.0.0/api/src/main/java/io/github/libxposed/api/XposedModuleInterface.java`
- `https://github.com/libxposed/service/blob/102.0.0/service/src/main/java/io/github/libxposed/service/XposedService.java`
- `https://github.com/libxposed/service/blob/102.0.0/service/src/main/java/io/github/libxposed/service/RemotePreferences.java`

The API dependency stays compileOnly 102.0.0; the service stays implementation
102.0.0. The API exposes read-only getRemotePreferences in hooked apps.
The service exposes remote preference writes and change listeners. Existing
hook priority remains the API default (50); no historical custom priority was
found to preserve. Hooker exceptions default to protective mode; original
proceed exceptions are propagated by design.

The `de.robv.android.xposed.category.MODULE_SETTINGS` manifest string is an
Android intent category. It is not a Legacy API import/call or compatibility
layer. There are no Legacy Xposed metadata entries or source dependencies.

## Configuration limitations still requiring work

Config reads are current when requested. The marker hook now reads feature
flags at render time and asks tracked cells to remeasure when relevant remote
preferences change. This is source-implemented but has not been verified in a
running Telegram process; other feature installers that check a flag only at
installation still require a restart.

Settings-process writes now use `SharedPreferences.Editor.commit()` on
Dispatchers.IO and return actual success. Multi-select pairs are committed
atomically. The settings screen reloads from remote preferences after a write,
observes service availability with a lifecycle-aware StateFlow collector, and
disables editing with an explanatory status when the service is unavailable.
Failed IPC invalidates the local snapshot to avoid presenting an unpersisted
value as saved. Reconnect triggers a reload. Local app-theme preferences keep
their existing local storage. Runtime IPC/restart persistence remains untested.

## Validation and environment

The original machine had no discoverable JDK/SDK. A local JDK 21 was installed
for validation without editing system PATH or machine settings:

- JDK: Temurin 21.0.13+9.
- Location: `%LOCALAPPDATA%/TelegamiBuildTools/jdk-21.0.13+9`.
- Archive SHA-256:
  `a4dbaa05fca4bd89d84584e58c459bd732efebb1722af80ab13c6516832004f9`.
- Gradle wrapper `--version`: passed, Gradle 9.4.1 on JDK 21.
- Android platform 37 and build-tools 37.0.0 installed under
  `%LOCALAPPDATA%/TelegamiBuildTools/AndroidSdk`, checked against the official
  Google SDK repository checksums.
- The official Android CLI also installed platform `android-37.0` and
  build-tools 36.0.0 as required by this AGP configuration, with the SDK license.
  No project dependency or compileSdk version was lowered.

Reproduce validation in PowerShell:

```powershell
$env:JAVA_HOME = "$env:LOCALAPPDATA/TelegamiBuildTools/jdk-21.0.13+9"
$env:ANDROID_HOME = "$env:LOCALAPPDATA/TelegamiBuildTools/AndroidSdk"
.\gradlew.bat :app:testDebugUnitTest :app:lintDebug --no-daemon --console=plain
```

The Gradle unit/lint invocation and final results are recorded in
`artifacts/validation/p1-gradle.log` and the task status document. Baseline
build failure is retained in the P0 audit; it is not the final environment state.

Actual results:

- Debug Kotlin/Java production compilation: passed.
- `TelegramTargetTest`: 3 tests, 0 failures, 0 errors, 0 skipped.
- Static metadata/source/XML checks: 9 passed.
- `git diff --check`: passed before the checkpoint commit.
- `lintDebug`: failed, 61 errors and 81 warnings. Therefore the combined
  Gradle invocation exited with code 1; it must not be reported as successful.
- Error breakdown: 8 NewApi findings in the existing HomeFragment/animation
  resources, and 53 MissingTranslation findings in existing strings.
- All six files carrying lint errors were compared with original baseline
  `b62401d528d76ed2b8f062b6bd6ee345817866b3` and were unchanged.
  Evidence: `artifacts/validation/p1-lint-provenance.log`.
- The retained Application.attach reflection produces a
  DiscouragedPrivateApi warning. Framework/device execution remains unverified.
- No lint checks were suppressed, no lint baseline was generated, and no
  minimum SDK or dependency was changed to hide errors.
- No APK assembly, installation, Modern API framework loading, or Telegram
  behavior test has been performed at this checkpoint.

## Acceptance requirements still open

1. Inspect the Play APK independently; its runtime structure is guarded but not verified.
2. Establish APK provenance beyond signature validity if official-origin assurance is required.
3. Exercise service-unavailable, framework loading, settings launcher and remote preference persistence on device.
4. Verify P3/P4 deletion ordering, marker layout, multi-account behavior and database migration on device.
5. Review/isolate older feature mappings, including the stale theme return type, against target requirements.

These are acceptance blockers, not passing tests.

## Scope/configuration follow-up validation

Checkpoint baseline: `0406519221948535b531fb071f3a3df4a010c698`.
`testDebugUnitTest` compiles the configuration changes and passes four gate
tests (including two-package recognition). Final lifecycle adjustment is checked
again before commit. Existing lint findings are not suppressed. No framework
or device test is claimed. Log: `artifacts/validation/p1-scope-preferences.log`.
