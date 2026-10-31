# file_id=0 method_idx=43213 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V"
.method public putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V
    .registers 22

    iget-object v0, v12, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;
    new-instance v1, Lorg/telegram/messenger/g9;
    move-object v2, v12
    move-object v4, v13
    move-wide v5, v14
    move/from16 v9, v16
    move/from16 v10, v17
    move/from16 v11, v18
    move/from16 v3, v19
    move-wide/from16 v7, v20
    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/g9;-><init>(Lorg/telegram/messenger/MessagesStorage;ILorg/telegram/tgnet/TLRPC$messages_Messages;JJIIZ)V
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    return-void
.end method
