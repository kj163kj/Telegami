# file_id=0 method_idx=46434 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$24(Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V"
.method private synthetic lambda$pushToTranslate$24(Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V
    .registers 25

    move-object/from16 v0, v19
    move-object/from16 v2, v22
    monitor-enter v18
    :label_0005
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/ArrayList;
    if-eqz v1, :label_0025
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :label_0025
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :label_0025
    :label_0022
    move-exception v0
    goto/16 :label_00ce
    :label_0025
    monitor-exit v18
    :label_0026
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->translationsAutoEnabled:Ljava/lang/String;
    const-string v1, "alternative"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :label_008f
    const-string/jumbo v1, "system"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_003e
    goto :label_008f
    :label_003e
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V
    if-eqz v23, :label_0055
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    or-int/lit8 v0, v0, 0x2
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-wide/from16 v4, v20
    goto :label_006b
    :label_0055
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    or-int/lit8 v0, v0, 0x1
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    move-wide/from16 v4, v20
    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v0
    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;
    :label_006b
    iget-object v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v9
    new-instance v0, Lorg/telegram/messenger/db;
    const/4 v7, 0x1
    move-object/from16 v1, v18
    move/from16 v3, v23
    move-object/from16 v6, v24
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/db;-><init>(Lorg/telegram/messenger/BaseController;Ljava/lang/Object;ZJLjava/lang/Object;I)V
    invoke-virtual {v9, v8, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    move-result v0
    monitor-enter v18
    :label_0088
    iput v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I
    monitor-exit v18
    return-void
    :label_008c
    move-exception v0
    monitor-exit v18
    :label_008e
    throw v0
    :label_008f
    iget-object v14, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;
    const/4 v0, 0x0
    :label_0092
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :label_00cd
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v13
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->callbacks:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v11, v1
    check-cast v11, Lorg/telegram/messenger/Utilities$Callback4;
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    new-instance v9, Lorg/telegram/messenger/ml;
    const/16 v17, 0x1
    move-object/from16 v10, v18
    move-wide/from16 v15, v20
    move/from16 v12, v23
    invoke-direct/range {v9 .. v17}, Lorg/telegram/messenger/ml;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JI)V
    const/4 v3, 0x0
    invoke-static {v1, v3, v14, v9}, Lorg/telegram/ui/Components/r51;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    add-int/lit8 v0, v0, 0x1
    goto :label_0092
    :label_00cd
    return-void
    :label_00ce
    monitor-exit v18
    :label_00cf
    throw v0
    .catchall {:label_0005 .. :label_0026} :label_0022
    .catchall {:label_0088 .. :label_008e} :label_008c
    .catchall {:label_00ce .. :label_00cf} :label_0022
.end method

