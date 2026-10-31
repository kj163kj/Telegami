# P12-P13: Edit history

P12 implements the exact storage runnable BEFORE interceptor, old row read by
account-owned DB + dialog + message ID, TL serialization, immutable snapshots
and content hashing. See report 09 for the verified call chain and DEX evidence.
Only mode=0/load_type=-2 is captured on the owning storageQueue; secret/TTL and
service messages are excluded. Every capture exception delegates the native
edit once, preserving its storage/UI update behavior.

Each snapshot retains owner TL, packed entity TL, portable entity JSON, full
media TL, stable media metadata, message/edit/capture times and content hash.
Hash includes text, entity bytes and stable media metadata, excluding capture
time, edit_date and refreshed file_reference. For unknown media the complete
media payload participates. Only adjacent equal versions are deduplicated;
A -> B -> A is retained. This captures formatting-only edits.

P12 is a staged source checkpoint: installation waits for the persistent sink
in P13. No temporary in-memory history is advertised as durable storage.
P12 JVM tests and debug build are recorded in p12-history-capture.log.
This is not evidence of storageQueue or device-runtime correctness.

P13 connects that interceptor to `MessageHistoryStorage` synchronously before
native execution. Room transactions append old and new rows with monotonic
per-message version IDs. Repeated batches and stale batches are ignored.
Retention uses capture time; version limits remove oldest stored rows.
Expiry/orphan cleanup runs on first use, at most hourly during capture, and
whenever history is read. Configuration lowering also trims the opened message.
No database failure interrupts the original Telegram storage operation.

History viewer adds a private menu ID and uses an executor for queries and
image decoding. It shows chronological version numbers, original/edited labels,
edit/message and capture times, formatted text, media type and a separate
current-at-open snapshot. It explains missing originals and missing local media.
The viewer never writes current Telegram messages. Account and dialog are
rechecked before presenting asynchronous results.

Device-feedback follow-up: `MessageHistoryScreen` replaces the AlertDialog
text column with a full-window, read-only list, search, version/time labels,
message ID/count, latest-at-open row and tappable local-image previews.
Rows stay chronological and initially scroll to the current version, as in
NagramX. Empty/missing-original states remain explicit. Android system/IME
insets and day/night palettes are handled without changing management-app UI.
The interaction reference is NagramX `AyuMessageHistory.createView()` and
`applySearchFilter()`, not an import of its Fragment/ChatMessageCell code.
That code depends on Neko/Ayu classes absent from official Telegram. The
adaptation uses Android Dialog/ListView and Telegami's existing immutable
history records; it is not a pixel-identical native NagramX Fragment.
No new Telegram reflection targets or network fetches are introduced.

Only already-local photo files are copied before native media deletion.
There is no network fetch. Preview limits: 8 MiB per file, 128 MiB total disk,
512-pixel decoded bounds and at most 12 decoded previews per dialog. Files are
private to the hooked Telegram package; relative filenames are validated.
Video/file playback and non-photo thumbnail previews are not implemented.
Stored TL/entity/media data remains available even without a preview.

P13 validation: JVM tests, debug build, and actual v2->v3 SQL exercised on
desktop SQLite. The SQLite test verifies deletion rows are unchanged, composite
keys, scoped trimming and persistence after reopening. DAO JVM tests exercise
deduplication, A->B->A, stale events and scope boundaries with an in-memory
implementation; these do not replace Room instrumentation. Logs:
`p13-history-storage.log`, `p13-history-migration.log`.
Actual UI, storageQueue, Room migration and process restart remain UNVERIFIED.
