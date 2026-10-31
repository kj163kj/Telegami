# Sourceless Forward in all conversations

Baseline: 85f6fc30a966b84b481e397affa7d594b7177501.
Branch: feat/sourceless-forward-all-chats.
Supersedes the protected-only custom Forward scope in report 17.

## Behavior

- Menu label and confirmation title: Sourceless Forward (无来源转发).
- The custom action's visibility depends only on enable_message_copy. No source
  group/channel protection condition remains at menu creation, picker opening,
  destination callback or confirmation submission.
- Source conversation/account identity, live feature checks, cancellation and
  duplicate-callback protection remain. The source conversation no longer has
  to remain protected while the picker is open.
- Telegram's native dialog/topic destination picker remains mandatory. Payloads
  still use requestedCopy=true, fresh native SendMessageParams and no original
  forward header, including messages from ordinary private chats/groups/channels.
- Native Forward is not renamed or intercepted. Protected-only Copy Text,
  Repeat, edit history, database schema and management App UI are unchanged.
- No new configuration keys, defaults, Hook points or DEX contracts. Existing
  source payload and self-destruct checks / native destination permissions
  remain. All-conversation menu scope is not a promise that every special
  message type or encrypted-chat destination can be resent.

## Files

- hooks/messages/MessageCopyHook.kt: label and unrestricted conversation scope.
- hooks/messages/MessageForwardPicker.kt: remove both protection gates; update
  confirmation title, error text and diagnostic labels.
- hooks/messages/MessageForwardSession.kt: visibility takes only feature state.
- tests/MessageForwardSessionTest.kt: updated visibility regression test;
  cancellation, reselection, duplicate and partial-submission tests retained.
- docs/14_MESSAGE_TOOLS_CONFIG_HANDOFF.md and this report.

## Validation

First stage: 52 JVM tests and :app:assembleDebug PASS. Build log:
artifacts/validation/sourceless-forward-all-chats.log. git diff --check PASS.
Final destination-chat navigation build: :app:testDebugUnitTest and
:app:assembleDebug PASS, 56 tests, 0 failures/errors/skipped.
Log: artifacts/validation/sourceless-forward-final.log. Intermediate navigation
build: sourceless-forward-destination-chat.log (PASS).
APK v2 signature verification and git diff --check PASS. History migration
regression script PASS; no database/schema changes were made. Full Android lint
was not rerun; prior resource lint failures are recorded in report 16.

Debug APK: app/build/outputs/apk/debug/app-debug.apk.
SHA-256: f935afa40a6485d056ee95e6a7c4b9b878bf69251bf95abcb5f66d86dc03c086.
No release APK was rebuilt. adb devices -l lists no attached devices.
Actual LSPosed/Telegram device behavior remains UNVERIFIED until tested.
Device checks: enable the existing copy switch, verify the exact new label in
private chats, ordinary/protected groups, channels and forum topics; choose a
test destination and verify no source header. Recheck feature-off, cancellation,
account changes and disabled feature during confirmation. Unsupported types
must show a diagnostic rather than send malformed content.

## Destination-chat navigation follow-up

Latest requirement: after executing Sourceless Forward, stay in the chosen
destination chat whether the send succeeds or fails.

- The picker now consumes the submission, opens the first selected destination,
  then resolves payload/topic data and preflights all sends. Navigation does not
  depend on send success. Multi-target sends keep the first selected chat visible.
- Sender validation errors and synchronous send exceptions show diagnostics in
  the destination; asynchronous server errors remain in Telegram's native UI.
  No success/error path calls finishFragment to return to the source/picker.
- Cancelling the picker/confirmation still performs no navigation or send.
  Account identity checks still precede navigation. If Telegram itself refuses
  to open the target, sending is aborted; this is not a bypass of native access.
- Native navigation uses the same ko.v Bundle keys, ko(Bundle) constructor,
  setCurrentAccount, jf.d.a topic application, removeSelfFromStack for the topic
  picker and source.presentFragment(target,true) replacement flow. No new Hook.
- Existing DEX evidence: topic-forward-1310/native_forward_delegate.smali,
  labels 01fa..0275; open_selected_topic.smali. scripts/analyze_topic_forward.py
  records full signatures for the navigation members. Input APK/version and
  minor-version caveat remain as stated in report 17.

Additional exact contracts (arguments and return types use DEX descriptors):

| Member | DEX file/method |
| --- | --- |
| Lorg/telegram/ui/ko;-><init>(Landroid/os/Bundle;)V | 2/49256 |
| Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;Z)Z | 2/24687 |
| Lorg/telegram/ui/ActionBar/r2;->removeSelfFromStack()V | 2/24691 |
| Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/r2;)Z | 0/41253 |
| Lorg/telegram/messenger/MessagesController;->isMonoForumWithManageRights(J)Z | 0/41557 |
| Lorg/telegram/messenger/MessagesStorage;->isMonoForum(J)Z | 0/42839 |
| Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z | 0/35990 |
| Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I | 0/35960 |

Follow-up changes: core/TelegramForwardResolver.kt,
hooks/messages/MessageForwardPicker.kt, MessageForwardSession.kt,
tests/MessageForwardSessionTest.kt, scripts/analyze_topic_forward.py,
artifacts/dexsql/topic-forward-1310/methods.sql + methods.txt and reports 14/18.
New tests cover navigate-before-send, success, send failure retaining destination,
duplicate suppression, cancellation and navigation failure preventing any send.
Native view/back-stack behavior, especially forum topics and tablets, remains
UNVERIFIED without a device. Verify both immediate permission rejection and a
network/server failure after queueing, in addition to successful sending.
