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

Initial audit only. Implementation, build, structural regression verification
and device status will be appended after the corresponding work.
No runtime behavior is marked verified by this audit.
