# Edit-history duplicate revisions

Date: 2026-10-31. Branch: `fix/edit-history-duplicate-revisions`.
Baseline: `f5355d026dd264f7fcfa7276c9f983c8ea399741`.
Initial worktree clean; Git identity and GitHub authentication verified.

## Device log findings

Input: the user's `C:/Users/Administrator/Desktop/telegami-history.log`.
This private log is not copied into Git.

- Line 8624, 17:23:25.971: the viewer reports `3 captured versions` read from
  storage. This proves the symptom is not just repeated drawing of one row.
- Lines 8577, 8580, 8583, 8598 and 8601 show batch/-2 and ingestion callbacks
  near the edit operation, with two submitted snapshots per message.
- Those old counters report candidates, not inserted rows. They do not identify
  the message scope or fingerprints, so the log alone cannot prove which exact
  records are semantically identical or assign all callbacks to the same message.
- Each Telegami log also appears through LSPosedFramework. That mirrored logging
  is NOT itself evidence of a second execution of the same callback.
- Unrelated legacy feature/reflection and old system errors are outside this fix.

Source analysis found three reproducible defects:

1. Plain text with null media hashes differently from TL_messageMediaEmpty.
   The old hash included the wrapper type and even its serialized constructor.
   Storage/network round trips can change that wrapper without changing content.
2. DAO replay rejection depended on the immediately preceding stored row matching
   the old callback value. A different stale cache value could insert an invented
   old -> current transition. A stale old prefix could also precede a real new edit.
3. The viewer always appended a current-at-open row, even when the same latest
   content was already stored. Thus even two correct stored versions appeared as
   three bubbles for one edit.

The source defects are reproduced by regression tests. Attribution of the user's
individual three stored rows still requires row-level metadata or the new logs;
no claim is made that this input contains that missing evidence.

## Changes

- `HistoryContent.contentHash` treats no media and TL_messageMediaEmpty as one
  canonical media fingerprint. Text and entity TL still participate. Real media
  metadata remains significant; raw owner/media/entity TL is never stripped.
- Existing no-media records are compared with the same canonical fingerprint,
  so upgrading does not create a new revision solely because the hash changed.
- `MessageHistoryDao.append` ignores an already-seen latest content/edit-date
  pair regardless of a differing stale old prefix, skips older prefixes before
  a newer stored revision, and returns the actual insertion count. A server
  acknowledgement advancing only edit_date does not replay already known old
  content. A previously seen unedited original (edit_date=0) cannot become an
  extra original after an optimistic local edit; a confirmed reversion with a
  positive edit_date remains a revision.
- Content changes in the same second are NOT collapsed by timestamp alone.
  Actual A -> B -> A and formatting-only/media-only changes remain distinct.
- `HistoryRevisions.visible` provides a non-destructive compatibility projection:
  canonicalizes old empty-media fingerprints, removes adjacent identical content
  and ignores backwards stale prefixes/replays of a known unedited original.
  Original database rows/version IDs are
  not rewritten or deleted by this projection. Normal retention still applies.
- The viewer marks an identical latest captured version as current rather than
  adding another bubble. It appends current only when different or no history
  exists. A known older current snapshot does not follow a newer stored edit.
- Visible version numbers are sequential, even when compatibility filtering
  removes a duplicate with an internal version ID in the middle.

No global DISTINCT-by-text or global DISTINCT-by-hash is used. That would lose
genuine reversions. Ambiguous equal-second events with different content are
retained. Two genuinely different entity/media fingerprints cannot safely be
discarded just because their displayed plain text looks identical.
Unconfirmed local states with edit_date=0 are not reliable evidence of another
server edit; the same original can be reloaded while an edit is pending.

## Scope and diagnostics

No Room schema migration, new preference, management-app UI change, Telegram
APK edit, new reflection contract or Hook point was introduced. Existing Modern
API 102 interceptors and per-account/dialog/message scoping remain unchanged.
No deletion of the user's history/database or clearing of Telegram data is needed.

New diagnostic stages:

```text
History append mid=... dialog=... candidates=2 inserted=0 revisions=[editDate:hashPrefix:mediaType,...]
History read mid=... dialog=... stored=3 visible=2
History display captured=2 rows=2 currentMerged=true
```

The capture counters still describe submitted snapshots; insertion/read/display
logs disambiguate the stages. Logs include message/dialog identifiers and
content-hash prefixes, not plaintext messages. Review them before sharing.

## Validation

Regression tests cover repeated callbacks with different stale old values,
stale old prefixes, null/empty media, legacy hashes after upgrade, one-edit
display, unchanged entity/real-media sensitivity, actual same-second reversions,
missing native rows, server acknowledgements after optimistic local edits,
scoped retention, and empty/stale-current histories.

Commands:

```powershell
./gradlew :app:testDebugUnitTest :app:assembleDebug --no-daemon --no-parallel --console=plain '-Pkotlin.compiler.execution.strategy=in-process' '-Pkotlin.incremental=false'
python scripts/verify_history_migration.py
```

Build log: `artifacts/validation/history-dedup-fix.log`.
The original schema-migration checks remain relevant because the schema is
unchanged. JVM tests use the in-memory DAO, not instrumented Android Room.
Full lint and unrelated legacy hooks are not part of this validation.

Final local validation: **78 tests, 0 failures/errors/skips**, debug assembly
passes, desktop migration/schema checks pass, APK v2 signature verifies.
Modern API 102 metadata and both Telegram scopes were checked in the rebuilt APK.
Artifact: `app/build/outputs/apk/debug/app-debug.apk`, 17,701,440 bytes.
SHA256: `e2603651512aa1295f3abee750502a02afac9dd749f78b58c6ce9d2a770c4cc1`.
Signature log: `artifacts/validation/history-dedup-signature.log`.
`adb devices -l` reports no attached device.

Device acceptance is still **UNVERIFIED** for this rebuilt APK. Install over the
previous debug build without clearing data, force-stop/reopen Telegram, and test:

1. Fresh A -> B: exactly two bubbles, original A and current B.
2. Reopen that history, leave/re-enter chat and restart Telegram: still two.
3. Existing affected message: adjacent wrapper duplicates disappear from the
   displayed list; no extra current bubble. Ambiguous real-content differences
   are intentionally not silently discarded.
4. A -> B -> A, rapid consecutive edits, rich-text-only edits and media captions:
   all genuine revisions remain visible.

Use the logcat command in report 19 when further diagnosis is needed. Expect
replayed callbacks to show `inserted=0`; counters such as `snapshots=2` are normal
and must not be interpreted as two new history rows.
