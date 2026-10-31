# Message Tools Delivery

Date: 2026-10-31. Branch: `feat/nagramx-message-tools`.

This delivery implements the NagramX-inspired business layer without merging
NagramX or modifying Telegram. All Telegram reflection contracts used by the
new hooks were obtained from the supplied APK with DexSQL. The supplied file
is the website package `org.telegram.messenger.web`, version 13.1.0,
versionCode 72299. The user-approved minor-version waiver is applied; the
Play package `org.telegram.messenger` is scoped but its independent DEX
structure remains unverified.

## Requested outputs

1. NagramX analysis: `docs/06_NAGRAMX_SOURCE_ANALYSIS.md`.
2. Telegram menu/send analysis: `docs/07_REPEAT_HOOK_ANALYSIS.md` and
   `docs/08_COPY_HOOK_ANALYSIS.md`.
3. Repeat implementation: `docs/10_REPEAT_IMPLEMENTATION.md`.
4. Copy/send-as-copy implementation: `docs/11_COPY_IMPLEMENTATION.md`.
5. Edit history implementation: `docs/12_EDIT_HISTORY_IMPLEMENTATION.md`.
6. Database schema/migration: `docs/13_MESSAGE_HISTORY_SCHEMA.md`.
7. Configuration handoff: `docs/14_MESSAGE_TOOLS_CONFIG_HANDOFF.md`.
8. Modified source and evidence: the files under `app/src`, `docs`,
   `scripts`, and `artifacts/dexsql/message-tools-1310` listed by Git.
9. Build logs: `artifacts/validation/p10-repeat.log` through
   `artifacts/validation/p15-final-build.log`.
10. Device test report: no device was attached; all runtime cases below are
    UNVERIFIED rather than marked complete.
11. APK artifacts are described in the Build section.

## Implementation

- Repeat adds a private context-menu ID and uses Telegram's native forward
  overload with no reply relationship. It checks account, dialog, slow mode,
  chat/media permissions and unsupported message kinds. Protected text uses
  fresh native send parameters; protected media is rejected explicitly rather
  than re-uploaded without authorization.
- Copy adds a protected-group-only text clipboard action. It preserves plain
  text plus common formatting entities through Android HTML clipboard data.
  Telegram-only entity semantics remain in the original TL data but are not
  guaranteed by third-party clipboard consumers.
- Send as Copy uses fresh native send parameters with copied entities/media,
  no forward source and no reply. Protection flags, TTL, secret, ephemeral,
  service and unsupported content remain restricted.
- Edit History hooks the verified `MessagesStorage.lambda$putMessages$238`
  runnable before its `messages_v2` replacement. It reads the old row by
  `mid` and `uid`, deserializes it before native overwrite, captures the new
  owner, and persists both immutable snapshots. Entity-only edits participate
  in the hash; A->B->A is retained.
- Room v3 adds `MessageHistoryEntry`, preserves the existing deletion table,
  scopes every key by account/dialog/message, prunes by retention/version
  limits and keeps local photo previews bounded. The viewer is read-only,
  asynchronous and never fetches unauthorized media.
- Modern API 102 remote preferences and both package scopes are retained;
  no Legacy XSharedPreferences or Miuix settings/navigation changes were
  introduced.

## Build and validation

Passed:

- `:app:testDebugUnitTest`: 35 tests, 0 failures, 0 errors, 0 skipped.
- `:app:assembleDebug`.
- `:app:assembleRelease` (unsigned because no `keystore.properties` exists).
- Desktop SQLite migration check: preserves DeletedMessage and verifies
  scoped composite-key retention after reopening.
- APK metadata check: API 102, both Telegram scopes, Xposed init entry and
  Room v3 generated implementation.
- Debug APK signature verification: Android debug certificate, APK v2 valid.

Lint is not green: 66 pre-existing errors remain in unchanged resource files
(62 `MissingTranslation`, 4 `NewApi`) and 108 warnings. No lint suppression
was added. Provenance is recorded in `artifacts/validation/p15-lint-provenance.txt`.

Artifacts from the final build:

- Debug: `app/build/outputs/apk/debug/app-debug.apk`, SHA-256
  `d447b515970afbcf546ae90e698102a010de23986d8acd324261c1b3c44ba931`.
- Release: `app/build/outputs/apk/release/app-release-unsigned.apk`, SHA-256
  `5268a88a30fe0d81537e7009d331749cc1c8529df86f79b367b922e968ac3700`.

## Runtime status

No Android device/emulator appeared in `adb devices -l`. Therefore these are
UNVERIFIED: LSPosed loading on both packages; exact runtime reflection against
13.1.1 and Play; menu visibility/click dispatch; text/media repeat delivery;
protected clipboard and copy-send behavior; edit capture before overwrite;
Room v3 on-device migration; process restart and multi-account persistence;
history UI/media previews; Telegram regression behavior for deletion/edit
markers and all existing hooks.

The code intentionally reports native immediate rejection and leaves delivery
success/failure to Telegram's own pending/retry UI. A successful build is not
claimed as a successful device test.

## Commits

- `39f0e68` NagramX source analysis.
- `71e99a7` Telegram/DexSQL hook evidence.
- `b410d57` repeat source implementation.
- `e374584` copy and send-as-copy implementation.
- `95365f1` pre-overwrite history capture.
- `c3d2f1b` Room persistence and history viewer.
- `224f570` configuration handoff and send-object isolation.
- Final commit records the final regression checks and artifact verification.
