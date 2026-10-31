# file_id=0 method_idx=45703 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;IJ)I"
.method public sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;IJ)I
    .registers 29

    const-wide/16 v14, 0x0
    const/16 v16, 0x0
    const/4 v9, 0x0
    move-object/from16 v1, v17
    move-object/from16 v2, v18
    move-wide/from16 v3, v19
    move/from16 v5, v21
    move/from16 v6, v22
    move/from16 v7, v23
    move/from16 v8, v24
    move-object/from16 v10, v25
    move/from16 v11, v26
    move-wide/from16 v12, v27
    invoke-virtual/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I
    move-result v0
    return v0
.end method

