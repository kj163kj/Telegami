# Message history database handoff

Room database `telegami` upgrades v2 -> v3 with explicit MIGRATION_2_3.
MIGRATION_1_2 remains registered. No destructive migration is enabled.
The existing DeletedMessage entity/DAO and its account-scoped keys are unchanged.
The database is inside each hooked Telegram package's application sandbox;
Play and website installations do not share histories.

Table: `MessageHistoryEntry`.

| Column | SQLite type | Meaning |
| --- | --- | --- |
| accountId | INTEGER NOT NULL | Telegram user ID, not reusable account slot |
| dialogId | INTEGER NOT NULL | Signed native dialog ID |
| messageId | INTEGER NOT NULL | Native message ID |
| versionId | INTEGER NOT NULL | Increasing local version for this key |
| capturedAt | INTEGER NOT NULL | Local wall clock, milliseconds |
| messageDate | INTEGER NOT NULL | Native original date, seconds |
| editDate | INTEGER NOT NULL | Native edit_date, seconds; zero if unedited |
| messageText | TEXT NOT NULL | Original text or caption |
| messageEntities | TEXT NOT NULL | Portable JSON kind/UTF-16 offset/length/URL |
| entitiesTl | BLOB NOT NULL | Entity count, then length + TL for each entity |
| mediaType | TEXT NOT NULL | Native subtype name or `none` |
| mediaMetadata | TEXT NOT NULL | Stable identity, MIME/size/attributes hash, spoiler/invert |
| mediaTl | BLOB NOT NULL | Complete serialized media |
| ownerTl | BLOB NOT NULL | Complete serialized Message snapshot |
| contentHash | TEXT NOT NULL | SHA-256 of length-delimited text/entities/media metadata |
| previewPath | TEXT nullable | Relative name of private saved photo, if available |

Primary key: `(accountId, dialogId, messageId, versionId)`.
Index: `index_MessageHistoryEntry_capturedAt`.
Packed entity count/length values use Java DataOutputStream big-endian integers.
TL payload bytes keep Telegram's own wire encoding. JSON renders common spans;
the original TL retains other entity semantics for future extensions.

Append old/new and per-message pruning run in one Room transaction.
Adjacent equal hashes are omitted, while reverting content adds a revision.
Duplicate delivery whose newest content already matches the last stored row
is ignored. Older edit_date batches are ignored. Same-second real changes
remain ordered by versionId. Hashes do not constitute a global uniqueness key.
An interrupted native storage update can leave a locally *observed* incoming
version in history; it is not proof of successful server delivery or native DB
commit. The viewer separately shows the current message captured when opened.

Retention is based on capturedAt, not messageDate. File cleanup deletes only
unreferenced files in `files/telegami/history`; failed writes may leave an orphan
until next maintenance. No original Telegram file is deleted or modified.
At least two versions and at most 1000 versions can be retained per message.
Missing old DB rows yield only the incoming version; unseen originals cannot
be reconstructed. After expiry of every row, local version numbering can restart.

Validation script: `python scripts/verify_history_migration.py`.
Desktop SQLite reopening is tested; Android Room migration is UNVERIFIED.
