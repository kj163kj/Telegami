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
from hook_contracts import extract

ROOT = Path(__file__).resolve().parent.parent
MAPPING = ROOT / "app/src/main/assets/obfuscation_mappings/telegram.json"
MEMBER = re.compile(r"L[\w/$]+;->[\w$<>]+(?:\([^()\s]*\)[\w/$;\[]+|:[\w/$;\[]+)")
SEMANTIC = {
    "Lorg/telegram/ui/Components/s51;->N()V": ["TLRPC$TL_messages_translateText;-><init>", "ConnectionsManager;->sendRequest"],
    "Lorg/telegram/ui/Components/s51;->o(Lorg/telegram/ui/Components/s51;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V": ["MessageObject;->addEntitiesToText", "TextView;->setText"],
    "Lxg/g5;->r(I)Z": ["TL_stories$TL_stories_incrementStoryViews;-><init>"],
    "Lxg/o5;->V(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z": ["TL_stories$TL_stories_readStories;-><init>"],
    "Lxg/m2;->b(Landroid/graphics/Canvas;)V": ["Lxg/g5;->r(I)Z", "Lxg/o5;->V("],
    "Lxg/e3;->d()Z": ["TL_stories$StoryItem;->noforwards:Z"],
    "Lorg/telegram/ui/ko;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z": ["ko;->bd(Z)V"],
    "Lorg/telegram/ui/ko;->bd(Z)V": ["ko;->V5:[Landroid/util/SparseArray;"],
    "Lorg/telegram/ui/ko;->w6()V": ["MessagesController;->getSponsoredMessages"],
    "Lorg/telegram/ui/ko;->P4(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;)Lbh/f4;": ["MessagesController;->createDeleteShowOnceTask"],
    "Lorg/telegram/ui/vn;->n0(Lorg/telegram/ui/Cells/u1;FFZ)V": ["SecretMediaViewer;->g0:", "SecretMediaViewer;->s:Z", "ko;->P4("],
    "Lorg/telegram/ui/hq0;->x0()V": ["hq0;->h:Lorg/telegram/ui/bq0;", "hq0;->n:Lorg/telegram/ui/bq0;", "bq0;->h:I", "bq0;->n:J", "TL_account$updateColor;->for_profile:Z"],
    "Lorg/telegram/ui/ActionBar/n6;->B0()Lorg/telegram/ui/ActionBar/m6;": ["n6;->"],
}


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
    parser.add_argument("--verify", action="store_true", help="Fail on missing source/mapping contracts or semantic anchors")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    methods, _ = query(args.dexsql, args.apk,
                      "SELECT file_id,method_idx,class_descriptor,name,descriptor FROM methods WHERE method_kind IS NOT NULL")
    fields, _ = query(args.dexsql, args.apk,
                     "SELECT file_id,field_idx,class_descriptor,field_name AS name,field_descriptor AS descriptor FROM class_fields")
    all_members = {row["descriptor"]: row for row in methods + fields}
    classes, _ = query(args.dexsql, args.apk, "SELECT descriptor,superclass_descriptor FROM classes")
    parents = {row["descriptor"]: row["superclass_descriptor"] for row in classes}
    source_contracts, unresolved = extract()
    assert not unresolved, f"Unresolved source declarations: {unresolved}"
    contracts = []
    for source, requested in source_contracts:
        owner, member = requested.split("->")
        resolved = requested
        while resolved not in all_members and owner in parents and not member.startswith("<init>"):
            owner = parents[owner]
            resolved = owner + "->" + member
        contracts.append({"source": source, "requested": requested, "resolved": all_members.get(resolved)})
    (args.output / "source-contracts.json").write_text(json.dumps(contracts, indent=2) + "\n", encoding="utf-8")
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
                    "expected_descriptor": entry.get("descriptor"),
                    "exact_match": any(r["descriptor"] == entry.get("descriptor") for r in matches),
                })
    (args.output / "audit.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    # Keep a compact, current-APK index of contracts previously evidenced by the project.
    verified = [all_members[name] for name in sorted(previous) if name in all_members]
    (args.output / "verified-members.json").write_text(json.dumps(verified, indent=2) + "\n", encoding="utf-8")
    if args.decode or args.verify:
        for index, name in enumerate(SEMANTIC):
            row = all_members[name]
            target = args.output / f"semantic-{index:02d}.smali"
            result = subprocess.run([args.dexsql, "decode", "--input", str(args.apk),
                                     "--file-id", row["file_id"], "--method-idx", row["method_idx"]],
                                    capture_output=True, check=True)
            target.write_bytes(result.stdout.rstrip() + b"\n")
    if args.verify:
        failed = [c for c in contracts if c["resolved"] is None]
        assert not failed, f"Missing source contracts: {failed}"
        assert all(item["exact_match"] for item in report["mapping"]), "Missing or mismatched full mapping descriptors"
        for index, (method, anchors) in enumerate(SEMANTIC.items()):
            text = (args.output / f"semantic-{index:02d}.smali").read_text(encoding="utf-8")
            assert f'descriptor="{method}"' in text
            for anchor in anchors:
                assert anchor in text, f"Semantic anchor absent: {method}: {anchor}"
        print(f"PASS: {len(contracts)} source contracts, {len(report['mapping'])} full mapping descriptors and {len(SEMANTIC)} semantic checks")
    missing = [item for item in report["mapping"] if not item["matches"]]
    print(f"Prior evidenced members: {len(previous)}, missing: {len(report['missing_previous_members'])}")
    print(f"Mapping entries: {len(report['mapping'])}, missing: {len(missing)}")
    for item in missing:
        print(f"MISSING {item['class']}.{item['member']} => {item['mapped']}")


if __name__ == "__main__":
    main()
