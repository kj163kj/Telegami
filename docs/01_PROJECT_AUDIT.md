# P0: Telegami project baseline audit

Audit date: 2026-10-30 (Asia/Shanghai).
Target: Telegami Modern API 102 Edition, official Telegram Android 13.1.1.

## Baseline and scope

- Workspace: `C:/Users/Administrator/Desktop/Telegami`.
- Remote: `https://github.com/aoya111/Telegami.git`.
- Baseline commit: `b62401d528d76ed2b8f062b6bd6ee345817866b3`.
- Initial branch/status: `main...origin/main`, clean.
- Task branch: `feat/modern-api102-telegram1311`.
- Git identity is configured. `gh auth status` verified the active GitHub account.
- P0 changes documentation only. Findings below describe the baseline, not fixes.
- User clarification: frontend skills do not apply to this Android task.

## Project and build

The repository contains one Android application module, `app`, Kotlin sources,
Android resources, bundled localization and obfuscation mappings, a Gradle
wrapper, release/version workflows, Python version-check scripts, and a Nix
development environment. There is no checked-in automated test source set.

| Item | Baseline |
| --- | --- |
| Application ID / namespace | `com.aoya.telegami` |
| Debug application ID | `com.aoya.telegami.debug` |
| Gradle | 9.4.1 |
| AGP | 9.2.1 |
| Kotlin / serialization plugin | 2.3.21 |
| KSP | 2.3.4 |
| Java target / toolchain | 21 |
| compileSdk / targetSdk / minSdk | 37 / 35 / 26 |
| libxposed API | `compileOnly`, 102.0.0 |
| libxposed service | `implementation`, 102.0.0 |
| KavaRef | 1.1.0 |
| Room | 2.7.1, KSP compiler |
| R8 | Disabled for both variants; rules file contains no module rules |

`app/build.gradle.kts` unconditionally loads `keystore.properties`, even for
debug/test tasks. This ignored file and the release key are absent locally.
The dependency repository `https://api.xposed.info/` remains configured;
its presence alone is not evidence of a Legacy API dependency.

Baseline execution of `gradlew.bat --version` failed before Gradle started:
`JAVA_HOME is not set and no 'java' command could be found in your PATH`.
JDK 21 and an Android SDK were not discovered in the standard installation
locations. This is an environment failure, not a compiler result. No baseline
APK, unit test, lint, or device success is claimed.

## Existing Modern API architecture

`XposedInit` already extends `io.github.libxposed.api.XposedModule`. It uses
`onPackageLoaded`, a modern `hook(Application.attach).intercept` callback,
`chain.proceed`, the package class loader, and remote preferences. The existing
architecture must be extended rather than replaced.

`Telegami.init` binds the Telegram context, remote configuration, local user
configuration, translations, resolver, class loader, and the Room database.
It runs after `Application.attach`. There is no target-version gate before
initialization or installation, no duplicate-install guard, and no outer
protection for Telegami initialization inside the attach callback.

The entry point isolates failures between feature installers. However, there
is no general success log or rollback of an installer that fails after
installing some of its methods. Multiple methods in one feature can still
prevent subsequent methods of that feature from being installed.

All 17 hook installers use `XposedInterface` and the modern
`hook(...).intercept { chain -> ... }` mechanism. None specifies a custom hook
priority or exception mode; they inherit framework defaults. Before logic,
replacement results, and after logic are implemented with `chain.proceed`.
No Legacy hook imports, reflective Legacy bridge calls, XposedHelpers,
XC_MethodHook, XposedBridge, or resource-hook implementation were found.
Some callbacks rely on ineffective try/catch around constant assignments,
and original-method exceptions are generally allowed to propagate.

### Module metadata and Android entry

| File | Finding |
| --- | --- |
| `META-INF/xposed/java_init.list` | Correct: `com.aoya.telegami.XposedInit` |
| `META-INF/xposed/module.prop` | `minApiVersion=101`; target 102, static scope true |
| `META-INF/xposed/scope.list` | 12 packages, including Beta, Web, and forks |
| `AndroidManifest.xml` | No five deprecated Xposed metadata entries |
| `AndroidManifest.xml` | Application label present, application description absent |
| `AndroidManifest.xml` | MainActivity and launcher alias are retained |
| `AndroidManifest.xml` | `MODULE_SETTINGS` category is an intent category, not an API call |

## Complete feature inventory and hook review

No feature below may be removed to fix the message markers. Narrowing supported
packages is explicitly required by the task and is distinct from deleting
feature implementations.

| Installer / support object | Existing behavior and gate |
| --- | --- |
| `Settings` | Capture `UserConfig.setCurrentUser` into module user settings |
| `LocaleController` | Reload module translations after `applyLanguage` |
| `MarkMessages` | Two independent config keys, chat cache load, time-area marker rendering |
| `AllowScreenshots` | Clear `FLAG_SECURE` in Window and WindowManager paths; unconditional |
| `ProfileDetails` | Copy username and user/chat/topic IDs from profile menu |
| `HideUpdate` | Beta/Nekogram update interception; no official Telegram branch |
| `Privacy` | Hide typing, online status, private-chat/channel read receipts |
| `HideStoryViewStatus` | Conditionally suppress story-read status |
| `ShowDeletedMessages` | Intercept storage deletion and suppress delete notifications; installer lacks its feature gate |
| `ModifyDeletedMessagesMenu` | Nested installer restores copy/delete actions for preserved messages |
| `PreventSecretMediaDeletion` | Conditional preservation and local media download menu |
| `UnlockChannelFeatures` | Conditionally bypass local no-forward UI restrictions |
| `AllowSaveVideos` | Conditionally return true from story screenshot/save permission |
| `DisableAds` | Conditionally suppress sponsored messages and proxy promo; local method isolation |
| `FakePremium` | Conditional local `isPremium` replacement |
| `BoostDownload` | Read integer level and change download chunk/request parameters |
| `ApplyTheme` | Conditional local profile/name color and emoji persistence |
| `Globals` (support) | IO coroutine scope, deletion permission flag, deletion state cache |

UI features also include dark theme, black dark theme, follow-system accent,
theme colors, launcher visibility, home/status pages, and localized settings.
`FeaturesFragment.SettingsPreferenceDataStore` writes distinct
`MarkMessagesDeleted` and `MarkMessagesEdited` keys from a multi-select setting.

## Configuration communication

`TelegamiApp` initializes `PrefManager`, which registers a modern
`XposedServiceHelper.OnServiceListener`. The settings process writes
`service.getRemotePreferences("features")` after checking `PROP_CAP_REMOTE`.
The hooked process receives the read-only preferences through the module API.
There is no XSharedPreferences solution or attempted hooked-process write.

Risks:

1. `Config.init` snapshots Boolean preferences into an ordinary mutable map.
   It registers no change listener and never updates this map.
2. `MarkMessages` adds `by lazy` values for both switches and their OR, so even
   fixing Config alone cannot make those switches take effect live.
3. Many other feature installers check their flag only when installing.
   Changing them still requires restarting Telegram unless installation and
   callback gating are deliberately changed later.
4. `PrefManager` writes become no-ops when the service is not bound; the UI
   receives no failure result. Reads also fall back to disabled values.
5. Service death clears the reference; actual rebind/persistence behavior
   needs device verification with the framework installed.

## Deletion capture, storage, and UI

`ShowDeletedMessages` resolves `deleteMessages` by 12 arguments and
`markMessagesAsDeletedInternal` by 5 arguments. The latter assumes argument
0 is dialog ID and argument 1 is an ArrayList of message IDs, with a Nagram
exception. These are baseline assumptions, not 13.1.1 evidence.

It queries Telegram `messages_v2` before proceeding, groups IDs by uid,
delegates preservation to Globals, and suppresses controller/notification
deletion paths. `NotificationCenter.MESSAGES_DELETED` is hard-coded to 7.
The actual target signatures, return types, notification constants, execution
threads and ordering must be established with the target APK and DexSQL.

Specific issues:

- The query cursor is never disposed on the normal path.
- An unavailable cursor returns null from the interceptor rather than
  delegating to the original deletion method.
- `shouldDelete = shouldDelete && handleDeletedMessages(...)` short-circuits
  once false, skipping subsequent dialog groups in the same batch.
- The process-wide one-shot `allowMsgDelete` flag cannot identify the account,
  batch or dialog of the corresponding deletion.
- Notification and dialog suppression are broader than an individual batch;
  `markDialogMessageAsDeleted` is conditionally installed once.
- Feature key `ShowDeletedMessages` is present in settings but not checked by
  its installer, so the displayed switch does not control that path.

Room database `telegami`, schema version 1, contains only `DeletedMessage`.
The composite primary key is `(id, dialogId)`; DAO supports suspend insert,
ignore-conflict batch insert, lookups, and deletion. The original message stays
in Telegram storage; Room stores marker metadata, not a message-body backup.
Do not introduce a second database.

`Globals` uses `SupervisorJob + Dispatchers.IO` and a ConcurrentHashMap keyed by
`(dialogId, messageId)`. Account ID is absent from the entity, DAO and cache,
so accounts sharing those two IDs can collide. `insertAll(IGNORE)` preserves
the first database timestamp while the cache is replaced with a fresh object;
repeated delete events can therefore show a different timestamp after restart.

`createView` schedules cache loading without a completion signal or main-thread
rebind. Saving a deletion also lacks a UI refresh. First render before IO
completion may remain unmarked until Telegram happens to remeasure the cell.
Parallel loads/updates can race; no per-dialog load state or account isolation
is implemented.

## Edited-state and marker rendering

`MarkMessages` finds `ChatMessageCell.measureTime` by name alone and treats
argument 0 as MessageObject. The wrappers read/write `currentTimeString`,
`timeTextWidth` and `timeWidth`. `findMethod` chooses the first matching name
and optional parameter count, without verifying parameter/return types.

`MessageHelper.replaceWithIcon` searches the localized `EditedMessage` label
in the time string. It does not read edit_date or prove the message's edited
state. The TLRPC wrapper exposes flags/date/media/ttl but no edit_date accessor.
`MESSAGE_FLAG_EDITED` exists but is unused by the marker hook.

Additional confirmed source-level problems:

- `DeletedMessage.createdAt` is milliseconds; `createDeletedString` multiplies
  it by 1000 as if it were seconds.
- `Telegami.getDrawableResource(name)` ignores name and always returns
  `msg_gallery`; delete/edit width lookup therefore measures the wrong asset.
- Measuring text with Paint does not account for replacement-span widths.
- Width adjustments depend on nonzero plain-text delta and use a heuristic
  `5 * delta / 6`, risking clipping and incorrect send-status placement.
- Deletion rendering replaces Telegram's time sequence instead of preserving
  its original spans; edit replacement converts to String and loses spans.
- The edited label/icon spans are cached; locale/font/theme changes are not
  fully reflected.
- Recycled cell correctness and RTL/media layouts have no tests.

## Resolver and target identity

`ResolverManager` chooses a mapping by package name only and falls back to
identity names on failure. It does not check mapping version. The bundled
`obfuscation_mappings/telegram.json` explicitly declares version `12.10.3`.
The secret-media hook also contains a 12.10.3-specific `org.telegram.ui.ao.t0`
path. Neither is valid evidence for Telegram 13.1.1.

At baseline there is no runtime package-version check, versionCode allowlist,
APK fingerprint, signer verification, DEX count, or target provenance record.

## Required change areas, by phase

| Phase | Files / work |
| --- | --- |
| P1 | Metadata, Manifest description, Constants, XposedInit, Config, remote preference handling, optional R8 rules |
| P1/P2 prerequisite | Real official target APK and verified version/build/signing metadata |
| P2 | DexSQL installation, target identity and method/caller/Smali evidence; resolver/mapping review |
| P3 | ShowDeletedMessages, Globals, entity/DAO migration if needed, UI rebind mechanism |
| P4 | MarkMessages, MessageHelper, MessageObject/TLRPC and cell wrappers |
| P5 | Independent method installation, duplicate guards, exception/logging behavior |
| P6 | Four switch combinations, deletion/edit/stress/multi-account/device matrix |
| P7 | Debug/release APKs, signing, build logs, archive checks, SHA-256 and final reports |

## P0 acceptance and blockers

P0 source audit is complete; there are no production-code changes in this phase.
The audited metadata, all hook installers, Room/DAO/cache, configuration paths,
wrappers, mappings, manifest and build configuration were inspected.

Validation: repository inventory and static searches completed;
`git diff --check` must pass before committing this document. Baseline build
could not start because JDK is absent. No Android device is attached.

Searches of the workspace, Desktop, Downloads and Codex attachment directory
found no identifiable target Telegram 13.1.1 APK or comparison 12.10.3 APK.
Other unrelated APKs in Downloads were not treated as Telegram evidence.
The target applicationId, versionName, versionCode, SHA-256, DEX count and
13.1.1 method signatures remain unverified. No target APK data may be invented.

P1 can make framework/configuration changes, but cannot finish target-version
allowlisting without the real APK. P2 and later target-dependent phases must
remain pending until the required evidence is available.
