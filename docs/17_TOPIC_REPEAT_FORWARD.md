# Topic repeat and protected-group forward repair

Baseline: e302463. Branch: feat/topic-repeat-forward-picker.
No management App UI, history storage, deletion hooks or preference keys changed.
The user-supplied log was read as diagnostic data only and was not copied here.

## Repeat

The log shows successful custom menu dispatch followed by a module rejection in
MessageSender: forum/monoforum blanket ban, or an auto-delete ttl_period ban.

Removed: blanket forum/monoforum/chat-mode/scheduled-field rejection, the
ttl_period rejection, the media whitelist on normal forwarding, and the
protected-photo/document copy ban. Nonforwardable messages use fresh-send
parameters, not a modified forward request. Native send rights and slow mode,
secret/self-destruct/ephemeral safety, unsupported-copy diagnostics, account and
topic identity checks, and accidental double-click suppression remain.
Removing these does not grant server-side permission or guarantee every special
Telegram object can be resent correctly.

Current-chat forwarding now uses the same full SendMessagesHelper overload and
context as ko.x8: W3 topic root, S8() monoforum peer, and f5 suggestion context.
The source message and active quoted reply are never used as reply targets.
Copy-send sets replyToMsg/replyToTopMsg to the topic root only. Confirmation
captures dialog/topic/monoforum identity and refuses a changed destination.
Native queue acceptance is not a delivery receipt; network errors remain in
Telegram's normal message UI.

## Protected-group Forward

The old Send as Copy custom action is now titled Forward (转发), icon msg_forward.
It appears only when enable_message_copy is enabled AND the source group/channel
isChatNoForwards. Normal chats are left to Telegram's existing Forward action.

The custom action constructs the same native bz destination picker as Fa(2),
with onlySelect=true, dialogsType=3, messagesCount=1, canSelectTopics=true.
It binds the source account explicitly. Its vy delegate reads native TopicKey
targets, resolves forum topicStartMessage using the native findTopic flow, and
passes monoforum managed-peer targets separately. Missing topic state fails
explicitly instead of silently sending to General. No global permission method,
noforwards flag, MTProto request or Telegram APK is patched.

The selected source version is validated before TL cloning; local-only secret /
sponsored / ephemeral state must not disappear in serialization. The native
MessageObject snapshot survives Fa clearing c5. Source group, feature switch,
account identity and Activity are checked again before submission. Destination
permissions are checked against the destination, not the read-only source.
Supported copy payloads are text/entities, photo/caption and document/caption
(including video/audio/stickers). Unsupported copy types fail without sending.

Native picker comment text uses MediaDataController.getEntities, and notify,
scheduleDate, scheduleRepeatPeriod are passed to native send parameters.
enable_copy_confirmation still defaults true but now confirms AFTER selection;
false skips only that extra confirmation, never the destination picker.
No source forward-header or reply relationship is copied.

A per-picker session deduplicates targets and ignores duplicate callbacks while
confirmation is open or after submission. Back/cancel does not send. Cancelling
confirmation allows reselection. All targets are preflighted before any native
send. Submission consumes the session before invoking native code so an error
after partial queueing cannot automatically resend successful earlier targets.
After queueing, the picker closes; this is not proof of server delivery.
Telegram remains responsible for network/server send errors, paid-message or
other server restrictions. These require device coverage, not compile claims.

## DEX contracts

Input remains the supplied unmodified Telegram.apk (.web 13.1.0/72299), with the
minor-version discrepancy previously accepted by the user. There is no new
claim of verifying an independent 13.1.1 binary.

Reproduce with scripts/analyze_topic_forward.py --dexsql <dexsql.exe>.
Evidence: artifacts/dexsql/topic-forward-1310. Existing menu evidence remains
in artifacts/dexsql/message-tools-1310/menu_dispatch.smali (native action 2).
All descriptors include argument and return types; file/method indexes follow.

| Role | Exact DEX descriptor | file/method | Timing / relation |
| --- | --- | --- | --- |
| Chat forward | Lorg/telegram/ui/ko;->x8(Ljava/util/ArrayList;ZZZIJ)V | 2/49977 | Reference native route, not hooked |
| Topic identity | Lorg/telegram/ui/ko;->d()J | 2/49655 | Read at click and confirmation |
| Mono peer | Lorg/telegram/ui/ko;->S8()J | 2/49506 | Read before send |
| Full send | Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I | 0/45701 | Called after validation; 0 means queued locally |
| Permissions | Lorg/telegram/messenger/SendMessagesHelper;->canSendMessageToChat(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)I | 0/45400 | Native destination type rights before queueing |
| Picker | Lorg/telegram/ui/bz;-><init>(Landroid/os/Bundle;)V | 2/44731 | Native forwarding destination UI |
| Delegate | Lorg/telegram/ui/vy;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z | 2/55396 | Selected TopicKey list, comment, param, notify, schedule date/repeat, topic UI |
| Picker callback | Lorg/telegram/ui/bz;->M3(JJZLorg/telegram/ui/og1;)V | 2/44797 | Creates TopicKey(dialogId,topicId), invokes delegate |
| Native delegate | Lorg/telegram/ui/ko;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z | 2/49940 | Reference destination handling |
| Topic resolution | Ljf/d;->a(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V | 2/6117 | Reference findTopic + topicStartMessage construction |
| Picker send button | Lorg/telegram/ui/mx;->F(Ljava/lang/CharSequence;ZIIJ)V | 2/51020 | Confirms callback indices: comment, notify, schedule date/repeat |
| Comment entities | Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList; | 0/39496 | Native parser before text send |

W3: MessageObject; f5: MessageSuggestionParams; bz.B2: vy;
TopicKey.dialogId/topicId: long. Additional exact reflection contracts are
recorded by methods.sql/fields.sql. Modern API 102 menu interception remains
q8 after native menu generation, Fa before native selected-message cleanup.

## Stage validation

- Repeat: JVM tests (47) and debug assembly PASS, topic-repeat-full.log.
  First incremental Kotlin compilation failed to resolve existing exactField /
  exactMethod extensions. Disabling incremental compilation produced a clean
  full compilation without source workarounds.
- Final JVM: 52 tests, 0 failures/errors/skipped. New coverage: retention vs
  self-destruct TTL, copy routing, topic/monoforum confirmation identity,
  protected-only visibility, empty/cancelled selection, duplicate callbacks,
  reselection and partial-submission reentry. Existing deletion/history/menu /
  config and management UI tests also pass, but do not run LSPosed or views.
- Final full Kotlin compile and :app:assembleDebug: PASS.
  Log: artifacts/validation/topic-forward-final.log. Intermediate picker build:
  artifacts/validation/protected-forward-picker.log (PASS).
- python scripts/verify_history_migration.py: PASS, preserves deletion rows and
  matches generated Room schema. No database change was made.
- apksigner verify --verbose --print-certs: PASS, v2 Android Debug certificate.
- git diff --check: PASS. No full Android lint rerun in this repair; the previous
  baseline had 91 resource errors, documented in report 16, not repaired here.
- adb devices -l: no devices connected. All real LSPosed/Telegram device
  behaviors listed next are UNVERIFIED, not accepted as complete.

Debug artifact: app/build/outputs/apk/debug/app-debug.apk.
SHA-256: 0a393cff244dcd226d1240c2f13f0b209678f1591845596fb954d2c4cbbef18c.
No release artifact was rebuilt. Existing release APKs do not include this fix.

## Changed files

- core/TelegramMessageResolver.kt: full native send and topic handles.
- core/TelegramForwardResolver.kt: exact native picker, account, topic handles.
- hooks/messages/MessageSender.kt: current-topic repeat, destination preflight,
  detached fresh-send and native picker comments.
- hooks/messages/MessageSendPolicy.kt: TTL distinction and copy fallback.
- hooks/messages/MessageRepeatHook.kt: repeat-specific entry.
- hooks/messages/MessageCopyHook.kt: protected-only Forward registration and
  no auto-delete false positive for clipboard copying.
- hooks/messages/MessageForwardPicker.kt: source snapshot and native delegate.
- hooks/messages/MessageForwardSession.kt: callback/confirmation state machine.
- tests/MessageSendPolicyTest.kt and MessageForwardSessionTest.kt.
- scripts/analyze_topic_forward.py and artifacts/dexsql/topic-forward-1310/.
- docs/14_MESSAGE_TOOLS_CONFIG_HANDOFF.md and this report.

## Device acceptance checklist (all UNVERIFIED)

Install the new debug APK over the existing debug module, confirm both intended
Telegram scopes in LSPosed, force-stop/reopen Telegram. Do not clear App data.
Use test groups/targets for actual sends.

| Case | Required result |
| --- | --- |
| Ordinary and auto-delete group repeat | One new message, no false TTL rejection |
| Forum General and non-General topic | New message stays in the current topic |
| Switch topic while confirmation is open | No send into a changed destination |
| Protected source text/entities/photo/video/file/audio/sticker | Copy fallback; original unchanged |
| Normal source group menu | No custom Forward duplicate |
| Protected source menu | Forward opens Telegram destination picker; no immediate source-chat send |
| Destination group/forum topic selection | New message in chosen destination only, no source header |
| Cancel picker / cancel confirmation | No message sent; can retry/reselect |
| Rapid taps / repeated callback | No unintended duplicate queueing |
| Multiple targets, comment, silent or scheduled sends | Correct destinations, content and native parameters |
| Read-only source, writable destination | Source write rights do not incorrectly block forwarding |
| Account change / feature disabled while selecting | No unintended send |
| Closed topic / banned media / no write rights / slow mode / server error | Native permission or send error, no false success claim |
| History, deletion markers, restart, settings | Existing behavior preserved |

For a failure, capture startup and the failing tap (PowerShell, adb on PATH):

```powershell
adb logcat -v threadtime -s Telegami:V LSPosedFramework:V AndroidRuntime:E > telegami-topic-forward.log
```

Reproduce, stop with Ctrl+C, and export the LSPosed module log as well. Include
Telegram package/version, source/target forum status and selected topic, media
type, and whether selection/confirmation appeared. Review/redact unrelated chat
and account identifiers before sharing. Queue logs use MessageTools; no new
message contents are logged.
