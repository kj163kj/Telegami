"""Verify translation handoff/security contracts and generate a factual JVM test summary."""
import argparse
import json
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parent.parent
MAIN = ROOT / "app/src/main"
EVIDENCE = ROOT / "artifacts/dexsql/translation-1310"
ANDROID = "{http://schemas.android.com/apk/res/android}"


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--report", type=Path)
    args = p.parse_args()
    manifest = ET.parse(MAIN / "AndroidManifest.xml").getroot()
    assert any(item.get(ANDROID + "name") == "android.permission.INTERNET" for item in manifest.findall("uses-permission"))
    app = manifest.find("application")
    provider = app.find("provider")
    assert provider.get(ANDROID + "name") == ".translation.TranslationBroker"
    assert provider.get(ANDROID + "authorities") == "${applicationId}.translation"
    assert provider.get(ANDROID + "exported") == "true"
    security = ET.parse(MAIN / "res/xml/translation_network_security.xml").getroot()
    assert security.find("base-config").get("cleartextTrafficPermitted") == "false"
    assert {node.text for node in security.findall("domain-config/domain")} == {"localhost", "127.0.0.1", "::1"}

    methods = (EVIDENCE / "methods.txt").read_text(encoding="utf-8")
    required = [
        "Lorg/telegram/ui/Components/r51;->N()V",
        "Lorg/telegram/ui/Components/r51;->dismiss()V",
        "Lorg/telegram/ui/Components/r51;->dismissInternal()V",
        "Lorg/telegram/ui/Components/r51;->o(Lorg/telegram/ui/Components/r51;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V",
        "Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->f([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V",
        "Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;",
        "Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I",
        "Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V",
    ]
    for descriptor in required:
        assert descriptor in methods, descriptor
    entities = (EVIDENCE / "entity_types.txt").read_text(encoding="utf-8")
    for kind in ("Bold", "Italic", "Underline", "Strike", "Code", "Pre", "TextUrl", "Mention", "MentionName", "CustomEmoji", "Blockquote", "Spoiler", "Url", "Email", "Hashtag", "BotCommand", "Phone", "Cashtag"):
        assert f"TLRPC$TL_messageEntity{kind};-><init>()V" in entities, kind
    print("PASS: native descriptors, entity types, broker manifest and transport policy")

    suites = []
    live = []
    for path in sorted((ROOT / "app/build/test-results/testDebugUnitTest").glob("TEST-*.xml")):
        suite = ET.parse(path).getroot()
        suites.append({key: suite.get(key) for key in ("name", "tests", "failures", "errors", "skipped")})
        live.extend(line for line in suite.findtext("system-out", "").splitlines() if line.startswith(("LIVE ", "LIVE_FORMAT ")))
    assert suites, "No JVM results found"
    totals = {key: sum(int(suite[key]) for suite in suites) for key in ("tests", "failures", "errors", "skipped")}
    assert totals["failures"] == 0 and totals["errors"] == 0, totals
    report = {"jvm": totals, "suites": suites, "live_probes": live, "device": "UNVERIFIED: runtime not executed by this script", "keystore_instrumentation": "UNVERIFIED: compiled only"}
    if args.report:
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"PASS: JVM results {totals}")
    print("UNVERIFIED: native UI, LSPosed IPC, Keystore runtime, Telegram account API and restarts")


if __name__ == "__main__":
    main()
