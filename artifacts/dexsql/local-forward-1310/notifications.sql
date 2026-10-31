SELECT DISTINCT file_id,method_idx,method,field FROM method_field_accesses
WHERE field_class='Lorg/telegram/messenger/NotificationCenter;' AND field_name IN ('fileLoaded','fileLoadFailed')
AND method_class LIKE 'Lorg/telegram/messenger/ImageLoader%'
ORDER BY file_id,method_idx
