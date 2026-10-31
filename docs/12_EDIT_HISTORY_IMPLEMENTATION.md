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
