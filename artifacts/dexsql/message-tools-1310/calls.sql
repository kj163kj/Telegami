SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls
WHERE (callee_class='Lorg/telegram/ui/ko;' AND callee_name IN ('Fa','q8')) OR
(callee_class='Lorg/telegram/messenger/MessagesStorage;' AND callee_name='putMessages' AND method_class='Lorg/telegram/messenger/MessagesController;')
ORDER BY file_id,method_idx,callee
