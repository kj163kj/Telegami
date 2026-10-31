SELECT file_id,field_idx,descriptor FROM fields WHERE
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('W3','f5')) OR
(class_descriptor='Lorg/telegram/ui/bz;' AND name='B2') OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage$TopicKey;') OR
(class_descriptor='Lorg/telegram/tgnet/TLRPC$TL_forumTopic;' AND name IN ('topicStartMessage','closed'))
ORDER BY file_id,field_idx
