# P2 prerequisite record: Telegram 13.1.1

Date: 2026-10-30 (Asia/Shanghai).
Status: DEX analysis resumed on the supplied 13.1.0 APK after user clarification.
P1 acceptance is still pending. This document records the actual inspected build.

User clarification: minor version differences may be ignored temporarily.
The supplied 13.1.0 APK is therefore accepted as an analysis input. The user also explicitly authorized both Android packages,
`org.telegram.messenger` and `org.telegram.messenger.web`. Both are now in scope.

## Supplied APK identity check

The user subsequently supplied `C:/Users/Administrator/Desktop/Telegami/Telegram.apk`.
Android SDK apkanalyzer and DexSQL MCP get_manifest independently report:

| Field | Observed supplied APK | Required target |
| --- | --- | --- |
| applicationId | `org.telegram.messenger.web` | `org.telegram.messenger` |
| versionName | `13.1.0` | `13.1.1` |
| versionCode | `72299` | Must come from the matching target APK |
| File size | 70,867,407 bytes | Not prescribed |
| DEX count | 4: classes.dex through classes4.dex | Must come from matching target |
| minSdk / targetSdk / compileSdk | 23 / 36 / 36 | Record actual target metadata |
| Native ABIs | arm64-v8a, armeabi-v7a, x86, x86_64 | Record actual target metadata |

APK SHA-256:
`4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`.

Signer certificate SHA-256:
`49c1522548ebacd46ce322b6fd47f6092bb745d0f88082145caf35e14dcc38e1`.

`apksigner verify --print-certs` returned exit code 0. Signature validity alone
does not independently establish official provenance. The verifier warned about
unsigned META-INF informational entries; those entries are not accepted as
authenticated build evidence.

DexSQL 0.1.1 opened the actual APK and returned the same manifest identity
through MCP. Its dataset was closed afterward. The summary request limited
permission rows to one; all identity fields above were present in full, and no
claim is made to have audited all permission entries.

Structured evidence, individual DEX hashes, server version and raw DexSQL
manifest response: `docs/evidence/supplied_apk_identity.json`.
Signature verifier output: `artifacts/validation/supplied-apk-apksigner.log`.

The input failed the original exact identity requirements. After the user's
minor-version waiver, analyze this actual 13.1.0 build and label its evidence
accordingly. Runtime package scope now includes both authorized Android distributions.
No business source code was changed during this identity check.

## Current target policy

The accepted analysis input is the supplied 13.1.0 website APK above. The exact
13.1.1 APK and a Play APK are not prerequisites for continuing this analysis,
following the user's patch-version and scope instructions. Evidence from this
input must not be relabeled as independent analysis of another build.

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
