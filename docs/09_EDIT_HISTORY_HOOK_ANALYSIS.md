# P9: Edit history Hook contract

Input identity and reproduction: `07_REPEAT_HOOK_ANALYSIS.md`.
Actual reference is the supplied `.web` 13.1.0 APK under the existing user
patch waiver. Evidence is not relabeled as independent 13.1.1 analysis.

| Role / timing | Exact descriptor | DEX / method_idx / evidence |
| --- | --- | --- |
| Controller edit batch | `Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z` | 0 / 42254; existing `telegram-1310/process_updates.smali` |
| Storage dispatch wrapper | `Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V` | 0 / 43213; `edit_storage_wrapper.smali` |
| Pre-overwrite Hook | `Lorg/telegram/messenger/MessagesStorage;->lambda$putMessages$238(ILorg/telegram/tgnet/TLRPC$messages_Messages;JJIIZ)V` | 0 / 43033; `edit_storage.smali` |
| Read serialized old row | `Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;` | `methods.txt` |
| Deserialize before overwrite | `Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;` | 2 / 12584; `methods.txt` |
| Read local attachment path | `Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V` | `methods.txt` |
| Serialize immutable snapshot | `Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V` | 2 / 12369; `methods.txt` |
| Menu action | `Lorg/telegram/ui/ko;->q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V` and `Fa(I)V` | see Repeat report |

The wrapper posts a runnable onto Telegram storageQueue. Runnable args are:
0 mode, 1 messages_Messages, 2 dialog long, 3 thread long, 4 load_type int,
5 max-id int, 6 create-dialog boolean. Capture only mode=0 and load_type=-2.
On entry require the current thread equals getStorageQueue() and is not main.

In `edit_storage.smali`, the load_type=-2 branch queries old data by
`messages_v2.mid` AND `uid`, deserializes oldMessage and its attach path,
then adjusts metadata, replaces rows and deletes obsolete media files.
The Hook performs its own read-only query of these exact keys BEFORE calling
the runnable, disposes the cursor and NativeByteBuffer, then persists immutable
old AND new snapshots. No old MessageObject UI reference is trusted.
This covers ordinary and channel edit batches handled by this runnable; edits
on missing local rows cannot recover unseen originals.

Full text, entity TL bytes, media TL metadata, message TL snapshot and capture/
edit dates are retained. Content hashing includes entities so format-only
edits are captured. Suppress adjacent identical revisions, not all repeated
hashes: A->B->A is three real versions. Scope every read/write to account
user ID + dialog ID + message ID. Room migration must preserve DeletedMessage.

Local photo previews must be copied before original Telegram execution can
remove them. Preview only saved local files; never initiate an unauthorized
download or invent a historical attachment from the current media. Retention
must remove unreferenced local copies. Large/unavailable previews are explicitly
reported while text/entities/metadata remain queryable.

History persistence errors log and delegate to Telegram exactly once.
Room and file work stay off main. Viewer queries asynchronously, shows
chronological version numbers, edit/capture times, media info and latest
current content, and explains when the original was never captured.
The viewer must not modify the current Telegram message.

UI replacement and notifications stay on Telegram's original path. Existing
deleted/edited time-marker hooks remain installed separately. Actual queue/
schema migration/race/UI behavior still requires a real device.
