# P9: Copy and Send as Copy contract

Input identity, reproduction and menu Hook descriptors:
`07_REPEAT_HOOK_ANALYSIS.md`. Evidence is from the supplied 13.1.0 website APK,
with the user's existing patch-version waiver, not an independent 13.1.1 test.

| Role | Exact descriptor | DEX / method_idx / evidence |
| --- | --- | --- |
| Native protection predicate | `Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z` | 0 / 41540; `protected_chat_flags.smali` |
| Message forwarding predicate | `Lorg/telegram/messenger/MessageObject;->canForwardMessage()Z` | 0 / 40183; `can_forward.smali` |
| Native clipboard branch | `Lorg/telegram/ui/ko;->Fa(I)V`, native action 3 | 2 / 49335; `menu_dispatch.smali` |
| Existing copy sender, studied but not blindly called | `Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;JJJLorg/telegram/messenger/MessageSuggestionParams;)V` | 0 / 45671; `native_copy.smali` |
| Fresh text params, call normally | `Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;` | 0 / 45298; `params_text.smali` |
| Send, call normally | `Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V` | 0 / 45704; `methods.txt` |

`native_copy.smali` reads `replyMessageObject` in both photo and document
branches. This is incompatible with the no-reply requirement if called on
the original MessageObject. Instead create fresh native params, retain exact
owner text/entities and supported media, and leave reply, retry, forwarding and
quote fields null. `fields.txt` lists each parameter field's exact type.
`params_text.smali` / `params_fields.smali` confirm default values.

The new clipboard action applies ONLY to a protected group (`dialogId < 0`
and native chat-protection predicate true). Native Copy stays unchanged
elsewhere. Copy uses owner.message, not a rendered string with translations,
sender names or Telegami markers. Standard Android spans/HTML carry portable
formatting; complete Telegram entity TL bytes stay in history for fidelity.
Clipboard consumers may not support Telegram-specific custom emoji/spoilers.

Send as Copy is a separate action under `enable_message_copy`. For ordinary
content, normal Telegram photo/document IDs and access hashes are passed to
the standard sender without adding a forwarding header. Protected text
fallback uses a new text send into the same chat. Protected media reupload
requires separate local upload preparation evidence; reject it explicitly
instead of forging access metadata or clearing protection flags.
Native/server permission failures remain failures.

No replacement of canForwardMessage, isChatNoForwards or server requests is
part of this implementation. Permission checks, confirmation preference and
rapid-click prevention occur at action execution as well as menu display.
No device/clipboard/send result is claimed yet.
