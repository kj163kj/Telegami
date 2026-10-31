# Official Telegram Obfuscation Mappings

Telegami supports only official Telegram Android stable 13.1.x:

- Google Play: `org.telegram.messenger`.
- Website: `org.telegram.messenger.web`.

Both use `app/src/main/assets/obfuscation_mappings/telegram.json`.
`ResolverManager.init` rejects any other package before opening mapping assets.
`XposedInit` also checks the official package allowlist and stable version gate
before installing business hooks. Do not add third-party mapping files or
package-specific compatibility branches.

## Format

The shared `JsonResolver` expects this structure:

```json
{
  "variant": "telegram",
  "package_name": "org.telegram.messenger",
  "version": "<analyzed version>",
  "updated": "<analysis date>",
  "mappings": {
    "<original class name>": {
      "obfuscated": "<verified class name>",
      "methods": {
        "<original method name>": {"obfuscated": "<verified method name>"}
      },
      "fields": {
        "<original field name>": {"obfuscated": "<verified field name>"}
      }
    }
  }
}
```

The `package_name` describes the common Telegram resource/code namespace; it
does not exclude the authorized website application ID. Hints are optional
analysis notes. Missing entries use the original class/member name, and mapping
read failures for an allowed official package retain the existing default
resolver behavior. This does not authorize unknown packages.

## Evidence And Limitations

Use DexSQL against the supplied official APK before changing any obfuscated
name or method signature. Record the input APK identity, exact DEX descriptor,
parameters, return type and relevant call sites. Do not infer obfuscated names
from a fork or assume different official versions have identical layouts.

The retained `telegram.json` is a legacy table marked 12.10.3, not a newly
verified complete 13.1 mapping. Current message tools use the separate exact
`Telegram131Resolver`, `TelegramMessageResolver`, `TelegramForwardResolver`
and history resolvers backed by the reports under `docs/`. Removing fork
support does not validate or re-adapt every legacy hook. Existing official
Play/website branches are preserved in those legacy wrappers in this cleanup.

## Verification

```powershell
python scripts/verify_official_targets.py
python scripts/verify_official_targets.py --apk app/build/outputs/apk/release/app-release.apk
```

The checks verify both scope declarations, official-only mapping assets and
version tracking, and the absence of removed client package branches. APK
checks also verify API 102 metadata and the retained original repeat icon.
These are not a substitute for on-device LSPosed testing.
