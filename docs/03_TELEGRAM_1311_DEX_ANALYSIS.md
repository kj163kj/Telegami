# P2 prerequisite record: Telegram 13.1.1

Date: 2026-10-30 (Asia/Shanghai).
Status: target analysis NOT STARTED. P1 acceptance is still pending.
This document records tool preparation and missing evidence only.

## Required target identity

| Field | Actual verified value |
| --- | --- |
| APK source/provenance | Missing |
| applicationId | Unverified; task expects org.telegram.messenger |
| versionName | Unverified; task requires 13.1.1 |
| versionCode | Unknown; no guessed code is allowed |
| APK SHA-256 | Unknown |
| Signer certificate SHA-256 | Unknown |
| DEX file count and names | Unknown |
| Build/ABI/split information | Unknown |
| Comparison 12.10.3 APK | Missing |

No target APK was found in the workspace, Desktop, Downloads or supplied
attachment directory. The supplied attachment is a task specification, not an
APK. Other unrelated downloaded APKs were not used as target evidence.
The official DrKLO/Telegram GitHub release list checked during preparation
provided no target APK asset. No claim is made that all possible external APK
sources have been exhausted.

Please provide the actual official Telegram Android 13.1.1 APK to be supported,
or an accessible download source for that exact build. If it is a split
installation, include the base APK and required splits and identify the device
build/ABI. A 12.10.3 APK is optional comparison material only.

## DexSQL preparation completed

Executed the task's install command through the installed Node runtime:

```powershell
npx.cmd --yes skills add LSPosed/dexsql-release --skill install-dexsql --agent codex --global --yes
```

The actual Skills CLI destination is
`C:/Users/Administrator/.agents/skills/install-dexsql/SKILL.md`.
The skill was read and followed; installation of the skill alone was not
treated as installation of the MCP server.

Official DexSQL release `v0.1.1`:

- Binary: `C:/Users/Administrator/AppData/Local/DexSQL/v0.1.1/dexsql.exe`.
- Platform: Windows AMD64.
- SHA-256: `602105c98232120c14d6124fb33574f2f95f12e50e51d25b8834f893925f28d6`.
- Binary and accompanying LICENSE/LICENSE-AUXILIARY were checked against
  SHA-256 digests published by the official GitHub release API.
- `--version` and `mcp --help` passed.
- A temporary stdio MCP probe completed initialize and tools/list.
- Negotiated protocol: `2024-11-05`.
- Server version: `0.1.1+6ac7870875a519ec471e41c93fc86d80e8e2bce7`.
- Required tools `open_dataset`, `query`, and `decode` were present.
- The probe exited; no persistent listener or API key was introduced.

Added only `[mcp_servers.dexsql]` to the existing Codex config:
`C:/Users/Administrator/.codex/config.toml`.
The previous configuration was preserved at
`C:/Users/Administrator/.codex/config.toml.before-dexsql-20261030142024.bak`.
Other MCP servers/settings were retained.

The binary/protocol works locally. The running chat has not dynamically
discovered DexSQL's tools; reload the client/session when native tool discovery
is needed. Do not describe this as an already attached in-chat MCP connection.

Source: `https://github.com/LSPosed/dexsql-release`,
release API and `skills/install-dexsql/SKILL.md`.

## Evidence required before implementing hooks

For each entry, collect actual class/method/field descriptors, parameters,
return type, DEX source, callers, relevant Smali, interception timing and reason.
Every item below is currently UNKNOWN for 13.1.1.

| Area | Required evidence |
| --- | --- |
| Delete entry | MessagesController delete methods and event source |
| Storage mutation | Actual markMessagesAsDeletedInternal signature, thread and ordering |
| IDs / accounts | dialogId/messageId/account extraction and batch semantics |
| SQL | messages_v2 schema and data available immediately before deletion |
| Notifications | Actual messagesDeleted value, payload and UI removal callers |
| Edit state | MessageObject/messageOwner, edit_date/flags and update propagation |
| Time render | Every measureTime overload, currentTimeString assignment and consumers |
| Layout | timeTextWidth/timeWidth/span measurement and final status-icon draw path |
| Reuse/refresh | Cell binding/recycling, chat lifecycle and supported rebind notification |
| Other features | Verify retained hooks and replace incompatible old mapping entries |

The bundled Telegram mapping is labeled 12.10.3. Existing method names,
parameter counts, the constant 7 and old obfuscated paths are audit inputs,
not accepted target evidence. No formal 13.1.1 hook implementation or
deletion/edit-device test result has been produced.
