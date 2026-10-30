# file_id=0 method_idx=43163 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(JIZ)Ljava/util/ArrayList;"
.method private markMessagesAsDeletedInternal(JIZ)Ljava/util/ArrayList;
    .registers 29

    move-object/from16 v1, v24
    move-wide/from16 v7, v25
    move/from16 v9, v27
    const-string v10, " AND mid <= "
    const/4 v11, 0x0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const-string v2, "SELECT uid, data, read_state, out, mention FROM messages_v2 WHERE uid = "
    :label_000f
    new-instance v13, Ljava/util/ArrayList;
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    new-instance v14, Lz/f;
    invoke-direct {v14}, Lz/f;-><init>()V
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v15
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;
    :label_0034
    move-object/from16 v18, v13
    const/16 v17, 0x0
    neg-long v12, v7
    :label_0039
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v20, v0
    const/4 v11, 0x0
    new-array v0, v11, [Ljava/lang/Object;
    invoke-virtual {v6, v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_0054
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v0
    :label_0058
    if-eqz v0, :label_0127
    const/4 v8, 0x1
    :label_005b
    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    move-result-wide v6
    :label_005f
    cmp-long v0, v6, v15
    if-eqz v0, :label_00c9
    const/4 v11, 0x2
    :label_0064
    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    :label_0068
    move/from16 v23, v8
    const/4 v8, 0x3
    :label_006b
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v21
    if-nez v21, :label_00cc
    invoke-virtual {v14, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v21
    check-cast v21, [Ljava/lang/Integer;
    :label_0077
    if-nez v21, :label_0096
    :label_0079
    new-array v8, v11, [Ljava/lang/Integer;
    const/16 v19, 0x0
    aput-object v20, v8, v19
    aput-object v20, v8, v23
    invoke-virtual {v14, v8, v6, v7}, Lz/f;->k(Ljava/lang/Object;J)V
    move-object/from16 v21, v8
    const/4 v11, 0x2
    goto :label_0096
    :label_0088
    move-exception v0
    move-object v12, v2
    goto/16 :label_037d
    :label_008c
    move-exception v0
    move-object v7, v2
    move-wide/from16 v21, v12
    move/from16 v12, v23
    :label_0092
    const/4 v8, 0x3
    const/4 v11, 0x2
    goto/16 :label_0135
    :label_0096
    if-ge v0, v11, :label_00a6
    aget-object v8, v21, v23
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    move-result v8
    add-int/lit8 v8, v8, 0x1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    aput-object v8, v21, v23
    :label_00a6
    const/4 v11, 0x2
    if-eqz v0, :label_00ab
    if-ne v0, v11, :label_00cc
    :label_00ab
    const/16 v19, 0x0
    :label_00ad
    aget-object v0, v21, v19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    add-int/lit8 v0, v0, 0x1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    aput-object v0, v21, v19
    :label_00bb
    goto :label_00cc
    :label_00bc
    move-exception v0
    :label_00bd
    move-object v7, v2
    move-wide/from16 v21, v12
    move/from16 v12, v23
    :label_00c2
    const/4 v8, 0x3
    goto/16 :label_0135
    :label_00c5
    move-exception v0
    move/from16 v23, v8
    goto :label_00bd
    :label_00c9
    move/from16 v23, v8
    const/4 v11, 0x2
    :label_00cc
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v0
    :label_00d0
    if-nez v0, :label_00d9
    if-nez v28, :label_00d9
    move-wide/from16 v7, v25
    const/4 v11, 0x0
    goto/16 :label_0054
    :label_00d9
    move/from16 v8, v23
    :label_00db
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v0
    if-eqz v0, :label_0116
    const/4 v6, 0x0
    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I
    move-result v7
    invoke-static {v0, v7, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    move-result-object v7
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v6
    :label_00ee
    move-wide/from16 v21, v12
    :label_00f0
    iget-wide v11, v6, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    invoke-virtual {v7, v0, v11, v12}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_00f8
    const/4 v6, 0x0
    move-object v11, v7
    move-object v7, v2
    move-object v2, v11
    move v12, v8
    const/4 v8, 0x3
    const/4 v11, 0x2
    :label_00ff
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->addFilesToDelete(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    :label_0102
    goto :label_0119
    :label_0103
    move-exception v0
    :label_0104
    move-object v12, v7
    goto/16 :label_037d
    :label_0107
    move-exception v0
    goto :label_0135
    :label_0109
    move-exception v0
    move-object v7, v2
    goto :label_0104
    :label_010c
    move-exception v0
    move-object v7, v2
    move v12, v8
    goto :label_0092
    :label_0110
    move-exception v0
    move-object v7, v2
    move-wide/from16 v21, v12
    :label_0114
    move v12, v8
    goto :label_00c2
    :label_0116
    move-object v7, v2
    move-wide/from16 v21, v12
    :label_0119
    move-object v2, v7
    move-wide/from16 v12, v21
    const/4 v11, 0x0
    move-wide/from16 v7, v25
    goto/16 :label_0054
    :label_0121
    move-exception v0
    move-object v7, v2
    move-wide/from16 v21, v12
    const/4 v11, 0x2
    goto :label_0114
    :label_0127
    move-object v7, v2
    move-wide/from16 v21, v12
    const/4 v8, 0x3
    const/4 v11, 0x2
    const/4 v12, 0x1
    goto :label_0138
    :label_012e
    move-exception v0
    move-object v7, v2
    move-wide/from16 v21, v12
    const/4 v8, 0x3
    const/4 v11, 0x2
    const/4 v12, 0x1
    :label_0135
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_0138
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_013b
    invoke-direct {v1, v4, v12}, Lorg/telegram/messenger/MessagesStorage;->deleteFromDownloadQueue(Ljava/util/ArrayList;Z)V
    new-instance v0, Lorg/telegram/messenger/cf;
    const/4 v6, 0x0
    invoke-direct {v0, v6, v5, v1}, Lorg/telegram/messenger/cf;-><init>(ILjava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    invoke-virtual {v0, v3, v6}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V
    const/4 v0, 0x0
    :label_014f
    invoke-virtual {v14}, Lz/f;->m()I
    move-result v2
    if-ge v0, v2, :label_01ef
    invoke-virtual {v14, v0}, Lz/f;->j(I)J
    move-result-wide v2
    invoke-virtual {v14, v0}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, [Ljava/lang/Integer;
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "SELECT unread_count, unread_count_i FROM dialogs WHERE did = "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    const/4 v7, 0x0
    new-array v13, v7, [Ljava/lang/Object;
    invoke-virtual {v5, v6, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v5
    :label_0179
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v6
    if-eqz v6, :label_0192
    invoke-virtual {v5, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v6
    invoke-virtual {v5, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v7
    goto :label_0194
    :label_0188
    move-exception v0
    move-object v12, v5
    goto/16 :label_037d
    :label_018c
    move-exception v0
    move-object v2, v5
    :label_018e
    move-object/from16 v5, v17
    goto/16 :label_036b
    :label_0192
    const/4 v6, 0x0
    const/4 v7, 0x0
    :label_0194
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    move-object/from16 v13, v18
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v15, "UPDATE dialogs SET unread_count = ?, unread_count_i = ? WHERE did = ?"
    invoke-virtual {v5, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v5
    :label_01a8
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    const/4 v15, 0x0
    aget-object v16, v4, v15
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    move-result v16
    sub-int v6, v6, v16
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I
    move-result v6
    invoke-virtual {v5, v12, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    aget-object v4, v4, v12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    sub-int/2addr v7, v4
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-virtual {v5, v11, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v5, v8, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_01d2
    add-int/lit8 v0, v0, 0x1
    move-object/from16 v18, v13
    goto/16 :label_014f
    :label_01d8
    move-exception v0
    move-object/from16 v12, v17
    :label_01db
    move-object/from16 v17, v5
    goto/16 :label_037d
    :label_01df
    move-exception v0
    move-object/from16 v2, v17
    goto/16 :label_036b
    :label_01e4
    move-exception v0
    :label_01e5
    move-object/from16 v12, v17
    goto/16 :label_037d
    :label_01e9
    move-exception v0
    :label_01ea
    move-object/from16 v2, v17
    move-object v5, v2
    goto/16 :label_036b
    :label_01ef
    move-object/from16 v13, v18
    :label_01f1
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "UPDATE chat_settings_v2 SET pinned = 0 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v7, v25
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v3, " AND pinned <= "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DELETE FROM chat_pinned_v2 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "SELECT changes()"
    const/4 v6, 0x0
    new-array v3, v6, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_024a
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v0
    if-eqz v0, :label_0258
    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    goto :label_0259
    :label_0255
    move-exception v0
    goto/16 :label_018e
    :label_0258
    const/4 v0, 0x0
    :label_0259
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_025c
    if-lez v0, :label_02af
    :label_025e
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "SELECT count FROM chat_pinned_count WHERE uid = "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-wide/from16 v4, v21
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const/4 v6, 0x0
    new-array v7, v6, [Ljava/lang/Object;
    invoke-virtual {v2, v3, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    :label_027a
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v3
    if-eqz v3, :label_02ab
    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v3
    iget-object v7, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v8, "UPDATE chat_pinned_count SET count = ? WHERE uid = ?"
    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v7
    :label_028c
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    sub-int/2addr v3, v0
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-virtual {v7, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v7, v11, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_02a0
    goto :label_02ab
    :label_02a1
    move-exception v0
    move-object v12, v2
    move-object/from16 v17, v7
    goto/16 :label_037d
    :label_02a7
    move-exception v0
    move-object v5, v7
    goto/16 :label_036b
    :label_02ab
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_02ae
    goto :label_02b1
    :label_02af
    move-wide/from16 v4, v21
    :label_02b1
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DELETE FROM messages_v2 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DELETE FROM messages_topics WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DELETE FROM media_v4 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "UPDATE media_counts_v2 SET old = 1 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "UPDATE media_counts_topics SET old = 1 WHERE uid = "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    invoke-direct {v1, v13}, Lorg/telegram/messenger/MessagesStorage;->updateWidgets(Ljava/util/ArrayList;)V
    :label_035c
    return-object v13
    :label_035d
    move-exception v0
    move-object v2, v7
    goto/16 :label_018e
    :label_0361
    move-exception v0
    const/16 v17, 0x0
    goto/16 :label_01e5
    :label_0366
    move-exception v0
    const/16 v17, 0x0
    goto/16 :label_01ea
    :label_036b
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_036e
    if-eqz v2, :label_0373
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0373
    if-eqz v5, :label_0378
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0378
    return-object v17
    :label_0379
    move-exception v0
    move-object v12, v2
    goto/16 :label_01db
    :label_037d
    if-eqz v12, :label_0382
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0382
    if-eqz v17, :label_0387
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0387
    throw v0
    .catch Ljava/lang/Exception; {:label_000f .. :label_0034} :label_0366
    .catchall {:label_000f .. :label_0034} :label_0361
    .catch Ljava/lang/Exception; {:label_0039 .. :label_0054} :label_01e9
    .catchall {:label_0039 .. :label_0054} :label_01e4
    .catch Ljava/lang/Exception; {:label_0054 .. :label_0058} :label_012e
    .catchall {:label_0054 .. :label_0058} :label_0109
    .catch Ljava/lang/Exception; {:label_005b .. :label_005f} :label_0121
    .catchall {:label_005b .. :label_005f} :label_0109
    .catch Ljava/lang/Exception; {:label_0064 .. :label_0068} :label_00c5
    .catchall {:label_0064 .. :label_0068} :label_0088
    .catch Ljava/lang/Exception; {:label_006b .. :label_0077} :label_00bc
    .catchall {:label_006b .. :label_0077} :label_0088
    .catch Ljava/lang/Exception; {:label_0079 .. :label_00a6} :label_008c
    .catchall {:label_0079 .. :label_00a6} :label_0088
    .catch Ljava/lang/Exception; {:label_00ad .. :label_00bb} :label_00bc
    .catchall {:label_00ad .. :label_00bb} :label_0088
    .catch Ljava/lang/Exception; {:label_00cc .. :label_00d0} :label_00bc
    .catchall {:label_00cc .. :label_00d0} :label_0109
    .catch Ljava/lang/Exception; {:label_00db .. :label_00ee} :label_0110
    .catchall {:label_00db .. :label_00ee} :label_0109
    .catch Ljava/lang/Exception; {:label_00f0 .. :label_00f8} :label_010c
    .catchall {:label_00f0 .. :label_00f8} :label_0109
    .catch Ljava/lang/Exception; {:label_00ff .. :label_0102} :label_0107
    .catchall {:label_00ff .. :label_0102} :label_0103
    .catch Ljava/lang/Exception; {:label_0135 .. :label_013b} :label_035d
    .catchall {:label_0135 .. :label_013b} :label_0103
    .catch Ljava/lang/Exception; {:label_013b .. :label_0179} :label_01e9
    .catchall {:label_013b .. :label_0179} :label_01e4
    .catch Ljava/lang/Exception; {:label_0179 .. :label_0197} :label_018c
    .catchall {:label_0179 .. :label_0197} :label_0188
    .catch Ljava/lang/Exception; {:label_0197 .. :label_01a8} :label_01e9
    .catchall {:label_0197 .. :label_01a8} :label_01e4
    .catch Ljava/lang/Exception; {:label_01a8 .. :label_01d2} :label_01df
    .catchall {:label_01a8 .. :label_01d2} :label_01d8
    .catch Ljava/lang/Exception; {:label_01f1 .. :label_024a} :label_01e9
    .catchall {:label_01f1 .. :label_024a} :label_01e4
    .catch Ljava/lang/Exception; {:label_024a .. :label_025c} :label_0255
    .catchall {:label_024a .. :label_025c} :label_0088
    .catch Ljava/lang/Exception; {:label_025e .. :label_027a} :label_01e9
    .catchall {:label_025e .. :label_027a} :label_01e4
    .catch Ljava/lang/Exception; {:label_027a .. :label_028c} :label_0255
    .catchall {:label_027a .. :label_028c} :label_0088
    .catch Ljava/lang/Exception; {:label_028c .. :label_02a0} :label_02a7
    .catchall {:label_028c .. :label_02a0} :label_02a1
    .catch Ljava/lang/Exception; {:label_02ab .. :label_02ae} :label_0255
    .catchall {:label_02ab .. :label_02ae} :label_0088
    .catch Ljava/lang/Exception; {:label_02b1 .. :label_035c} :label_01e9
    .catchall {:label_02b1 .. :label_035c} :label_01e4
    .catchall {:label_036b .. :label_036e} :label_0379
.end method
