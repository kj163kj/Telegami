SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls WHERE
callee_class='Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;' OR
(method_class='Lorg/telegram/ui/Components/r51;' AND callee_class IN
('Lorg/telegram/tgnet/ConnectionsManager;','Lorg/telegram/ui/Components/r51;')) ORDER BY file_id,method_idx
