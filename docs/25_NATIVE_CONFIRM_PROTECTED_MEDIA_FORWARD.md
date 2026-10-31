# Native Confirmations And Protected Media Forwarding

Date: 2026-10-31.
Workspace: `C:/Users/Administrator/Desktop/Telegami`.
Branch: `fix/native-confirm-media-forward`.
Baseline: `38de7159bba175cf1a30acb1aa33cb101f534768`.
Git identity and GitHub login verified; initial worktree clean.
First stage: `cd4b3c3` (native confirmations, Debug build and existing JVM tests passed).

## Requested Behavior

Repeat and sourceless-forward confirmations now use Telegram's native
`AlertDialog.Builder` and the current chat's resource provider. The same native
dialog implementation is used for large-file consent and download waiting.
No management-App layout, configuration key or database schema changes.

The user's follow-up narrows local downloading to protected sources:

| Source/content | Transfer |
| --- | --- |
| Unrestricted source, any media size | Keep the existing remote photo/document reference; do not download |
| Protected source, text only | Copy text/entities without a download |
| Protected photo/document, 1 through 104857600 bytes inclusive | Reuse a complete local file or download it, then upload it as new media |
| Protected photo/document above 104857600 bytes | Ask before local preparation; yes waits for the file, no sends text/Caption only |
| Protected media with unknown size | Ask rather than silently start an unbounded automatic download |

The threshold is 100 MiB (100 * 1024 * 1024 bytes), displayed explicitly in the
dialog. Large-file consent is independent of `enable_copy_confirmation`: turning
off the routine confirmation does not authorize a large download. Even a cached
file above the threshold receives this choice.

If a declined media item has no text/Caption, it is omitted. If neither a message
nor a picker comment remains, the operation reports that there is no text to
forward. Caption entities are retained when sending Caption as plain text.
Download failure never silently changes a media send into a text-only send.

## Sending And Cancellation

The selected message version is detached before asynchronous work. Account
identity, originating chat identity, activity lifetime and the relevant feature
toggle are checked again before sending and while waiting.

Only protected media enters `FileLoader`. The module subscribes to the
account-specific `NotificationCenter.fileLoaded` and `fileLoadFailed` events
before starting the native download, matches both account and attachment name,
and rechecks the file after subscription to cover a completion race. A readable,
nonempty regular file is required; known lengths must be complete. Existing
complete files in Telegram's attachment/cache paths are reused.

Photos use `ImageLocation.getForPhoto` and native `FileLoader.loadFile`;
documents (including videos, audio and files) use the document overload. Cache
type 1 keeps the requested file in Telegram's cache. This is a local cache save,
not an explicit export to a user-selected gallery/download directory.

After download, Telegram's `generatePhotoSizes` prepares fresh photo data on a
worker thread. Detached document metadata retains MIME type, filename and media
attributes, but its remote id/access hash/file reference/DC are cleared; remote
thumbnails are removed. Native `sendMessage(SendMessageParams)` then selects its
normal upload branch (`access_hash == 0`). The source message/media is not
modified. Each destination receives detached media data.

Local generated photos use an in-memory field copy, including PhotoSize's
client-only FileLocation and independent size lists/byte arrays. Ordinary TL
encoding omits these local file locations; it is used only for remote/source
snapshots. `photo_size_serialization.smali` and
`generate_photo_local_fields.smali` document this distinction.

Unrestricted media retains the existing remote identity, file reference and
parent object. There is no automatic local-download fallback for a stale remote
reference on an unrestricted source.

All selected items are prepared, and all destination jobs are built, before
queuing any message or comment. Native per-account frozen state, destination
write/media/text permissions and topic routing remain enforced. The module
does not implement MTProto or rewrite a protected forward request.

The destination chat opens before preparation, retaining the existing behavior
on cancellation, preparation failure and send failure. A session is consumed
before native navigation/send, so duplicate picker callbacks or later failures
cannot resend an earlier destination. Cancelling a confirmation before
submission allows selecting again.

The waiting dialog can cancel preparation. Cancellation, download failure,
activity destruction or a disabled feature detaches observers and prevents late
callbacks from sending. There is no fixed download duration limit. Cancelling
the module's wait does not cancel a shared Telegram download that another part
of the client might still use.

## Native Forward Button

The Modern API 102 hook on `org.telegram.ui.ko.v(...)` runs at the native forward
picker's submission boundary:

1. If `UnlockChannelFeatures` is off, use Telegram's original implementation.
2. Read the same single-message/album/multi-selection sources as native `v`.
3. Check real source protection outside the module's UI permission overrides.
4. If all sources are unrestricted, use Telegram's original implementation.
5. If any source is protected, reuse the sourceless-forward preparation and
   sending logic with the existing native picker/destinations.

This path is authorized by `UnlockChannelFeatures` and works even when the
separate `enable_message_copy` menu action is disabled. Routine confirmation
still follows `enable_copy_confirmation`. No second recipient picker is opened.
After navigation, the native forward-selection fields are cleared.

Native source extraction covers `g5`, album `h5.messages`, and the ordered
`V5` multi-selection arrays, including migrated-dialog messages. It avoids the
editing-message path (`m5`). Weak picker keys hold only session state, preventing
a session value from retaining its own key.

## Exact Contracts And Evidence

The supplied official website APK is 13.1.0 / 72299, under the user's existing
minor-version waiver for the requested 13.1.1. Input SHA-256, SQL results and
method bodies are recorded under `artifacts/dexsql/local-forward-1310`.

Reproduce:

```powershell
python scripts/analyze_local_forward.py --dexsql "$env:LOCALAPPDATA/DexSQL/v0.1.1/dexsql.exe"
```

| Class | Method/signature | Use |
| --- | --- | --- |
| `org.telegram.ui.ActionBar.AlertDialog$Builder` | `(Context,j6)` constructor | Native dialog with chat theme |
| same | `l(CharSequence):void`, `g(CharSequence):void` | Title, message |
| same | `k(CharSequence,e2):void`, `h(String,e2):void` | Positive, negative buttons |
| same | `j(DialogInterface.OnDismissListener):void`, `o():f2` | Cancel cleanup, show |
| `org.telegram.ui.ActionBar.e2` | `i(f2,int):void` | Native button callback |
| `org.telegram.ui.ko` | `getResourceProvider():j6` | Current chat theme |
| same | `v(bz,ArrayList,CharSequence,boolean,boolean,int,int,og1):boolean` | Before native protected-forward submission |
| same | `ad(boolean):void` | Exit source selection after navigation |
| `org.telegram.messenger.FileLoader` | `loadFile(TLRPC.Document,Object,int,int):void` | Full document download |
| same | `loadFile(ImageLocation,Object,String,int,int):void` | Full photo download |
| same | `getPathToMessage(TLRPC.Message):File`, `getPathToAttach(TLObject,boolean):File` | Completed local/cache files |
| same | `getAttachFileName(TLObject):String`, `getClosestPhotoSizeWithSize(ArrayList,int):PhotoSize` | Download identity/full photo size |
| `org.telegram.messenger.ImageLocation` | `getForPhoto(PhotoSize,Photo):ImageLocation` | Photo download descriptor |
| `org.telegram.messenger.NotificationCenter` | `getInstance(int):NotificationCenter`, `addObserver(Delegate,int):void`, `removeObserver(Delegate,int):void` | Account-isolated completion/failure |
| `NotificationCenter$NotificationCenterDelegate` | `didReceivedNotification(int,int,Object[]):void` | Event, account, filename and completed File |
| `org.telegram.messenger.SendMessagesHelper` | `generatePhotoSizes(String,Uri):TL_photo` | New local photo metadata |
| same | `sendMessage(SendMessageParams):void` | Existing native remote/upload branch |

`methods.txt` and `fields.txt` contain complete DEX descriptors, including
primitive types and fully qualified class names. The native forwarding hook is
classes3.dex method 49940. Native dialog methods are 23269/23276/23277/23279/
23280/23281/23284. File download overloads are classes.dex 36681 and 36684.

`file_loaded_notification.smali` proves that native `fileLoaded` passes the
attachment name and final `File` after normal file loading. The paired failure
method provides the cancellation/failure event. `upload_branch_excerpts.smali`
contains explicitly marked, non-contiguous excerpts of classes.dex method
45704 showing the `access_hash` test and uploaded-media branches. No guessed
obfuscated class/method name or Legacy Xposed API is introduced.

## Validation And Device Retest

Final local validation:

- `:app:testDebugUnitTest :app:assembleDebug :app:assembleRelease`: passed.
  21 suites / 99 tests, zero failures/errors/skips. The 11 new tests cover
  threshold boundaries, unrestricted remote references, routing policy,
  partial/missing files, terminal-state races and local-photo field isolation.
  These are JVM tests, not execution of LSPosed/native Telegram interfaces.
- `scripts/verify_official_targets.py` with both final APKs: passed scopes,
  official mappings, Modern API 102 metadata and preserved NagramX repeat icon.
- `scripts/verify_history_migration.py`: passed local migration/retention/key/
  durability and generated Room schema checks.
- Both APK signatures verified. Release v2 signature / RSA 4096 certificate
  SHA-256: `bc80329b9ba7c8c8da2bc2b57057544d7b967477038f2037a2fb332d5a0186d7`.
- Release `zipalign -c -v 4`: passed. Badging confirms
  `com.techsky.telegami`, `3.1.3` / `30005`, no debuggable flag.
- Existing Gradle/Kotlin deprecation and pre-existing source warnings remain.

Build log: `artifacts/validation/local-forward-build.log`.
Signature log: `artifacts/validation/local-forward-release-signature.log`.
The stage-one dialog build log is `artifacts/validation/native-dialog-build.log`.
Logs/APKs are ignored local artifacts, not repository source.

| Final APK | Bytes | SHA-256 |
| --- | ---: | --- |
| `app/build/outputs/apk/release/app-release.apk` | 13039430 | `6eac41fdac407f220f5cc1606e6ebba26d26f0efb0b5fc71262504eecc1077e9` |
| `app/build/outputs/apk/debug/app-debug.apk` | 17776776 | `1cacbe99ae019b8c7c9bd2ee0d9a14f5af8c42c286d7d9af68fb706823a9daf9` |

No device is attached. All actual UI, download, upload and native forwarding
acceptance tests remain **UNVERIFIED**.

Install the matching Debug or signed Release package, then force-stop and
reopen the scoped Telegram once. Retest:

- Repeat and sourceless confirmations in Telegram light/dark and custom chat themes.
- Unrestricted photo/video/file both below and above 100 MiB: remote-reference
  branch, no module-initiated file download and no large-file prompt.
- Protected photo/video/file below the threshold: uncached and fully cached.
- Protected media exactly at the threshold and one byte above it.
- Above-threshold yes/no/Back, with and without Caption and rich entities.
- Network loss/failure, an empty/partial local file, download cancellation,
  repeated picker callbacks, feature disabled during download, destroyed activity.
- Protected native forward with unlocking on and message-copy action off; then
  unlocking off. Include a single message, album, multi-selection, multiple
  targets, normal forum topics and mono-forum destinations.
- Text/Caption-only fallback to a destination that permits text but forbids media.
- Original delete/edit markers, history viewing and capture, normal repeat/copy,
  and the existing privacy hooks.

Useful LSPosed `MessageTools` diagnostics:
`Installed native protected-forward bridge`, `Routing native protected forward`,
`transfer=remote protected=false`, `transfer=local`, `Waiting for protected media`,
`transfer=text-only by user choice`, `Sourceless forward queued`.
They include branch/count/size information, not message text.

Capture full logcat and export the LSPosed module log:

```powershell
adb logcat -c
adb logcat -v threadtime > telegami-forward-full.log
# Reproduce; stop capture with Ctrl+C.
Select-String -Path .\telegami-forward-full.log -Pattern 'Telegami|MessageTools|ProtectedNativeForward|HookInstall|TelegramVersion' |
    Set-Content -Encoding utf8 .\telegami-forward-filtered.log
```

Release diagnostics explicitly target LSPosed, so logcat alone may be incomplete.

## Limits

Local photos follow Telegram's native photo preparation and may be re-encoded;
they are not guaranteed byte-identical to the original. Protected albums/multi-
selections are copied in source order as separate new messages; album grouping
is not preserved on this copy path. Unrestricted native forwarding is unchanged.
Existing unsupported special/secret/self-destructing content stays unsupported.

Successful preparation/queueing is not a server-delivery acknowledgement.
Native upload/send errors still appear through Telegram's normal send UI.
Pending preparation is in-memory and is not resumed after process death.
The module never retries a partially queued batch automatically.
