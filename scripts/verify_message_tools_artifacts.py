"""Verify local message-tool deliverables without implying device acceptance."""

from pathlib import Path
import hashlib
import re
import xml.etree.ElementTree as ET
import zipfile


root = Path(__file__).resolve().parent.parent
main = root / "app/src/main"
assert 'libxposedApi = "102.0.0"' in (root / "gradle/libs.versions.toml").read_text(encoding="utf-8")
business = [*main.glob("java/com/aoya/telegami/hooks/messages/*.kt"),
            main / "java/com/aoya/telegami/XposedInit.kt",
            main / "java/com/aoya/telegami/service/Config.kt"]
for file in business:
    text = file.read_text(encoding="utf-8")
    assert "de.robv.android.xposed" not in text and "XSharedPreferences" not in text, file
print("PASS: new business hooks use Modern API; no Legacy API references")

for name in ["debug/app-debug.apk", "release/app-release-unsigned.apk"]:
    apk = root / "app/build/outputs/apk" / name
    with zipfile.ZipFile(apk) as archive:
        properties = archive.read("META-INF/xposed/module.prop").decode("utf-8")
        assert "minApiVersion=102" in properties and "targetApiVersion=102" in properties
        scope = archive.read("META-INF/xposed/scope.list").decode("utf-8").split()
        assert set(scope) == {"org.telegram.messenger", "org.telegram.messenger.web"}
        assert archive.read("META-INF/xposed/java_init.list").decode("utf-8").strip() == "com.aoya.telegami.XposedInit"
        assert "assets/xposed_init" not in archive.namelist()
        assert any(entry.endswith(".dex") for entry in archive.namelist())
    print(f"PASS: {name} size={apk.stat().st_size} SHA256={hashlib.sha256(apk.read_bytes()).hexdigest()}")

results = [ET.parse(file).getroot() for file in (root / "app/build/test-results/testDebugUnitTest").glob("TEST-*.xml")]
assert results, "No unit results"
counts = {key: sum(int(result.get(key, "0")) for result in results) for key in ["tests", "failures", "errors", "skipped"]}
assert counts["failures"] == counts["errors"] == counts["skipped"] == 0, counts
print("PASS: JVM unit results", counts)

generated = root / "app/build/generated/ksp/debug/kotlin/com/aoya/telegami/data/AppDatabase_Impl.kt"
assert re.search(r"RoomOpenDelegate\(3,", generated.read_text(encoding="utf-8"))
print("PASS: Room generated v3 implementation")
print("UNVERIFIED: installation, LSPosed loading, target reflection, menu/send/clipboard/history runtime and regression")
