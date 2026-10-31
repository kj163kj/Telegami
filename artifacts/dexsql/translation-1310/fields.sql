SELECT file_id,field_idx,descriptor FROM fields WHERE class_descriptor IN
('Lorg/telegram/ui/Components/r51;','Lorg/telegram/tgnet/TLRPC$MessageEntity;',
'Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;','Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;',
'Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;','Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;',
'Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;') ORDER BY file_id,field_idx
