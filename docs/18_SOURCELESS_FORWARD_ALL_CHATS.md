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
Destination-chat navigation follow-up and final artifact verification pending.
Actual LSPosed/Telegram device behavior remains UNVERIFIED until tested.
Device checks: enable the existing copy switch, verify the exact new label in
private chats, ordinary/protected groups, channels and forum topics; choose a
test destination and verify no source header. Recheck feature-off, cancellation,
account changes and disabled feature during confirmation. Unsupported types
must show a diagnostic rather than send malformed content.
