# file_id=0 method_idx=41996 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->lambda$processUpdateArray$421(JLjava/util/ArrayList;)V"
.method private synthetic lambda$processUpdateArray$421(JLjava/util/ArrayList;)V
    .registers 19

    invoke-virtual {v15}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x1
    move-wide/from16 v1, v16
    move-object/from16 v3, v18
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    move-result-object v14
    invoke-virtual {v15}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v8
    neg-long v11, v1
    move-object/from16 v13, v18
    move-wide v9, v1
    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    return-void
.end method
