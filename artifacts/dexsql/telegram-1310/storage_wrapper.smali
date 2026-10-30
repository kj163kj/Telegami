# file_id=0 method_idx=43161 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;"
.method public markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    .registers 18

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    const/4 v1, 0x0
    if-eqz v0, :label_0008
    return-object v1
    :label_0008
    if-eqz v14, :label_001d
    iget-object v14, v10, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;
    new-instance v2, Lorg/telegram/messenger/eg;
    move-object v3, v10
    move-wide v4, v11
    move-object v6, v13
    move v7, v15
    move/from16 v8, v16
    move/from16 v9, v17
    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/eg;-><init>(Lorg/telegram/messenger/MessagesStorage;JLjava/util/ArrayList;ZII)V
    invoke-virtual {v14, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    return-object v1
    :label_001d
    move-object v3, v10
    move-wide v4, v11
    move-object v6, v13
    move v7, v15
    move/from16 v8, v16
    move/from16 v9, v17
    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(JLjava/util/ArrayList;ZII)Ljava/util/ArrayList;
    move-result-object v11
    return-object v11
.end method
