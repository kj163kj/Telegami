# P8: NagramX message tools source analysis

Date: 2026-10-31 (Asia/Shanghai).
Telegami baseline: `3c6ff67ec101e472d05dc730b43af197cb652f81`.
Task branch: `feat/nagramx-message-tools`; initially clean worktree.
Git identity and GitHub authentication passed before changes.

Reference repository: https://github.com/risin42/NagramX
Inspected reference commit: `2db685af00a4352c877ecf96474cbf0494284715`
(dev branch at inspection). Source was downloaded outside the Telegami tree.
No NagramX source tree, build system or application UI is merged into Telegami.
The reference repository declares GPL-3.0; Telegami retains its existing license.

## Repeat and copy

`TMessagesProj/src/main/java/org/telegram/ui/ChatActivity.java`:

- `repeatMessage` around line 46926 gathers selected messages, checks slow mode,
  and optionally asks for confirmation.
- `doRepeatMessage` around line 46952 uses `shouldRepeatMessagesAsCopy` to choose
  between forwarding and the copy sender.
- The copy branch deliberately supports reply/thread behavior in the fork.
  This task requires no reply relationship, so that behavior must not be copied.
- Existing menu and click handlers around lines 36174 and 46613 dispatch
  Repeat and Repeat as Copy to the same implementation.

`tw/nekomimi/nekogram/helpers/MessageHelper.java`:

- `shouldRepeatMessagesAsCopy` around line 1436 checks chat protection,
  message `noforwards`, and the fork's deleted-message state.
- `sendMessageAsCopy` / `sendMessagesAsCopy` separate text, downloaded media
  and grouped media, preserving caption/entities rather than forwarding headers.
- `canSendSingleMessageAsCopy` rejects polls, todo, locations, games, invoices,
  stories and unsupported types instead of fabricating replacement text.
- Media send preparation carries caption, entities, TTL and spoiler state.

Port direction: use Telegram's normal forward overload for ordinary Repeat;
construct native `SendMessageParams` for copy sends. Do not mutate original
message/forward/protection flags or server requests. Add a separate protected
group text-copy action only when that group is protected, per the user's B3.
Unsupported contexts/types must produce an explicit message. Sending acceptance
is not server delivery success; native Telegram continues to own delivery/retry UI.

## Edit history

`org/telegram/messenger/MessagesStorage.java` around lines 16375-16415:
the `load_type == -2` edit path reads `messages_v2.data`, deserializes
`oldMessage`, reads attachment information, and calls the fork's history
controller before replacing old content and deleting obsolete media.

`com/radolyn/ayugram/messages/AyuMessagesController.java`:
`onMessageEdited` schedules persistence; `onMessageEditedInner` compares old
and new text/media, maps the OLD revision to an `EditedMessage`, inserts it
through `EditedMessageDao` and publishes a local notification. The reference
text/media comparison alone misses formatting-only edits; the port must compare
entity data too. This task also requires storing the latest new revision.

`com/radolyn/ayugram/database/entities/EditedMessage.java` and its DAO keep
independent rows associated with account user ID, dialog and message.
`com/radolyn/ayugram/ui/AyuMessageHistory.java` queries local revisions and
builds read-only message previews from saved text/entities/media. It is a fork
screen, not a runtime Hook. `AyuHistoryHook.java` is primarily deleted-message
history injection and is not the correct edit-capture entry point.

Port direction: Hook the actual official APK's storage-queue edit runnable
BEFORE delegation, query the old Telegram row there, make immutable old/new
snapshots, and transactionally append them to Telegami's existing Room database.
Never wait for background queries on the UI thread. Preserve chronological
revisions, adjacent duplicate suppression, account isolation and local media
copies before Telegram removes obsolete attachments. Missing old rows are
reported as incomplete local history rather than invented originals.

## Acceptance

P8 is source analysis. P9 must verify every runtime descriptor with DexSQL
against the supplied APK before implementing it. The existing user waiver for
13.1 patch differences and both Android distribution packages remains in force.
The only local APK currently available is `.web` 13.1.0; it must not be labeled
as independently analyzed 13.1.1 or Play evidence.

No changes to Miuix settings/navigation/UI resources are authorized by this
phase. Configuration keys will be documented for the UI owner separately.
No device test or working Hook claim is made by this source analysis.

P8 verification: `:app:testDebugUnitTest :app:assembleDebug` passed on the
unchanged application baseline (12 JVM tests, no failures).
Log: `artifacts/validation/p8-source-analysis.log`. Device testing is not
applicable to the source-only analysis.
