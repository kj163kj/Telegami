SELECT file_id, method_idx, descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('q8','Fa','h7')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('getParentActivity','getMessagesController')) OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name IN ('getInstance','sendMessage','processForwardFromMyName')) OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;' AND name IN ('<init>','of')) OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage;' AND name IN ('lambda$putMessages$238','putMessages','getStorageQueue')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name IN ('getDialogId','canForwardMessage','isPhoto','isVideo','isMusic','isVoice','isRoundVideo','isSticker','isAnimatedSticker','isSecretMedia','isSponsored','isEphemeral')) OR
(class_descriptor='Lorg/telegram/messenger/ChatObject;' AND (name LIKE 'canSend%' OR name IN ('canWriteToChat','isForum','isMonoForum'))) OR
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('isChatNoForwards','getInstance')) OR
(class_descriptor='Lorg/telegram/messenger/DialogObject;' AND name='isEncryptedDialog') OR
(class_descriptor='Lorg/telegram/messenger/FileLoader;' AND name IN ('getInstance','getPathToMessage')) OR
(class_descriptor='Lorg/telegram/SQLite/SQLiteCursor;' AND name IN ('byteBufferValue','next','dispose')) OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$Message;' AND name IN ('TLdeserialize','readAttachPath')) OR
(class_descriptor='Lorg/telegram/tgnet/SerializedData;' AND name IN ('<init>','toByteArray','cleanup')) OR
(class_descriptor='Lorg/telegram/tgnet/NativeByteBuffer;' AND name IN ('readInt32','reuse')) OR
(class_descriptor='Lorg/telegram/tgnet/TLObject;' AND name IN ('serializeToStream','getObjectSize')))
ORDER BY file_id,method_idx
