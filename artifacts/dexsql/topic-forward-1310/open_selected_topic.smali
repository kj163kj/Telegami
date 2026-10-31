# file_id=2 method_idx=6117 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Ljf/d;->a(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V"
.method public static a(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V
    .registers 11

    iget-wide v0, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    const-wide/16 v2, 0x0
    cmp-long v0, v0, v2
    if-nez v0, :label_0009
    goto :label_0076
    :label_0009
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    iget-wide v4, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v4, v4
    iget-wide v7, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    invoke-virtual {v0, v4, v5, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    move-result-object v6
    if-nez v6, :label_001d
    goto :label_0076
    :label_001d
    iget-wide v0, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    cmp-long v0, v0, v2
    const/4 v1, 0x0
    if-lez v0, :label_0065
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v2, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v0
    if-nez v0, :label_0039
    goto :label_0076
    :label_0039
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v2, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getCurrentAccount()I
    move-result v3
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2, v3, v4, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I
    iget v4, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I
    iget v5, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I
    const/4 v2, 0x0
    move-object v1, v0
    move-object v0, v9
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ko;->tb(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v1, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v1, v1
    iget-wide v3, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->setForumLastTopicId(JJ)V
    return-void
    :label_0065
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-wide v3, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v3, v3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-nez v2, :label_0077
    :label_0076
    return-void
    :label_0077
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_00a6
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    invoke-static {v3, v2}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v2
    if-eqz v2, :label_00c4
    iget v2, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I
    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I
    iput v2, v9, Lorg/telegram/ui/ko;->j4:I
    iput v3, v9, Lorg/telegram/ui/ko;->k4:I
    const/4 v3, 0x1
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I
    move-result v2
    iput v2, v9, Lorg/telegram/ui/ko;->l4:I
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    iput-wide v2, v9, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v9}, Lorg/telegram/ui/ko;->Dc()V
    invoke-virtual {v9, v1}, Lorg/telegram/ui/ko;->Uc(Z)V
    invoke-virtual {v9, v1}, Lorg/telegram/ui/ko;->lc(Z)V
    goto :label_00c4
    :label_00a6
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    new-instance v4, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getCurrentAccount()I
    move-result v5
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v4, v5, v7, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v1, v3
    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I
    iget v4, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I
    iget v5, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I
    move-object v0, v9
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ko;->tb(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    :label_00c4
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v1, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v1, v1
    iget-wide v3, v10, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->setForumLastTopicId(JJ)V
    return-void
.end method
