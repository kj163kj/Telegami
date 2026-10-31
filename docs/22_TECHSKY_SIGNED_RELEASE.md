# Techsky application identity and signed release

Date: 2026-10-31.
Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `build/techsky-signed-release`.
Baseline: `24bc6dedcc95353ad2142f8c13d9527091e97867`.
Initial worktree clean; Git identity and GitHub login verified.

## Identity

- Release application ID: `com.techsky.telegami`.
- Debug application ID: `com.techsky.telegami.debug`.
- Version unchanged: `3.1.3` / `30005`.
- Kotlin/resource namespace remains `com.aoya.telegami`; the manifest's
  application/activity/launcher alias and Xposed entry refer to these actual
  classes. They must not be replaced with nonexistent Techsky class names.
- LSPosed Modern API 102 and both Telegram scopes remain unchanged.
- Application ID constants are updated; no management UI layout or message
  behavior changes are included.

The new application ID installs alongside old Telegami builds, rather than
updating them. Module settings are not automatically migrated. Enable the new
module in LSPosed with both appropriate Telegram scopes and disable the old
module before reopening Telegram to avoid double hooking. Do not clear Telegram
data or remove its locally captured history as part of the switch.

## Local signing key

A new RSA 4096-bit PKCS12 key was generated at the user's request, with a
SHA256withRSA self-signed certificate valid for 10,000 days. Alias:
`telegami-release`. This is not the Android debug key.

- Keystore: `C:/Users/Administrator/.android/telegami-release/telegami-release.p12`.
- Credentials backup: `C:/Users/Administrator/.android/telegami-release/keystore.properties`.
- Workspace configuration: ignored `keystore.properties` in the repository root.
- Directory/configuration ACLs restrict access to the current user and SYSTEM.
- Password generated with a cryptographic RNG, not printed in logs or committed.

Certificate SHA-256:
`bc80329b9ba7c8c8da2bc2b57057544d7b967477038f2037a2fb332d5a0186d7`.

Back up the external signing directory securely. Future updates of this app
must use this same private key. Do not regenerate it per build or distribute
the credential files with the APK. The existing Gradle release signing setup
automatically reads the ignored workspace configuration.

## Build

JDK 21.0.13+9 and the existing local Android SDK were used. Command:

```powershell
./gradlew :app:testDebugUnitTest :app:assembleRelease --no-daemon --no-parallel --console=plain '-Pkotlin.compiler.execution.strategy=in-process' '-Pkotlin.incremental=false'
```

The project exposes Debug JVM tests, not a `testReleaseUnitTest` task. These
tests do not execute Android UI or LSPosed hooks. Build log:
`artifacts/validation/techsky-signed-release-build.log`.

## Verified artifact

- `:app:testDebugUnitTest`: 80 tests, zero failures/errors/skips, including two
  new application-identity tests.
- `:app:assembleRelease` and `:app:lintVitalRelease`: passed.
- `apksigner verify --verbose --print-certs`: passed, APK v2 signing; certificate
  SHA-256 matches the new release key above. Log:
  `artifacts/validation/techsky-release-signature.log`.
- `aapt2 dump badging`: `com.techsky.telegami`, version `3.1.3` / `30005`, not
  debuggable. Merged manifest confirms new Provider authorities and unchanged
  actual application/activity class names.
- `zipalign -c -P 16 4`: passed.
- APK metadata: Modern API 102, both official Telegram scopes, original Xposed
  entry class. NagramX repeat PNG hash remains unchanged.
- No keystore or password configuration is packaged in the APK or tracked by Git.
- `git diff --check`: passed.

APK: `app/build/outputs/apk/release/app-release.apk` (13,030,933 bytes).
SHA-256: `a12f364b467a207fb0d87c1db54b254289e2c98f5988f12f2e3d06f50541a542`.

This is the newly signed Release APK, not the older unsigned Release artifact
or the previous Debug APK. No GitHub release was published.

No ADB device was connected. Installation, module activation, native UI display,
message sending and edit-history behavior on a real device remain **UNVERIFIED**.
