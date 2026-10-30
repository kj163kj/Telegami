# file_id=0 method_idx=43164 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(JLjava/util/ArrayList;ZII)Ljava/util/ArrayList;"
.method private markMessagesAsDeletedInternal(JLjava/util/ArrayList;ZII)Ljava/util/ArrayList;
    .registers 53

    move-object/from16 v1, v46
    move-wide/from16 v7, v47
    move-object/from16 v9, v49
    move/from16 v0, v51
    const/4 v10, 0x0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    const-string v2, "SELECT uid FROM scheduled_messages_v2 WHERE mid IN("
    const-string v3, "DELETE FROM quick_replies_messages WHERE mid IN("
    const-string v4, "DELETE FROM welcome_messages WHERE mid IN("
    const-string v5, "DELETE FROM tag_message_id WHERE mid IN("
    :label_0015
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v13
    :label_001d
    cmp-long v6, v13, v7
    const-string v13, ")"
    const-string v14, ","
    if-nez v6, :label_0054
    :label_0025
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-static {v14, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v15
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v6, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v5
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v5
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_0054
    :label_0048
    move-exception v0
    const/4 v12, 0x0
    :label_004a
    const/16 v16, 0x0
    goto/16 :label_0fba
    :label_004e
    move-exception v0
    const/4 v2, 0x0
    :label_0050
    const/16 v26, 0x0
    goto/16 :label_0fa3
    :label_0054
    new-instance v12, Ljava/util/ArrayList;
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    const/4 v15, 0x1
    if-ne v0, v15, :label_005e
    move v5, v15
    goto :label_005f
    :label_005e
    move v5, v10
    :label_005f
    const/4 v6, 0x5
    if-ne v0, v6, :label_0067
    move/from16 v17, v15
    move/from16 v18, v17
    goto :label_006b
    :label_0067
    move/from16 v17, v10
    move/from16 v18, v15
    :label_006b
    const/16 v15, 0x9
    if-ne v0, v15, :label_0097
    invoke-static {v14, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ") AND dialog_id = "
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_00c2
    :label_0097
    if-eqz v17, :label_00c8
    invoke-static {v14, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ") AND topic_id = "
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v0, v52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_00c2
    move-object v13, v12
    const/4 v12, 0x0
    const/16 v16, 0x0
    goto/16 :label_0f88
    :label_00c8
    const-string v15, ") AND uid = "
    if-eqz v5, :label_0153
    :label_00cc
    invoke-static {v14, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    new-array v5, v10, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_00f1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v0
    if-eqz v0, :label_0115
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_00f1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_010c
    goto :label_00f1
    :label_010d
    move-exception v0
    move-object v12, v2
    goto/16 :label_004a
    :label_0111
    move-exception v0
    :label_0112
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_0115
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0118
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "DELETE FROM scheduled_messages_v2 WHERE mid IN("
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v0
    :label_0142
    if-ge v10, v0, :label_00c2
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Long;
    invoke-direct {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->broadcastScheduledMessagesChange(Ljava/lang/Long;)V
    add-int/lit8 v10, v10, 0x1
    goto :label_0142
    :label_0150
    move-exception v0
    goto/16 :label_0050
    :label_0153
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v2
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    new-instance v6, Lz/f;
    invoke-direct {v6}, Lz/f;-><init>()V
    new-instance v10, Lz/f;
    invoke-direct {v10}, Lz/f;-><init>()V
    move-object/from16 v20, v11
    new-instance v11, Ljava/util/HashMap;
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    move-object/from16 v21, v13
    new-instance v13, Lz/f;
    invoke-direct {v13}, Lz/f;-><init>()V
    move-object/from16 v22, v12
    invoke-static {v14, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v12
    new-instance v23, Ljava/util/ArrayList;
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    move-object/from16 v24, v5
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    new-instance v25, Ljava/util/ArrayList;
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    cmp-long v0, v2, v7
    const-wide/16 v26, 0x0
    if-eqz v0, :label_01a1
    cmp-long v0, v7, v26
    if-nez v0, :label_019f
    goto :label_01a1
    :label_019f
    const/4 v9, 0x0
    goto :label_01a7
    :label_01a1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :label_01a6
    move-object v9, v0
    :label_01a7
    cmp-long v28, v7, v26
    const-string v0, "SELECT uid, data, read_state, out, mention, mid FROM messages_v2 WHERE mid IN("
    if-eqz v28, :label_01d3
    move-object/from16 v51, v5
    :label_01af
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;
    move-object/from16 v29, v14
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    move-object/from16 v52, v11
    const/4 v14, 0x0
    new-array v11, v14, [Ljava/lang/Object;
    invoke-virtual {v5, v0, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v0
    move-object v11, v0
    :label_01d1
    const/4 v14, 0x0
    goto :label_01f6
    :label_01d3
    move-object/from16 v51, v5
    move-object/from16 v52, v11
    move-object/from16 v29, v14
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ") AND is_channel = 0"
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v14, 0x0
    new-array v11, v14, [Ljava/lang/Object;
    invoke-virtual {v5, v0, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v0
    :label_01f5
    move-object v11, v0
    :label_01f6
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v0
    :label_01fa
    if-eqz v0, :label_039c
    move-object/from16 v31, v6
    :label_01fe
    invoke-virtual {v11, v14}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v5
    const/4 v14, 0x5
    invoke-virtual {v11, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v14
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    invoke-virtual {v13, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Ljava/util/ArrayList;
    :label_0214
    if-nez v14, :label_0239
    :label_0216
    new-instance v14, Ljava/util/ArrayList;
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v13, v14, v5, v6}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_021e
    goto :label_0239
    :label_021f
    move-exception v0
    move-object v12, v11
    goto/16 :label_004a
    :label_0223
    move-exception v0
    :label_0224
    move-object/from16 v5, v51
    move-object/from16 v33, v4
    :label_0228
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v35, v13
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    move-wide v13, v2
    move-object/from16 v3, v23
    :label_0235
    move-object/from16 v23, v12
    goto/16 :label_03bb
    :label_0239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0240
    cmp-long v14, v5, v2
    if-eqz v14, :label_02d3
    move-object/from16 v33, v4
    const/4 v1, 0x2
    :label_0247
    invoke-virtual {v11, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v4
    :label_024b
    const/4 v1, 0x3
    :label_024c
    invoke-virtual {v11, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v30
    :label_0250
    if-nez v30, :label_02bb
    move-object/from16 v1, v31
    :label_0254
    invoke-virtual {v1, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v31
    check-cast v31, [Ljava/lang/Integer;
    :label_025a
    if-nez v31, :label_028b
    move-object/from16 v35, v13
    move/from16 v34, v14
    const/4 v14, 0x2
    :label_0261
    new-array v13, v14, [Ljava/lang/Integer;
    const/16 v19, 0x0
    aput-object v20, v13, v19
    aput-object v20, v13, v18
    invoke-virtual {v1, v13, v5, v6}, Lz/f;->k(Ljava/lang/Object;J)V
    move-object/from16 v31, v13
    :label_026e
    const/4 v14, 0x2
    goto :label_0290
    :label_0270
    move-exception v0
    const/16 v16, 0x0
    move-object/from16 v1, v46
    move-object v12, v11
    goto/16 :label_0fba
    :label_0278
    move-exception v0
    :label_0279
    move-object/from16 v5, v51
    move-object/from16 v31, v1
    :label_027d
    move-wide v13, v2
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v3, v23
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    move-object/from16 v1, v46
    goto :label_0235
    :label_028b
    move-object/from16 v35, v13
    move/from16 v34, v14
    goto :label_026e
    :label_0290
    if-ge v4, v14, :label_02a0
    aget-object v13, v31, v18
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    move-result v13
    add-int/lit8 v13, v13, 0x1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    aput-object v13, v31, v18
    :label_02a0
    const/4 v14, 0x2
    if-eqz v4, :label_02a5
    if-ne v4, v14, :label_02d6
    :label_02a5
    const/16 v19, 0x0
    aget-object v4, v31, v19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    add-int/lit8 v4, v4, 0x1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v31, v19
    :label_02b5
    goto :label_02d6
    :label_02b6
    move-exception v0
    move-object/from16 v35, v13
    const/4 v14, 0x2
    goto :label_0279
    :label_02bb
    move-object/from16 v35, v13
    move/from16 v34, v14
    move-object/from16 v1, v31
    const/4 v14, 0x2
    goto :label_02d6
    :label_02c3
    move-exception v0
    move-object/from16 v35, v13
    move-object/from16 v1, v31
    const/4 v14, 0x2
    :label_02c9
    move-object/from16 v5, v51
    goto :label_027d
    :label_02cc
    move-exception v0
    move v14, v1
    move-object/from16 v35, v13
    move-object/from16 v1, v31
    goto :label_02c9
    :label_02d3
    move-object/from16 v33, v4
    goto :label_02bb
    :label_02d6
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v4
    if-nez v4, :label_02f5
    if-nez v50, :label_02f5
    if-eqz v34, :label_02f5
    :label_02e0
    move-object/from16 v5, v51
    move-object/from16 v31, v1
    move-wide v13, v2
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v3, v23
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    move-object/from16 v1, v46
    :label_02f1
    move-object/from16 v23, v12
    goto/16 :label_037c
    :label_02f5
    move/from16 v4, v18
    invoke-virtual {v11, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v13
    if-eqz v13, :label_02e0
    const/4 v4, 0x0
    invoke-virtual {v13, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I
    move-result v14
    invoke-static {v13, v14, v4}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    move-result-object v14
    invoke-virtual {v14, v13, v2, v3}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V
    :label_0309
    if-eqz v9, :label_030e
    :label_030b
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_030e
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v4
    :label_0315
    if-nez v4, :label_032f
    if-eqz v50, :label_031a
    goto :label_032f
    :label_031a
    move-wide v4, v2
    move-object v2, v14
    move-wide v13, v4
    move-object/from16 v5, v51
    move-object/from16 v31, v1
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v3, v23
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    const/4 v11, 0x5
    move-object/from16 v1, v46
    goto :label_0347
    :label_032f
    const/4 v6, 0x0
    move-wide v4, v2
    move-object v2, v14
    move-wide v13, v4
    move-object/from16 v5, v51
    move-object/from16 v31, v1
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v3, v23
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    const/4 v11, 0x5
    move-object/from16 v1, v46
    :label_0344
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->addFilesToDelete(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    :label_0347
    if-nez v34, :label_02f1
    move-object/from16 v23, v12
    :label_034b
    invoke-static {v13, v14, v2}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v11
    cmp-long v2, v11, v26
    if-eqz v2, :label_037c
    invoke-virtual {v10, v11, v12}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-nez v2, :label_036b
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v10, v2, v11, v12}, Lz/f;->k(Ljava/lang/Object;J)V
    goto :label_036b
    :label_0364
    move-exception v0
    :label_0365
    move-object/from16 v12, v17
    goto/16 :label_004a
    :label_0369
    move-exception v0
    goto :label_03bb
    :label_036b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0372
    goto :label_037c
    :label_0373
    move-exception v0
    goto/16 :label_0235
    :label_0376
    move-exception v0
    move-object/from16 v1, v46
    :label_0379
    move-object/from16 v17, v11
    goto :label_0365
    :label_037c
    move-object/from16 v25, v4
    move-object/from16 v24, v9
    move-object/from16 v11, v17
    move-object/from16 v12, v23
    move-object/from16 v6, v31
    move-object/from16 v4, v33
    const/16 v18, 0x1
    move-object/from16 v9, v51
    move-object/from16 v23, v3
    move-object/from16 v51, v5
    move-wide v2, v13
    move-object/from16 v13, v35
    goto/16 :label_01d1
    :label_0395
    move-exception v0
    move-object/from16 v1, v46
    goto/16 :label_0224
    :label_039a
    move-exception v0
    goto :label_0379
    :label_039c
    move-object/from16 v5, v51
    move-object/from16 v33, v4
    move-object/from16 v31, v6
    move-object/from16 v51, v9
    move-object/from16 v17, v11
    move-object/from16 v35, v13
    move-object/from16 v9, v24
    move-object/from16 v4, v25
    move-wide v13, v2
    move-object/from16 v3, v23
    move-object/from16 v23, v12
    goto :label_03be
    :label_03b2
    move-exception v0
    move-object/from16 v5, v51
    move-object/from16 v33, v4
    move-object/from16 v31, v6
    goto/16 :label_0228
    :label_03bb
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_03be
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_03c1
    const-string v0, "SELECT uid, data, read_state, out, mention, mid FROM messages_topics WHERE mid IN("
    if-eqz v28, :label_03ec
    :label_03c5
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v11, v23
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v6, 0x0
    new-array v12, v6, [Ljava/lang/Object;
    invoke-virtual {v2, v0, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v0
    move-object v12, v0
    const/4 v6, 0x0
    :label_03e9
    const/16 v17, 0x0
    goto :label_040f
    :label_03ec
    move-object/from16 v11, v23
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ") AND uid > 0"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v6, 0x0
    new-array v12, v6, [Ljava/lang/Object;
    invoke-virtual {v2, v0, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v0
    :label_040d
    move-object v12, v0
    goto :label_03e9
    :label_040f
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v0
    :label_0413
    if-eqz v0, :label_050e
    move-wide/from16 v38, v13
    :label_0417
    invoke-virtual {v12, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v13
    const/4 v2, 0x5
    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    const/4 v2, 0x1
    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v0
    :label_042c
    if-eqz v0, :label_04ac
    :label_042e
    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I
    move-result v2
    invoke-static {v0, v2, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v6
    :label_043a
    move-object/from16 v23, v3
    move-object/from16 v25, v4
    :label_043e
    iget-wide v3, v6, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0446
    const/4 v6, 0x0
    move-object/from16 v3, v23
    move-object/from16 v4, v25
    :label_044b
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->addFilesToDelete(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;
    :label_0452
    if-eqz v0, :label_048d
    if-nez v17, :label_046b
    :label_0456
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :label_045b
    move-object v6, v0
    goto :label_046d
    :label_045d
    move-exception v0
    goto/16 :label_004a
    :label_0460
    move-exception v0
    move-object/from16 v6, v52
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    :label_0467
    const/4 v10, 0x3
    const/4 v14, 0x2
    goto/16 :label_0526
    :label_046b
    move-object/from16 v6, v17
    :label_046d
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    :label_046f
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    int-to-long v9, v0
    :label_0474
    invoke-static {v13, v14, v9, v10}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v0
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_047b
    move-object/from16 v17, v6
    goto :label_0491
    :label_047e
    move-exception v0
    :label_047f
    move-object/from16 v17, v6
    const/4 v10, 0x3
    const/4 v14, 0x2
    move-object/from16 v6, v52
    goto/16 :label_0526
    :label_0487
    move-exception v0
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    goto :label_047f
    :label_048d
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    :label_0491
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v1, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->getForumTypeFlags(J)I
    move-result v6
    invoke-static {v0, v2, v6}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;I)J
    move-result-wide v9
    goto :label_04b2
    :label_049c
    move-exception v0
    :label_049d
    move-object/from16 v6, v52
    goto :label_0467
    :label_04a0
    move-exception v0
    :label_04a1
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    goto :label_049d
    :label_04a6
    move-exception v0
    move-object/from16 v3, v23
    move-object/from16 v4, v25
    goto :label_04a1
    :label_04ac
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    move-wide/from16 v9, v26
    :label_04b2
    cmp-long v0, v9, v26
    if-eqz v0, :label_04ff
    invoke-static {v13, v14, v9, v10}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v0
    :label_04ba
    const/4 v14, 0x2
    :label_04bb
    invoke-virtual {v12, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v2
    :label_04bf
    move-object/from16 v6, v52
    :label_04c1
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, [I
    :label_04c7
    if-nez v9, :label_04d2
    const/4 v10, 0x3
    :label_04ca
    new-array v9, v10, [I
    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :label_04d3
    :label_04d0
    move-exception v0
    goto :label_0526
    :label_04d2
    const/4 v10, 0x3
    :label_04d3
    aget v0, v9, v14
    const/16 v18, 0x1
    add-int/lit8 v0, v0, 0x1
    aput v0, v9, v14
    invoke-virtual {v12, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    if-nez v0, :label_0503
    if-ge v2, v14, :label_04e9
    aget v0, v9, v18
    add-int/lit8 v0, v0, 0x1
    aput v0, v9, v18
    :label_04e9
    if-eqz v2, :label_04ed
    if-ne v2, v14, :label_0503
    :label_04ed
    const/16 v19, 0x0
    aget v0, v9, v19
    const/16 v18, 0x1
    add-int/lit8 v0, v0, 0x1
    aput v0, v9, v19
    :label_04f7
    goto :label_0503
    :label_04f8
    move-exception v0
    :label_04f9
    const/4 v10, 0x3
    goto :label_0526
    :label_04fb
    move-exception v0
    move-object/from16 v6, v52
    goto :label_04f9
    :label_04ff
    move-object/from16 v6, v52
    const/4 v10, 0x3
    const/4 v14, 0x2
    :label_0503
    move-object/from16 v52, v6
    move-object/from16 v10, v23
    move-object/from16 v9, v25
    move-wide/from16 v13, v38
    const/4 v6, 0x0
    goto/16 :label_040f
    :label_050e
    move-object/from16 v6, v52
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    move-wide/from16 v38, v13
    const/4 v10, 0x3
    const/4 v14, 0x2
    :label_0518
    move-object/from16 v9, v17
    goto :label_052a
    :label_051b
    move-exception v0
    move-object/from16 v6, v52
    move-object/from16 v25, v9
    move-object/from16 v23, v10
    move-wide/from16 v38, v13
    goto/16 :label_0467
    :label_0526
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    goto :label_0518
    :label_052a
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_052d
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    const/4 v0, 0x0
    :label_0533
    const/4 v2, 0x5
    if-ge v0, v2, :label_05f1
    if-nez v0, :label_0558
    if-eqz v28, :label_0549
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE messages_v2 SET replydata = ? WHERE reply_to_message_id IN(?) AND uid = ?"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_0549
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE messages_v2 SET replydata = ? WHERE reply_to_message_id IN(?) AND is_channel = 0"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_0558
    const/4 v2, 0x1
    if-ne v0, v2, :label_057b
    if-eqz v28, :label_056c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE scheduled_messages_v2 SET replydata = ? WHERE reply_to_message_id IN(?) AND uid = ?"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_056c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE scheduled_messages_v2 SET replydata = ? WHERE reply_to_message_id IN(?)"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_057b
    if-ne v0, v14, :label_058c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE quick_replies_messages SET replydata = ? WHERE reply_to_message_id IN(?)"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_058c
    if-ne v0, v10, :label_059d
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE welcome_messages SET replydata = ? WHERE reply_to_message_id IN(?) AND dialog_id = ?"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    goto :label_05ae
    :label_059d
    if-nez v28, :label_05a0
    goto :label_05ec
    :label_05a0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    move-result-object v2
    const-string v12, "UPDATE messages_topics SET replydata = ? WHERE reply_to_message_id IN(?) AND uid = ?"
    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_05ae
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;-><init>()V
    new-instance v13, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v12}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v10
    invoke-direct {v13, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v12, v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    const/4 v10, 0x1
    invoke-virtual {v2, v10, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    invoke-virtual {v2, v14, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V
    if-eqz v28, :label_05de
    if-eq v0, v14, :label_05de
    const/4 v10, 0x3
    invoke-virtual {v2, v10, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    goto :label_05de
    :label_05d2
    move-exception v0
    move-object/from16 v16, v2
    :label_05d5
    const/4 v12, 0x0
    goto/16 :label_0fba
    :label_05d8
    move-exception v0
    move-object/from16 v26, v2
    :label_05db
    const/4 v2, 0x0
    goto/16 :label_0fa3
    :label_05de
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_05e4
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_05ec
    add-int/lit8 v0, v0, 0x1
    const/4 v10, 0x3
    goto/16 :label_0533
    :label_05f1
    const/4 v2, 0x1
    invoke-direct {v1, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteFromDownloadQueue(Ljava/util/ArrayList;Z)V
    new-instance v0, Lorg/telegram/messenger/cf;
    const/16 v2, 0xd
    invoke-direct {v0, v2, v5, v1}, Lorg/telegram/messenger/cf;-><init>(ILjava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    const/4 v4, 0x0
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V
    const/4 v0, 0x0
    :label_0608
    invoke-virtual/range {v31 .. v31}, Lz/f;->m()I
    move-result v2
    if-ge v0, v2, :label_06a5
    move-object/from16 v10, v31
    invoke-virtual {v10, v0}, Lz/f;->j(I)J
    move-result-wide v2
    invoke-virtual {v10, v0}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, [Ljava/lang/Integer;
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    const-string v13, "SELECT unread_count, unread_count_i FROM dialogs WHERE did = "
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v12
    const/4 v13, 0x0
    new-array v14, v13, [Ljava/lang/Object;
    invoke-virtual {v5, v12, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v5
    :label_0634
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v12
    if-eqz v12, :label_064c
    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v12
    const/4 v13, 0x1
    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v14
    goto :label_064e
    :label_0644
    move-exception v0
    move-object v12, v5
    goto/16 :label_004a
    :label_0648
    move-exception v0
    move-object v2, v5
    goto/16 :label_0050
    :label_064c
    const/4 v12, 0x0
    const/4 v14, 0x0
    :label_064e
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0651
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    move-object/from16 v13, v22
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    move-object/from16 v50, v4
    const-string v4, "UPDATE dialogs SET unread_count = ?, unread_count_i = ? WHERE did = ?"
    invoke-virtual {v5, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v4
    :label_0664
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    const/4 v5, 0x0
    aget-object v17, v50, v5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    move-result v17
    sub-int v12, v12, v17
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I
    move-result v12
    const/4 v5, 0x1
    invoke-virtual {v4, v5, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    aget-object v12, v50, v5
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    move-result v5
    sub-int/2addr v14, v5
    const/4 v5, 0x0
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I
    move-result v12
    const/4 v14, 0x2
    invoke-virtual {v4, v14, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v5, 0x3
    invoke-virtual {v4, v5, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0692
    add-int/lit8 v0, v0, 0x1
    move-object/from16 v31, v10
    move-object/from16 v22, v13
    const/4 v14, 0x2
    goto/16 :label_0608
    :label_069b
    move-exception v0
    move-object/from16 v16, v4
    goto/16 :label_05d5
    :label_06a0
    move-exception v0
    move-object/from16 v26, v4
    goto/16 :label_05db
    :label_06a5
    move-object/from16 v13, v22
    move-object/from16 v10, v31
    :label_06a9
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z
    move-result v0
    :label_06ad
    const-string v12, " AND topic_id = "
    if-nez v0, :label_081c
    :label_06b1
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v3, 0x0
    const/4 v4, 0x0
    :label_06bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :label_07f5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-object/from16 v52, v3
    iget-wide v2, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->isMonoForum(J)Z
    move-result v2
    iget-object v3, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;
    move-object v14, v9
    move-object/from16 v31, v10
    iget-wide v9, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    move-object/from16 v22, v13
    move-object/from16 v17, v14
    iget-wide v13, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    move/from16 v26, v2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v27, v4
    const-string v4, "SELECT unread_count, unread_mentions, total_messages_count FROM topics WHERE did = "
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const/4 v14, 0x0
    new-array v4, v14, [Ljava/lang/Object;
    invoke-virtual {v3, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_0700
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v3
    if-eqz v3, :label_0715
    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v3
    const/4 v10, 0x1
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v4
    const/4 v14, 0x2
    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v9
    goto :label_0718
    :label_0715
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v9, 0x0
    :label_0718
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_071b
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [I
    const/4 v14, 0x0
    aget v10, v2, v14
    sub-int/2addr v3, v10
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I
    move-result v3
    const/16 v18, 0x1
    aget v10, v2, v18
    sub-int/2addr v4, v10
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    const/16 v32, 0x2
    aget v10, v2, v32
    sub-int v10, v9, v10
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I
    move-result v10
    sget-boolean v13, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z
    if-eqz v13, :label_076c
    if-lez v4, :label_076c
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "(markMessagesAsDeletedInternal) new unread mentions "
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v14, " for dialog_id="
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v8, v6
    iget-wide v6, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v6, " topic_id="
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v6, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    goto :label_076d
    :label_076c
    move-object v8, v6
    :label_076d
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v7, "UPDATE topics SET unread_count = ?, unread_mentions = ?, total_messages_count = ? WHERE did = ? AND topic_id = ?"
    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v6
    :label_0775
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    const/4 v13, 0x1
    invoke-virtual {v6, v13, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v14, 0x2
    invoke-virtual {v6, v14, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    int-to-long v13, v10
    const/4 v4, 0x3
    invoke-virtual {v6, v4, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget-wide v13, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    const/4 v4, 0x4
    invoke-virtual {v6, v4, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget-wide v13, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    const/4 v4, 0x5
    invoke-virtual {v6, v4, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0797
    if-nez v3, :label_07ad
    if-nez v52, :label_07a1
    :label_079b
    new-instance v4, Ljava/util/HashSet;
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    goto :label_07a3
    :label_07a1
    move-object/from16 v4, v52
    :label_07a3
    iget-wide v6, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :label_07af
    :label_07ad
    move-object/from16 v4, v52
    :label_07af
    new-instance v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;
    invoke-direct {v6}, Lorg/telegram/messenger/TopicsController$TopicUpdate;-><init>()V
    iget-wide v13, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    iput-wide v13, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J
    iget-wide v13, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    iput-wide v13, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->topicId:J
    iput v3, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->unreadCount:I
    iput v10, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->totalMessagesCount:I
    const/4 v10, 0x1
    iput-boolean v10, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->onlyCounters:Z
    const/16 v32, 0x2
    aget v2, v2, v32
    sub-int v2, v9, v2
    if-gtz v2, :label_07d1
    if-lez v9, :label_07d1
    if-eqz v26, :label_07d1
    iput-boolean v10, v6, Lorg/telegram/messenger/TopicsController$TopicUpdate;->checkForDelete:Z
    :label_07d1
    if-nez v27, :label_07d9
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    goto :label_07db
    :label_07d9
    move-object/from16 v2, v27
    :label_07db
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v3, v4
    move-object v6, v8
    move-object/from16 v9, v17
    move-object/from16 v13, v22
    move-object/from16 v10, v31
    move-wide/from16 v7, v47
    move-object v4, v2
    goto/16 :label_06bb
    :label_07eb
    move-exception v0
    move-object/from16 v16, v6
    goto/16 :label_05d5
    :label_07f0
    move-exception v0
    move-object/from16 v26, v6
    goto/16 :label_05db
    :label_07f5
    move-object/from16 v52, v3
    move-object/from16 v27, v4
    move-object/from16 v17, v9
    move-object/from16 v31, v10
    move-object/from16 v22, v13
    if-eqz v52, :label_0819
    invoke-virtual/range {v52 .. v52}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :label_0805
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :label_0819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    move-result-wide v2
    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->resetForumBadgeIfNeed(J)V
    goto :label_0805
    :label_0819
    move-object/from16 v6, v27
    goto :label_0823
    :label_081c
    move-object/from16 v17, v9
    move-object/from16 v31, v10
    move-object/from16 v22, v13
    const/4 v6, 0x0
    :label_0823
    invoke-virtual/range {v35 .. v35}, Lz/f;->m()I
    move-result v0
    :label_0827
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v14, 0x0
    :label_082a
    if-ge v14, v0, :label_0e32
    move-object/from16 v2, v35
    :label_082e
    invoke-virtual {v2, v14}, Lz/f;->j(I)J
    move-result-wide v3
    invoke-virtual {v2, v14}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/ArrayList;
    move-object/from16 v9, v29
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v10
    if-nez v10, :label_08cd
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z
    move-result v10
    :label_0848
    const-string v13, " AND pinned IN ("
    if-eqz v10, :label_0899
    :label_084c
    iget-object v10, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;
    :label_0850
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    neg-long v7, v3
    move-object/from16 v35, v2
    :label_0857
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v29, v9
    const-string v9, "UPDATE chat_settings_v2 SET pinned = 0 WHERE uid = "
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v7, v21
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v10, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_08d7
    :label_0881
    move-exception v0
    :label_0882
    move-object/from16 v12, v52
    :label_0884
    move-object/from16 v16, v26
    goto/16 :label_0fba
    :label_0888
    move-exception v0
    :label_0889
    move-object/from16 v2, v52
    goto/16 :label_0fa3
    :label_088d
    move-exception v0
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    goto :label_0882
    :label_0893
    move-exception v0
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    goto :label_0889
    :label_0899
    move-object/from16 v35, v2
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    move-object/from16 v29, v9
    move-object/from16 v7, v21
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "UPDATE user_settings SET pinned = 0 WHERE uid = "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_08d7
    :label_08cd
    move-object/from16 v35, v2
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    move-object/from16 v29, v9
    move-object/from16 v7, v21
    :label_08d7
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "DELETE FROM chat_pinned_v2 WHERE uid = "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v9, " AND mid IN("
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v5, "SELECT changes()"
    const/4 v13, 0x0
    new-array v8, v13, [Ljava/lang/Object;
    invoke-virtual {v2, v5, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_090d
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v5
    if-eqz v5, :label_091f
    invoke-virtual {v2, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v5
    goto :label_0920
    :label_0918
    move-exception v0
    move-object v12, v2
    goto/16 :label_0884
    :label_091c
    move-exception v0
    goto/16 :label_0fa3
    :label_091f
    const/4 v5, 0x0
    :label_0920
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0923
    if-lez v5, :label_0981
    :label_0925
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "SELECT count FROM chat_pinned_count WHERE uid = "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    const/4 v13, 0x0
    new-array v9, v13, [Ljava/lang/Object;
    invoke-virtual {v2, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_093f
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v8
    if-eqz v8, :label_0973
    invoke-virtual {v2, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v8
    iget-object v9, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v10, "UPDATE chat_pinned_count SET count = ? WHERE uid = ?"
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v9
    :label_0951
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    sub-int/2addr v8, v5
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I
    move-result v5
    const/4 v10, 0x1
    invoke-virtual {v9, v10, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v5, 0x2
    invoke-virtual {v9, v5, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_0975
    :label_0968
    move-exception v0
    move-object v12, v2
    move-object/from16 v16, v9
    goto/16 :label_0fba
    :label_096e
    move-exception v0
    move-object/from16 v26, v9
    goto/16 :label_0fa3
    :label_0973
    move-object/from16 v9, v26
    :label_0975
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0978
    goto :label_0983
    :label_0979
    move-exception v0
    move-object/from16 v16, v26
    goto/16 :label_05d5
    :label_097e
    move-exception v0
    goto/16 :label_05db
    :label_0981
    move-object/from16 v9, v26
    :label_0983
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "DELETE FROM messages_v2 WHERE mid IN("
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "DELETE FROM messages_topics WHERE mid IN("
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "DELETE FROM polls_v2 WHERE mid IN("
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "DELETE FROM bot_keyboard WHERE mid IN("
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "DELETE FROM bot_keyboard_topics WHERE mid IN("
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    :label_0a3b
    const-string v5, " LIMIT 1"
    const-string v8, " AND type = "
    if-eqz v2, :label_0bce
    :label_0a41
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "SELECT uid, type FROM media_v4 WHERE mid IN("
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    :label_0a5a
    move-object/from16 v21, v9
    const/4 v13, 0x0
    :label_0a5d
    new-array v9, v13, [Ljava/lang/Object;
    invoke-virtual {v2, v10, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_0a63
    const/4 v9, 0x0
    :label_0a64
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v10
    if-eqz v10, :label_0abd
    move-object v10, v6
    move-object/from16 v27, v7
    invoke-virtual {v2, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v6
    move-object/from16 v34, v10
    const/4 v13, 0x1
    invoke-virtual {v2, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v10
    if-nez v9, :label_0a8b
    new-instance v9, Landroid/util/SparseArray;
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V
    goto :label_0a8b
    :label_0a80
    move-exception v0
    move-object v12, v2
    move-object/from16 v16, v21
    goto/16 :label_0fba
    :label_0a86
    move-exception v0
    move-object/from16 v26, v21
    goto/16 :label_0fa3
    :label_0a8b
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lz/f;
    if-nez v13, :label_0a9e
    new-instance v13, Lz/f;
    invoke-direct {v13}, Lz/f;-><init>()V
    invoke-virtual {v9, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    move-object/from16 v10, v20
    goto :label_0aa4
    :label_0a9e
    invoke-virtual {v13, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/lang/Integer;
    :label_0aa4
    if-nez v10, :label_0aa8
    move-object/from16 v10, v20
    :label_0aa8
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    move-result v10
    const/16 v18, 0x1
    add-int/lit8 v10, v10, 0x1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v10
    invoke-virtual {v13, v10, v6, v7}, Lz/f;->k(Ljava/lang/Object;J)V
    move-object/from16 v7, v27
    move-object/from16 v6, v34
    const/4 v13, 0x0
    goto :label_0a64
    :label_0abd
    move-object/from16 v34, v6
    move-object/from16 v27, v7
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0ac4
    if-eqz v9, :label_0bbb
    :label_0ac6
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v6, "REPLACE INTO media_counts_v2 VALUES(?, ?, ?, ?)"
    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_0ace
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I
    move-result v6
    :label_0ad2
    const/4 v7, 0x0
    const/4 v10, 0x0
    :label_0ad4
    if-ge v10, v6, :label_0ba4
    :label_0ad6
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v13
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v21
    move/from16 v26, v6
    move-object/from16 v6, v21
    check-cast v6, Lz/f;
    :label_0ae4
    move-object/from16 v21, v7
    :label_0ae6
    invoke-virtual {v6}, Lz/f;->m()I
    move-result v7
    move-object/from16 v36, v9
    const/4 v9, 0x0
    :label_0aed
    if-ge v9, v7, :label_0b8a
    move-wide/from16 v40, v3
    invoke-virtual {v6, v9}, Lz/f;->j(I)J
    move-result-wide v3
    move/from16 v37, v7
    iget-object v7, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v42, Ljava/util/Locale;->US:Ljava/util/Locale;
    move/from16 v42, v10
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v43, v14
    const-string v14, "SELECT count, old FROM media_counts_v2 WHERE uid = "
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    move-object/from16 v44, v5
    const/4 v14, 0x0
    new-array v5, v14, [Ljava/lang/Object;
    invoke-virtual {v7, v10, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v5
    :label_0b22
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v7
    if-eqz v7, :label_0b3e
    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v7
    const/4 v10, 0x1
    invoke-virtual {v5, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v14
    goto :label_0b40
    :label_0b32
    move-exception v0
    move-object/from16 v16, v2
    move-object v12, v5
    goto/16 :label_0fba
    :label_0b38
    move-exception v0
    move-object/from16 v26, v2
    move-object v2, v5
    goto/16 :label_0fa3
    :label_0b3e
    const/4 v7, -0x1
    const/4 v14, 0x0
    :label_0b40
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    const/4 v10, -0x1
    if-eq v7, v10, :label_0b6c
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    invoke-virtual {v6, v9}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    move-result v10
    sub-int/2addr v7, v10
    const/4 v10, 0x0
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I
    move-result v7
    const/4 v10, 0x1
    invoke-virtual {v2, v10, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    const/4 v3, 0x2
    invoke-virtual {v2, v3, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v10, 0x3
    invoke-virtual {v2, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v4, 0x4
    invoke-virtual {v2, v4, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0b6c
    add-int/lit8 v9, v9, 0x1
    move-object/from16 v21, v5
    move/from16 v7, v37
    move-wide/from16 v3, v40
    move/from16 v10, v42
    move/from16 v14, v43
    move-object/from16 v5, v44
    goto/16 :label_0aed
    :label_0b7c
    move-exception v0
    :label_0b7d
    move-object/from16 v16, v2
    :label_0b7f
    move-object/from16 v12, v21
    goto/16 :label_0fba
    :label_0b83
    move-exception v0
    :label_0b84
    move-object/from16 v26, v2
    :label_0b86
    move-object/from16 v2, v21
    goto/16 :label_0fa3
    :label_0b8a
    move-wide/from16 v40, v3
    move-object/from16 v44, v5
    move/from16 v42, v10
    move/from16 v43, v14
    add-int/lit8 v10, v42, 0x1
    move-object/from16 v7, v21
    move/from16 v6, v26
    move-object/from16 v9, v36
    goto/16 :label_0ad4
    :label_0b9c
    move-exception v0
    move-object/from16 v21, v7
    goto :label_0b7d
    :label_0ba0
    move-exception v0
    move-object/from16 v21, v7
    goto :label_0b84
    :label_0ba4
    move-wide/from16 v40, v3
    move-object/from16 v44, v5
    move-object/from16 v21, v7
    move/from16 v43, v14
    :label_0bac
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0baf
    const/4 v2, 0x0
    goto :label_0bd9
    :label_0bb1
    move-exception v0
    :label_0bb2
    move-object/from16 v16, v21
    goto/16 :label_05d5
    :label_0bb6
    move-exception v0
    :label_0bb7
    move-object/from16 v26, v21
    goto/16 :label_05db
    :label_0bbb
    move-wide/from16 v40, v3
    move-object/from16 v44, v5
    :label_0bbf
    move/from16 v43, v14
    move-object/from16 v2, v21
    const/16 v21, 0x0
    goto :label_0bd9
    :label_0bc6
    move-exception v0
    move-object/from16 v21, v9
    goto :label_0bb2
    :label_0bca
    move-exception v0
    move-object/from16 v21, v9
    goto :label_0bb7
    :label_0bce
    move-wide/from16 v40, v3
    move-object/from16 v44, v5
    move-object/from16 v34, v6
    move-object/from16 v27, v7
    move-object/from16 v21, v9
    goto :label_0bbf
    :label_0bd9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-eqz v3, :label_0dc5
    iget-object v3, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "SELECT uid, topic_id, type FROM media_topics WHERE mid IN("
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v5, v40
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v14, 0x0
    new-array v7, v14, [Ljava/lang/Object;
    invoke-virtual {v3, v4, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v3
    :label_0c03
    const/4 v4, 0x0
    :label_0c04
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v7
    if-eqz v7, :label_0c6e
    invoke-virtual {v3, v14}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v9
    const/4 v13, 0x1
    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v7
    const/4 v14, 0x2
    invoke-virtual {v3, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v13
    :label_0c18
    move-object v14, v2
    move-object/from16 v21, v3
    int-to-long v2, v7
    :label_0c1c
    invoke-static {v9, v10, v2, v3}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v2
    if-nez v4, :label_0c33
    new-instance v3, Landroid/util/SparseArray;
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V
    move-object v4, v3
    goto :label_0c33
    :label_0c29
    move-exception v0
    :label_0c2a
    move-object/from16 v16, v14
    goto/16 :label_0b7f
    :label_0c2e
    move-exception v0
    :label_0c2f
    move-object/from16 v26, v14
    goto/16 :label_0b86
    :label_0c33
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/HashMap;
    if-nez v3, :label_0c46
    new-instance v3, Ljava/util/HashMap;
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    invoke-virtual {v4, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    move-object/from16 v7, v20
    goto :label_0c4c
    :label_0c46
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/lang/Integer;
    :label_0c4c
    if-nez v7, :label_0c50
    move-object/from16 v7, v20
    :label_0c50
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    move-result v7
    const/16 v18, 0x1
    add-int/lit8 v7, v7, 0x1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object v2, v14
    move-object/from16 v3, v21
    const/4 v14, 0x0
    goto :label_0c04
    :label_0c64
    move-exception v0
    move-object v14, v2
    move-object/from16 v21, v3
    goto :label_0c2a
    :label_0c69
    move-exception v0
    move-object v14, v2
    move-object/from16 v21, v3
    goto :label_0c2f
    :label_0c6e
    move-object v14, v2
    move-object/from16 v21, v3
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0c74
    if-eqz v4, :label_0db2
    :label_0c76
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v3, "REPLACE INTO media_counts_topics VALUES(?, ?, ?, ?, ?)"
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_0c7e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    move-result v3
    :label_0c82
    const/4 v7, 0x0
    const/4 v14, 0x0
    :label_0c84
    if-ge v14, v3, :label_0d9b
    :label_0c86
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v9
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/util/HashMap;
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v13
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v13
    :label_0c98
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    move-result v21
    if-eqz v21, :label_0d7d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v21
    move/from16 v26, v3
    move-object/from16 v3, v21
    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-object/from16 v36, v4
    iget-object v4, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;
    move-object/from16 v37, v13
    move/from16 v21, v14
    iget-wide v13, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    move-wide/from16 v40, v5
    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    :label_0cb8
    move-object/from16 v42, v7
    :label_0cba
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v45, v15
    const-string v15, "SELECT count, old FROM media_counts_topics WHERE uid = "
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-object/from16 v5, v44
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    const/4 v14, 0x0
    new-array v7, v14, [Ljava/lang/Object;
    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v7
    :label_0ce5
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v4
    :label_0ce9
    if-eqz v4, :label_0d02
    :label_0ceb
    invoke-virtual {v7, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v4
    const/4 v13, 0x1
    invoke-virtual {v7, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v6
    :label_0cf4
    move v14, v6
    goto :label_0d04
    :label_0cf6
    move-exception v0
    move-object/from16 v16, v2
    move-object v12, v7
    goto/16 :label_0fba
    :label_0cfc
    move-exception v0
    move-object/from16 v26, v2
    move-object v2, v7
    goto/16 :label_0fa3
    :label_0d02
    const/4 v4, -0x1
    const/4 v14, 0x0
    :label_0d04
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    const/4 v6, -0x1
    if-eq v4, v6, :label_0d4f
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    move-result v13
    sub-int/2addr v4, v13
    const/4 v13, 0x0
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    :label_0d1d
    move-object/from16 v52, v7
    :label_0d1f
    iget-wide v6, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    const/4 v15, 0x1
    invoke-virtual {v2, v15, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget-wide v6, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    const/4 v3, 0x2
    invoke-virtual {v2, v3, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    const/4 v6, 0x3
    invoke-virtual {v2, v6, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v15, 0x4
    invoke-virtual {v2, v15, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v4, 0x5
    invoke-virtual {v2, v4, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0d3a
    goto :label_0d55
    :label_0d3b
    move-exception v0
    :label_0d3c
    move-object/from16 v12, v52
    move-object/from16 v16, v2
    goto/16 :label_0fba
    :label_0d42
    move-exception v0
    :label_0d43
    move-object/from16 v26, v2
    goto/16 :label_0889
    :label_0d47
    move-exception v0
    move-object/from16 v52, v7
    goto :label_0d3c
    :label_0d4b
    move-exception v0
    move-object/from16 v52, v7
    goto :label_0d43
    :label_0d4f
    move-object/from16 v52, v7
    const/4 v3, 0x2
    const/4 v4, 0x5
    const/4 v6, 0x3
    const/4 v15, 0x4
    :label_0d55
    move-object/from16 v7, v52
    move-object/from16 v44, v5
    move/from16 v14, v21
    move/from16 v3, v26
    move-object/from16 v4, v36
    move-object/from16 v13, v37
    move-wide/from16 v5, v40
    move-object/from16 v15, v45
    goto/16 :label_0c98
    :label_0d67
    move-exception v0
    :label_0d68
    move-object/from16 v16, v2
    move-object/from16 v12, v42
    goto/16 :label_0fba
    :label_0d6e
    move-exception v0
    :label_0d6f
    move-object/from16 v26, v2
    move-object/from16 v2, v42
    goto/16 :label_0fa3
    :label_0d75
    move-exception v0
    move-object/from16 v42, v7
    goto :label_0d68
    :label_0d79
    move-exception v0
    move-object/from16 v42, v7
    goto :label_0d6f
    :label_0d7d
    move/from16 v26, v3
    move-object/from16 v36, v4
    move-wide/from16 v40, v5
    move-object/from16 v42, v7
    move/from16 v21, v14
    move-object/from16 v45, v15
    move-object/from16 v5, v44
    const/4 v3, 0x2
    const/4 v4, 0x5
    const/4 v6, 0x3
    const/4 v15, 0x4
    add-int/lit8 v14, v21, 0x1
    move/from16 v3, v26
    move-object/from16 v4, v36
    move-wide/from16 v5, v40
    move-object/from16 v15, v45
    goto/16 :label_0c84
    :label_0d9b
    move-wide/from16 v40, v5
    move-object/from16 v45, v15
    const/4 v3, 0x2
    const/4 v4, 0x5
    const/4 v6, 0x3
    const/4 v15, 0x4
    :label_0da3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0da6
    const/4 v8, 0x0
    goto :label_0dcf
    :label_0da8
    move-exception v0
    move-object/from16 v16, v14
    goto/16 :label_05d5
    :label_0dad
    move-exception v0
    move-object/from16 v26, v14
    goto/16 :label_05db
    :label_0db2
    move-wide/from16 v40, v5
    move-object/from16 v45, v15
    const/4 v3, 0x2
    const/4 v4, 0x5
    const/4 v6, 0x3
    const/4 v15, 0x4
    move-object v8, v14
    const/4 v7, 0x0
    goto :label_0dcf
    :label_0dbd
    move-exception v0
    move-object v14, v2
    goto/16 :label_0c2a
    :label_0dc1
    move-exception v0
    move-object v14, v2
    goto/16 :label_0c2f
    :label_0dc5
    move-object v14, v2
    move-object/from16 v45, v15
    const/4 v3, 0x2
    const/4 v4, 0x5
    const/4 v6, 0x3
    const/4 v15, 0x4
    move-object v8, v14
    move-object/from16 v7, v21
    :label_0dcf
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "DELETE FROM media_v4 WHERE mid IN("
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v9, v45
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v13, v40
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "DELETE FROM media_topics WHERE mid IN("
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0e1d
    add-int/lit8 v14, v43, 0x1
    move-object v15, v9
    move-object/from16 v21, v27
    move-object/from16 v6, v34
    goto/16 :label_082a
    :label_0e26
    move-exception v0
    move-object v12, v7
    move-object/from16 v16, v8
    goto/16 :label_0fba
    :label_0e2c
    move-exception v0
    move-object v2, v7
    move-object/from16 v26, v8
    goto/16 :label_0fa3
    :label_0e32
    move-object/from16 v34, v6
    move-object/from16 v52, v7
    move-object/from16 v26, v8
    move-object/from16 v27, v21
    :label_0e3a
    invoke-virtual/range {v23 .. v23}, Lz/f;->i()Z
    move-result v0
    if-nez v0, :label_0e4b
    new-instance v0, Lorg/telegram/messenger/bg;
    move-object/from16 v2, v23
    const/4 v10, 0x1
    invoke-direct {v0, v1, v2, v10}, Lorg/telegram/messenger/bg;-><init>(Lorg/telegram/messenger/MessagesStorage;Lz/f;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0e4b
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DELETE FROM messages_seq WHERE mid IN("
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v7, v27
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0e87
    if-nez v28, :label_0e8a
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "UPDATE media_counts_v2 SET old = 1 WHERE 1"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0e87
    move-wide/from16 v7, v47
    goto :label_0eaa
    :label_0e8a
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "UPDATE media_counts_v2 SET old = 1 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v7, v47
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0eaa
    if-eqz v51, :label_0ec2
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0ec2
    new-instance v0, Lorg/telegram/messenger/ff;
    const/4 v5, 0x5
    move-object/from16 v2, v51
    move-wide/from16 v3, v38
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ff;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JI)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0ebf
    move-object/from16 v9, v49
    goto :label_0ed8
    :label_0ec2
    move-object/from16 v2, v51
    if-eqz v2, :label_0ebf
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_0ebf
    new-instance v0, Lorg/telegram/messenger/cf;
    const/16 v2, 0xe
    move-object/from16 v9, v49
    invoke-direct {v0, v2, v9, v1}, Lorg/telegram/messenger/cf;-><init>(ILjava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0ed8
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0f0e
    if-nez v28, :label_0ef0
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "UPDATE media_counts_topics SET old = 1 WHERE 1"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_0f0e
    :label_0ef0
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "UPDATE media_counts_topics SET old = 1 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f0e
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    const/4 v2, 0x0
    invoke-virtual {v0, v2, v9}, Lorg/telegram/messenger/MediaDataController;->clearBotKeyboard(Lorg/telegram/messenger/MessagesStorage$TopicKey;Ljava/util/ArrayList;)V
    invoke-virtual/range {v31 .. v31}, Lz/f;->m()I
    move-result v0
    if-eqz v0, :label_0f23
    const/4 v14, 0x0
    invoke-virtual {v1, v14}, Lorg/telegram/messenger/MessagesStorage;->resetAllUnreadCounters(Z)V
    :label_0f20
    move-object/from16 v13, v22
    goto :label_0f25
    :label_0f23
    const/4 v14, 0x0
    goto :label_0f20
    :label_0f25
    invoke-direct {v1, v13}, Lorg/telegram/messenger/MessagesStorage;->updateWidgets(Ljava/util/ArrayList;)V
    if-eqz v17, :label_0f75
    move v10, v14
    :label_0f2b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v10, v0, :label_0f68
    move-object/from16 v14, v17
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    iget-wide v3, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    iget-wide v5, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "DELETE FROM topics WHERE did = "
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    add-int/lit8 v10, v10, 0x1
    move-object/from16 v17, v14
    goto :label_0f2b
    :label_0f68
    move-object/from16 v14, v17
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    invoke-virtual {v0, v14}, Lorg/telegram/messenger/TopicsController;->onTopicsDeletedServerSide(Ljava/util/ArrayList;)V
    :label_0f75
    if-eqz v34, :label_0f84
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    move-object/from16 v10, v34
    invoke-virtual {v0, v10}, Lorg/telegram/messenger/TopicsController;->processUpdate(Ljava/util/List;)V
    :label_0f84
    move-object/from16 v12, v52
    move-object/from16 v16, v26
    :label_0f88
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v0, :label_0f8f
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0f8f
    if-eqz v12, :label_0f94
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0f94
    if-eqz v16, :label_0f99
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f99
    return-object v13
    :label_0f9a
    move-exception v0
    move-object v2, v12
    goto/16 :label_0050
    :label_0f9e
    move-exception v0
    move-object/from16 v2, v17
    goto/16 :label_0050
    :label_0fa3
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_0fa6
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v0, :label_0fad
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0fad
    if-eqz v2, :label_0fb2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0fb2
    if-eqz v26, :label_0fb7
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0fb7
    const/16 v16, 0x0
    return-object v16
    :label_0fba
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v2, :label_0fc1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0fc1
    if-eqz v12, :label_0fc6
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0fc6
    if-eqz v16, :label_0fcb
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0fcb
    throw v0
    .catch Ljava/lang/Exception; {:label_0015 .. :label_001d} :label_004e
    .catchall {:label_0015 .. :label_001d} :label_0048
    .catch Ljava/lang/Exception; {:label_0025 .. :label_00c2} :label_004e
    .catchall {:label_0025 .. :label_00c2} :label_0048
    .catch Ljava/lang/Exception; {:label_00cc .. :label_00f1} :label_004e
    .catchall {:label_00cc .. :label_00f1} :label_0048
    .catch Ljava/lang/Exception; {:label_00f1 .. :label_010c} :label_0111
    .catchall {:label_00f1 .. :label_010c} :label_010d
    .catch Ljava/lang/Exception; {:label_0112 .. :label_0118} :label_0150
    .catchall {:label_0112 .. :label_0118} :label_010d
    .catch Ljava/lang/Exception; {:label_0118 .. :label_01a6} :label_004e
    .catchall {:label_0118 .. :label_01a6} :label_0048
    .catch Ljava/lang/Exception; {:label_01af .. :label_01f5} :label_004e
    .catchall {:label_01af .. :label_01f5} :label_0048
    .catch Ljava/lang/Exception; {:label_01f6 .. :label_01fa} :label_03b2
    .catchall {:label_01f6 .. :label_01fa} :label_039a
    .catch Ljava/lang/Exception; {:label_01fe .. :label_0214} :label_0223
    .catchall {:label_01fe .. :label_0214} :label_039a
    .catch Ljava/lang/Exception; {:label_0216 .. :label_021e} :label_0223
    .catchall {:label_0216 .. :label_021e} :label_021f
    .catch Ljava/lang/Exception; {:label_0239 .. :label_0240} :label_0395
    .catchall {:label_0239 .. :label_0240} :label_0376
    .catch Ljava/lang/Exception; {:label_0247 .. :label_024b} :label_02cc
    .catchall {:label_0247 .. :label_024b} :label_0270
    .catch Ljava/lang/Exception; {:label_024c .. :label_0250} :label_02c3
    .catchall {:label_024c .. :label_0250} :label_0270
    .catch Ljava/lang/Exception; {:label_0254 .. :label_025a} :label_02b6
    .catchall {:label_0254 .. :label_025a} :label_0270
    .catch Ljava/lang/Exception; {:label_0261 .. :label_02b5} :label_0278
    .catchall {:label_0261 .. :label_02b5} :label_0270
    .catch Ljava/lang/Exception; {:label_02d6 .. :label_0309} :label_0278
    .catchall {:label_02d6 .. :label_0309} :label_0376
    .catch Ljava/lang/Exception; {:label_030b .. :label_030e} :label_0278
    .catchall {:label_030b .. :label_030e} :label_0270
    .catch Ljava/lang/Exception; {:label_030e .. :label_0315} :label_0278
    .catchall {:label_030e .. :label_0315} :label_0376
    .catch Ljava/lang/Exception; {:label_0344 .. :label_0347} :label_0373
    .catchall {:label_0344 .. :label_0347} :label_0364
    .catch Ljava/lang/Exception; {:label_034b .. :label_0372} :label_0369
    .catchall {:label_034b .. :label_0372} :label_0364
    .catch Ljava/lang/Exception; {:label_03bb .. :label_03c1} :label_0f9e
    .catchall {:label_03bb .. :label_03c1} :label_0364
    .catch Ljava/lang/Exception; {:label_03c5 .. :label_040d} :label_004e
    .catchall {:label_03c5 .. :label_040d} :label_0048
    .catch Ljava/lang/Exception; {:label_040f .. :label_0413} :label_051b
    .catchall {:label_040f .. :label_0413} :label_045d
    .catch Ljava/lang/Exception; {:label_0417 .. :label_042c} :label_0460
    .catchall {:label_0417 .. :label_042c} :label_045d
    .catch Ljava/lang/Exception; {:label_042e .. :label_043a} :label_04a0
    .catchall {:label_042e .. :label_043a} :label_045d
    .catch Ljava/lang/Exception; {:label_043e .. :label_0446} :label_04a6
    .catchall {:label_043e .. :label_0446} :label_045d
    .catch Ljava/lang/Exception; {:label_044b .. :label_0452} :label_04a0
    .catchall {:label_044b .. :label_0452} :label_045d
    .catch Ljava/lang/Exception; {:label_0456 .. :label_045b} :label_0460
    .catchall {:label_0456 .. :label_045b} :label_045d
    .catch Ljava/lang/Exception; {:label_046d .. :label_046f} :label_0487
    .catchall {:label_046d .. :label_046f} :label_045d
    .catch Ljava/lang/Exception; {:label_0474 .. :label_047b} :label_047e
    .catchall {:label_0474 .. :label_047b} :label_045d
    .catch Ljava/lang/Exception; {:label_0491 .. :label_04ba} :label_049c
    .catchall {:label_0491 .. :label_04ba} :label_045d
    .catch Ljava/lang/Exception; {:label_04bb .. :label_04bf} :label_04fb
    .catchall {:label_04bb .. :label_04bf} :label_045d
    .catch Ljava/lang/Exception; {:label_04c1 .. :label_04c7} :label_04f8
    .catchall {:label_04c1 .. :label_04c7} :label_045d
    .catch Ljava/lang/Exception; {:label_04ca .. :label_04f7} :label_04d0
    .catchall {:label_04ca .. :label_04f7} :label_045d
    .catch Ljava/lang/Exception; {:label_0526 .. :label_052d} :label_0f9a
    .catchall {:label_0526 .. :label_052d} :label_045d
    .catch Ljava/lang/Exception; {:label_052d .. :label_05ae} :label_004e
    .catchall {:label_052d .. :label_05ae} :label_0048
    .catch Ljava/lang/Exception; {:label_05ae .. :label_05e4} :label_05d8
    .catchall {:label_05ae .. :label_05e4} :label_05d2
    .catch Ljava/lang/Exception; {:label_05e4 .. :label_0634} :label_004e
    .catchall {:label_05e4 .. :label_0634} :label_0048
    .catch Ljava/lang/Exception; {:label_0634 .. :label_0651} :label_0648
    .catchall {:label_0634 .. :label_0651} :label_0644
    .catch Ljava/lang/Exception; {:label_0651 .. :label_0664} :label_004e
    .catchall {:label_0651 .. :label_0664} :label_0048
    .catch Ljava/lang/Exception; {:label_0664 .. :label_0692} :label_06a0
    .catchall {:label_0664 .. :label_0692} :label_069b
    .catch Ljava/lang/Exception; {:label_06a9 .. :label_06ad} :label_004e
    .catchall {:label_06a9 .. :label_06ad} :label_0048
    .catch Ljava/lang/Exception; {:label_06b1 .. :label_0700} :label_004e
    .catchall {:label_06b1 .. :label_0700} :label_0048
    .catch Ljava/lang/Exception; {:label_0700 .. :label_071b} :label_0150
    .catchall {:label_0700 .. :label_071b} :label_010d
    .catch Ljava/lang/Exception; {:label_071b .. :label_0775} :label_004e
    .catchall {:label_071b .. :label_0775} :label_0048
    .catch Ljava/lang/Exception; {:label_0775 .. :label_0797} :label_07f0
    .catchall {:label_0775 .. :label_0797} :label_07eb
    .catch Ljava/lang/Exception; {:label_079b .. :label_0827} :label_004e
    .catchall {:label_079b .. :label_0827} :label_0048
    .catch Ljava/lang/Exception; {:label_082e .. :label_0848} :label_0893
    .catchall {:label_082e .. :label_0848} :label_088d
    .catch Ljava/lang/Exception; {:label_084c .. :label_0850} :label_0893
    .catchall {:label_084c .. :label_0850} :label_088d
    .catch Ljava/lang/Exception; {:label_0857 .. :label_090d} :label_0888
    .catchall {:label_0857 .. :label_090d} :label_0881
    .catch Ljava/lang/Exception; {:label_090d .. :label_0923} :label_091c
    .catchall {:label_090d .. :label_0923} :label_0918
    .catch Ljava/lang/Exception; {:label_0925 .. :label_093f} :label_097e
    .catchall {:label_0925 .. :label_093f} :label_0979
    .catch Ljava/lang/Exception; {:label_093f .. :label_0951} :label_091c
    .catchall {:label_093f .. :label_0951} :label_0918
    .catch Ljava/lang/Exception; {:label_0951 .. :label_0978} :label_096e
    .catchall {:label_0951 .. :label_0978} :label_0968
    .catch Ljava/lang/Exception; {:label_0983 .. :label_0a3b} :label_0bca
    .catchall {:label_0983 .. :label_0a3b} :label_0bc6
    .catch Ljava/lang/Exception; {:label_0a41 .. :label_0a5a} :label_0bca
    .catchall {:label_0a41 .. :label_0a5a} :label_0bc6
    .catch Ljava/lang/Exception; {:label_0a5d .. :label_0a63} :label_0bb6
    .catchall {:label_0a5d .. :label_0a63} :label_0bb1
    .catch Ljava/lang/Exception; {:label_0a64 .. :label_0ac4} :label_0a86
    .catchall {:label_0a64 .. :label_0ac4} :label_0a80
    .catch Ljava/lang/Exception; {:label_0ac6 .. :label_0ace} :label_0bb6
    .catchall {:label_0ac6 .. :label_0ace} :label_0bb1
    .catch Ljava/lang/Exception; {:label_0ace .. :label_0ad2} :label_05d8
    .catchall {:label_0ace .. :label_0ad2} :label_05d2
    .catch Ljava/lang/Exception; {:label_0ad6 .. :label_0ae4} :label_0ba0
    .catchall {:label_0ad6 .. :label_0ae4} :label_0b9c
    .catch Ljava/lang/Exception; {:label_0ae6 .. :label_0b22} :label_0b83
    .catchall {:label_0ae6 .. :label_0b22} :label_0b7c
    .catch Ljava/lang/Exception; {:label_0b22 .. :label_0b6c} :label_0b38
    .catchall {:label_0b22 .. :label_0b6c} :label_0b32
    .catch Ljava/lang/Exception; {:label_0bac .. :label_0baf} :label_0b83
    .catchall {:label_0bac .. :label_0baf} :label_0b7c
    .catch Ljava/lang/Exception; {:label_0bd9 .. :label_0c03} :label_0dc1
    .catchall {:label_0bd9 .. :label_0c03} :label_0dbd
    .catch Ljava/lang/Exception; {:label_0c04 .. :label_0c18} :label_0c69
    .catchall {:label_0c04 .. :label_0c18} :label_0c64
    .catch Ljava/lang/Exception; {:label_0c1c .. :label_0c74} :label_0c2e
    .catchall {:label_0c1c .. :label_0c74} :label_0c29
    .catch Ljava/lang/Exception; {:label_0c76 .. :label_0c7e} :label_0dad
    .catchall {:label_0c76 .. :label_0c7e} :label_0da8
    .catch Ljava/lang/Exception; {:label_0c7e .. :label_0c82} :label_05d8
    .catchall {:label_0c7e .. :label_0c82} :label_05d2
    .catch Ljava/lang/Exception; {:label_0c86 .. :label_0c98} :label_0cfc
    .catchall {:label_0c86 .. :label_0c98} :label_0cf6
    .catch Ljava/lang/Exception; {:label_0c98 .. :label_0cb8} :label_0d79
    .catchall {:label_0c98 .. :label_0cb8} :label_0d75
    .catch Ljava/lang/Exception; {:label_0cba .. :label_0ce5} :label_0d6e
    .catchall {:label_0cba .. :label_0ce5} :label_0d67
    .catch Ljava/lang/Exception; {:label_0ce5 .. :label_0ce9} :label_0d4b
    .catchall {:label_0ce5 .. :label_0ce9} :label_0d47
    .catch Ljava/lang/Exception; {:label_0ceb .. :label_0cf4} :label_0cfc
    .catchall {:label_0ceb .. :label_0cf4} :label_0cf6
    .catch Ljava/lang/Exception; {:label_0d04 .. :label_0d1d} :label_0d4b
    .catchall {:label_0d04 .. :label_0d1d} :label_0d47
    .catch Ljava/lang/Exception; {:label_0d1f .. :label_0d3a} :label_0d42
    .catchall {:label_0d1f .. :label_0d3a} :label_0d3b
    .catch Ljava/lang/Exception; {:label_0da3 .. :label_0da6} :label_0cfc
    .catchall {:label_0da3 .. :label_0da6} :label_0cf6
    .catch Ljava/lang/Exception; {:label_0dcf .. :label_0e1d} :label_0e2c
    .catchall {:label_0dcf .. :label_0e1d} :label_0e26
    .catch Ljava/lang/Exception; {:label_0e3a .. :label_0f84} :label_0888
    .catchall {:label_0e3a .. :label_0f84} :label_0881
    .catchall {:label_0fa3 .. :label_0fa6} :label_0918
.end method
