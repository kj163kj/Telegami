# file_id=0 method_idx=41736 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->lambda$deleteMessagesByPush$369(Ljava/util/ArrayList;JJ)V"
.method private synthetic lambda$deleteMessagesByPush$369(Ljava/util/ArrayList;JJ)V
    .registers 14

    new-instance v0, Lorg/telegram/messenger/ia;
    const/4 v5, 0x0
    move-object v1, v8
    move-object v2, v9
    move-wide v3, v10
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ia;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;JI)V
    move-wide v9, v3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-virtual {v8}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v11
    invoke-virtual {v11, v12, v13, v2}, Lorg/telegram/messenger/MessagesStorage;->deletePushMessages(JLjava/util/ArrayList;)V
    invoke-virtual {v8}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x1
    move-object v3, v2
    move-wide v1, v12
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    move-result-object v6
    move-wide v11, v1
    move-object v2, v3
    invoke-virtual {v8}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    move-wide v3, v9
    move-object v5, v2
    move-wide v1, v11
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    return-void
.end method
