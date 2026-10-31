# file_id=0 method_idx=45702 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I"
.method public sendMessage(Ljava/util/ArrayList;JZZZIJ)I
    .registers 22

    const/4 v8, 0x0
    const/4 v9, -0x1
    move-object v0, v12
    move-object v1, v13
    move-wide v2, v14
    move/from16 v4, v16
    move/from16 v5, v17
    move/from16 v6, v18
    move/from16 v7, v19
    move-wide/from16 v10, v20
    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;IJ)I
    move-result v13
    return v13
.end method

