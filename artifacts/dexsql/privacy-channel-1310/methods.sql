SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('isChatNoForwards','updateTimerProc')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='canForwardMessage') OR
(class_descriptor='Lorg/telegram/tgnet/ConnectionsManager;' AND name IN ('sendRequest','sendRequestInternal')) OR
(class_descriptor='Lorg/telegram/tgnet/tl/TL_account$updateStatus;' AND name IN ('<init>','serializeToStream')) OR
(class_descriptor='Lorg/telegram/tgnet/TLObject;' AND name='getObjectSize') OR
(class_descriptor='Lorg/telegram/messenger/UserConfig;' AND name IN ('getInstance','getMaxAccountCount','isClientActivated')) OR
(class_descriptor='Lxg/o5;' AND name='V') OR
(class_descriptor='Lxg/h5;' AND name='r') OR
(class_descriptor='Lxg/m2;' AND name='b') OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('D9','q8','L7')))
ORDER BY file_id,method_idx
