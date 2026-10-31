SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/ui/ActionBar/x0;' AND name='F') OR
(class_descriptor='Lorg/telegram/ui/Cells/u1;' AND name='M7') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name IN ('edit_hide','reply_to','ttl','ttl_period'))
ORDER BY file_id,field_idx
