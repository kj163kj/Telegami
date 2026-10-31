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

W3: MessageObject; f5: MessageSuggestionParams; bz.B2: vy;
TopicKey.dialogId/topicId: long. Additional exact reflection contracts are
recorded by methods.sql/fields.sql. Modern API 102 menu interception remains
q8 after native menu generation, Fa before native selected-message cleanup.

## Stage validation

- Repeat: JVM tests (47) and debug assembly PASS, topic-repeat-full.log.
  First incremental Kotlin compilation failed to resolve existing exactField /
  exactMethod extensions. Disabling incremental compilation produced a clean
  full compilation without source workarounds.
- Native picker: implementation and validation pending.
- Real LSPosed/Telegram device behavior: UNVERIFIED.
