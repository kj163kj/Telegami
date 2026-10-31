"""Reproduce native-history UI and capture contracts from the supplied APK."""

import argparse
import hashlib
from pathlib import Path
import subprocess


QUERIES = {
    "methods": """SELECT file_id,method_idx,descriptor FROM methods WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('createActionBar','getActionBar')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/l;' AND name IN ('getTitle','setTitle','setSubtitle','setBackButtonImage','getBackButton','setOccupyStatusBar','i','w')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/z;' AND name='a') OR
(class_descriptor='Lorg/telegram/ui/ActionBar/x0;' AND name IN ('k','getSearchField','setSearchFieldHint','L')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/n6;' AND name='t0') OR
(class_descriptor='Lorg/telegram/ui/Cells/x0;' AND name IN ('<init>','setCustomText')) OR
(class_descriptor='Lorg/telegram/ui/Cells/u1;' AND name IN ('<init>','V3','setFullyDraw','setAllowAssistant','getPhotoImage','setDelegate','z3')) OR
(class_descriptor='Lorg/telegram/ui/Cells/l1;') OR
(class_descriptor='Lorg/telegram/messenger/ImageReceiver;' AND name='setImageBitmap') OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='<init>') OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage;' AND name IN ('lambda$putMessages$238','putMessagesInternal')))
ORDER BY file_id,method_idx""",
    "fields": """SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/ui/ActionBar/x0;' AND name='F') OR
(class_descriptor='Lorg/telegram/ui/Cells/u1;' AND name='M7') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name IN ('edit_hide','reply_to','ttl','ttl_period'))
ORDER BY file_id,field_idx""",
    "capture_calls": """SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls
WHERE callee_class='Lorg/telegram/messenger/MessagesStorage;' AND callee_name IN ('putMessagesInternal','putMessages')
AND method_class IN ('Lorg/telegram/messenger/MessagesStorage;','Lorg/telegram/messenger/MessagesController;')
ORDER BY file_id,method_idx,callee""",
}
DECODE = [
    (2, 24569, "create_action_bar"), (2, 24047, "create_menu"),
    (2, 25046, "add_item"), (2, 24929, "init_search"),
    (2, 24923, "search_field"), (2, 24905, "toggle_search"),
    (2, 24115, "search_visibility"), (2, 24348, "cached_wallpaper"),
    (2, 26873, "message_cell_constructor"), (2, 27244, "fully_draw"),
    (2, 26984, "bind_message"),
    (2, 27305, "need_draw_avatar"),
    (2, 27613, "action_cell_constructor"), (2, 27686, "service_text"),
    (0, 43214, "put_messages_internal"), (0, 43033, "edit_storage"),
]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", default="Telegram.apk")
    parser.add_argument("--output", default="artifacts/dexsql/history-native-1310")
    args = parser.parse_args()
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    apk = Path(args.apk).resolve()
    output.joinpath("input-sha256.txt").write_text(hashlib.sha256(apk.read_bytes()).hexdigest() + "\n", encoding="ascii")
    for name, sql in QUERIES.items():
        output.joinpath(name + ".sql").write_text(sql + "\n", encoding="ascii")
        result = subprocess.run([args.dexsql, "query", "--input", str(apk), "--sql", sql], check=True, capture_output=True)
        output.joinpath(name + ".txt").write_bytes(result.stdout)
    for file_id, method_idx, name in DECODE:
        result = subprocess.run([args.dexsql, "decode", "--input", str(apk), "--file-id", str(file_id), "--method-idx", str(method_idx)], check=True, capture_output=True)
        output.joinpath(name + ".smali").write_bytes(result.stdout.rstrip() + b"\n")
    print("PASS: recorded native history UI and pre-write capture DEX contracts")


if __name__ == "__main__":
    main()
