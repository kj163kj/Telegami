"""Reproduce translation contracts from the locally supplied official APK."""
import argparse
import hashlib
from pathlib import Path
import subprocess

QUERIES = {
    "methods": """SELECT file_id,method_idx,descriptor FROM methods WHERE method_kind IS NOT NULL AND (
class_descriptor IN ('Lorg/telegram/ui/Components/r51;','Lorg/telegram/ui/ActionBar/AlertDialog$Builder;') OR
(class_descriptor='Lorg/telegram/messenger/MediaDataController;' AND name='getEntities') OR
(class_descriptor='Lorg/telegram/messenger/TranslateController;' AND name IN
('pushToTranslate','checkTranslation','invalidateTranslation','cancelTranslations')) OR
(class_descriptor='Lorg/telegram/tgnet/ConnectionsManager;' AND name IN ('sendRequest','cancelRequest','getInstance')) OR
class_descriptor='Lorg/telegram/tgnet/RequestDelegate;' OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('q8','Fa'))) ORDER BY file_id,method_idx""",
    "fields": """SELECT file_id,field_idx,descriptor FROM fields WHERE class_descriptor IN
('Lorg/telegram/ui/Components/r51;','Lorg/telegram/ui/ActionBar/k3;','Lorg/telegram/tgnet/TLRPC$TL_error;','Lorg/telegram/tgnet/TLRPC$MessageEntity;',
'Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;','Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;',
'Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;','Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;',
'Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;') ORDER BY file_id,field_idx""",
    "calls": """SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls WHERE
callee_class='Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;' OR
(method_class='Lorg/telegram/ui/Components/r51;' AND callee_class IN
('Lorg/telegram/tgnet/ConnectionsManager;','Lorg/telegram/ui/Components/r51;')) ORDER BY file_id,method_idx""",
}
DECODE = [(2, 37477, "sheet_constructor"), (2, 37490, "sheet_request"),
          (2, 37496, "sheet_render"), (2, 37497, "sheet_callback"), (2, 37494, "sheet_dismiss"),
          (0, 46453, "controller_queue"), (0, 46434, "controller_send"),
          (2, 17395, "native_request"), (2, 17387, "native_result")]

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--dexsql", required=True)
    p.add_argument("--apk", type=Path, default=Path("Telegram.apk"))
    p.add_argument("--output", type=Path, default=Path("artifacts/dexsql/translation-1310"))
    a = p.parse_args()
    a.output.mkdir(parents=True, exist_ok=True)
    (a.output / "input-sha256.txt").write_text(hashlib.sha256(a.apk.read_bytes()).hexdigest()+"\n")
    for name, sql in QUERIES.items():
        (a.output / (name+".sql")).write_text(sql+"\n", encoding="ascii")
        r = subprocess.run([a.dexsql, "query", "--input", str(a.apk), "--sql", sql], capture_output=True, check=True)
        (a.output / (name+".txt")).write_bytes(r.stdout)
    for file_id, idx, name in DECODE:
        r = subprocess.run([a.dexsql, "decode", "--input", str(a.apk), "--file-id", str(file_id), "--method-idx", str(idx)], capture_output=True, check=True)
        (a.output / (name+".smali")).write_bytes(r.stdout)
    print("PASS: translation DEX contracts captured")

if __name__ == "__main__":
    main()
