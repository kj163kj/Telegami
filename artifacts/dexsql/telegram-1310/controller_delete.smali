# file_id=0 method_idx=41307 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JZIZJLorg/telegram/tgnet/TLObject;IZI)V"
.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JZIZJLorg/telegram/tgnet/TLObject;IZI)V
    .registers 39

    move-object/from16 v1, v24
    move-object/from16 v5, v25
    move-object/from16 v0, v26
    move-object/from16 v10, v27
    move-wide/from16 v3, v28
    move/from16 v2, v31
    move-object/from16 v11, v35
    const/4 v12, 0x0
    const/4 v13, 0x1
    if-ne v2, v13, :label_0014
    move v14, v13
    goto :label_0015
    :label_0014
    move v14, v12
    :label_0015
    const/4 v15, 0x5
    if-ne v2, v15, :label_001b
    move/from16 v16, v13
    goto :label_001d
    :label_001b
    move/from16 v16, v12
    :label_001d
    const/16 v6, 0x9
    if-ne v2, v6, :label_0023
    move v6, v13
    goto :label_0024
    :label_0023
    move v6, v12
    :label_0024
    const-wide/16 v17, 0x0
    if-eqz v5, :label_002e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v7
    if-eqz v7, :label_0034
    :label_002e
    cmp-long v7, v33, v17
    if-nez v7, :label_0034
    goto/16 :label_02fe
    :label_0034
    cmp-long v7, v33, v17
    if-nez v7, :label_0195
    cmp-long v7, v3, v17
    if-eqz v7, :label_0059
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z
    move-result v7
    if-eqz v7, :label_0059
    neg-long v8, v3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v8
    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v8
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-eqz v9, :label_0054
    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    goto :label_0056
    :label_0054
    move-wide/from16 v8, v17
    :label_0056
    move-wide/from16 v19, v8
    goto :label_005b
    :label_0059
    move-wide/from16 v19, v17
    :label_005b
    if-nez v32, :label_0080
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v9
    move v7, v12
    :label_0067
    if-ge v7, v9, :label_007e
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v22
    move-object/from16 v13, v22
    check-cast v13, Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    move-result v22
    if-lez v22, :label_007a
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_007a
    add-int/lit8 v7, v7, 0x1
    const/4 v13, 0x1
    goto :label_0067
    :label_007e
    move-object v13, v8
    goto :label_0081
    :label_0080
    const/4 v13, 0x0
    :label_0081
    if-eqz v14, :label_0098
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v8, 0x1
    const/4 v9, 0x0
    const/4 v6, 0x1
    const/4 v7, 0x0
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    move-wide/from16 v3, v28
    move/from16 v9, v36
    move/from16 v21, v15
    :label_0094
    move-wide/from16 v5, v19
    goto/16 :label_0162
    :label_0098
    if-eqz v16, :label_0104
    if-ne v2, v15, :label_00f3
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lcf/s2;->f(I)Lcf/s2;
    move-result-object v2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v3
    move v4, v12
    :label_00a7
    if-ge v4, v3, :label_00f3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    add-int/lit8 v4, v4, 0x1
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    iget-object v7, v2, Lcf/s2;->c:Ljava/util/ArrayList;
    move v8, v12
    :label_00b7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v9
    if-ge v8, v9, :label_00ee
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lcf/r2;
    move/from16 v21, v15
    iget-object v15, v9, Lcf/r2;->h:Ljava/util/HashSet;
    invoke-virtual {v15, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v15
    if-eqz v15, :label_00e9
    iget-object v8, v9, Lcf/r2;->h:Ljava/util/HashSet;
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    invoke-virtual {v9}, Lcf/r2;->a()I
    move-result v6
    if-gtz v6, :label_00db
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :label_00db
    iget v6, v2, Lcf/s2;->a:I
    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v6
    sget v7, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I
    new-array v8, v12, [Ljava/lang/Object;
    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto :label_00f0
    :label_00e9
    add-int/lit8 v8, v8, 0x1
    move/from16 v15, v21
    goto :label_00b7
    :label_00ee
    move/from16 v21, v15
    :label_00f0
    move/from16 v15, v21
    goto :label_00a7
    :label_00f3
    move/from16 v21, v15
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v7, 0x0
    const/4 v8, 0x5
    const/4 v6, 0x1
    move-wide/from16 v3, v28
    move/from16 v9, v36
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    goto :label_0094
    :label_0104
    move/from16 v21, v15
    if-eqz v6, :label_011b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v7, 0x0
    const/16 v8, 0x9
    const/4 v6, 0x1
    move-object/from16 v5, v25
    move-wide/from16 v3, v28
    move/from16 v9, v36
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    goto/16 :label_0094
    :label_011b
    move-object/from16 v5, v25
    move-wide/from16 v3, v28
    cmp-long v2, v19, v17
    if-nez v2, :label_0144
    move v2, v12
    :label_0124
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-ge v2, v6, :label_0147
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Landroid/util/SparseArray;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_0141
    const/4 v7, 0x1
    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->deleted:Z
    :label_0141
    add-int/lit8 v2, v2, 0x1
    goto :label_0124
    :label_0144
    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->markDialogMessageAsDeleted(JLjava/util/ArrayList;)V
    :label_0147
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v6, 0x1
    const/4 v8, 0x0
    move/from16 v7, v30
    move/from16 v9, v36
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v8, 0x0
    move-object/from16 v7, v25
    move-wide/from16 v3, v28
    move-wide/from16 v5, v19
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    :label_0162
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v8
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v15
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v19
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v20
    move/from16 v22, v12
    const/4 v12, 0x6
    new-array v12, v12, [Ljava/lang/Object;
    aput-object v25, v12, v22
    const/16 v23, 0x1
    aput-object v8, v12, v23
    const/4 v8, 0x2
    aput-object v15, v12, v8
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/4 v15, 0x3
    aput-object v8, v12, v15
    const/4 v8, 0x4
    aput-object v19, v12, v8
    aput-object v20, v12, v21
    invoke-virtual {v2, v7, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    move-object v8, v13
    goto :label_01a7
    :label_0195
    move/from16 v9, v36
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    if-eqz v2, :label_01a4
    move-object v2, v11
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J
    :label_01a2
    const/4 v8, 0x0
    goto :label_01a7
    :label_01a4
    move-wide/from16 v5, v17
    goto :label_01a2
    :label_01a7
    if-eqz v32, :label_01ab
    goto/16 :label_02fe
    :label_01ab
    const/16 v2, 0x18
    if-eqz v14, :label_01fb
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;
    if-eqz v0, :label_01b9
    move-object v0, v11
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;
    move-wide/from16 v2, v33
    goto :label_01eb
    :label_01b9
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;-><init>()V
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;->id:Ljava/util/ArrayList;
    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :label_01c6
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v0
    add-int/lit8 v0, v0, 0xc
    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :label_01d1
    invoke-virtual {v8, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    invoke-virtual {v8, v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    invoke-virtual {v5, v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteScheduledMessages;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :label_01da
    goto :label_01e2
    :label_01db
    move-exception v0
    goto :label_01df
    :label_01dd
    move-exception v0
    const/4 v8, 0x0
    :label_01df
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_01e2
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    move-result-wide v2
    move-object v0, v5
    :label_01eb
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    new-instance v5, Lorg/telegram/messenger/la;
    const/16 v6, 0xd
    invoke-direct {v5, v1, v2, v3, v6}, Lorg/telegram/messenger/la;-><init>(Lorg/telegram/messenger/MessagesController;JI)V
    invoke-virtual {v4, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    goto/16 :label_02fe
    :label_01fb
    if-eqz v16, :label_024a
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;
    if-eqz v0, :label_0207
    move-object v0, v11
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;
    move-wide/from16 v3, v33
    goto :label_023a
    :label_0207
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;-><init>()V
    iput-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;->id:Ljava/util/ArrayList;
    iput v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;->shortcut_id:I
    :label_0210
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v0
    add-int/lit8 v0, v0, 0x10
    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :label_021b
    const/16 v0, 0x67
    :label_021d
    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    invoke-virtual {v8, v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    invoke-virtual {v2, v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyMessages;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :label_0229
    goto :label_0231
    :label_022a
    move-exception v0
    goto :label_022e
    :label_022c
    move-exception v0
    const/4 v8, 0x0
    :label_022e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_0231
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    move-result-wide v3
    move-object v0, v2
    :label_023a
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v5, Lorg/telegram/messenger/la;
    const/16 v6, 0xe
    invoke-direct {v5, v1, v3, v4, v6}, Lorg/telegram/messenger/la;-><init>(Lorg/telegram/messenger/MessagesController;JI)V
    invoke-virtual {v2, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    goto/16 :label_02fe
    :label_024a
    cmp-long v7, v5, v17
    if-eqz v7, :label_02a2
    if-eqz v11, :label_0256
    move-object v0, v11
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    move-wide/from16 v2, v33
    goto :label_0288
    :label_0256
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V
    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;
    move-result-object v0
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;
    :label_0263
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v7}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v0
    add-int/lit8 v0, v0, 0xc
    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :label_026e
    invoke-virtual {v8, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    invoke-virtual {v8, v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    invoke-virtual {v7, v8}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :label_0277
    goto :label_027f
    :label_0278
    move-exception v0
    goto :label_027c
    :label_027a
    move-exception v0
    const/4 v8, 0x0
    :label_027c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_027f
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    move-result-wide v2
    move-object v0, v7
    :label_0288
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    new-instance v7, Lorg/telegram/messenger/oc;
    const/4 v8, 0x1
    move-object/from16 v31, v1
    move-wide/from16 v29, v2
    move-wide/from16 v27, v5
    move-object/from16 v25, v7
    move/from16 v26, v8
    invoke-direct/range {v25 .. v31}, Lorg/telegram/messenger/oc;-><init>(IJJLorg/telegram/messenger/MessagesController;)V
    move-object/from16 v2, v25
    invoke-virtual {v4, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    goto :label_02fe
    :label_02a2
    if-eqz v0, :label_02b5
    if-eqz v10, :label_02b5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v5
    if-nez v5, :label_02b5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v5
    const/4 v7, 0x0
    invoke-virtual {v5, v10, v0, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    goto :label_02b6
    :label_02b5
    const/4 v7, 0x0
    :label_02b6
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    if-eqz v0, :label_02c0
    move-object v0, v11
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    move-wide/from16 v2, v33
    goto :label_02f0
    :label_02c0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;
    move/from16 v0, v30
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z
    :label_02cb
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v0
    add-int/lit8 v0, v0, 0xc
    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :label_02d6
    invoke-virtual {v8, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    invoke-virtual {v8, v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    invoke-virtual {v5, v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :label_02df
    goto :label_02e7
    :label_02e0
    move-exception v0
    goto :label_02e4
    :label_02e2
    move-exception v0
    move-object v8, v7
    :label_02e4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_02e7
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    move-result-wide v2
    move-object v0, v5
    :label_02f0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    new-instance v5, Lorg/telegram/messenger/la;
    const/16 v6, 0xf
    invoke-direct {v5, v1, v2, v3, v6}, Lorg/telegram/messenger/la;-><init>(Lorg/telegram/messenger/MessagesController;JI)V
    invoke-virtual {v4, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :label_02fe
    return-void
    .catch Ljava/lang/Exception; {:label_01c6 .. :label_01d1} :label_01dd
    .catch Ljava/lang/Exception; {:label_01d1 .. :label_01da} :label_01db
    .catch Ljava/lang/Exception; {:label_0210 .. :label_021b} :label_022c
    .catch Ljava/lang/Exception; {:label_021d .. :label_0229} :label_022a
    .catch Ljava/lang/Exception; {:label_0263 .. :label_026e} :label_027a
    .catch Ljava/lang/Exception; {:label_026e .. :label_0277} :label_0278
    .catch Ljava/lang/Exception; {:label_02cb .. :label_02d6} :label_02e2
    .catch Ljava/lang/Exception; {:label_02d6 .. :label_02df} :label_02e0
.end method

