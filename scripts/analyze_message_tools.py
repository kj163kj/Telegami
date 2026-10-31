"""Reproduce P9 contracts with DexSQL against the supplied, unmodified APK."""

import argparse
import hashlib
from pathlib import Path
import subprocess


QUERIES = {
    "entity_classes": """SELECT file_id,descriptor FROM classes
WHERE descriptor LIKE 'Lorg/telegram/tgnet/TLRPC$TL_messageEntity%'
ORDER BY file_id,descriptor""",
    "history_methods": """SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/messenger/BaseController;' AND name='getUserConfig') OR
(class_descriptor IN ('Lorg/telegram/tgnet/SerializedData;','Lorg/telegram/tgnet/InputSerializedData;') AND name='readInt32'))
ORDER BY file_id,method_idx""",
    "methods": """SELECT file_id, method_idx, descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('q8','Fa','h7')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('getParentActivity','getMessagesController')) OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name IN ('getInstance','sendMessage','processForwardFromMyName')) OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;' AND name IN ('<init>','of')) OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage;' AND name IN ('lambda$putMessages$238','putMessages','getStorageQueue')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name IN ('getDialogId','canForwardMessage','isPhoto','isVideo','isMusic','isVoice','isRoundVideo','isSticker','isAnimatedSticker','isSecretMedia','isSponsored','isEphemeral')) OR
(class_descriptor='Lorg/telegram/messenger/ChatObject;' AND (name LIKE 'canSend%' OR name IN ('canWriteToChat','isForum','isMonoForum'))) OR
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('isChatNoForwards','getInstance')) OR
(class_descriptor='Lorg/telegram/messenger/DialogObject;' AND name='isEncryptedDialog') OR
(class_descriptor='Lorg/telegram/messenger/FileLoader;' AND name IN ('getInstance','getPathToMessage')) OR
(class_descriptor='Lorg/telegram/SQLite/SQLiteCursor;' AND name IN ('byteBufferValue','next','dispose')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name IN ('TLdeserialize','readAttachPath')) OR
(class_descriptor='Lorg/telegram/tgnet/SerializedData;' AND name IN ('<init>','toByteArray','cleanup')) OR
(class_descriptor='Lorg/telegram/tgnet/NativeByteBuffer;' AND name IN ('readInt32','reuse')) OR
(class_descriptor='Lorg/telegram/tgnet/TLObject;' AND name IN ('serializeToStream','getObjectSize')))
ORDER BY file_id,method_idx""",
    "media_classes": """SELECT file_id,descriptor FROM classes WHERE descriptor IN
('Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;')
ORDER BY file_id,descriptor""",
    "fields": """SELECT file_id,field_idx,descriptor FROM fields WHERE
(file_id=0 AND class_descriptor IN ('Lorg/telegram/messenger/MessageObject;','Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;')) OR
(file_id=2 AND class_descriptor IN ('Lorg/telegram/tgnet/TLRPC$Message;','Lorg/telegram/tgnet/TLRPC$MessageMedia;','Lorg/telegram/tgnet/TLRPC$MessageEntity;','Lorg/telegram/tgnet/TLRPC$Photo;','Lorg/telegram/tgnet/TLRPC$Document;','Lorg/telegram/tgnet/TLRPC$messages_Messages;')) OR
(file_id=2 AND class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('c5','e','S5','Q3','X'))
ORDER BY file_id,field_idx""",
    "calls": """SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls
WHERE (callee_class='Lorg/telegram/ui/ko;' AND callee_name IN ('Fa','q8')) OR
(callee_class='Lorg/telegram/messenger/MessagesStorage;' AND callee_name='putMessages' AND method_class='Lorg/telegram/messenger/MessagesController;')
ORDER BY file_id,method_idx,callee""",
}

DECODE = [
    (2, 49413, "menu_create"), (2, 49335, "menu_dispatch"),
    (2, 55768, "menu_click_bridge"), (2, 49730, "slow_mode"),
    (0, 45701, "forward"), (0, 45702, "forward_wrapper"),
    (0, 45703, "forward_bridge"), (0, 45671, "native_copy"),
    (0, 45298, "params_text"), (0, 45300, "params_full"),
    (0, 45301, "params_fields"), (0, 41539, "protected_chat"),
    (0, 41540, "protected_chat_flags"), (0, 40183, "can_forward"),
    (0, 43033, "edit_storage"), (0, 43213, "edit_storage_wrapper"),
    (0, 40147, "format_entities"), (0, 45302, "params_from_message"),
    (0, 43214, "put_messages"), (0, 43054, "replace_message"),
]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", default="Telegram.apk")
    parser.add_argument("--output", default="artifacts/dexsql/message-tools-1310")
    args = parser.parse_args()
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    apk = Path(args.apk).resolve()
    output.joinpath("input-sha256.txt").write_text(
        hashlib.sha256(apk.read_bytes()).hexdigest() + "\n", encoding="ascii",
    )
    for name, sql in QUERIES.items():
        output.joinpath(name + ".sql").write_text(sql + "\n", encoding="ascii")
        result = subprocess.run(
            [args.dexsql, "query", "--input", str(apk), "--sql", sql],
            check=True, capture_output=True,
        )
        output.joinpath(name + ".txt").write_bytes(result.stdout)
    for file_id, method_idx, name in DECODE:
        result = subprocess.run(
            [args.dexsql, "decode", "--input", str(apk), "--file-id",
             str(file_id), "--method-idx", str(method_idx)],
            check=True, capture_output=True,
        )
        output.joinpath(name + ".smali").write_bytes(result.stdout.rstrip() + b"\n")


if __name__ == "__main__":
    main()
