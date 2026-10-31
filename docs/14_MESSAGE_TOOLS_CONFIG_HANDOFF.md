# P14: Modern API 102 configuration / Miuix handoff

No settings screen, Miuix layout, navigation or existing feature list was
modified. Integrate this contract in that UI separately.

Namespace: Modern API 102 `getRemotePreferences("features")`.
Hook-side `Config` holds the framework's remote SharedPreferences with a live
change listener. Module app writes through `PrefManager`, using
`XposedService.getRemotePreferences("features")` and `commit()` on Dispatchers.IO.
There is no Legacy XSharedPreferences or world-readable file.

| Key | Type | Default | Meaning / bounds |
| --- | --- | --- | --- |
| enable_message_repeat | Boolean | false | Repeat menu + native send |
| enable_message_copy | Boolean | false | Protected-group text clipboard + Sourceless Forward in all conversations via native destination picker |
| enable_edit_history | Boolean | false | Capture + history menu |
| enable_repeat_confirmation | Boolean | true | Repeat confirmation |
| enable_copy_confirmation | Boolean | true | Sourceless Forward confirmation AFTER native destination selection, not clipboard confirmation |
| edit_history_retention_days | Int | 30 | 1..3650; captured-at age |
| edit_history_max_versions | Int | 100 | 2..1000 per account/dialog/message |

Contract constants/default maps: `service/MessageToolSettings.kt`.
The UI must read confirmations with explicit true defaults, not the older
`isFeatureEnabled` helper whose default is false.

```kotlin
val repeatEnabled = PrefManager.getBoolean(MessageToolSettings.REPEAT, false)
val repeatConfirm = PrefManager.getBoolean(MessageToolSettings.REPEAT_CONFIRM, true)
val retention = PrefManager.getFeatureValue(MessageToolSettings.RETENTION, 30)
val saved = PrefManager.updateMessageTools(
    booleans = mapOf(MessageToolSettings.REPEAT to true),
    integers = mapOf(MessageToolSettings.RETENTION to 30),
)
// saved=false: keep/reload previous UI state and report persistence failure.
```

`updateMessageTools` rejects unknown keys, clamps integer bounds and delegates
to existing remote preference persistence. Hook reads also enforce bounds;
malformed/wrong-type reads fail to safe defaults with diagnostic logging.
Values survive restart through the existing remote preference service.
Binding, scope and service-unavailable behavior use the existing module status.

All new hooks are installed once regardless of initial flags. They read flags
when building menus, dispatching actions and capturing edits. Confirmed sends
recheck the flag and account/dialog/message identity. No business hook reinstall
or process restart is required after a successful remote update.
Already-open menus refresh on next opening; already displayed history is a
read-only snapshot. Native sends already submitted cannot be undone by toggling.
Turning history off stops new writes and hides its menu; it does not delete rows.
Expiry runs on first use/next hourly capture maintenance or history reading;
new limits apply on append/read. Data is never retroactively fetched.

P14 JVM tests and debug build: p14-config.log.
Actual LSPosed remote propagation and persistence across process restart remain
UNVERIFIED without the framework/device.

## Updated forward semantics (2026-10-31)

The Telegram context-menu action formerly titled Send as Copy / Forward is now
Sourceless Forward (Chinese: 无来源转发). When enable_message_copy=true, this
action is available in all conversations, independent of isChatNoForwards.
Telegram's normal Forward action is unchanged; the two actions are distinct.
The custom action opens Telegram's own dialog/topic destination picker and
sends fresh messages to the selected destinations, NOT the source chat.
Cancel/back performs no send. With enable_copy_confirmation=true, an extra
confirmation appears after selection; false does not skip destination selection.
On submission, Telegram opens the selected destination chat/topic BEFORE send
preflight. Both successful queueing and send/preflight failure leave that chat
visible; no success/error handler returns to the source or destination picker.
Multiple selections leave the first selected destination visible. Cancelling
before submission does not navigate or send. Native refusal to open a chat or
an account-identity change still prevents unsafe navigation and sending.
Existing key names, defaults and Modern Remote Preferences persistence do not
change. The separate management UI can update its wording independently; no
management App UI/resources/navigation were modified in this repair.

Only the sourceless-forward scope changed. The extra Copy Text action remains
protected-group-only, avoiding duplication of Telegram's normal clipboard item.
Existing supported-payload, self-destruct and native destination-permission
checks still apply; all-conversation visibility does not add a secret-chat
sending implementation or support for every special Telegram message type.

Repeat now keeps current topic/monoforum routing and no longer blocks ordinary
chat auto-delete retention (ttl_period). Native send permissions still apply.
See docs/17_TOPIC_REPEAT_FORWARD.md for exact DEX evidence and device test gaps.
