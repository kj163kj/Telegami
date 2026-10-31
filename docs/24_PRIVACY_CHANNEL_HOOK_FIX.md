# Channel Restrictions And Privacy Hooks

Date: 2026-10-31.
Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `fix/privacy-channel-live-hooks`.
Baseline: `f7a39e574a7668450f09cca27d2bc60c1ee7e58c`.
Git identity/GitHub authentication checked; initial worktree clean.

## Reported Failures And Findings

The user reported ineffective channel unlocking, online hiding and story-view
hiding. No new device log accompanied this report. The following code/DEX
findings do not by themselves establish device acceptance:

- Channel/story installers returned immediately when the preference was false
  at process startup. Later Remote Preferences changes could not add the hooks.
- Channel unlocking selected a method by name without disambiguating both
  `isChatNoForwards` overloads. Native menus additionally inspect
  `Message.noforwards` directly, bypassing that helper entirely.
- Story hiding still looked for `sg.o5.V`, from the old mapping. The supplied
  official APK implements that logic in `xg.o5.V`. A separate `xg.h5.r` also
  produces a story-view request and was never covered.
- Online hiding previously modified only future status requests inside the
  general privacy hook. Enabling the preference did not queue an offline
  update for an already-online account. The self-profile text adjustment
  depended on old profile mappings and was only installed at startup.
- A stale UI mapping failure in the old privacy installer could also label
  that installer failed after its networking hook had already been installed.
  Without fresh logs, this is a risk, not a confirmed cause of this report.

## Behavior

All three hooks now install independently of their toggle values and consult
the existing Remote Preferences keys on every relevant call. Keys/defaults
are unchanged: `UnlockChannelFeatures`, `HideOnlineStatus`,
`HideStoryViewStatus`, all false by default. No management UI changes.

Channel unlocking covers both exact permission overloads. The native message
menu and `canForwardMessage()` see a temporary cleared message-protection bit
only during eligibility evaluation. Other native checks (secret media, ads,
special types, etc.) continue running. The flag is restored in `finally`,
including nested callbacks and exceptions. No cached/persisted chat protection
is cleared and no protected-forward server request is rewritten.

Custom repeat/copy/forward paths still query authoritative protection using a
thread-local bypass for the module's local UI hooks. This keeps protected
sources on their existing copy-send path, rather than inadvertently submitting
a restricted ordinary forward after unlocking the menu. The bypass does not
affect other threads.

The channel toggle affects local menus/eligibility. It cannot grant server-side
rights or promise that an ordinary forward from a protected source is accepted.
The existing separate sourceless-forward feature remains available. Screenshot
handling remains with the existing screenshot hook; it is not rewritten here.

Story hiding suppresses both exact story-view producers before they update
local read/viewed state or create/send their corresponding requests. Turning
it off immediately passes future calls through. Already submitted view records
cannot be removed retroactively. This does not activate Telegram premium
stealth mode or change server privacy settings.

Online hiding has a separate exact serializer hook for
`TL_account.updateStatus`. With the toggle on, each serialized request writes
`offline=true`; the original Java field is restored after serialization. The
host's normal object-size and network serialization flow still runs. The
general read-receipt/typing hook no longer controls this feature.

At install (if enabled), and on an enabling Remote Preferences event, the
module uses Telegram's normal `sendRequest` to queue an offline status for each
activated local account. The account count comes from native
`UserConfig.getMaxAccountCount()`; unused slots are skipped and one account's
error does not prevent another's update. Enqueued requests are not proof of
server delivery. Disabling leaves future presence requests unchanged; it does
not force an online update while Telegram is in the background.

The self-profile "offline" text substitution is removed: it was cosmetic and
could not prove what another account sees. Test presence from another account.
Other logged-in devices, server processing and actions outside status updates
can affect observed presence; this hook makes no claim of global invisibility.

## Hook Contracts

Input APK is the previously supplied official website 13.1.0 / 72299, with the
existing minor-version waiver. Reproduce using:

```powershell
python scripts/analyze_privacy_channel.py --dexsql "$env:LOCALAPPDATA/DexSQL/v0.1.1/dexsql.exe"
```

Evidence directory: `artifacts/dexsql/privacy-channel-1310`.
The SQL output records complete descriptors, including parameter/return types.

| Hook | DEX/method | Signature | Timing |
| --- | --- | --- | --- |
| Dialog protection | classes.dex / 41539 | `MessagesController.isChatNoForwards(long):boolean` | Entry, return false only when enabled and outside original-check scope |
| Chat protection | classes.dex / 41540 | `MessagesController.isChatNoForwards(TLRPC.Chat):boolean` | Same |
| Message eligibility | classes.dex / 40183 | `MessageObject.canForwardMessage():boolean` | Native execution with temporary `Message.noforwards=false` for group/channel messages |
| Menu fill | classes3.dex / 49877 | `org.telegram.ui.ko.q8(MessageObject,ArrayList,ArrayList,ArrayList):void` | Existing menu Hook wraps native call; restores before module action visibility checks |
| Story read | classes4.dex / 20936 | `xg.o5.V(TL_stories.PeerStories,TL_stories.StoryItem,boolean):boolean` | Entry, return false when enabled |
| Story view count | classes4.dex / 20557 | `xg.h5.r(int):boolean` | Entry, return false when enabled |
| Presence serialization | classes3.dex / 19906 | `TL_account.updateStatus.serializeToStream(OutputSerializedData):void` | Temporary offline override before native serialization, restored after |

`status_producer.smali` shows `MessagesController.updateTimerProc()` creating
online/offline requests and sending them through native `sendRequest`.
`send_request_queue.smali` shows dispatch onto Telegram's stage queue.
`send_internal.smali` shows sizing, serialization and native network dispatch.
`status_serialize.smali` writes the constructor and the `offline` Boolean.

`story_mark_read.smali` shows the local read cache update followed by creation
of `TL_stories_readStories`. `story_increment.smali` shows a separate viewed-ID
cache and creation of `TL_stories_incrementStoryViews`. Their shared viewer
caller is `xg.m2.b(android.graphics.Canvas):void` (method 20764).

Modern API 102 `deoptimize` is attempted for the verified story viewer caller,
known channel menu callers (`ko.D9`, `q8`, `L7`, the dialog overload), and the
presence serialization callers (`TLObject.getObjectSize`, `sendRequestInternal`)
to account for compiled/inlined calls. No Legacy API is introduced.

## Diagnostics And Device Retest

New log sources: `UnlockChannelFeatures`, `HideOnlineStatus`,
`HideStoryViewStatus`; existing `Configuration`, `HookInstall` and
`TelegramVersion` remain useful. Install/hit logs are sent to the LSPosed logger
in Release as well as Debug and do not include message contents.

After updating the module APK, force-stop and reopen the scoped Telegram once
to load new Hook code. Then test each toggle from off to on and back without
restarting Telegram. Reopen the chat/menu after changing the channel toggle.

Use a test channel/group with protection to inspect native copy/save options;
also regress Repeat and sourceless forwarding with unlocking on and off.
Use another account to inspect online state, and a story posted by that account
to inspect viewer records. Include both normal story viewing and channel-story
viewing, multiple local accounts, and network reconnect. A record created
before enabling the toggle is not a valid suppression test.

No device is attached in this environment. Runtime acceptance remains
**UNVERIFIED** until these checks are performed.

```powershell
adb logcat -c
adb logcat -v threadtime > telegami-privacy-full.log
# Reproduce startup, preference toggles and each feature; stop capture with Ctrl+C.
Select-String -Path .\telegami-privacy-full.log -Pattern 'Telegami|UnlockChannelFeatures|HideOnlineStatus|HideStoryViewStatus|Configuration|HookInstall|TelegramVersion' |
    Set-Content -Encoding utf8 .\telegami-privacy-filtered.log
```

Also export the LSPosed module log. Release diagnostics explicitly target that
logger, so Android logcat alone may not contain all events.

## Build And Verification

Validation on 2026-10-31:

- `:app:testDebugUnitTest :app:assembleDebug :app:assembleRelease`: passed.
  19 suites, 88 tests, zero failures/errors/skips. Six new tests exercise scoped
  state restoration, nested calls, exceptions and thread-local bypass isolation;
  they do not execute LSPosed hooks or verify Telegram on a device.
- `scripts/verify_official_targets.py` with both APKs: passed official-only
  scope/mapping checks, Modern API 102 metadata and preserved NagramX icon.
- `scripts/verify_history_migration.py`: passed deletion preservation, retention,
  composite-key isolation, database reopen and generated Room schema comparison.
  Android Room migration on-device remains unverified.
- Release `apksigner verify --verbose --print-certs`: passed, v2 signature,
  RSA 4096. Certificate SHA-256:
  `bc80329b9ba7c8c8da2bc2b57057544d7b967477038f2037a2fb332d5a0186d7`.
- Release `zipalign -c -v 4`: passed. `aapt2 dump badging` confirms
  `com.techsky.telegami`, version `3.1.3` / `30005`, without the debuggable flag.
- `adb devices`: no attached devices; all three runtime acceptance tests remain
  **UNVERIFIED**.

Build log: `artifacts/validation/privacy-channel-build.log`.
Signature log: `artifacts/validation/privacy-channel-release-signature.log`.
Logs and APKs remain local ignored artifacts.

| APK | Bytes | SHA-256 |
| --- | ---: | --- |
| `app/build/outputs/apk/release/app-release.apk` | 13023046 | `7d705da395d5006f7efd7f35fb1881888af6d25855d91d85a134481171fec3ba` |
| `app/build/outputs/apk/debug/app-debug.apk` | 17776776 | `6ae84dc258f89b35a281cfe8b14679c1eb6f855332925cfa1776f89447e905d2` |

The existing Android Gradle/Kotlin deprecation warnings and pre-existing
unchecked/deprecated source warnings remain. No management UI, configuration
keys/defaults, database schema or target package/version policy changed.
