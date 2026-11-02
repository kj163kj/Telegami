"""Extract literal exact-reflection contracts from the Kotlin resolver layer.

This intentionally supports a small Kotlin expression subset, not arbitrary Kotlin.
Unresolved exact calls are reported and must be covered by reviewed explicit contracts.
"""
from pathlib import Path
import re

MAIN = Path(__file__).resolve().parent.parent / "app/src/main/java/com/aoya/telegami"
SOURCES = [
    "core/Telegram131Resolver.kt", "core/TelegramMessageResolver.kt",
    "core/TelegramHistoryResolver.kt", "core/TelegramForwardResolver.kt",
    "core/TelegramHistoryUiResolver.kt", "core/TelegramMediaResolver.kt",
    "core/TelegramPrivacyResolver.kt", "translation/TelegramTranslationResolver.kt",
    "hooks/messages/NativeMessageDialogs.kt", "hooks/messages/MessageTranslationHook.kt",
    "hooks/messages/MessageRepeatHook.kt", "hooks/PreventSecretMediaDeletion.kt",
    "hooks/messages/HistorySnapshotFactory.kt", "hooks/messages/MessageText.kt",
    "hooks/HideStoryViewStatus.kt", "hooks/UnlockChannelFeatures.kt",
    "virt/ui/ProfileActivity.kt", "translation/providers/TelegramNativeTranslator.kt",
]


def split_args(text):
    parts, start, depth, quoted, escape = [], 0, 0, False, False
    for i, ch in enumerate(text):
        if quoted:
            if escape:
                escape = False
            elif ch == "\\":
                escape = True
            elif ch == '"':
                quoted = False
        elif ch == '"':
            quoted = True
        elif ch in "(<[{":
            depth += 1
        elif ch in ")>]}":
            depth -= 1
        elif ch == "," and depth == 0:
            if text[start:i].strip():
                parts.append(text[start:i].strip())
            start = i + 1
    if text[start:].strip():
        parts.append(text[start:].strip())
    return parts


def expression_end(text, start):
    depth, quoted, escape = 0, False, False
    for i in range(start, len(text)):
        ch = text[i]
        if quoted:
            if escape:
                escape = False
            elif ch == "\\":
                escape = True
            elif ch == '"':
                quoted = False
        elif ch == '"':
            quoted = True
        elif ch in "([{":
            depth += 1
        elif ch in ")]}":
            if depth == 0:
                return i
            depth -= 1
        elif ch == "\n" and depth == 0:
            if text[i + 1:].lstrip().startswith("."):
                continue
            return i
    return len(text)


def descriptor(name):
    return "L" + name.replace(".", "/").replace("\\$", "$") + ";"


def extract(main=MAIN):
    records, unresolved = [], []
    common, send, translation, base = {}, {}, {}, {}
    for source in SOURCES:
        path = main / source
        raw = path.read_text(encoding="utf-8")
        text = re.sub(r"//[^\n]*", "", raw)
        imports = {s.rsplit(".", 1)[-1]: s for s in re.findall(r"^import ([\w.]+)$", text, re.M)}
        imports.update({s: "java.lang." + s for s in ["String", "CharSequence", "Thread", "Long", "Boolean", "Float"]})
        imports.update({"Any": "java.lang.Object", "ArrayList": "java.util.ArrayList", "File": "java.io.File",
                        "SparseArray": "android.util.SparseArray", "DialogInterface.OnDismissListener":
                        "android.content.DialogInterface$OnDismissListener", "DialogInterface.OnClickListener":
                        "android.content.DialogInterface$OnClickListener"})
        env = {
            "int": "I", "intType": "I", "long": "J", "longType": "J", "bool": "Z", "boolType": "Z",
            "voidType": "V", "list": "Ljava/util/ArrayList;", "listType": "Ljava/util/ArrayList;",
            **{"c." + k: v for k, v in common.items()},
            **{"target." + k: v for k, v in common.items()},
            **{"send." + k: v for k, v in send.items()},
            **{"t." + k: v for k, v in translation.items()},
            **{"Telegami.telegram." + k: v for k, v in base.items()},
        }
        if source == "virt/ui/ProfileActivity.kt":
            env["instance.javaClass"] = descriptor("org.telegram.ui.ProfileActivity")

        def evaluate(expr):
            expr = expr.strip().removesuffix("!!").strip()
            if any(token in expr for token in (".exactField(", ".getConstructor(", ".getDeclaredConstructor(")):
                expr = re.sub(r"\.(?:getInt|newInstance)\(.*$", "", expr, flags=re.S)
            if expr in env:
                return env[expr]
            if expr in ("t.requestType", "t.delegate", "t.errorType", "t.textType"):
                return translation[expr[2:]]
            if re.fullmatch(r'"[^"]*"', expr):
                return expr[1:-1].replace("\\$", "$")
            loop = re.fullmatch(r"listOf\((.*?)\)\s*\.(map|associateWith)\s*\{\s*(.*?)\s*\}", expr, re.S)
            if loop:
                names = re.findall(r'"([^"]+)"', loop[1])
                values = [evaluate(re.sub(r"\bit\b", '"' + name + '"', loop[3]))
                          if "$it" not in loop[3] else evaluate(loop[3].replace("$it", name))
                          for name in names]
                return dict(zip(names, values)) if loop[2] == "associateWith" else values
            literal_list = re.fullmatch(r"listOf\((.*)\)", expr, re.S)
            if literal_list:
                return [evaluate(item) for item in split_args(literal_list[1])]
            lookup = re.fullmatch(r'(\w+)\.getValue\("([^"]+)"\)', expr)
            if lookup:
                return env[lookup[1]][lookup[2]]
            if expr == "Void.TYPE":
                return "V"
            if expr.endswith(".type"):
                value = evaluate(expr[:-5])
                if isinstance(value, tuple):
                    return value[1]
            primitive = re.fullmatch(r"(Int|Long|Boolean|Float)::class.javaPrimitiveType", expr)
            if primitive:
                return {"Int": "I", "Long": "J", "Boolean": "Z", "Float": "F"}[primitive[1]]
            if expr == "ByteArray::class.java":
                return "[B"
            if expr.startswith("java.lang.reflect.Array.newInstance(SparseArray"):
                return "[Landroid/util/SparseArray;"
            array = re.fullmatch(r"Array<(\w+)>::class.java", expr)
            if array:
                return "[" + descriptor(imports.get(array[1], array[1]))
            java = re.fullmatch(r"([\w.]+)::class.java(?:ObjectType)?", expr)
            if java:
                return descriptor(imports.get(java[1], java[1]))
            literal_type = re.fullmatch(r"(?:[\w.]+\.)?(?:type|loadClass)\(([^()]*)\)", expr)
            if literal_type:
                return descriptor(evaluate(literal_type[1]))
            call = re.fullmatch(r"(.+)\.(exactMethod|exactField|getConstructor|getDeclaredConstructor)\((.*)\)", expr, re.S)
            if call:
                receiver = evaluate(call[1])
                if not isinstance(receiver, str) or not receiver.startswith("L"):
                    raise ValueError(expr)
                args = split_args(call[3])
                if call[2] in ("getConstructor", "getDeclaredConstructor"):
                    full = receiver + "-><init>(" + "".join(evaluate(a) for a in args) + ")V"
                    result = receiver
                else:
                    if not re.fullmatch(r'"[\w\\$]+"', args[0]):
                        raise ValueError(expr)
                    name = args[0][1:-1].replace("\\$", "$")
                    result = evaluate(args[1])
                    full = receiver + "->" + name
                    full += (":" + result if call[2] == "exactField" else
                             "(" + "".join(evaluate(a) for a in args[2:]) + ")" + result)
                records.append({"source": source, "descriptor": full})
                return (call[2], result)
            raise ValueError(expr)

        # Evaluate declarations in order, preserving the scope reset between the two resolver classes.
        for match in re.finditer(r"\bval\s+(\w+)(?:\s*:\s*[^=\n]+)?\s*=\s*", text):
            if source.endswith("TelegramMessageResolver.kt") and match.start() > text.index("class TelegramSendResolver") and not common:
                common.update(env)
                env.update({"c." + k: v for k, v in common.items()})
            value = text[match.end():expression_end(text, match.end())].strip()
            try:
                env[match[1]] = evaluate(value)
            except (ValueError, TypeError, KeyError):
                if ".exactMethod(" in value or ".exactField(" in value or ".getConstructor(" in value:
                    unresolved.append({"source": source, "variable": match[1], "expression": value})
        # Calls inside return expressions and callback bodies have no val declaration.
        # Looped calls using `it` are already expanded above.
        pattern = r'([\w.]+(?:\("[^"]*"\))?)\.(exactMethod|exactField|getConstructor|getDeclaredConstructor)\('
        for match in re.finditer(pattern, text):
            start = match.end()
            depth, quoted, escape, end = 1, False, False, start
            for end in range(start, len(text)):
                ch = text[end]
                if quoted:
                    if escape:
                        escape = False
                    elif ch == "\\":
                        escape = True
                    elif ch == '"':
                        quoted = False
                elif ch == '"':
                    quoted = True
                elif ch == "(":
                    depth += 1
                elif ch == ")":
                    depth -= 1
                    if depth == 0:
                        break
            try:
                evaluate(text[match.start():end + 1])
            except (ValueError, TypeError, KeyError):
                call_text = text[match.start():end + 1]
                for loop in re.finditer(r'for\s*\((\w+)\s+in\s+listOf\(([^)]*)\)\)', text):
                    if re.search(r"\(" + loop[1] + r"\s*[,)]", call_text):
                        for name in re.findall(r'"([^"]+)"', loop[2]):
                            evaluate(re.sub(r"\(" + loop[1] + r"\b", '("' + name + '"', call_text))
        if source.endswith("TelegramTranslationResolver.kt"):
            for kind in env["kinds"].values():
                records.append({"source": source, "descriptor": kind + "-><init>()V"})
            records.append({"source": source, "descriptor": env["textType"] + "-><init>()V"})
        if source.endswith("Telegram131Resolver.kt"):
            base = env.copy()
        elif source.endswith("TelegramMessageResolver.kt"):
            send = env.copy()
        elif source.endswith("TelegramTranslationResolver.kt"):
            translation = env.copy()
    return sorted({(r["source"], r["descriptor"]) for r in records}), unresolved


if __name__ == "__main__":
    rows, unresolved = extract()
    print(f"Extracted {len(rows)} exact contracts")
    for item in unresolved:
        print(item["source"], item["variable"], item["expression"])
