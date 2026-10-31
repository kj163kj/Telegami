"""Reproduce topic routing and native forward-picker contracts with DexSQL."""

import argparse
import hashlib
from pathlib import Path
import subprocess


DECODE = [
    (2, 49977, "chat_forward"), (2, 49655, "chat_topic_id"),
    (2, 49506, "chat_mono_peer"), (2, 49940, "native_forward_delegate"),
    (2, 44797, "picker_select"), (2, 6117, "open_selected_topic"),
    (2, 49298, "delegate_default_d"), (2, 49379, "delegate_default_j"),
    (0, 45400, "destination_permissions"), (0, 40463, "ephemeral"),
    (2, 51020, "picker_send_comment"), (0, 39496, "comment_entities"),
]

SQL = """SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('x8','d','S8','v')) OR
(class_descriptor='Lorg/telegram/ui/vy;') OR
(class_descriptor='Lorg/telegram/ui/bz;' AND name IN ('<init>','M3')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('setCurrentAccount','getCurrentAccount','presentFragment','finishFragment')) OR
(class_descriptor='Lorg/telegram/messenger/TopicsController;' AND name='findTopic') OR
(class_descriptor='Lorg/telegram/messenger/MediaDataController;' AND name IN ('getInstance','getEntities')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='<init>') OR
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('getChat','getTopicsController','isFrozen')) OR
(class_descriptor='Lorg/telegram/messenger/ChatObject;' AND name='canManageMonoForum') OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name='canSendMessageToChat'))
ORDER BY file_id,method_idx"""

FIELDS = """SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('W3','f5')) OR
(class_descriptor='Lorg/telegram/ui/bz;' AND name='B2') OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage$TopicKey;') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$TL_forumTopic;' AND name IN ('topicStartMessage','closed'))
ORDER BY file_id,field_idx"""


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", default="Telegram.apk")
    parser.add_argument("--output", default="artifacts/dexsql/topic-forward-1310")
    args = parser.parse_args()
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    apk = Path(args.apk).resolve()
    output.joinpath("input-sha256.txt").write_text(hashlib.sha256(apk.read_bytes()).hexdigest() + "\n", encoding="ascii")
    for name, sql in [("methods", SQL), ("fields", FIELDS)]:
        output.joinpath(name + ".sql").write_text(sql + "\n", encoding="ascii")
        result = subprocess.run([args.dexsql, "query", "--input", str(apk), "--sql", sql], check=True, capture_output=True)
        output.joinpath(name + ".txt").write_bytes(result.stdout)
    for file_id, method_idx, name in DECODE:
        result = subprocess.run([
            args.dexsql, "decode", "--input", str(apk), "--file-id", str(file_id), "--method-idx", str(method_idx),
        ], check=True, capture_output=True)
        output.joinpath(name + ".smali").write_bytes(result.stdout.rstrip() + b"\n")
    print(f"Saved {len(DECODE)} method bodies and exact contracts to {output}")


if __name__ == "__main__":
    main()
