SELECT file_id,descriptor FROM classes
WHERE descriptor LIKE 'Lorg/telegram/tgnet/TLRPC$TL_messageEntity%'
ORDER BY file_id,descriptor
