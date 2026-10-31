SELECT DISTINCT class_descriptor,descriptor FROM methods WHERE method_kind IS NOT NULL
AND name='<init>' AND class_descriptor LIKE 'Lorg/telegram/tgnet/TLRPC$TL_messageEntity%' ORDER BY class_descriptor
