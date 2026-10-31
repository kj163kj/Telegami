# file_id=2 method_idx=49940 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z"
.method public final v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z
    .registers 22

    move-object v3, v15
    iget-object v0, v13, Lorg/telegram/ui/ko;->e5:Lorg/telegram/messenger/MessagePreviewParams;
    iget-object v1, v13, Lorg/telegram/ui/ko;->V5:[Landroid/util/SparseArray;
    const/4 v9, 0x0
    const/4 v10, 0x1
    if-nez v0, :label_0011
    iget-boolean v0, v14, Lorg/telegram/ui/bz;->N0:Z
    if-eqz v0, :label_0019
    iget-object v0, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0019
    :label_0011
    iget-boolean v0, v14, Lorg/telegram/ui/bz;->N0:Z
    if-eqz v0, :label_002e
    iget-object v0, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_002e
    :label_0019
    iget-object v0, v13, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_002e
    aget-object v0, v1, v9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    move-result v0
    if-nez v0, :label_002e
    aget-object v0, v1, v10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    move-result v0
    if-nez v0, :label_002e
    return v9
    :label_002e
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    iget-object v0, v13, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0045
    iget-object v4, v13, Lorg/telegram/ui/ko;->h5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v4, :label_0041
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    goto :label_008d
    :label_0041
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_008d
    :label_0045
    move v0, v10
    :label_0046
    if-ltz v0, :label_008d
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    move v5, v9
    :label_004e
    aget-object v6, v1, v0
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I
    move-result v6
    if-ge v5, v6, :label_0066
    aget-object v6, v1, v0
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v5, v5, 0x1
    goto :label_004e
    :label_0066
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    move v5, v9
    :label_006a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-ge v5, v6, :label_008a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    aget-object v7, v1, v0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_0087
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0087
    add-int/lit8 v5, v5, 0x1
    goto :label_006a
    :label_008a
    add-int/lit8 v0, v0, -0x1
    goto :label_0046
    :label_008d
    move v0, v9
    :label_008e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v5, 0x0
    if-ge v0, v4, :label_00c9
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    iget-wide v6, v6, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v6, v6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v4
    if-eqz v4, :label_00c6
    move v6, v9
    :label_00ad
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v7
    if-ge v6, v7, :label_00c6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/messenger/MessageObject;
    invoke-static {v4, v7}, Lorg/telegram/messenger/SendMessagesHelper;->canSendMessageToChat(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)I
    move-result v7
    if-eqz v7, :label_00c3
    invoke-static {v7, v14, v5}, Lorg/telegram/ui/Components/g5;->s0(ILorg/telegram/ui/ActionBar/r2;Lorg/telegram/ui/ActionBar/j6;)V
    return v9
    :label_00c3
    add-int/lit8 v6, v6, 0x1
    goto :label_00ad
    :label_00c6
    add-int/lit8 v0, v0, 0x1
    goto :label_008e
    :label_00c9
    iget-boolean v0, v14, Lorg/telegram/ui/bz;->N0:Z
    if-nez v0, :label_0134
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-gt v0, v10, :label_00ed
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v11
    cmp-long v0, v6, v11
    if-eqz v0, :label_00ed
    if-nez v16, :label_00ed
    if-nez v19, :label_00ed
    if-nez v18, :label_0134
    :label_00ed
    iget v11, v13, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    xor-int/2addr v1, v10
    add-int v12, v0, v1
    new-instance v0, Lorg/telegram/ui/kg;
    move-object v1, v13
    move-object v2, v14
    move-object/from16 v4, v16
    move/from16 v5, v18
    move/from16 v6, v19
    move/from16 v7, v20
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/kg;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIILjava/util/ArrayList;)V
    move-object v1, v0
    sget-object v2, Lorg/telegram/ui/Components/g5;->a:Ljava/util/regex/Pattern;
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v4
    :label_0115
    if-ge v9, v4, :label_0129
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    add-int/lit8 v9, v9, 0x1
    check-cast v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    iget-wide v5, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :label_0115
    :label_0129
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-static {v11, v3, v12, v1}, Lorg/telegram/ui/Components/g5;->b0(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Z
    move-result v1
    xor-int/2addr v1, v10
    return v1
    :label_0134
    iget-object v4, v13, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :label_013d
    iput-object v5, v13, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    iput-object v5, v13, Lorg/telegram/ui/ko;->h5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    goto :label_015f
    :label_013d
    move v4, v10
    :label_013e
    if-ltz v4, :label_0156
    iget-object v5, v13, Lorg/telegram/ui/ko;->W5:[Landroid/util/SparseArray;
    aget-object v5, v5, v4
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    iget-object v5, v13, Lorg/telegram/ui/ko;->X5:[Landroid/util/SparseArray;
    aget-object v5, v5, v4
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    aget-object v5, v1, v4
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    add-int/lit8 v4, v4, -0x1
    goto :label_013e
    :label_0156
    invoke-virtual {v13}, Lorg/telegram/ui/ko;->h9()V
    invoke-virtual {v13, v9, v10}, Lorg/telegram/ui/ko;->Cc(IZ)V
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ko;->ad(Z)V
    :label_015f
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    iget-wide v5, v13, Lorg/telegram/ui/ko;->S5:J
    cmp-long v5, v3, v5
    if-nez v5, :label_01fa
    invoke-virtual {v13}, Lorg/telegram/ui/ko;->d()J
    move-result-wide v5
    iget-wide v11, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    cmp-long v5, v5, v11
    if-nez v5, :label_01fa
    iget v5, v13, Lorg/telegram/ui/ko;->Q3:I
    const/4 v6, 0x2
    if-ne v5, v6, :label_017e
    goto/16 :label_01fa
    :label_017e
    new-instance v1, Ljava/util/ArrayList;
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getParentLayout()Lorg/telegram/ui/ActionBar/j5;
    move-result-object v3
    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/j5;->getFragmentStack()Ljava/util/List;
    move-result-object v3
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-nez v3, :label_019b
    invoke-static {v10, v1}, Lj2/t;->f(ILjava/util/ArrayList;)Ljava/lang/Object;
    move-result-object v3
    if-ne v3, v14, :label_019b
    invoke-virtual {v14}, Lorg/telegram/ui/bz;->finishFragment()V
    goto :label_01be
    :label_019b
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v3
    if-lez v3, :label_01be
    :label_01a1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :label_01be
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v4
    sub-int/2addr v4, v10
    if-ne v3, v4, :label_01b8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/ui/ActionBar/r2;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->finishFragment()V
    goto :label_01bb
    :label_01b8
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->removeSelfFromStack()V
    :label_01bb
    add-int/lit8 v3, v3, 0x1
    goto :label_01a1
    :label_01be
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ko;->T9(Z)V
    iget-boolean v1, v14, Lorg/telegram/ui/bz;->N0:Z
    if-eqz v1, :label_01cf
    iget-object v1, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_01cf
    iget-object v2, v13, Lorg/telegram/ui/ko;->k5:Lorg/telegram/ui/zn;
    invoke-virtual {v13, v1, v2}, Lorg/telegram/ui/ko;->Gb(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/zn;)V
    goto :label_01d2
    :label_01cf
    invoke-virtual {v13, v8}, Lorg/telegram/ui/ko;->Eb(Ljava/util/ArrayList;)V
    :label_01d2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v1
    if-eqz v1, :label_01de
    invoke-virtual {v13}, Lorg/telegram/ui/ko;->h9()V
    invoke-virtual {v13, v9, v10}, Lorg/telegram/ui/ko;->Cc(IZ)V
    :label_01de
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ko;->ad(Z)V
    iget-boolean v1, v13, Lorg/telegram/ui/ko;->db:Z
    if-eqz v1, :label_02da
    iget-object v1, v13, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v1, :label_02da
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->G0()V
    iget-object v1, v13, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    iput-boolean v9, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->S0:Z
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->T0:Lorg/telegram/ui/Components/cg;
    if-eqz v1, :label_01f7
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/f00;->v(Z)V
    :label_01f7
    iput-boolean v9, v13, Lorg/telegram/ui/ko;->db:Z
    return v10
    :label_01fa
    new-instance v5, Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    const-string v6, "scrollToTopOnResume"
    iget-boolean v7, v13, Lorg/telegram/ui/ko;->P5:Z
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v6
    if-eqz v6, :label_0216
    const-string v6, "enc_id"
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I
    move-result v3
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    goto :label_0234
    :label_0216
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v6
    if-eqz v6, :label_0222
    const-string v6, "user_id"
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    goto :label_0228
    :label_0222
    const-string v6, "chat_id"
    neg-long v3, v3
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :label_0228
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    invoke-virtual {v3, v5, v14}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/r2;)Z
    move-result v3
    if-nez v3, :label_0234
    goto/16 :label_02da
    :label_0234
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v3
    iget-wide v6, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isMonoForum(J)Z
    move-result v3
    if-eqz v3, :label_0258
    const-string v3, "chatMode"
    const/16 v4, 0x8
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-wide v6, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->isMonoForumWithManageRights(J)Z
    move-result v3
    if-nez v3, :label_0258
    const-string v3, "isSubscriberSuggestions"
    invoke-virtual {v5, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :label_0258
    const-string v3, "historyPreloaded"
    invoke-virtual {v5, v3, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    invoke-virtual {v13}, Lorg/telegram/ui/ko;->y6()V
    new-instance v3, Lorg/telegram/ui/ko;
    invoke-direct {v3, v5}, Lorg/telegram/ui/ko;-><init>(Landroid/os/Bundle;)V
    iget-wide v4, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    const-wide/16 v6, 0x0
    cmp-long v4, v4, v6
    if-nez v4, :label_026f
    if-eqz v21, :label_0275
    :label_026f
    invoke-static {v3, v1}, Ljf/d;->a(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->removeSelfFromStack()V
    :label_0275
    invoke-virtual {v13, v3, v10}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;Z)Z
    move-result v1
    if-eqz v1, :label_02db
    iget-boolean v1, v14, Lorg/telegram/ui/bz;->N0:Z
    if-eqz v1, :label_02c4
    iget-object v1, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_02c4
    iget-object v1, v13, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v1, :label_0292
    iget-object v2, v3, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v2, :label_0292
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V
    :label_0292
    iget-object v1, v13, Lorg/telegram/ui/ko;->i5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v1, :label_0299
    iput-object v1, v3, Lorg/telegram/ui/ko;->i5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    goto :label_02a7
    :label_0299
    iget-object v1, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_02a7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v1
    invoke-virtual {v13, v1, v2}, Lorg/telegram/ui/ko;->D8(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-result-object v1
    iput-object v1, v3, Lorg/telegram/ui/ko;->i5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    :label_02a7
    iget-object v1, v13, Lorg/telegram/ui/ko;->j5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_02ae
    iput-object v1, v3, Lorg/telegram/ui/ko;->j5:Lorg/telegram/messenger/MessageObject;
    goto :label_02b4
    :label_02ae
    iget-object v1, v13, Lorg/telegram/ui/ko;->W3:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_02b4
    iput-object v1, v3, Lorg/telegram/ui/ko;->j5:Lorg/telegram/messenger/MessageObject;
    :label_02b4
    new-instance v1, Lorg/telegram/ui/zf;
    const/4 v2, 0x6
    invoke-direct {v1, v13, v2}, Lorg/telegram/ui/zf;-><init>(Lorg/telegram/ui/ko;I)V
    iput-object v1, v3, Lorg/telegram/ui/ko;->mb:Lorg/telegram/ui/zf;
    iget-object v1, v13, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v13, Lorg/telegram/ui/ko;->k5:Lorg/telegram/ui/zn;
    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ko;->Gb(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/zn;)V
    goto :label_02c7
    :label_02c4
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ko;->Eb(Ljava/util/ArrayList;)V
    :label_02c7
    iget-wide v1, v3, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v13}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v3
    cmp-long v1, v1, v3
    if-nez v1, :label_02da
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v1
    if-nez v1, :label_02da
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/r2;->removeSelfFromStack()V
    :label_02da
    return v10
    :label_02db
    invoke-virtual {v14}, Lorg/telegram/ui/bz;->finishFragment()V
    return v10
.end method
