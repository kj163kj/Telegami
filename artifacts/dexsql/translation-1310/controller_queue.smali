# file_id=0 method_idx=46453 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/TranslateController;->pushToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback4;)V"
.method private pushToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback4;)V
    .registers 22

    move-object/from16 v1, v18
    move-object/from16 v0, v19
    move-object/from16 v2, v21
    const-string/jumbo v3, "pending translation +"
    if-eqz v0, :label_0169
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v4, :label_0169
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    if-ltz v4, :label_0169
    if-nez v2, :label_0019
    goto/16 :label_0169
    :label_0019
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;
    const/4 v6, 0x0
    const/4 v7, 0x1
    if-eqz v5, :label_002c
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z
    if-eqz v5, :label_002c
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z
    if-eqz v4, :label_002c
    move v4, v6
    move v6, v7
    goto :label_002d
    :label_002c
    move v4, v6
    :label_002d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v8
    if-eqz v6, :label_0036
    iget-object v5, v1, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;
    goto :label_0038
    :label_0036
    iget-object v5, v1, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;
    :label_0038
    if-eqz v6, :label_003d
    iget-object v10, v1, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;
    goto :label_003f
    :label_003d
    iget-object v10, v1, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;
    :label_003f
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V
    if-eqz v6, :label_0054
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;
    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v12
    if-eqz v12, :label_005e
    goto/16 :label_0169
    :label_0054
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;
    :label_005e
    monitor-enter v18
    :label_005f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v12
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Ljava/util/ArrayList;
    if-nez v12, :label_007c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v12
    new-instance v13, Ljava/util/ArrayList;
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object v12, v13
    goto :label_007c
    :label_0079
    move-exception v0
    goto/16 :label_0167
    :label_007c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v13
    const/4 v14, 0x0
    if-eqz v13, :label_008c
    new-instance v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;
    invoke-direct {v13, v14}, Lorg/telegram/messenger/TranslateController$PendingTranslation;-><init>(Lorg/telegram/messenger/TranslateController$1;)V
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0097
    :label_008c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    move-result v13
    sub-int/2addr v13, v7
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;
    :label_0097
    iget-object v15, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :label_00a9
    monitor-exit v18
    return-void
    :label_00a9
    if-eqz v6, :label_00bd
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;
    if-nez v4, :label_00b4
    const/16 v17, 0x0
    goto :label_00ba
    :label_00b4
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    move-result v4
    move/from16 v17, v4
    :label_00ba
    move/from16 v4, v17
    goto :label_00dd
    :label_00bd
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v4, :label_00ca
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    if-eqz v4, :label_00ca
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    move-result v4
    goto :label_00dd
    :label_00ca
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-eqz v4, :label_00d3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    move-result v4
    goto :label_00dd
    :label_00d3
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    if-eqz v4, :label_00dc
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    move-result v4
    goto :label_00dd
    :label_00dc
    const/4 v4, 0x0
    :label_00dd
    iget v15, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I
    add-int/2addr v15, v4
    move/from16 v16, v7
    const/16 v7, 0x61a8
    if-ge v15, v7, :label_00f2
    iget-object v7, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    add-int/lit8 v7, v7, 0x1
    const/16 v15, 0x14
    if-lt v7, v15, :label_0104
    :label_00f2
    iget-object v7, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V
    iget-object v7, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    new-instance v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;
    invoke-direct {v13, v14}, Lorg/telegram/messenger/TranslateController$PendingTranslation;-><init>(Lorg/telegram/messenger/TranslateController$1;)V
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0104
    iget-object v7, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;
    if-eqz v7, :label_010b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V
    :label_010b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    iget-object v7, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v12
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " message"
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    iget-object v0, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v0, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->callbacks:Ljava/util/ArrayList;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v0, v20
    iput-object v0, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;
    iget v0, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I
    add-int/2addr v0, v4
    iput v0, v13, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I
    new-instance v0, Lorg/telegram/messenger/je;
    move-object v2, v5
    move-wide v3, v8
    move-object v7, v10
    move-object v5, v13
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/je;-><init>(Lorg/telegram/messenger/TranslateController;Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V
    iput-object v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;
    iget v1, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I
    int-to-long v1, v1
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    iget v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I
    div-int/lit8 v0, v0, 0x2
    iput v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I
    monitor-exit v18
    return-void
    :label_0167
    monitor-exit v18
    :label_0168
    throw v0
    :label_0169
    return-void
    .catchall {:label_005f .. :label_0168} :label_0079
.end method

