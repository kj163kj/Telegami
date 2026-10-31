# file_id=0 method_idx=41994 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->lambda$processUpdateArray$419(Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;Landroid/util/SparseIntArray;Lz/f;Lz/f;Lz/f;Lz/f;Lz/f;Lorg/telegram/messenger/support/LongSparseIntArray;)V"
.method private synthetic lambda$processUpdateArray$419(Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;Landroid/util/SparseIntArray;Lz/f;Lz/f;Lz/f;Lz/f;Lz/f;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .registers 31

    move-object/from16 v0, v21
    move-object/from16 v8, v23
    move-object/from16 v9, v24
    move-object/from16 v10, v25
    move-object/from16 v11, v26
    move-object/from16 v12, v27
    move-object/from16 v13, v28
    move-object/from16 v14, v29
    const/4 v1, 0x2
    const/4 v2, 0x1
    const/4 v3, 0x0
    if-nez v22, :label_001c
    if-eqz v8, :label_0018
    goto :label_001c
    :label_0018
    move/from16 v16, v3
    goto/16 :label_0140
    :label_001c
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v4
    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I
    new-array v6, v1, [Ljava/lang/Object;
    aput-object v22, v6, v3
    aput-object v8, v6, v2
    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    if-eqz v22, :label_00e1
    move v4, v1
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v1
    const/4 v6, 0x0
    const/4 v7, 0x0
    move/from16 v16, v3
    move v5, v4
    const-wide/16 v3, 0x0
    move/from16 v17, v5
    const/4 v5, 0x0
    move-object/from16 v2, v22
    move/from16 v15, v17
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;JIIZ)V
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    invoke-virtual {v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v3
    move/from16 v4, v16
    move v5, v4
    :label_0050
    if-ge v4, v3, :label_00d9
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v6
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v15
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    invoke-virtual {v2, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    move/from16 v19, v3
    if-eqz v2, :label_009d
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I
    if-lez v3, :label_009d
    if-gt v3, v15, :label_009d
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    move v15, v4
    move/from16 v20, v5
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    invoke-virtual {v3, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-eqz v2, :label_00a0
    move/from16 v3, v16
    move/from16 v5, v20
    :label_007f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :label_00a2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :label_009a
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v20
    if-nez v20, :label_009a
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->setIsRead()V
    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I
    or-int/2addr v4, v5
    move v5, v4
    :label_009a
    add-int/lit8 v3, v3, 0x1
    goto :label_007f
    :label_009d
    move v15, v4
    move/from16 v20, v5
    :label_00a0
    move/from16 v5, v20
    :label_00a2
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v2
    cmp-long v2, v6, v2
    if-eqz v2, :label_00d0
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "diditem"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "diditemo"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :label_00d0
    add-int/lit8 v4, v15, 0x1
    move-object/from16 v2, v22
    move/from16 v3, v19
    const/4 v15, 0x2
    goto/16 :label_0050
    :label_00d9
    move/from16 v20, v5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    move/from16 v3, v20
    goto :label_00e3
    :label_00e1
    move/from16 v16, v3
    :label_00e3
    if-eqz v8, :label_0140
    invoke-virtual {v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v1
    move v2, v3
    move/from16 v3, v16
    :label_00ec
    if-ge v3, v1, :label_013f
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v4
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v6
    iget-object v7, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    invoke-virtual {v7, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v4, :label_0109
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I
    if-le v6, v5, :label_0109
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I
    or-int/2addr v2, v5
    :label_0109
    if-eqz v4, :label_013c
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I
    if-lez v5, :label_013c
    if-gt v5, v6, :label_013c
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    invoke-virtual {v5, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/ArrayList;
    if-eqz v4, :label_013c
    move/from16 v5, v16
    :label_011f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-ge v5, v6, :label_013c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_0139
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v7
    if-eqz v7, :label_0139
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->setIsRead()V
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I
    or-int/2addr v2, v6
    :label_0139
    add-int/lit8 v5, v5, 0x1
    goto :label_011f
    :label_013c
    add-int/lit8 v3, v3, 0x1
    goto :label_00ec
    :label_013f
    move v3, v2
    :label_0140
    if-eqz v9, :label_01b7
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I
    move-result v1
    move v2, v3
    move/from16 v3, v16
    :label_0149
    if-ge v3, v1, :label_01b3
    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I
    move-result v4
    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->valueAt(I)I
    move-result v5
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v6
    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v15
    move/from16 v22, v1
    move/from16 v23, v2
    const/4 v1, 0x2
    new-array v2, v1, [Ljava/lang/Object;
    aput-object v8, v2, v16
    const/4 v1, 0x1
    aput-object v15, v2, v1
    invoke-virtual {v6, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    int-to-long v6, v4
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J
    move-result-wide v6
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    invoke-virtual {v2, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v2, :label_01ac
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    invoke-virtual {v2, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-eqz v2, :label_01ac
    move/from16 v4, v23
    move/from16 v6, v16
    :label_018d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v7
    if-ge v6, v7, :label_01aa
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/messenger/MessageObject;
    if-eqz v7, :label_01a7
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    if-gt v8, v5, :label_01a7
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->setIsRead()V
    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I
    or-int/2addr v4, v7
    :label_01a7
    add-int/lit8 v6, v6, 0x1
    goto :label_018d
    :label_01aa
    move v2, v4
    goto :label_01ae
    :label_01ac
    move/from16 v2, v23
    :label_01ae
    add-int/lit8 v3, v3, 0x1
    move/from16 v1, v22
    goto :label_0149
    :label_01b3
    move/from16 v23, v2
    move/from16 v3, v23
    :label_01b7
    const/4 v1, 0x1
    if-eqz v10, :label_01e3
    invoke-virtual {v10}, Lz/f;->m()I
    move-result v2
    move/from16 v4, v16
    :label_01c0
    if-ge v4, v2, :label_01e3
    invoke-virtual {v10, v4}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v10, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v8
    sget v9, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/4 v15, 0x2
    new-array v6, v15, [Ljava/lang/Object;
    aput-object v5, v6, v16
    aput-object v7, v6, v1
    invoke-virtual {v8, v9, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_01c0
    :label_01e3
    const/4 v2, 0x3
    if-eqz v11, :label_02bf
    invoke-virtual {v11}, Lz/f;->m()I
    move-result v6
    move/from16 v7, v16
    :label_01ec
    if-ge v7, v6, :label_02b1
    invoke-virtual {v11, v7}, Lz/f;->j(I)J
    move-result-wide v8
    invoke-virtual {v11, v7}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/util/ArrayList;
    if-nez v10, :label_0202
    move/from16 v25, v2
    move/from16 v24, v6
    const-wide/16 v22, 0x0
    goto/16 :label_02a9
    :label_0202
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v15
    const-wide/16 v22, 0x0
    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    move/from16 v24, v6
    neg-long v5, v8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    new-array v6, v2, [Ljava/lang/Object;
    aput-object v10, v6, v16
    aput-object v5, v6, v1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/16 v17, 0x2
    aput-object v5, v6, v17
    invoke-virtual {v15, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    cmp-long v4, v8, v22
    if-nez v4, :label_0266
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v4
    move/from16 v5, v16
    :label_022a
    if-ge v5, v4, :label_0263
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    iget-object v8, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Landroid/util/SparseArray;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_0260
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v8, :label_025e
    new-instance v8, Ljava/lang/StringBuilder;
    const-string v9, "mark messages "
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v9, " deleted"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_025e
    iput-boolean v1, v6, Lorg/telegram/messenger/MessageObject;->deleted:Z
    :label_0260
    add-int/lit8 v5, v5, 0x1
    goto :label_022a
    :label_0263
    move/from16 v25, v2
    goto :label_02a9
    :label_0266
    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    invoke-virtual {v4, v8, v9}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/ArrayList;
    if-eqz v4, :label_0263
    move/from16 v5, v16
    :label_0272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-ge v5, v6, :label_0263
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_02a2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v8
    move/from16 v9, v16
    :label_0286
    if-ge v9, v8, :label_02a2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v15
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v18
    check-cast v18, Ljava/lang/Integer;
    move/from16 v25, v2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I
    move-result v2
    if-ne v15, v2, :label_029d
    iput-boolean v1, v6, Lorg/telegram/messenger/MessageObject;->deleted:Z
    goto :label_02a4
    :label_029d
    add-int/lit8 v9, v9, 0x1
    move/from16 v2, v25
    goto :label_0286
    :label_02a2
    move/from16 v25, v2
    :label_02a4
    add-int/lit8 v5, v5, 0x1
    move/from16 v2, v25
    goto :label_0272
    :label_02a9
    add-int/lit8 v7, v7, 0x1
    move/from16 v6, v24
    move/from16 v2, v25
    goto/16 :label_01ec
    :label_02b1
    move/from16 v25, v2
    const-wide/16 v22, 0x0
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v2
    move/from16 v4, v16
    invoke-virtual {v2, v11, v4}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Lz/f;Z)V
    goto :label_02c3
    :label_02bf
    move/from16 v25, v2
    const-wide/16 v22, 0x0
    :label_02c3
    if-eqz v12, :label_02f2
    invoke-virtual {v12}, Lz/f;->m()I
    move-result v2
    const/4 v4, 0x0
    :label_02ca
    if-ge v4, v2, :label_02f2
    invoke-virtual {v12, v4}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v12, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    if-nez v7, :label_02d9
    goto :label_02ef
    :label_02d9
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v8
    sget v9, Lorg/telegram/messenger/NotificationCenter;->quickRepliesDeleted:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/4 v15, 0x2
    new-array v6, v15, [Ljava/lang/Object;
    const/16 v16, 0x0
    aput-object v7, v6, v16
    aput-object v5, v6, v1
    invoke-virtual {v8, v9, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_02ef
    add-int/lit8 v4, v4, 0x1
    goto :label_02ca
    :label_02f2
    if-eqz v13, :label_035a
    invoke-virtual {v13}, Lz/f;->m()I
    move-result v2
    const/4 v4, 0x0
    :label_02f9
    if-ge v4, v2, :label_035a
    invoke-virtual {v13, v4}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v13, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    if-nez v7, :label_0308
    goto :label_0357
    :label_0308
    if-eqz v14, :label_0311
    invoke-virtual {v14, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Ljava/util/ArrayList;
    goto :label_0312
    :label_0311
    const/4 v8, 0x0
    :label_0312
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v9
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z
    move-result v11
    if-eqz v11, :label_032e
    neg-long v5, v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v11
    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v11
    invoke-static {v11}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v11
    if-eqz v11, :label_032e
    goto :label_0330
    :label_032e
    move-wide/from16 v5, v22
    :label_0330
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/16 v16, 0x0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v11, 0x7
    new-array v11, v11, [Ljava/lang/Object;
    aput-object v7, v11, v16
    aput-object v5, v11, v1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    const/16 v17, 0x2
    aput-object v5, v11, v17
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v5, v11, v25
    const/4 v7, 0x4
    aput-object v5, v11, v7
    const/4 v5, 0x5
    aput-object v6, v11, v5
    const/4 v5, 0x6
    aput-object v8, v11, v5
    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_0357
    add-int/lit8 v4, v4, 0x1
    goto :label_02f9
    :label_035a
    if-eqz v30, :label_03b9
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v2
    const/4 v4, 0x0
    :label_0361
    if-ge v4, v2, :label_03b0
    move-object/from16 v15, v30
    invoke-virtual {v15, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v5
    invoke-virtual {v15, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v7
    neg-long v5, v5
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v8
    sget v9, Lorg/telegram/messenger/NotificationCenter;->historyCleared:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    const/4 v12, 0x2
    new-array v13, v12, [Ljava/lang/Object;
    const/16 v16, 0x0
    aput-object v10, v13, v16
    aput-object v11, v13, v1
    invoke-virtual {v8, v9, v13}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    iget-object v8, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    invoke-virtual {v8, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/ArrayList;
    if-eqz v5, :label_03ad
    const/4 v6, 0x0
    :label_0393
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v8
    if-ge v6, v8, :label_03ad
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :label_03aa
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    if-gt v9, v7, :label_03aa
    iput-boolean v1, v8, Lorg/telegram/messenger/MessageObject;->deleted:Z
    goto :label_03ad
    :label_03aa
    add-int/lit8 v6, v6, 0x1
    goto :label_0393
    :label_03ad
    add-int/lit8 v4, v4, 0x1
    goto :label_0361
    :label_03b0
    move-object/from16 v15, v30
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v2
    invoke-virtual {v2, v15}, Lorg/telegram/messenger/NotificationsController;->removeDeletedHisoryFromNotifications(Lorg/telegram/messenger/support/LongSparseIntArray;)V
    :label_03b9
    if-eqz v3, :label_03ce
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    new-array v1, v1, [Ljava/lang/Object;
    const/16 v16, 0x0
    aput-object v3, v1, v16
    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_03ce
    return-void
.end method
