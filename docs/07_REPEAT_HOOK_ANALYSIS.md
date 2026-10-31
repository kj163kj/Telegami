# P9: Repeat Hook contract

Date: 2026-10-31. Reference: supplied website Android APK 13.1.0, versionCode
72299, SHA-256 `4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`.
The prior user waiver accepts 13.1 patch differences; neither 13.1.1 nor the
Play APK has been separately inspected. Runtime descriptors must still match.

DexSQL MCP opened this APK as `dataset-1`; SQL located definitions, callers
and field types. `scripts/analyze_message_tools.py` reproduces the evidence
with the same DexSQL executable and saves complete smali without page clipping.
Evidence directory: `artifacts/dexsql/message-tools-1310/`.
All parameter positions below are zero-based Java arguments, not DEX register
words. DEX file 0 is classes.dex; file 2 is classes3.dex.

| Role / timing | Verified descriptor | DEX / method_idx / evidence |
| --- | --- | --- |
| Menu builder, append after original | `Lorg/telegram/ui/ko;->q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V` | 2 / 49877; existing `telegram-1310/chat_menu.smali` |
| Menu construction caller | `Lorg/telegram/ui/ko;->L7(Landroid/view/View;ZZFFZZZ)Z` | 2 / 49413; `menu_create.smali` |
| Action bridge | `Lorg/telegram/ui/wj;->b(I)V` | 2 / 55768; `menu_click_bridge.smali` |
| Action dispatcher, recognize private IDs before original | `Lorg/telegram/ui/ko;->Fa(I)V` | 2 / 49335; `menu_dispatch.smali` |
| Slow mode guard, call normally | `Lorg/telegram/ui/ko;->h7(Landroid/view/View;)Z` | 2 / 49730; `slow_mode.smali` |
| Helper instance, call normally | `Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;` | 0 / 45449; `methods.txt` |
| Forward, call normally | `Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I` | 0 / 45702; `forward_wrapper.smali` |
| Full forward implementation | `Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I` | 0 / 45701; `forward.smali` |

Menu arguments are message, action-ID list, label list and drawable-ID list;
all three lists must stay aligned. Use private positive IDs outside native
cases and check for collisions. `Fa` reads `ko.c5:MessageObject` and clears
selection at its normal default tail. The custom handler snapshots that
selection before delegation, then uses the default tail for popup cleanup.
Never replace native Copy/Delete IDs or pass custom IDs to network code.

Forward arguments: message list, destination dialog, forwardFromMyName,
hideCaption, notify, scheduleDate, payStars. Repeat uses `false,false,true,0,0`
for the last five values. The wrapper supplies null top-reply and -1 timestamp.
It creates new messages through native sending and does not edit source text.
Return int indicates immediate native restriction result, not network success.
Asynchronous delivery failures remain visible in Telegram's send/retry UI.

`MessageObject.canForwardMessage()Z`, message.noforwards and
`MessagesController.isChatNoForwards(Chat)Z` are separate checks.
Protected-group Repeat selects copy sending only for supported content.
No protection flag, account flag or outgoing request is patched.
Other `canForwardMessage` failures are not treated as authorization to copy.

Media branches in `forward.smali` and `native_copy.smali` use native photo,
document and SendMessageParams handlers; captions/entities travel separately
from the forwarding header. Unsupported service, ephemeral, paid, TTL,
scheduled, rich-message and special media must be rejected explicitly.
Forum/topic/direct-channel contexts require routing beyond dialog ID;
until those parameters are verified end-to-end they must not send to the
parent chat accidentally. Repeat must also check send permissions and slow mode.

All hook registration remains Modern API 102; new feature resolver failures
must be isolated from existing deletion/marking hooks. No device result is
implied by this contract.

P9 validation: evidence reproduction completed successfully;
`:app:testDebugUnitTest :app:assembleDebug` passed against unchanged application
source. Log: `artifacts/validation/p9-dex-analysis.log`. Reports for Copy and
Edit History share this analysis-stage validation, not device acceptance.
