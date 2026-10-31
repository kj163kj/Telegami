# P10: Repeat implementation

Date: 2026-10-31. Status: source implemented; runtime/device UNVERIFIED.

`hooks/messages/MessageMenuActions` adds private IDs after the exact native
menu builder and intercepts those IDs in the exact action dispatcher. Native
actions and the existing deleted-message menu extension remain installed.
`MessageRepeatHook` registers Repeat independently; resolver/install failures
are logged by the existing per-installer protection.

`MessageSender` rechecks the current account and dialog on confirmation,
consults native ChatObject permissions and slow mode, and rejects unsupported
special/TTL/ephemeral/scheduled/forum contexts before invoking native sending.
An action gate covers both the open confirmation and a 1.5-second cooldown.
No original message/forwarding/protection/reply field is rewritten.

Ordinary Repeat uses the native list forwarding overload with no reply.
Protected text uses fresh text params, copying the original entities.
Native photo/document copy parameters preserve captions and spoiler/invert
metadata. Native sending owns network failures and retry state; a successful
reflection call is only local acceptance, never a delivery-success claim.

Known limits: individual messages only, not complete media albums;
forum/topics/monoforum, paid/unsupported media, service/rich/ephemeral/scheduled/
TTL messages and protected-media reupload are rejected with an explanation.
Supported normal photo/video/file/audio/sticker messages use Telegram's native
forwarding pipeline. Actual media behavior remains unverified.

Keys currently used: `enable_message_repeat=false` and
`enable_repeat_confirmation=true`, read live from existing read-only remote
preferences. No settings UI, navigation or Miuix component was changed.

Validation: `:app:testDebugUnitTest :app:assembleDebug` passed; 14 JVM tests,
including active confirmation/cooldown/cancel tests. Log:
`artifacts/validation/p10-repeat.log`. DEX evidence generation was rerun and
normalizes only trailing blank lines in saved smali; bytecode is not modified.
No device was available for message/menu/send validation.
