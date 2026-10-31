"""Capture native dialogs, protected-media download/upload and forward routing contracts."""

import argparse
import hashlib
from pathlib import Path
import subprocess


QUERIES = {
    "methods": """SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
class_descriptor IN ('Lorg/telegram/ui/ActionBar/AlertDialog$Builder;','Lorg/telegram/ui/ActionBar/e2;') OR
(class_descriptor='Lorg/telegram/messenger/FileLoader;' AND name IN
('loadFile','getAttachFileName','getPathToAttach','getPathToMessage','getClosestPhotoSizeWithSize','isLoadingFile')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name IN ('getSize','getMessageSize')) OR
(class_descriptor='Lorg/telegram/messenger/ImageLocation;' AND name='getForPhoto') OR
(class_descriptor='Lorg/telegram/messenger/NotificationCenter;' AND name IN ('getInstance','addObserver','removeObserver')) OR
class_descriptor='Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;' OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name IN ('generatePhotoSizes','sendMessage')) OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('v','ad','getResourceProvider','y6')))
ORDER BY file_id,method_idx""",
    "fields": """SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/messenger/NotificationCenter;' AND name IN ('fileLoaded','fileLoadFailed')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Document;' AND name IN
('id','access_hash','file_reference','size','dc_id','flags','thumbs','video_thumbs')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Photo;' AND name='sizes') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$PhotoSize;' AND name='size') OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('g5','h5','V5','W5','X5','e5','m5')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject$GroupedMessages;' AND name='messages')
ORDER BY file_id,field_idx""",
    "notifications": """SELECT DISTINCT file_id,method_idx,method,field FROM method_field_accesses
WHERE field_class='Lorg/telegram/messenger/NotificationCenter;' AND field_name IN ('fileLoaded','fileLoadFailed')
AND method_class LIKE 'Lorg/telegram/messenger/ImageLoader%'
ORDER BY file_id,method_idx""",
}

DECODE = [
    (2, 23269, "dialog_constructor"), (2, 23276, "dialog_message"),
    (2, 23277, "dialog_negative"), (2, 23280, "dialog_positive"),
    (2, 23281, "dialog_title"), (2, 23279, "dialog_dismiss"),
    (2, 23284, "dialog_show"), (0, 36681, "load_photo"),
    (0, 36684, "load_document"), (0, 36638, "attach_path"),
    (0, 40370, "message_size"), (0, 45444, "generate_photo"),
    (0, 45445, "generate_photo_local_fields"),
    (2, 17729, "photo_size_serialization"),
    (2, 49940, "native_forward_selection"),
    (0, 37569, "file_failed_notification"), (0, 37572, "file_loaded_notification"),
]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", type=Path, default=Path("Telegram.apk"))
    parser.add_argument("--output", type=Path, default=Path("artifacts/dexsql/local-forward-1310"))
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
    for file_id, index, name in DECODE:
        result = subprocess.run(
            [args.dexsql, "decode", "--input", str(args.apk), "--file-id", str(file_id),
             "--method-idx", str(index)], check=True, capture_output=True,
        )
        (args.output / f"{name}.smali").write_bytes(result.stdout.rstrip() + b"\n")
    result = subprocess.run(
        [args.dexsql, "decode", "--input", str(args.apk), "--file-id", "0", "--method-idx", "45704"],
        check=True, capture_output=True, text=True, encoding="utf-8",
    )
    lines = result.stdout.splitlines()
    selected = {0, 1}
    for index, line in enumerate(lines):
        if "->access_hash:J" in line or "TL_inputMediaUploaded" in line:
            selected.update(range(max(0, index - 12), min(len(lines), index + 28)))
    excerpt = ["# Non-contiguous excerpts of sendMessage(SendMessageParams); original decoded line numbers follow."]
    previous = -1
    for index in sorted(selected):
        if index != previous + 1:
            excerpt.append(f"# ... omitted; decoded line {index + 1}")
        excerpt.append(lines[index])
        previous = index
    (args.output / "upload_branch_excerpts.smali").write_text("\n".join(excerpt) + "\n", encoding="utf-8")
    print("PASS: native dialogs, media and forward routing contracts extracted")


if __name__ == "__main__":
    main()
