SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/tgnet/tl/TL_account$updateStatus;' AND name='offline') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name='noforwards')
ORDER BY file_id,field_idx
