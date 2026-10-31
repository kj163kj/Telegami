"""Reproduce privacy/channel hook contracts against the supplied official APK."""

import argparse
import hashlib
from pathlib import Path
import subprocess


QUERIES = {
    "methods": """SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('isChatNoForwards','updateTimerProc')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='canForwardMessage') OR
(class_descriptor='Lorg/telegram/tgnet/ConnectionsManager;' AND name IN ('sendRequest','sendRequestInternal')) OR
(class_descriptor='Lorg/telegram/tgnet/tl/TL_account$updateStatus;' AND name IN ('<init>','serializeToStream')) OR
(class_descriptor='Lorg/telegram/tgnet/TLObject;' AND name='getObjectSize') OR
(class_descriptor='Lorg/telegram/messenger/UserConfig;' AND name IN ('getInstance','getMaxAccountCount','isClientActivated')) OR
(class_descriptor='Lxg/o5;' AND name='V') OR
(class_descriptor='Lxg/h5;' AND name='r') OR
(class_descriptor='Lxg/m2;' AND name='b') OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('D9','q8','L7')))
ORDER BY file_id,method_idx""",
    "fields": """SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/tgnet/tl/TL_account$updateStatus;' AND name='offline') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name='noforwards')
ORDER BY file_id,field_idx""",
    "story_callers": """SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls WHERE
(callee_class='Lxg/o5;' AND callee_name='V') OR
(callee_class='Lxg/h5;' AND callee_name='r') OR
(callee_class IN ('Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;',
'Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;',
'Lorg/telegram/tgnet/tl/TL_account$updateStatus;') AND callee_name='<init>')
ORDER BY file_id,method_idx,callee""",
}

DECODE = [
    (0, 41539, "protection_dialog"), (0, 41540, "protection_chat"),
    (0, 40183, "can_forward"), (2, 49308, "chat_protection"),
    (2, 49877, "menu_fill"), (3, 20936, "story_mark_read"),
    (3, 20557, "story_increment"), (2, 19906, "status_serialize"),
    (0, 42441, "status_producer"), (2, 12183, "send_internal"),
    (2, 12181, "send_request_queue"), (0, 46549, "max_accounts"),
]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", default="Telegram.apk", type=Path)
    parser.add_argument("--output", default="artifacts/dexsql/privacy-channel-1310", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "input-sha256.txt").write_text(
        hashlib.sha256(args.apk.read_bytes()).hexdigest() + "\n", encoding="ascii",
    )
    for name, sql in QUERIES.items():
        (args.output / f"{name}.sql").write_text(sql + "\n", encoding="ascii")
        result = subprocess.run(
            [args.dexsql, "query", "--input", str(args.apk), "--sql", sql],
            check=True, capture_output=True,
        )
        (args.output / f"{name}.txt").write_bytes(result.stdout)
    for file_id, method_idx, name in DECODE:
        result = subprocess.run(
            [args.dexsql, "decode", "--input", str(args.apk), "--file-id", str(file_id),
             "--method-idx", str(method_idx)], check=True, capture_output=True,
        )
        (args.output / f"{name}.smali").write_bytes(result.stdout.rstrip() + b"\n")
    print("PASS: privacy/channel contracts and call sites extracted with DexSQL")


if __name__ == "__main__":
    main()
