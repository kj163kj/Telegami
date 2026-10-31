SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('x8','d','S8','v')) OR
(class_descriptor='Lorg/telegram/ui/vy;') OR
(class_descriptor='Lorg/telegram/ui/bz;' AND name IN ('<init>','M3')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('setCurrentAccount','getCurrentAccount','presentFragment','finishFragment')) OR
(class_descriptor='Lorg/telegram/messenger/TopicsController;' AND name='findTopic') OR
(class_descriptor='Lorg/telegram/messenger/MessagesController;' AND name IN ('getChat','getTopicsController','isFrozen')) OR
(class_descriptor='Lorg/telegram/messenger/ChatObject;' AND name='canManageMonoForum') OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name='canSendMessageToChat'))
ORDER BY file_id,method_idx
