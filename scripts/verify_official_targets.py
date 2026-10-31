"""Check official-only source configuration and optionally built APK assets."""

import argparse
import ast
import hashlib
import json
from pathlib import Path
import xml.etree.ElementTree as ET
import zipfile


ROOT = Path(__file__).resolve().parent.parent
MAIN = ROOT / "app/src/main"
OFFICIAL = {"org.telegram.messenger", "org.telegram.messenger.web"}
REMOVED_PACKAGES = {
    "it.octogram.android", "nu.gpu.nagram", "org.forkclient.messenger.beta",
    "org.forkgram.messenger", "org.telegram.group", "org.telegram.messenger.beta",
    "org.telegram.plus", "tw.nekomimi.nekogram", "uz.unnarsx.cherrygram",
    "xyz.nextalone.nagram",
}


def check_source():
    scope = (MAIN / "resources/META-INF/xposed/scope.list").read_text().split()
    assert len(scope) == len(OFFICIAL) and set(scope) == OFFICIAL, scope
    arrays = ET.parse(MAIN / "res/values/array.xml").getroot()
    legacy_scope = [item.text for item in arrays.find("string-array[@name='xposed_scope']")]
    assert len(legacy_scope) == len(OFFICIAL) and set(legacy_scope) == OFFICIAL, legacy_scope

    directory = MAIN / "assets/obfuscation_mappings"
    assert {path.name for path in directory.iterdir()} == {"telegram.json"}
    mapping = json.loads((directory / "telegram.json").read_text(encoding="utf-8"))
    assert mapping["variant"] == "telegram" and mapping["package_name"] in OFFICIAL

    for path in (MAIN / "java").rglob("*.kt"):
        text = path.read_text(encoding="utf-8")
        assert not any(package in text for package in REMOVED_PACKAGES), path
    assert not (MAIN / "java/com/aoya/telegami/hooks/HideUpdate.kt").exists()

    checker = ast.parse((ROOT / "scripts/check_versions.py").read_text(encoding="utf-8"))
    assignment = next(node for node in checker.body if isinstance(node, ast.Assign)
                      and any(isinstance(target, ast.Name) and target.id == "TELEGRAM_VARIANTS"
                              for target in node.targets))
    tracked = ast.literal_eval(assignment.value)
    assert tracked and set(tracked) <= OFFICIAL
    versions = json.loads((ROOT / "versions.json").read_text(encoding="utf-8"))
    assert set(versions) == set(tracked)
    assert all(key == value["package_name"] for key, value in versions.items())
    print("PASS: official-only scopes, mapping assets, runtime branches and version tracking")


def check_apk(path):
    with zipfile.ZipFile(path) as archive:
        scope = archive.read("META-INF/xposed/scope.list").decode().split()
        assert len(scope) == len(OFFICIAL) and set(scope) == OFFICIAL, scope
        mappings = {name for name in archive.namelist()
                    if name.startswith("assets/obfuscation_mappings/") and not name.endswith("/")}
        assert mappings == {"assets/obfuscation_mappings/telegram.json"}, mappings
        properties = archive.read("META-INF/xposed/module.prop").decode()
        assert "minApiVersion=102" in properties and "targetApiVersion=102" in properties
        assert archive.read("META-INF/xposed/java_init.list").decode().strip() == "com.aoya.telegami.XposedInit"
        icon = archive.read("assets/icons/nagramx_msg_repeat.png")
        assert hashlib.sha256(icon).hexdigest() == "d9514e52ea2824862e272c48af0c96d99c3c4996d5d51146760e4a644b67851c"
        assert not any(name.endswith((".p12", ".jks", ".keystore", "keystore.properties"))
                       for name in archive.namelist())
    print(f"PASS: {path.name} official-only mappings/scope, API 102 and preserved NagramX icon")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", action="append", type=Path, default=[])
    args = parser.parse_args()
    check_source()
    for path in args.apk:
        check_apk(path)
    print("UNVERIFIED: device installation and LSPosed runtime")


if __name__ == "__main__":
    main()
