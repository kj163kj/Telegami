# P2 prerequisite record: Telegram 13.1.1

Date: 2026-10-30 (Asia/Shanghai).
Status: DEX analysis resumed on the supplied 13.1.0 APK after user clarification.
P1 acceptance is still pending. This document records the actual inspected build.

User clarification: minor version differences may be ignored temporarily.
The supplied 13.1.0 APK is therefore accepted as an analysis input. The user also explicitly authorized both Android packages,
`org.telegram.messenger` and `org.telegram.messenger.web`. Both are now in scope.

## Supplied APK identity check

The user subsequently supplied `C:/Users/Administrator/Desktop/Telegami/Telegram.apk`.
Android SDK apkanalyzer and DexSQL MCP get_manifest independently report:

| Field | Observed supplied APK | Required target |
| --- | --- | --- |
| applicationId | `org.telegram.messenger.web` | `org.telegram.messenger` |
| versionName | `13.1.0` | `13.1.1` |
| versionCode | `72299` | Must come from the matching target APK |
| File size | 70,867,407 bytes | Not prescribed |
| DEX count | 4: classes.dex through classes4.dex | Must come from matching target |
| minSdk / targetSdk / compileSdk | 23 / 36 / 36 | Record actual target metadata |
| Native ABIs | arm64-v8a, armeabi-v7a, x86, x86_64 | Record actual target metadata |

APK SHA-256:
`4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`.

Signer certificate SHA-256:
`49c1522548ebacd46ce322b6fd47f6092bb745d0f88082145caf35e14dcc38e1`.

`apksigner verify --print-certs` returned exit code 0. Signature validity alone
does not independently establish official provenance. The verifier warned about
unsigned META-INF informational entries; those entries are not accepted as
authenticated build evidence.

DexSQL 0.1.1 opened the actual APK and returned the same manifest identity
through MCP. Its dataset was closed afterward. The summary request limited
permission rows to one; all identity fields above were present in full, and no
claim is made to have audited all permission entries.

Structured evidence, individual DEX hashes, server version and raw DexSQL
manifest response: `docs/evidence/supplied_apk_identity.json`.
Signature verifier output: `artifacts/validation/supplied-apk-apksigner.log`.

The input failed the original exact identity requirements. After the user's
minor-version waiver, analyze this actual 13.1.0 build and label its evidence
accordingly. Runtime package scope now includes both authorized Android distributions.
No business source code was changed during this identity check.

## Current target policy

The accepted analysis input is the supplied 13.1.0 website APK above. The exact
13.1.1 APK and a Play APK are not prerequisites for continuing this analysis,
following the user's patch-version and scope instructions. Evidence from this
input must not be relabeled as independent analysis of another build.

## DexSQL preparation completed

Executed the task's install command through the installed Node runtime:

```powershell
npx.cmd --yes skills add LSPosed/dexsql-release --skill install-dexsql --agent codex --global --yes
```

The actual Skills CLI destination is
`C:/Users/Administrator/.agents/skills/install-dexsql/SKILL.md`.
The skill was read and followed; installation of the skill alone was not
treated as installation of the MCP server.

Official DexSQL release `v0.1.1`:

- Binary: `C:/Users/Administrator/AppData/Local/DexSQL/v0.1.1/dexsql.exe`.
- Platform: Windows AMD64.
- SHA-256: `602105c98232120c14d6124fb33574f2f95f12e50e51d25b8834f893925f28d6`.
- Binary and accompanying LICENSE/LICENSE-AUXILIARY were checked against
  SHA-256 digests published by the official GitHub release API.
- `--version` and `mcp --help` passed.
- A temporary stdio MCP probe completed initialize and tools/list.
- Negotiated protocol: `2024-11-05`.
- Server version: `0.1.1+6ac7870875a519ec471e41c93fc86d80e8e2bce7`.
- Required tools `open_dataset`, `query`, and `decode` were present.
- The probe exited; no persistent listener or API key was introduced.

Added only `[mcp_servers.dexsql]` to the existing Codex config:
`C:/Users/Administrator/.codex/config.toml`.
The previous configuration was preserved at
`C:/Users/Administrator/.codex/config.toml.before-dexsql-20261030142024.bak`.
Other MCP servers/settings were retained.

The binary/protocol works locally. The running chat has not dynamically
discovered DexSQL's tools; reload the client/session when native tool discovery
is needed. Do not describe this as an already attached in-chat MCP connection.

Source: `https://github.com/LSPosed/dexsql-release`,
release API and `skills/install-dexsql/SKILL.md`.

## Verified capture and rendering contract (actual 13.1.0)

All entries below were queried and decoded from the supplied APK with DexSQL,
not inferred from the old mapping. `file_id=0` is classes.dex and `file_id=2`
is classes3.dex. Raw queries and complete method blocks are in
`artifacts/dexsql/telegram-1310/`. Definition queries filter `method_kind IS NOT
NULL`; decoding always supplies file_id when duplicate cross-DEX references
make a descriptor ambiguous.

| Purpose | Exact DEX descriptor | file_id / method_idx |
| --- | --- | --- |
| Inbound updates | `Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z` | 0 / 42254 |
| Push deletion | `Lorg/telegram/messenger/MessagesController;->deleteMessagesByPush(JLjava/util/ArrayList;J)V` | 0 (push_contract.txt) |
| User delete entry | `Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JZIZJLorg/telegram/tgnet/TLObject;IZI)V` | 0 / 41307 |
| Queued storage wrapper | `Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;` | 0 / 43161 |
| Storage mutation | `Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(JLjava/util/ArrayList;ZII)Ljava/util/ArrayList;` | 0 / 43164 |
| Range storage overload (separate) | `Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(JIZ)Ljava/util/ArrayList;` | 0 / 43163 |
| Controller deleted flag | `Lorg/telegram/messenger/MessagesController;->markDialogMessageAsDeleted(JLjava/util/ArrayList;)V` | 0 / 42182 |
| Notification dispatcher | `Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V` | 0 / 43600 |
| Chat deletion consumer | `Lorg/telegram/ui/ko;->a8(I[Ljava/lang/Object;)V` | 2 / 49617 |
| Deleted menu | `Lorg/telegram/ui/ko;->q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V` | 2 / 49877 |
| Time generation | `Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V` | 2 / 27293 |
| Cell binding | `Lorg/telegram/ui/Cells/u1;->V3(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V` | 2 / 26984 |
| Time layout creation | `Lorg/telegram/ui/Cells/u1;->onLayout(ZIIII)V` | 2 / 27205 |
| Cell drawing | `Lorg/telegram/ui/Cells/u1;->onDraw(Landroid/graphics/Canvas;)V` | 2 / 27202 |

### Deletion ordering and parameters

`process_updates.smali` lines 576 onward identify the actual new TL namespace:
`org.telegram.tgnet.tl.TL_update$TL_updateDeleteMessages` and
`TL_updateDeleteChannelMessages` (line 1699 onward). Both have an ArrayList
`messages`; channel updates additionally have long `channel_id`. Their no-arg
constructors, pts and pts_count fields are verified in capture_contract files.
Ordinary deletion is accumulated separately from scheduled, quick-reply,
welcome, range and ephemeral operations. Only the two ordinary update types
are candidates for retention. Other update objects must pass through unchanged.

The storage wrapper's first Boolean controls queue dispatch. Its second
Boolean is forwarded to the private mutation method. For the private method,
args are dialog long, ids ArrayList, Boolean, mode int, topic/shortcut int.
Mode 1 selects scheduled_messages_v2, 5 quick_replies_messages, 9
welcome_messages; ordinary messages use mode 0. Do not intercept solely by
argument count or intercept those other modes.

`storage_delete.smali` queries messages_v2 uid/mid/data before its DELETE.
For dialog=0, normal non-channel message IDs are resolved with is_channel=0;
otherwise uid provides the dialog restriction. A positive ID alone cannot
identify a channel message. Resolve every matching row to (account user ID,
uid, mid), process every dialog, and dispose the cursor before delegation.
The return type is ArrayList, never Kotlin Unit. Query failure must delegate.

`processUpdateArray` posts storage work and UI work separately. UI may receive
a deletion before an asynchronous module write completes. The normal UI
lambda `$419` posts messagesDeleted and then sets MessageObject.deleted on
controller objects (updates_ui_delete.smali lines 307, 350, 386). Merely
blocking postNotificationName does not prevent those controller mutations.
The adaptation therefore plans capture before normal update processing:
query on Telegram's storage queue, persist confirmed rows, and pass a copied
update batch with retained IDs removed. Keep original update objects and
caller-owned lists intact, and keep the original method's Boolean result.
PTS bookkeeping outside this copied batch must retain the caller's objects.
Storage interception remains a fallback for other verified mode-0 paths.

MessagesStorage.getStorageQueue returns DispatchQueue, which extends Thread;
postRunnable(Runnable):boolean is verified. Same-queue capture can run inline.
No waiting, Room query or Telegram SQL query may run on the Android main thread.
Capture failures leave the original deletion path available. Framework/device
latency and all nonstandard deletion paths still need P6 verification.

Own deleteMessages takes IDs at arg0, dialog at arg3, mode at arg5. Replace the
old process-wide one-shot flag with expiring per-account/dialog/message
permits. A permit for one batch must not authorize a different chat/account.

NotificationCenter.messagesDeleted is a real static int, initialized to 7 in
this build. Reflect the field rather than retaining a magic 7. The normal
payload is [ids, channelId (0 for non-channel), scheduled=false]. Scheduled
payloads set slot2=true and have additional flags; do not treat them as normal
deletions. `ko.a8` checks slot2 against chat mode, collects matching MessageObjects,
and calls Aa(ArrayList,J,Z,Z) to remove them. Limit any fallback filter to this
verified consumer and stored keys, rather than suppressing all notifications.

### Edited state and width correction

`measure_time.smali` computes cell.Zc from owner.flags & 0x8000 or isEditing(),
including grouped messages. It suppresses the state for edit_hide and scheduled
conditions. When messagePrimaryEditedDate is enabled, it formats edit_date
without an EditedMessage string. Thus the actual computed state Zc must drive
the marker; localized label lookup is only an optional replacement operation.

Verified cell fields: sb:CharSequence (current time), pb:int (text width),
ob:int (total time width), x7:MessageObject (current bound object), Zc:boolean
(edited UI state), H7:int (account slot). **The old mapping reverses the width
field meanings.** At lines 680-681 x3 initializes both widths; views/replies/
effect contributions increase ob. onLayout lines 62-81 creates the time
StaticLayout from sb and pb, using Theme.n6.T2:TextPaint. All original total
width additions and status-icon space must survive the module's width delta.

Use an Android ReplacementSpan for marker icons and Layout.getDesiredWidth
for the new span-aware width. The original x3 measureText width is the baseline;
apply the same delta to both widths, preserving Telegram's additional space.
Do not use the previous 5/6 adjustment. Preserve the original CharSequence and
its spans, retain date/time text and allow both marker icons independently.
Do not replace the entire timestamp with the deletion timestamp. Room
createdAt is already milliseconds; no conversion by 1000 is appropriate.

V3 reads MessageObject.forceUpdate near line78 and clears it near1112, then
calls x3 before time layout creation. A weak registry of bound cells can use
this verified binder to remeasure after IO loads, saves or preference changes.
Requesting invalidate alone cannot rebuild the time StaticLayout. Recycled
cells must always use the latest binding args and current bound MessageObject.

### Retained feature limitations

All original installers remain. Their old 12.10.3 mapping is not proof of
compatibility. For example Theme's old getActiveTheme mapping A0 now returns
String, not ThemeInfo (theme_contract.txt), so blind reuse could call a wrong
method. Optional unresolved hooks must fail independently with explicit logs;
they must not silently use a first overload. P5 will record retained-feature
checks separately. No device pass or complete compatibility claim is made here.
