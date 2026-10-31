SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/messenger/BaseController;' AND name='getUserConfig') OR
(class_descriptor IN ('Lorg/telegram/tgnet/SerializedData;','Lorg/telegram/tgnet/InputSerializedData;') AND name='readInt32'))
ORDER BY file_id,method_idx
