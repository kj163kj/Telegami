# Telegram 13.1.1 Hook upgrade

## Input and baseline

- Workspace input: `Telegram.apk`, website package `org.telegram.messenger.web`.
- Observed version: **13.1.1 / 72379** (aapt2); this is the supplied APK,
  not a claim about the newest upstream release.
- SHA-256: `148f1aa51b0a76c8168e4ad0eb121a66b78c2b8f50e4dc44e7a667668cf8823b`.
- APK signer SHA-256:
  `49c1522548ebacd46ce322b6fd47f6092bb745d0f88082145caf35e14dcc38e1`.
  It matches the translation broker allowlist; no security relaxation is needed.
- Baseline: `fe7fe84959d6c8fc73be1baaaabd2dff3a422f8a`.
- Branch: `fix/telegram-13.1.1-hooks`.

## Initial structural audit

`scripts/analyze_apk_upgrade.py` compares complete member descriptors from prior
13.1.0 evidence against current DEX definitions and checks every JSON mapping.
It resolves current method indexes afresh; old numerical indexes are never
used to decode the new APK.

Initial results: 1,319 prior evidenced members, 81 absent; 55 JSON mapping
entries, 28 without even a name match. These numbers include reference-only
Telegram members, so they are **not counts of broken module hooks**.
The initial audit is preserved in `artifacts/dexsql/upgrade-1311/baseline-audit.json`.

Confirmed upgrade changes:

| Purpose | Old | Current evidence |
| --- | --- | --- |
| TranslateAlert2 | `Components.r51` | `Components.s51`, constructor in classes3.dex / 37976 |
| Story view increment | `xg.h5.r(int):boolean` | `xg.g5.r(int):boolean`, classes4.dex / 20509 constructs `TL_stories_incrementStoryViews` |
| End forward selection | `ko.ad(boolean):void` | `ko.bd(boolean):void`, classes3.dex / 49645; native `ko.v(...)` / 49947 calls it |

The old JSON map additionally predates both APKs (12.10.3). It must be rebuilt
from current DEX, including semantic checks: a coincidentally existing
obfuscated member name is not proof of equivalent behavior.

## Validation status

The baseline source extraction finds **11 missing exact contracts** in the new
APK (9 belong to the renamed translation sheet). See
`baseline-source-failures.json`; this is separate from the 28 obsolete mapping
entries and the website-specific callback/signature bugs.

## Implemented repairs

| Area | Repair |
| --- | --- |
| Multi-source / AI translation | Replace sheet class `r51` with `s51`, including constructor, request, render and cancellation hooks; retain native entities and account handling. |
| Hide story views | Replace increment producer `xg.h5.r` with `xg.g5.r`; verify `xg.m2.b(Canvas)` still invokes both this producer and `xg.o5.V`. |
| Sourceless / protected native forward | Replace selection cleanup `ko.ad` with `ko.bd`; retain picker, topic handling and destination navigation. |
| Sponsored messages | Map ChatActivity to `ko` and the sponsored insertion method to `w6():void`; its DEX reads `getSponsoredMessages`. |
| Profile details popup | Map ItemOptions to `a90`, use the actual four-argument `c(int,CharSequence,Runnable,boolean)` on the website build too; read inherited `fragmentView` and the native resource-provider getter. |
| Save stories | Map holder to `xg.e3.d():boolean`; verified reads `StoryItem.noforwards`. |
| Secret media | Map deletion factory to static `ko.P4(ko,MessageObject):bh.f4`; hook the inlined open path at `vn.n0(u1,float,float,boolean):void` after native execution. Guard with existing singleton, visible field `s` and matching current cell message. |
| Secret-media save menu | Correct ActionBar `createMenu` to `i():z`, bulletin classes to `xc` / `qc`, and use actual two-argument gallery bulletin signature on the website APK. |
| Appearance | Map PeerColorActivity/Page to `hq0`/`bq0`, page fields `h`/`n`, selected color/emoji `h:int`/`n:long`; Theme/ThemeInfo to `n6`/`m6`, getter `B0`, time paint `T2`. |
| Shared helpers | Correct ColoredImageSpan to `ir`, SimpleTextView to `p5`, cell to `u1` and time widths to `pb`/`ob`; fix `downloadChunkSizeBigcolor` typo in download boost. |

The JSON mapping now records a complete DEX `descriptor` per member. Runtime
name resolution remains compatible with the existing mapping format; the audit
checks these additional descriptors before packaging. The duplicate misplaced
StoryItemHolder mapping outside `mappings` was removed.

All message menu, send/media/confirmation, pre-write history capture, serialized
TL entities, deletion markers, presence serializer and translation broker
contracts were rechecked. Existing exact contracts in these areas continue to
match. This change does not change feature keys, history schema, management UI,
API 102 scope, broker certificate policy or version acceptance policy.

## Reproduction and structural verification

```powershell
python scripts/analyze_apk_upgrade.py --dexsql "$env:LOCALAPPDATA\DexSQL\v0.1.1\dexsql.exe" --verify
python scripts/verify_translation.py --report artifacts/validation/telegram-1311-tests.json
python scripts/verify_history_migration.py
python scripts/verify_official_targets.py --apk app/build/outputs/apk/debug/app-debug.apk --apk app/build/outputs/apk/release/app-release.apk
```

`--verify` queries method **definitions**, field **definitions** and superclass
relationships from the current APK and freshly decodes semantic checkpoints.
`hook_contracts.py` extracts the supported literal reflection expressions and
expands feature/entity loops. It reports unresolved declarations instead of
silently treating them as successes. The resulting `source-contracts.json`
contains source filename, requested full signature and resolved current DEX
definition/index; there are **319** checked contracts.

All **55** mapping signatures and **13** semantic checkpoints pass. The retained
13 smali files contain current APK paths, DEX entries and method indexes. Semantic
checkpoints assert relevant calls/fields, not just matching method names.
`verify_translation.py` now checks the current APK SHA and current source
contracts; it no longer reads the 13.1.0 evidence directory.

This is a bounded structural check of the resolver layer and mapped members.
It does not substitute for ART/LSPosed runtime or server-side behavior testing.

## Build and device status

- JVM: 128 tests, **125 passed, 3 skipped**, zero failures/errors.
- Debug and signed Release APK assembly succeeded in the initial combined run.
- Full Release Lint failed: **92 errors** (88 MissingTranslation, 4 NewApi),
  plus 125 warnings. Error locations are unchanged resources relative to the
  baseline; the first error is the API-28 interpolator in
  `res/anim/activity_close_enter.xml` with module minSdk 26.
  No lint baseline, suppression or management UI/resource changes were added.
- `adb devices -l`: no devices. **All real-device feature tests remain
  UNVERIFIED**, including installing the new APK under LSPosed, edit-history
  capture, actual forwards, native translation and story privacy.
- The Google Play package remains in scope, but no separate 13.1.1 Play APK
  was supplied; its independent DEX layout remains unverified.

Final artifact checks and build log paths are recorded after the final assembly.
