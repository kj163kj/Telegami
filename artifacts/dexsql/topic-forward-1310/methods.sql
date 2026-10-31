SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('x8','d','S8','v')) OR
(class_descriptor='Lorg/telegram/ui/vy;') OR
(class_descriptor='Lorg/telegram/ui/bz;' AND name IN ('<init>','M3')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('setCurrentAccount','getCurrentAccount','presentFragment','finishFragment','removeSelfFromStack')) OR
(class_descriptor='Lorg/telegram/messenger/TopicsController;' AND name='findTopic') OR
(class_descriptor='Lorg/telegram/messenger/MediaDataController;' AND name IN ('getInstance','getEntities')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='<init>') OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name='<init>') OR
(class_descriptor='Ljf/d;' AND name='a') OR
(class_descriptor='Lorg/telegram/messenger/DialogObject;' AND name IN ('getEncryptedChatId','isUserDialog')) OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage;' AND name IN ('getInstance','isMonoForum')) OR
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('getChat','getTopicsController','isFrozen','checkCanOpenChat','isMonoForumWithManageRights')) OR
(class_descriptor='Lorg/telegram/messenger/ChatObject;' AND name='canManageMonoForum') OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name='canSendMessageToChat'))
ORDER BY file_id,method_idx
