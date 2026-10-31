SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls
WHERE callee_class='Lorg/telegram/messenger/MessagesStorage;' AND callee_name IN ('putMessagesInternal','putMessages')
AND method_class IN ('Lorg/telegram/messenger/MessagesStorage;','Lorg/telegram/messenger/MessagesController;')
ORDER BY file_id,method_idx,callee
