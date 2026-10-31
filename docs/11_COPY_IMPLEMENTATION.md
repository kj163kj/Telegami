# P11: Copy and send as copy

`MessageCopyHook` adds protected-group text copying only when the native
`isChatNoForwards` check is true. Ordinary Telegram Copy remains unchanged.
It reads the owner's original text/caption and entities, not marker/UI text.
Clipboard contains plain text and HTML spans: bold, italic, underline,
strikethrough, code/pre and safe links. Custom emoji, spoilers, mentions and
other Telegram-only entity semantics cannot be guaranteed across clipboard
consumers. Sending preserves Telegram entity objects through native params.

Send as Copy uses fresh `SendMessageParams`, without forwarding, reply, or
retry fields. Repeat and copy-send share the same confirmation/cooldown gate.
Flags and scope are checked again when confirmed. Separate private-message
noforwards flags are not treated as authorization to bypass protection.
Protected-group text can be copied/sent; protected media sends fail with an
explicit message. TTL/secret/ephemeral media remain rejected.

Native delivery errors remain in Telegram's normal pending/error UI; immediate
native rejection is reported by the action. Source implementations and exact
DEX contracts are in reports 06-09. Entity class evidence is recorded in
`artifacts/dexsql/message-tools-1310/entity_classes.txt`.

Validation: P11 JVM tests and debug build (see p11-copy.log).
Actual clipboard, target compatibility and sending require device validation.
No Miuix UI/navigation/settings file was changed.
