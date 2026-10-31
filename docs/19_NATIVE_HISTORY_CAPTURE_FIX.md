# Native history viewer and independent capture

Date: 2026-10-31. Branch: `fix/native-edit-history-capture`.
Baseline: `efbba0d33ca3bafc238865858b3061a60038ed7a`.
Git identity and GitHub authentication were verified; the initial tree was clean.
Capture checkpoint: `ef66b01` (JVM tests, debug assembly, migration checks pass).

## Findings and NagramX alignment

Reference NagramX commit: `2db685af00a4352c877ecf96474cbf0494284715`.
Relevant files under `TMessagesProj/src/main/java/`:

- `com/radolyn/ayugram/ui/AyuMessageHistory.java`: native ActionBar, expandable
  search, chat wallpaper, chronological NekoMessageCell bubbles; starts at end.
- `org/telegram/messenger/MessagesStorage.java`: the `load_type == -2` branch
  deserializes old `messages_v2.data` and calls `onMessageEdited` before overwrite
  and media deletion.
- `com/radolyn/ayugram/messages/AyuMessagesController.java`: compares revisions
  and persists the previous content. Opening the viewer is not a prerequisite.

The former Telegami screen was an Android card list, not native Telegram bubbles.
The former capture hook did run before overwrite like NagramX, but only covered
one edit runnable, did not establish initial versions during ordinary ingestion,
queried only `messages_v2`, and incorrectly rejected nonzero `ttl_period`.
`ttl_period` is chat auto-delete retention, not a self-destruct-media timer.

No write from the history viewer exists in either the old or new Telegami code.
Therefore the reported dependency on opening it first is a runtime symptom, not
a proven causal explanation. The supplied older log confirms installation but
does not contain the new capture counters. Fresh device logs are required to
prove which path/condition caused the user's missing revisions.

## Capture changes

Both BEFORE interceptors run synchronously on the account's storageQueue:

| Host method | Parameters and return | Capture scope | Evidence |
| --- | --- | --- | --- |
| `org.telegram.messenger.MessagesStorage.lambda$putMessages$238` | `(int, TLRPC.messages_Messages, long, long, int, int, boolean): void` | arg 0 mode=0; arg 4 is load type, including -2 edits and normal message-page ingestion | classes.dex 43033; `edit_storage.smali` |
| `org.telegram.messenger.MessagesStorage.putMessagesInternal` | `(ArrayList, boolean, boolean, int, boolean, int, long): void` | arg 0 incoming owners; arg 5 mode=0 | classes.dex 43214; `put_messages_internal.smali`, `capture_calls.txt` |

Dispatch: MessagesController's ordinary edit updates call the batch overload with
mode 0/load type -2. Normal incoming writes pass through putMessagesInternal.
Both paths now read old data before the native operation and store old/new
snapshots. Normal ingestion stores an initial snapshot even with no old native
row. Old lookup tries `messages_v2`, then `messages_topics`, scoped by dialog and
message ID inside the account-owned database. The Room key still includes the
actual account user ID, dialog ID and message ID, never just an account slot.

Room schema, retention/version settings, entity/TL preservation, adjacent dedup,
A -> B -> A preservation and existing deletion/edited markers are unchanged.
Secret/service/self-destruct messages remain excluded; normal auto-delete chat
messages are no longer excluded. Scheduled/quick-reply storage modes are not
treated as normal dialog history. No server requests or permissions are patched.
One old-row decode or snapshot failure no longer discards the incoming version;
one failed write does not prevent later messages or the original Telegram call.

New diagnostic examples (no message contents):

```text
[EditHistory] Capture ingest slot=0 messages=1 old=0 snapshots=1 failures=0
[EditHistory] Capture batch/-2 slot=0 messages=1 old=1 snapshots=2 failures=0
```

`snapshots` counts submitted snapshots, NOT newly inserted rows; the DAO dedups.
Capturing all ingested messages increases storageQueue work. Large-page latency
and preview IO performance require on-device measurement; no performance pass is
claimed. Missing versions before installation/enablement cannot be reconstructed.

## Native viewer changes

The card layout and Android SearchView have been removed. The screen now uses:

| Host contract | Complete descriptor | DEX index |
| --- | --- | --- |
| Native title bar factory | `Lorg/telegram/ui/ActionBar/r2;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/l;` | classes3.dex 24569 |
| Menu factory | `Lorg/telegram/ui/ActionBar/l;->i()Lorg/telegram/ui/ActionBar/z;` | 24047 |
| Search item | `Lorg/telegram/ui/ActionBar/z;->a(II)Lorg/telegram/ui/ActionBar/x0;` | 25046 |
| Search initializer | `Lorg/telegram/ui/ActionBar/x0;->k()V` | 24929 |
| Search toggle | `Lorg/telegram/ui/ActionBar/x0;->L(Z)Z` | 24905 |
| Search title visibility | `Lorg/telegram/ui/ActionBar/l;->w(Z)V` | 24115 |
| Wallpaper | `Lorg/telegram/ui/ActionBar/n6;->t0()Landroid/graphics/drawable/Drawable;` | 24348 |
| Detached message | `Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V` | classes.dex 40141 |
| Native bubble | `Lorg/telegram/ui/Cells/u1;-><init>(Landroid/content/Context;I)V` | classes3.dex 26873 |
| Bubble binding | `Lorg/telegram/ui/Cells/u1;->V3(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V` | 26984 |
| Complete text rendering | `Lorg/telegram/ui/Cells/u1;->setFullyDraw(Z)V` | 27244 |
| Service/date label | `Lorg/telegram/ui/Cells/x0;->setCustomText(Ljava/lang/CharSequence;)V` | 27686 |

All remaining accessor/field descriptors, parameters and returns are recorded in
`artifacts/dexsql/history-native-1310/methods.txt` and `fields.txt`.
The search flag `x0.F:Z` is evidenced by the guard in `init_search.smali`:
R8 has inlined the source setIsSearchField setter. It is set only on the new
history toolbar's search item, never on the live chat toolbar.
The title-bar factory uses the originating fragment's resource provider and
native theme colors. Resource inspection confirms `ic_ab_back` (0x7f080209) and
`outline_header_search` (0x7f0806e9), the same search icon used by NagramX.
`u1.M7:Z` maps to isChat via the exact needDrawAvatar predicate in
`need_draw_avatar.smali`; it is enabled as in NekoMessageCell. A no-op host
ChatMessageCellDelegate proxy returns false/zero/null and performs no actions.

Each stored owner TL is decoded into a detached host MessageObject with
`edit_hide=true`. The live owner is never mutated. Native cells render text,
entities and caption/media structure. Native service labels show version and
full edit/message time. The screen starts at the newest row, supports native
expandable search and missing-original notices. Local saved photo previews take
priority and can be enlarged. Touches cannot send, reply, vote, play media or
start a manual download. Native rendering may use its normal authorized cache/
media loading path; this is not a module-controlled recovery/download service.
No current photo is substituted for an unavailable historical photo.

Important difference: the container remains a fullscreen Android Dialog and
ListView, NOT NagramX's NekoDelegateFragment/RecyclerListView. Its native cells
replace the former imitation cards, but pixel-identical NagramX navigation,
glass effects, live notification refresh and revision context menus
are not claimed. Video/file playback remains out of scope. Stored previews
retain the existing disk/decoded-image limits. A per-row render failure logs an
error and exposes formatted fallback text instead of crashing the host.
Management App UI and config keys have not been changed.

## Reproduction and validation

```powershell
python scripts/analyze_history_native.py --dexsql "$env:LOCALAPPDATA\DexSQL\v0.1.1\dexsql.exe"
python scripts/verify_history_migration.py
```

The APK evidence is still the supplied `.web` 13.1.0 / 72299, SHA256
`4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`.
The user waived minor-version differences; this is not separate 13.1.1/Play
DEX evidence. Runtime reflection must match or the feature is unavailable.

Build tasks: `:app:testDebugUnitTest :app:assembleDebug`, JDK 21, in-process
nonincremental Kotlin compilation. Logs: `artifacts/validation/history-capture-fix.log`
and `artifacts/validation/history-native-ui.log`. Unit coverage includes an
initial-ingestion -> edit -> missing-native-row -> edit -> reload sequence with
no viewer involved, corrupt old TL, failed sink with subsequent-message recovery,
auto-delete-vs-self-destruct policy, DAO scoping/reversions and entity hashes.
These are JVM tests with an in-memory DAO, NOT Android Room/LSPosed tests.

Final local results: **59 tests, 0 failures/errors/skips**, debug assembly passes,
desktop migration checks pass, APK v2 signature verifies. Modern API 102 metadata,
entrypoint and both Telegram scopes were checked inside the rebuilt APK.
Full Android lint was not rerun; no claim is made about the pre-existing lint
findings. Debug APK size: 17,700,176 bytes. SHA256:
`a006b008001c66873807e4e459f2464c267a5dbb79b88662ada477285ff27937`.
Artifact: `app/build/outputs/apk/debug/app-debug.apk` (not committed).
Signature log: `artifacts/validation/history-native-signature.log`.

`adb devices -l` reports no attached device. All native layout, reflection,
storageQueue, Room persistence after Telegram restart, capture latency, photo
rendering and marker/forwarding regression tests remain **UNVERIFIED**.

## Device acceptance and logs

1. Install the rebuilt debug APK, keep the existing LSPosed scope and history
   feature enabled, then force-stop/reopen Telegram so the new hooks are loaded.
2. Without opening history, receive/send a new text A, edit A -> B -> C, then
   open history for the first time. Expect A/B/C and latest-at-open.
3. Repeat for a topic group, a chat with auto-delete, rich text and photo caption.
4. Restart Telegram, query the same message, test search/back/long text, local
   photo enlargement, multiple accounts and original deletion/edit markers.
5. Include one old cached message edited without opening history first. Missing
   pre-install revisions must not be presented as recovered originals.

Start logging BEFORE Telegram launch; reproduce and press Ctrl+C:

```powershell
& "$env:LOCALAPPDATA\TelegamiBuildTools\AndroidSdk\platform-tools\adb.exe" logcat -v threadtime '*:S' 'Telegami:V' 'LSPosedFramework:V' 'AndroidRuntime:E' | Tee-Object "$env:USERPROFILE\Desktop\telegami-history.log"
```

Also export the module's LSPosed log when logcat has no installer/capture entries.
Provide the history screenshot, Telegram package/version, feature state and
whether A was sent before/after module enablement. Logs can contain unrelated
module information; inspect them before sharing.

## Modified files

- `core/TelegramHistoryResolver.kt`: ordinary ingestion contract and TL decode.
- `core/TelegramHistoryUiResolver.kt`: exact native UI contracts, detached owners
  and read-only delegate (paths relative to `app/src/main/java/com/aoya/telegami/`).
- `hooks/messages/MessageEditHistoryHook.kt`: independent pre-write capture.
- `hooks/messages/HistoryCapturePipeline.kt`: isolated per-message capture stages.
- `hooks/messages/HistorySnapshotFactory.kt`: correct auto-delete policy.
- `hooks/messages/MessageHistoryViewer.kt`: immutable TL passed into native cells.
- `hooks/messages/MessageHistoryScreen.kt`: native chat-style presentation.
- `app/src/test/java/com/aoya/telegami/hooks/messages/MessageHistoryDaoTest.kt`:
  viewer-independent sequences and failure isolation.
- `scripts/analyze_history_native.py`, `artifacts/dexsql/history-native-1310/`:
  repeatable exact method/field/call-chain evidence.
- This report and the supersession note in `12_EDIT_HISTORY_IMPLEMENTATION.md`.
