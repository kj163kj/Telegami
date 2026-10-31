SELECT file_id,descriptor FROM classes WHERE descriptor IN
('Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;',
'Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;')
ORDER BY file_id,descriptor
