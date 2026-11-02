"""Audit prior DEX evidence and mapping entries against the supplied replacement APK.

Method indexes are resolved from descriptors on every run, never reused across APKs.
This is a structural audit; decoded call sites still require semantic review.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parent.parent
MAPPING = ROOT / "app/src/main/assets/obfuscation_mappings/telegram.json"
MEMBER = re.compile(r"L[\w/$]+;->[\w$<>]+(?:\([^()\s]*\)[\w/$;\[]+|:[\w/$;\[]+)")


def query(tool, apk, sql):
    result = subprocess.run([tool, "query", "--input", str(apk), "--sql", sql],
                            capture_output=True, check=True).stdout.decode("utf-8")
    rows = [line.split("|")[1:-1] for line in result.splitlines() if line.startswith("|")]
    if not rows:
        return [], result
    headers = [v.strip() for v in rows[0]]
    return [dict(zip(headers, (v.strip() for v in row))) for row in rows[1:]], result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dexsql", required=True)
    parser.add_argument("--apk", type=Path, default=ROOT / "Telegram.apk")
    parser.add_argument("--output", type=Path, default=ROOT / "artifacts/dexsql/upgrade-1311")
    parser.add_argument("--decode", action="store_true")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    methods, _ = query(args.dexsql, args.apk,
                      "SELECT file_id,method_idx,class_descriptor,name,descriptor FROM methods WHERE method_kind IS NOT NULL")
    fields, _ = query(args.dexsql, args.apk,
                     "SELECT DISTINCT class_descriptor,name,descriptor FROM fields")
    all_members = {row["descriptor"]: row for row in methods + fields}
    previous = {}
    for path in sorted((ROOT / "artifacts/dexsql").glob("*-1310/*.txt")):
        for member in MEMBER.findall(path.read_text(encoding="utf-8")):
            previous.setdefault(member, []).append(str(path.relative_to(ROOT)).replace("\\", "/"))
    report = {
        "apk_sha256": hashlib.sha256(args.apk.read_bytes()).hexdigest(),
        "previous_evidence_members": len(previous),
        "missing_previous_members": [
            {"descriptor": name, "evidence": sources}
            for name, sources in previous.items() if name not in all_members
        ],
        "mapping": [],
    }
    mappings = json.loads(MAPPING.read_text(encoding="utf-8"))["mappings"]
    for original, mapping in mappings.items():
        owner = "L" + mapping["obfuscated"].replace(".", "/") + ";"
        for kind, members in (("methods", methods), ("fields", fields)):
            for name, entry in mapping.get(kind, {}).items():
                matches = [r for r in members if r["class_descriptor"] == owner and r["name"] == entry["obfuscated"]]
                report["mapping"].append({
                    "class": original, "member": name, "kind": kind,
                    "mapped": owner + "->" + entry["obfuscated"],
                    "matches": matches,
                })
    (args.output / "audit.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    # Keep a compact, current-APK index of contracts previously evidenced by the project.
    verified = [all_members[name] for name in sorted(previous) if name in all_members]
    (args.output / "verified-members.json").write_text(json.dumps(verified, indent=2) + "\n", encoding="utf-8")
    if args.decode:
        for path in sorted((ROOT / "artifacts/dexsql").glob("*-1310/*.smali")):
            text = path.read_text(encoding="utf-8")
            # DexSQL prints the complete method descriptor in its header.
            match = MEMBER.search(text)
            if not match or match[0] not in all_members:
                continue
            row = all_members[match[0]]
            if "method_idx" not in row:
                continue
            target = args.output / path.parent.name.replace("-1310", "") / path.name
            target.parent.mkdir(parents=True, exist_ok=True)
            result = subprocess.run([args.dexsql, "decode", "--input", str(args.apk),
                                     "--file-id", row["file_id"], "--method-idx", row["method_idx"]],
                                    capture_output=True, check=True)
            target.write_bytes(result.stdout.rstrip() + b"\n")
    missing = [item for item in report["mapping"] if not item["matches"]]
    print(f"Prior evidenced members: {len(previous)}, missing: {len(report['missing_previous_members'])}")
    print(f"Mapping entries: {len(report['mapping'])}, missing: {len(missing)}")
    for item in missing:
        print(f"MISSING {item['class']}.{item['member']} => {item['mapped']}")


if __name__ == "__main__":
    main()
