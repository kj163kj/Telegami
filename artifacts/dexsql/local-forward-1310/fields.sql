SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/messenger/NotificationCenter;' AND name IN ('fileLoaded','fileLoadFailed')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Document;' AND name IN
('id','access_hash','file_reference','size','dc_id','flags','thumbs','video_thumbs')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Photo;' AND name='sizes') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$PhotoSize;' AND name='size') OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('g5','h5','V5','e5','m5')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject$GroupedMessages;' AND name='messages')
ORDER BY file_id,field_idx
