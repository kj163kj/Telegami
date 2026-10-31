SELECT file_id,field_idx,descriptor FROM fields WHERE
(file_id=0 AND class_descriptor IN ('Lorg/telegram/messenger/MessageObject;','Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;')) OR
(file_id=2 AND class_descriptor IN ('Lorg/telegram/tgnet/TLRPC$Message;','Lorg/telegram/tgnet/TLRPC$MessageMedia;','Lorg/telegram/tgnet/TLRPC$MessageEntity;','Lorg/telegram/tgnet/TLRPC$Photo;','Lorg/telegram/tgnet/TLRPC$Document;','Lorg/telegram/tgnet/TLRPC$messages_Messages;')) OR
(file_id=2 AND class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('c5','e','S5','Q3','X'))
ORDER BY file_id,field_idx
