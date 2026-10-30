# P1: Modern API 102 strict configuration

Date: 2026-10-30 (Asia/Shanghai).
Phase status: partially implemented; not accepted as complete.
P0 baseline audit commit: `8e0f845ea9e12a09677541862b6449e5ade771f1`.

## Changes

- Retained the original `XposedInit : XposedModule` and Hooker/Chain architecture.
- Set minApiVersion and targetApiVersion to 102, with staticScope=true.
- Restricted both module scope and the supported-package map to
  `org.telegram.messenger`.
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

## Fail-closed target policy

No actual target APK was available. No versionCode, APK hash, signer, DEX count,
13.1.1 method signature, or mapping was inferred from the old 12.10.3 asset.

Follow-up: the user supplied `Telegram.apk`, but Android SDK and DexSQL both
identify it as `org.telegram.messenger.web` version `13.1.0` (72299). It fails
the existing target policy. Its observed versionCode was not added to the
allowlist. See `03_TELEGRAM_1311_DEX_ANALYSIS.md` for the actual identity evidence.

`TelegramTarget.verifiedVersionCodes` is intentionally empty. Consequently,
**all Telegram builds, including an app advertising 13.1.1, are rejected before
business hook registration**. This checkpoint is not a working 13.1.1 module.
The guard is necessary to avoid silently running old hooks and mappings on an
unverified target.

After obtaining the real APK, record its identity and provenance, complete
DexSQL evidence for the relevant hooks and mappings, then populate the
allowlist with observed values. A matching version name alone is insufficient.
Signing-identity validation is also pending; a package name/version tuple by
itself does not prove official origin.

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

Config reads are current when requested, but feature installers that check a
flag once still require a target-process restart. In particular, the original
MarkMessages lazy flags remain pending P4; this document does not claim live
marker switching is fixed.

Settings writes while the service is unbound are still no-ops in the original
PrefManager. The UI must receive an accurate failure/availability result
before P1 can be accepted. Service reconnect and process-restart persistence
also need framework/device verification.

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

1. Actual target APK identity, official origin and DEX evidence.
2. Verified versionCode allowlist and target resolver/mappings.
3. Accurate settings behavior when the remote service is unavailable.
4. Actual framework loading, settings launcher and remote write/read/restart tests.
5. Subsequent P3/P4 marker fixes and P5 method-level isolation.

These are acceptance blockers, not passing tests.
