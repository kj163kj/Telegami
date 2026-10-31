# Translation System Audit (P0)

Baseline: `0af0ef36362207eaecf1ff43882ce56e9b24d98d`. Scope: official
`org.telegram.messenger` / `org.telegram.messenger.web`, Modern API 102 only.

## Existing system

There is no message translation hook/provider/network transport in this baseline.
`core/i18n/TranslationManager` is module UI localization, not message translation.
Reuse `MessageMenuActions`, exact reflection, independent hook installers and
`features` Remote Preferences. Do not modify management Compose/navigation.
The existing preferences support booleans/integers only. Add string support,
but never expose plaintext API keys to the hooked process. No existing secure
secret store exists. Room/history/deletion storage is unrelated and unchanged.

## Reference review

NagramX `GoogleAppTranslator.kt`: Google Android-style `translate_a/single`,
`dj=1`, auto language, concatenated `sentences[].trans`; no Cloud key path copied.
`YandexTranslator.kt`: Android endpoint, generated UUIDs, form text/lang, response
code and text array. `BingTranslatorRaw.java`: translator page obtains IG/IID and
AbusePreventionHelper parameters dynamically. Do not copy its token logging or
secondary preferences store. `TelegramAPITranslator.kt`: current account's
ConnectionsManager, TL_messages_translateText with flags=2 and text vector.
`HTMLKeeper.java`: entity -> HTML -> provider -> entities, retaining metadata.
Telegami will use identity-tagged HTML with validated ranges and safe fallback,
not copy the entire client or its shared credentials.

## DEX evidence and call graph

Run `python scripts/analyze_translation.py --dexsql <dexsql.exe>`.
Evidence: `artifacts/dexsql/translation-1310`, input SHA-256 recorded there.
Supplied APK is **13.1.0 / 72299**, not 13.1.1. The earlier patch-version waiver
is retained; these exact signatures are verified for this APK only. Other builds
must fail closed when contracts differ; 13.1.1 device verification is outstanding.

- Menu: `org.telegram.ui.ko.q8(MessageObject,ArrayList,ArrayList,ArrayList):void`
  after-hook appends actions; `ko.Fa(int):void` before-hook captures selection.
- Native translation sheet (obfuscated TranslateAlert2):
  `org.telegram.ui.Components.r51.N():void` prepares translation request.
  Fields `c:CharSequence`, `v:String` target language, `f:boolean` summarization,
  `h:TL_iv.RichMessage` distinguish unsupported non-text modes.
- `r51.p(r51,TL_error,TLObject,TL_textWithEntities):void` handles transport result;
  `r51.o(r51,TL_textWithEntities,TL_textWithEntities,TL_error):void` renders on UI.
  Request and render decodes show the exact order, not inferred names.
- Controller `pushToTranslate(MessageObject,String,Utilities.Callback4):void`
  batches chat translations. `checkTranslation` and `invalidateTranslation`
  update MessageObject/UI; batch translation is deliberately not globally
  intercepted, to avoid changing polls, rich messages, photos or story behavior.
- Native provider: `ConnectionsManager.getInstance(int):ConnectionsManager`,
  `sendRequest(TLObject,RequestDelegate):int`, `cancelRequest(int,boolean):void`;
  delegate `run(TLObject,TL_error):void`. These are direct native calls, not a
  second MTProto implementation.
- TL_messages_translateText has flags:int, text:ArrayList, to_lang:String;
  result has result:ArrayList; TL_textWithEntities has text:String/entities:ArrayList.
  Entity base has offset/length:int, url/language:String, collapsed:boolean;
  subtype fields preserve mention user_id and custom emoji document_id.

## Planned boundaries

Unified cancellable manager and bounded in-memory cache. Standard HTTPS transport,
no credential-bearing redirect, no response-body/error logging. No automatic
cross-provider fallback (would disclose source text to an unselected service).
AI secret encrypted with Android Keystore in the existing preference file;
management-process broker performs AI HTTP, authorized callers only, never returns
the key. Configuration exports explicitly exclude secret ciphertext. Public
endpoints are unofficial and require live verification; compilation is not proof
of availability. Native account calls, module IPC and native rendering require
real LSPosed device tests before being declared verified.

## Implementation Follow-Through

P0-P8 code checkpoints now exist on `feat/multi-source-translation`; tested code
commit is `454eedfeb8f50cb5d725a69e12b7d0e7b8f17060`.
See `18_TRANSLATION_SOURCE_CONFIG_HANDOFF.md` for the data-only UI contract and
`19_TRANSLATION_PROVIDER_IMPLEMENTATION.md` for actual provider results, limitations,
build/signature evidence and the pending device acceptance checklist.
NagramX reference checkout: `2db685af00a4352c877ecf96474cbf0494284715`.
