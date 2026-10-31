# file_id=0 method_idx=43033 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesStorage;->lambda$putMessages$238(ILorg/telegram/tgnet/TLRPC$messages_Messages;JJIIZ)V"
.method private synthetic lambda$putMessages$238(ILorg/telegram/tgnet/TLRPC$messages_Messages;JJIIZ)V
    .registers 59

    move-object/from16 v1, v49
    move/from16 v0, v50
    move-object/from16 v9, v51
    move-wide/from16 v2, v52
    move/from16 v10, v56
    const-string v4, "DELETE FROM scheduled_messages_v2 WHERE uid = "
    :label_000c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v5
    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v12
    :label_0014
    const/4 v14, 0x0
    const/4 v15, 0x1
    if-ne v0, v15, :label_001a
    move v5, v15
    goto :label_001b
    :label_001a
    move v5, v14
    :label_001b
    const/4 v6, 0x5
    if-ne v0, v6, :label_0020
    move v7, v15
    goto :label_0021
    :label_0020
    move v7, v14
    :label_0021
    const/16 v8, 0x9
    move-wide/from16 v17, v12
    const/4 v13, 0x4
    const-wide/16 v19, 0x0
    const/4 v11, 0x3
    const/4 v12, 0x2
    if-ne v0, v8, :label_010a
    :label_002c
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "REPLACE INTO welcome_messages VALUES(?, ?, ?, ?, ?, ?, NULL, 0)"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_0034
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    :label_003a
    if-ge v14, v0, :label_00db
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    if-eqz v4, :label_004a
    goto/16 :label_00d6
    :label_004a
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v4
    cmp-long v7, v4, v19
    if-eqz v7, :label_009f
    iget-object v7, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    iget v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "DELETE FROM welcome_messages WHERE mid = "
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v6, " AND dialog_id = "
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v7, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_009f
    :label_007d
    move-exception v0
    move-object/from16 v28, v2
    :label_0080
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    :label_0084
    const/16 v16, 0x0
    :label_0086
    const/16 v29, 0x0
    const/16 v30, 0x0
    const/16 v32, 0x0
    goto/16 :label_0ef7
    :label_008e
    move-exception v0
    move-object/from16 v28, v2
    :label_0091
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    :label_0095
    const/16 v16, 0x0
    :label_0097
    const/16 v29, 0x0
    const/16 v30, 0x0
    const/16 v32, 0x0
    goto/16 :label_0ebe
    :label_009f
    invoke-direct {v1, v3}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->normalizeFlags(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v7
    invoke-direct {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v3, v6}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-virtual {v2, v15, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2, v12, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v2, v11, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-virtual {v2, v13, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v4, 0x5
    invoke-virtual {v2, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    const/4 v4, 0x6
    invoke-virtual {v2, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_00d6
    add-int/lit8 v14, v14, 0x1
    const/4 v6, 0x5
    goto/16 :label_003a
    :label_00db
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_00de
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/List;)V
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/List;)V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_00ed
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    goto/16 :label_0e0b
    :label_00f6
    move-exception v0
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v28, 0x0
    goto :label_0086
    :label_0100
    move-exception v0
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v28, 0x0
    goto :label_0097
    :label_010a
    if-eqz v7, :label_01ac
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "REPLACE INTO quick_replies_messages VALUES(?, ?, ?, ?, ?, ?, NULL, 0)"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_0114
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    :label_011a
    if-ge v14, v0, :label_0198
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    if-eqz v4, :label_0129
    goto :label_0195
    :label_0129
    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId(ILorg/telegram/tgnet/TLRPC$Message;)I
    move-result v4
    int-to-long v4, v4
    cmp-long v6, v4, v19
    if-eqz v6, :label_015e
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v10, "DELETE FROM quick_replies_messages WHERE mid = "
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, " AND topic_id = "
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_015e
    invoke-direct {v1, v3}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->normalizeFlags(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v7
    invoke-direct {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v3, v6}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-virtual {v2, v15, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2, v12, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v2, v11, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-virtual {v2, v13, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v4, 0x5
    invoke-virtual {v2, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    const/4 v4, 0x6
    invoke-virtual {v2, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0195
    add-int/lit8 v14, v14, 0x1
    goto :label_011a
    :label_0198
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_019b
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/List;)V
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/List;)V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    goto/16 :label_00ed
    :label_01ac
    if-eqz v5, :label_024b
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v4, " AND mid > 0"
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v4, "REPLACE INTO scheduled_messages_v2 VALUES(?, ?, ?, ?, ?, ?, NULL, 0)"
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v4
    :label_01d6
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    :label_01dc
    if-ge v14, v0, :label_0230
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    if-eqz v6, :label_01ec
    const/4 v7, 0x5
    goto :label_0223
    :label_01ec
    invoke-direct {v1, v5}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->normalizeFlags(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v7
    invoke-direct {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v5, v6}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-virtual {v4, v15, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v4, v12, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v4, v11, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-virtual {v4, v13, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v7, 0x5
    invoke-virtual {v4, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    const/4 v8, 0x6
    invoke-virtual {v4, v8, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0223
    add-int/lit8 v14, v14, 0x1
    goto :label_01dc
    :label_0226
    move-exception v0
    move-object/from16 v28, v4
    goto/16 :label_0080
    :label_022b
    move-exception v0
    move-object/from16 v28, v4
    goto/16 :label_0091
    :label_0230
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0233
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/List;)V
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/List;)V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->broadcastScheduledMessagesChange(Ljava/lang/Long;)V
    goto/16 :label_00ed
    :label_024b
    const/4 v7, 0x5
    cmp-long v21, v54, v19
    if-eqz v21, :label_0253
    const-string v0, "messages_holes_topics"
    :label_0252
    goto :label_0255
    :label_0253
    const-string v0, "messages_holes"
    :label_0255
    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v4
    :label_025b
    if-eqz v4, :label_027c
    if-nez v10, :label_0274
    move-wide/from16 v6, v54
    move/from16 v5, v57
    move-wide v3, v2
    move-object v2, v0
    :label_0265
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JIJ)V
    const/4 v5, -0x1
    move-object/from16 v1, v49
    move-wide/from16 v2, v52
    move-wide/from16 v6, v54
    move/from16 v4, v57
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInMedia(JIIJ)V
    :label_0274
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v0, :label_0ef5
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    return-void
    :label_027c
    move-object v2, v0
    :label_027d
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :label_0282
    const v3, 0x7fffffff
    if-nez v10, :label_02d9
    :label_0287
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v4
    sub-int/2addr v4, v15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move-wide/from16 v7, v54
    move/from16 v6, v57
    move v5, v4
    move-wide/from16 v3, v52
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JIIJ)V
    move v4, v5
    const/4 v6, -0x1
    move-object/from16 v1, v49
    move-wide/from16 v2, v52
    move-wide/from16 v7, v54
    move/from16 v5, v57
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIIIJ)V
    :label_02ad
    move-object/from16 v1, v49
    move-wide/from16 v7, v52
    goto/16 :label_033d
    :label_02b3
    move-exception v0
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v28, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    const/16 v32, 0x0
    move-object/from16 v1, v49
    goto/16 :label_0ef7
    :label_02c6
    move-exception v0
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v28, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    const/16 v32, 0x0
    move-object/from16 v1, v49
    goto/16 :label_0ebe
    :label_02d9
    if-ne v10, v15, :label_02fe
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move-object/from16 v1, v49
    move-wide/from16 v3, v52
    move-wide/from16 v7, v54
    move/from16 v5, v57
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JIIJ)V
    move v5, v6
    const/4 v6, -0x1
    move-object/from16 v1, v49
    move-wide/from16 v2, v52
    move-wide/from16 v7, v54
    move/from16 v4, v57
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIIIJ)V
    :label_02fd
    goto :label_02ad
    :label_02fe
    if-eq v10, v11, :label_0304
    if-eq v10, v12, :label_0304
    if-ne v10, v13, :label_02ad
    :label_0304
    if-nez v57, :label_030c
    if-eq v10, v13, :label_030c
    const v6, 0x7fffffff
    goto :label_0317
    :label_030c
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move v6, v3
    :label_0317
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v1
    sub-int/2addr v1, v15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    :label_0326
    move-object/from16 v1, v49
    move-wide/from16 v7, v54
    move v5, v4
    move-wide/from16 v3, v52
    :label_032d
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JIIJ)V
    move v4, v5
    move v5, v6
    const/4 v6, -0x1
    move-object/from16 v1, v49
    move-wide/from16 v2, v52
    move-wide/from16 v7, v54
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIIIJ)V
    move-wide v7, v2
    :label_033d
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v6
    new-instance v23, Ljava/util/ArrayList;
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    new-instance v24, Ljava/util/ArrayList;
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
    new-instance v25, Ljava/util/ArrayList;
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :label_0352
    cmp-long v26, v7, v17
    if-nez v26, :label_035d
    :label_0356
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :label_035b
    move-object v2, v0
    goto :label_035e
    :label_035d
    const/4 v2, 0x0
    :label_035e
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v3, "REPLACE INTO messages_topics VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?)"
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v27
    :label_0366
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v3, "REPLACE INTO messages_v2 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?)"
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v28
    :label_036e
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v3, "REPLACE INTO media_v4 VALUES(?, ?, ?, ?, ?)"
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v3
    :label_0376
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v4, "REPLACE INTO media_topics VALUES(?, ?, ?, ?, ?, ?)"
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v4
    :label_037e
    cmp-long v0, v17, v7
    if-nez v0, :label_03e2
    :label_0382
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    move v5, v14
    :label_0388
    if-ge v5, v6, :label_03af
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v5, v5, 0x1
    const/4 v13, 0x4
    goto :label_0388
    :label_039f
    move-exception v0
    move-object v8, v3
    move-object/from16 v11, v27
    const/4 v6, 0x0
    const/4 v9, 0x0
    goto/16 :label_0084
    :label_03a7
    move-exception v0
    move-object v8, v3
    move-object/from16 v11, v27
    const/4 v6, 0x0
    const/4 v9, 0x0
    goto/16 :label_0095
    :label_03af
    iget-object v5, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "DELETE FROM tag_message_id WHERE mid IN ("
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, ","
    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v5, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v5, "REPLACE INTO tag_message_id VALUES(?, ?, ?, ?)"
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    :label_03e0
    move-object v12, v0
    goto :label_03e3
    :label_03e2
    const/4 v12, 0x0
    :label_03e3
    move v5, v14
    move-wide/from16 v33, v19
    const v0, 0x7fffffff
    const/4 v11, 0x0
    const v13, 0x7fffffff
    const/16 v29, 0x0
    const/16 v30, 0x0
    const/16 v31, 0x0
    const/16 v32, 0x0
    const/16 v35, 0x0
    const/16 v36, 0x0
    :label_03f9
    if-ge v5, v6, :label_0c8b
    :label_03fb
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;
    :label_0403
    const/high16 v37, 0x20000
    if-nez v11, :label_040d
    if-nez v15, :label_040a
    goto :label_040d
    :label_040a
    move-object/from16 v50, v2
    goto :label_0419
    :label_040d
    if-eqz v11, :label_0457
    :label_040f
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    move-result v14
    move-object/from16 v50, v2
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-ge v14, v2, :label_0454
    :label_0419
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    iget v11, v15, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0421
    and-int v11, v11, v37
    if-eqz v11, :label_0445
    move-object v11, v2
    move-object/from16 v57, v3
    :label_0428
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    goto :label_0449
    :label_042f
    move-exception v0
    :label_0430
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    :label_0434
    move-object/from16 v11, v27
    const/4 v6, 0x0
    :label_0437
    const/4 v9, 0x0
    goto/16 :label_0ef7
    :label_043a
    move-exception v0
    :label_043b
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    :label_043f
    move-object/from16 v11, v27
    const/4 v6, 0x0
    :label_0442
    const/4 v9, 0x0
    goto/16 :label_0ebe
    :label_0445
    move-object v11, v2
    move-object/from16 v57, v3
    const/4 v2, 0x0
    :label_0449
    move-object/from16 v36, v2
    goto :label_045a
    :label_044c
    move-exception v0
    move-object/from16 v57, v3
    goto :label_0430
    :label_0450
    move-exception v0
    move-object/from16 v57, v3
    goto :label_043b
    :label_0454
    move-object/from16 v57, v3
    goto :label_045a
    :label_0457
    move-object/from16 v50, v2
    goto :label_0454
    :label_045a
    cmp-long v2, v33, v19
    if-nez v2, :label_0464
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    :label_0462
    move-wide/from16 v33, v2
    :label_0464
    const-string v14, " AND uid = "
    const/4 v2, -0x2
    if-ne v10, v2, :label_0734
    :label_0469
    iget-object v3, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move-object/from16 v39, v4
    move/from16 v40, v5
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v4
    :label_0477
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v41, v6
    const-string v6, "SELECT mid, data, ttl, mention, read_state, send_state, custom_params FROM messages_v2 WHERE mid = "
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    :label_0490
    const/4 v2, 0x0
    :label_0491
    new-array v4, v2, [Ljava/lang/Object;
    invoke-virtual {v3, v1, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v6
    :label_0497
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v42
    if-eqz v42, :label_06dc
    const/4 v1, 0x1
    invoke-virtual {v6, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v3
    :label_04a2
    if-eqz v3, :label_0633
    :label_04a4
    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I
    move-result v1
    invoke-static {v3, v1, v2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    move-result-object v4
    invoke-virtual/range {v49 .. v49}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v1
    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    invoke-virtual {v4, v3, v1, v2}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_04b8
    if-eqz v50, :label_04ea
    move v1, v0
    :label_04bb
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$SavedReactionsUpdate;
    move-object v2, v11
    move-object/from16 v11, v50
    move-object/from16 v50, v2
    move-object v5, v15
    move-wide/from16 v2, v17
    move v15, v1
    move/from16 v17, v13
    const/4 v13, -0x2
    move-object/from16 v1, v49
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$SavedReactionsUpdate;-><init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)V
    move-object v1, v5
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_04d2
    const/4 v5, 0x5
    goto :label_04f7
    :label_04d4
    move-exception v0
    :label_04d5
    move-object/from16 v1, v49
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    :label_04db
    move-object/from16 v11, v27
    goto/16 :label_0437
    :label_04df
    move-exception v0
    :label_04e0
    move-object/from16 v1, v49
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    :label_04e6
    move-object/from16 v11, v27
    goto/16 :label_0442
    :label_04ea
    move-object v1, v11
    move-object/from16 v11, v50
    move-object/from16 v50, v1
    move-object v1, v15
    move-wide/from16 v2, v17
    move v15, v0
    move/from16 v17, v13
    const/4 v13, -0x2
    goto :label_04d2
    :label_04f7
    invoke-virtual {v6, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    :label_04fb
    const/4 v5, 0x3
    if-eq v0, v5, :label_0517
    :label_04fe
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0510
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :label_0510
    const/4 v5, 0x2
    invoke-virtual {v6, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v0
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :label_0517
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    :label_051b
    if-eqz v5, :label_053d
    :label_051d
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v13, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    if-eqz v13, :label_053d
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v13, :label_053d
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v5, :label_053d
    move-wide/from16 v43, v2
    iget-wide v2, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J
    move-wide/from16 v45, v2
    iget-wide v2, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J
    :label_0533
    cmp-long v0, v45, v2
    if-nez v0, :label_0539
    const/4 v0, 0x1
    goto :label_053a
    :label_0539
    const/4 v0, 0x0
    :label_053a
    move-object v13, v6
    goto/16 :label_05bd
    :label_053d
    move-wide/from16 v43, v2
    :label_053f
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :label_0541
    if-eqz v2, :label_0578
    :label_0543
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    if-eqz v3, :label_0578
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v0, :label_0578
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    :label_054f
    if-eqz v2, :label_0578
    move-object v3, v6
    :label_0552
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    :label_0554
    move-object v13, v3
    :label_0555
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    :label_0557
    cmp-long v0, v5, v2
    if-nez v0, :label_05bc
    :label_055b
    const/4 v0, 0x1
    goto/16 :label_05bd
    :label_055e
    move-exception v0
    :label_055f
    move-object/from16 v1, v49
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    move-object v6, v13
    goto/16 :label_04db
    :label_0568
    move-exception v0
    :label_0569
    move-object/from16 v1, v49
    move-object/from16 v8, v57
    move-object/from16 v16, v12
    move-object v6, v13
    goto/16 :label_04e6
    :label_0572
    move-exception v0
    move-object v13, v3
    goto :label_055f
    :label_0575
    move-exception v0
    move-object v13, v3
    goto :label_0569
    :label_0578
    move-object v13, v6
    goto :label_0582
    :label_057a
    move-exception v0
    move-object v13, v6
    goto/16 :label_04d5
    :label_057e
    move-exception v0
    move-object v13, v6
    goto/16 :label_04e0
    :label_0582
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPhoto(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Photo;
    move-result-object v0
    :label_0586
    if-eqz v0, :label_059f
    :label_0588
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPhoto(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Photo;
    move-result-object v0
    if-eqz v0, :label_059f
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPhoto(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Photo;
    move-result-object v0
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPhoto(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Photo;
    move-result-object v0
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J
    :label_059a
    cmp-long v0, v2, v5
    if-nez v0, :label_05bc
    goto :label_055b
    :label_059f
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDocument(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    :label_05a3
    if-eqz v0, :label_05bc
    :label_05a5
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocument(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    if-eqz v0, :label_05bc
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDocument(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocument(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    :label_05b7
    cmp-long v0, v2, v5
    if-nez v0, :label_05bc
    goto :label_055b
    :label_05bc
    const/4 v0, 0x0
    :label_05bd
    iget-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :label_05bf
    if-eqz v2, :label_05c7
    :label_05c1
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-nez v3, :label_05c7
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :label_05c7
    if-nez v0, :label_05f2
    const/4 v6, 0x0
    move-object v2, v4
    move-object/from16 v18, v11
    move-object/from16 v22, v12
    move-object v10, v13
    move-object v0, v14
    move-object/from16 v3, v23
    move-object/from16 v5, v24
    move-object/from16 v4, v25
    move-wide/from16 v13, v43
    const/4 v12, 0x5
    move-object v11, v1
    move-object/from16 v1, v49
    :label_05dd
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->addFilesToDelete(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    :label_05e0
    const/4 v2, 0x6
    goto :label_0605
    :label_05e2
    move-exception v0
    :label_05e3
    move-object/from16 v8, v57
    move-object v6, v10
    :label_05e6
    move-object/from16 v16, v22
    goto/16 :label_04db
    :label_05ea
    move-exception v0
    :label_05eb
    move-object/from16 v8, v57
    move-object v6, v10
    :label_05ee
    move-object/from16 v16, v22
    goto/16 :label_04e6
    :label_05f2
    move-object/from16 v18, v11
    move-object/from16 v22, v12
    move-object v10, v13
    move-object v0, v14
    move-object/from16 v3, v23
    move-object/from16 v5, v24
    move-object/from16 v4, v25
    move-wide/from16 v13, v43
    const/4 v12, 0x5
    move-object v11, v1
    move-object/from16 v1, v49
    goto :label_05e0
    :label_0605
    invoke-virtual {v10, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v6
    invoke-static {v11, v6}, Lorg/telegram/messenger/MessageCustomParamsHelper;->readLocalParams(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/NativeByteBuffer;)V
    if-eqz v6, :label_0611
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0611
    const/4 v2, 0x3
    goto :label_064d
    :label_0613
    move-exception v0
    move-object/from16 v1, v49
    move-object/from16 v22, v12
    move-object v10, v13
    goto :label_05e3
    :label_061a
    move-exception v0
    move-object/from16 v1, v49
    move-object/from16 v22, v12
    move-object v10, v13
    goto :label_05eb
    :label_0621
    move-exception v0
    move-object/from16 v1, v49
    move-object v10, v6
    :label_0625
    move-object/from16 v22, v12
    :label_0627
    move-object/from16 v8, v57
    goto :label_05e6
    :label_062a
    move-exception v0
    move-object/from16 v1, v49
    move-object v10, v6
    :label_062e
    move-object/from16 v22, v12
    :label_0630
    move-object/from16 v8, v57
    goto :label_05ee
    :label_0633
    move-object/from16 v1, v49
    move-object v10, v6
    move-object/from16 v22, v12
    move-object/from16 v3, v23
    move-object/from16 v5, v24
    move-object/from16 v4, v25
    const/4 v12, 0x5
    move-wide/from16 v47, v17
    move-object/from16 v18, v50
    move-object/from16 v50, v11
    move/from16 v17, v13
    move-object v11, v15
    move v15, v0
    move-object v0, v14
    move-wide/from16 v13, v47
    goto :label_0611
    :label_064d
    invoke-virtual {v10, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v6
    if-eqz v6, :label_0656
    const/4 v2, 0x1
    :label_0654
    const/4 v6, 0x4
    goto :label_0658
    :label_0656
    const/4 v2, 0x0
    goto :label_0654
    :label_0658
    invoke-virtual {v10, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v12
    iget-boolean v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z
    if-eq v2, v6, :label_06c9
    const v6, 0x7fffffff
    if-ne v15, v6, :label_06b0
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    move/from16 v24, v2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :label_066e
    move-object/from16 v25, v10
    :label_0670
    const-string v10, "SELECT unread_count_i FROM dialogs WHERE did = "
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move/from16 v43, v15
    const/4 v10, 0x0
    new-array v15, v10, [Ljava/lang/Object;
    invoke-virtual {v6, v2, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v6
    if-eqz v6, :label_06a2
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v6
    goto :label_06a4
    :label_0690
    move-exception v0
    :label_0691
    move-object/from16 v8, v57
    move-object/from16 v16, v22
    move-object/from16 v6, v25
    goto/16 :label_04db
    :label_0699
    move-exception v0
    :label_069a
    move-object/from16 v8, v57
    move-object/from16 v16, v22
    move-object/from16 v6, v25
    goto/16 :label_04e6
    :label_06a2
    move/from16 v6, v43
    :label_06a4
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    goto :label_06b8
    :label_06a8
    move-exception v0
    move-object/from16 v25, v10
    goto :label_0691
    :label_06ac
    move-exception v0
    move-object/from16 v25, v10
    goto :label_069a
    :label_06b0
    move/from16 v24, v2
    move-object/from16 v25, v10
    move/from16 v43, v15
    move/from16 v6, v43
    :label_06b8
    if-eqz v24, :label_06c0
    const/4 v2, 0x1
    if-gt v12, v2, :label_06c7
    add-int/lit8 v2, v6, -0x1
    goto :label_06f8
    :label_06c0
    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    if-eqz v2, :label_06c7
    add-int/lit8 v2, v6, 0x1
    goto :label_06f8
    :label_06c7
    move v2, v6
    goto :label_06f8
    :label_06c9
    move-object/from16 v25, v10
    move/from16 v43, v15
    goto :label_06f6
    :label_06ce
    move-exception v0
    move-object/from16 v1, v49
    move-object/from16 v25, v6
    goto/16 :label_0625
    :label_06d5
    move-exception v0
    move-object/from16 v1, v49
    move-object/from16 v25, v6
    goto/16 :label_062e
    :label_06dc
    move-object/from16 v1, v49
    move/from16 v43, v0
    move-object/from16 v22, v12
    move-object v0, v14
    move-object/from16 v3, v23
    move-object/from16 v5, v24
    move-object/from16 v4, v25
    move-object/from16 v25, v6
    move-wide/from16 v47, v17
    move-object/from16 v18, v50
    move-object/from16 v50, v11
    move/from16 v17, v13
    move-object v11, v15
    move-wide/from16 v13, v47
    :label_06f6
    move/from16 v2, v43
    :label_06f8
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_06fb
    if-nez v42, :label_0752
    move v0, v2
    move-object/from16 v44, v3
    move-object v10, v4
    move-wide v6, v7
    move-wide/from16 v45, v13
    move/from16 v13, v17
    move-object/from16 v3, v22
    move-object/from16 v9, v39
    const/4 v12, 0x2
    const/4 v15, 0x3
    move/from16 v4, v56
    move-object/from16 v8, v57
    goto/16 :label_0c57
    :label_0712
    move-exception v0
    move-object/from16 v1, v49
    :label_0715
    move-object/from16 v22, v12
    :label_0717
    move-object/from16 v8, v57
    move-object/from16 v16, v22
    goto/16 :label_0434
    :label_071d
    move-exception v0
    move-object/from16 v1, v49
    :label_0720
    move-object/from16 v22, v12
    :label_0722
    move-object/from16 v8, v57
    move-object/from16 v16, v22
    goto/16 :label_043f
    :label_0728
    move-exception v0
    move-object/from16 v1, v49
    goto :label_0715
    :label_072c
    move-exception v0
    move-object/from16 v1, v49
    goto :label_0720
    :label_0730
    move-exception v0
    goto :label_0715
    :label_0732
    move-exception v0
    goto :label_0720
    :label_0734
    move/from16 v43, v0
    move-object/from16 v39, v4
    move/from16 v40, v5
    move/from16 v41, v6
    move-object/from16 v22, v12
    move-object v0, v14
    move-object/from16 v3, v23
    move-object/from16 v5, v24
    move-object/from16 v4, v25
    move-wide/from16 v47, v17
    move-object/from16 v18, v50
    move-object/from16 v50, v11
    move/from16 v17, v13
    move-object v11, v15
    move-wide/from16 v13, v47
    move/from16 v2, v43
    :label_0752
    if-nez v40, :label_089f
    if-eqz v58, :label_089f
    :label_0756
    iget-object v6, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "SELECT pinned, unread_count_i, flags FROM dialogs WHERE did = "
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    const/4 v12, 0x0
    new-array v15, v12, [Ljava/lang/Object;
    invoke-virtual {v6, v10, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    move-result-object v6
    :label_0770
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    move-result v10
    if-eqz v10, :label_0791
    invoke-virtual {v6, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v15
    const/4 v12, 0x1
    invoke-virtual {v6, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v24
    const/4 v12, 0x2
    invoke-virtual {v6, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I
    move-result v25
    move/from16 v12, v24
    move/from16 v24, v2
    move/from16 v2, v25
    goto :label_0796
    :label_078b
    move-exception v0
    goto/16 :label_0627
    :label_078e
    move-exception v0
    goto/16 :label_0630
    :label_0791
    move/from16 v24, v2
    const/4 v2, 0x0
    const/4 v12, 0x0
    const/4 v15, 0x0
    :label_0796
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0799
    if-eqz v10, :label_07ff
    :label_079b
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v10, "UPDATE dialogs SET date = ?, last_mid = ?, last_mid_group = ?, inbox_max = ?, last_mid_i = ?, pts = ?, date_i = ? WHERE did = ?"
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v2
    :label_07a3
    iget v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/4 v12, 0x1
    invoke-virtual {v2, v12, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v12, 0x2
    invoke-virtual {v2, v12, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int v10, v10, v37
    if-eqz v10, :label_07d2
    iget-wide v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    const/4 v10, 0x3
    invoke-virtual {v2, v10, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    goto :label_07d6
    :label_07bc
    move-exception v0
    move-object/from16 v8, v57
    move-object v9, v2
    move-object/from16 v16, v22
    move-object/from16 v11, v27
    const/4 v6, 0x0
    goto/16 :label_0ef7
    :label_07c7
    move-exception v0
    move-object/from16 v8, v57
    move-object v9, v2
    move-object/from16 v16, v22
    move-object/from16 v11, v27
    const/4 v6, 0x0
    goto/16 :label_0ebe
    :label_07d2
    const/4 v10, 0x3
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    :label_07d6
    iget v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v7, 0x4
    invoke-virtual {v2, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v7, 0x5
    invoke-virtual {v2, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v6, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I
    const/4 v7, 0x6
    invoke-virtual {v2, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/4 v8, 0x7
    invoke-virtual {v2, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    move-wide/from16 v6, v52
    const/16 v8, 0x8
    invoke-virtual {v2, v8, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    :label_07f5
    move-object/from16 v44, v3
    goto/16 :label_0898
    :label_07f9
    move-exception v0
    goto/16 :label_0717
    :label_07fc
    move-exception v0
    goto/16 :label_0722
    :label_07ff
    move-wide v6, v7
    :label_0800
    iget-object v10, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v8, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    invoke-virtual {v10, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v8
    :label_0808
    const/4 v10, 0x1
    :label_0809
    invoke-virtual {v8, v10, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    move-object/from16 v44, v3
    const/4 v3, 0x2
    invoke-virtual {v8, v3, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v3, 0x0
    const/4 v10, 0x3
    invoke-virtual {v8, v10, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v3, 0x4
    invoke-virtual {v8, v3, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v10, 0x5
    invoke-virtual {v8, v10, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v3, 0x6
    const/4 v10, 0x0
    invoke-virtual {v8, v3, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v10, 0x7
    invoke-virtual {v8, v10, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v3, 0x8
    invoke-virtual {v8, v3, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I
    const/16 v10, 0x9
    invoke-virtual {v8, v10, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/16 v12, 0xa
    invoke-virtual {v8, v12, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v3, 0xb
    invoke-virtual {v8, v3, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v3, 0xc
    invoke-virtual {v8, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v2, 0xd
    const/4 v3, -0x1
    invoke-virtual {v8, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v2, 0xe
    invoke-virtual {v8, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    const/16 v2, 0xf
    const/4 v12, 0x0
    invoke-virtual {v8, v2, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int v2, v2, v37
    const/16 v3, 0x10
    if-eqz v2, :label_0882
    iget-wide v9, v11, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    invoke-virtual {v8, v3, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    goto :label_0885
    :label_086c
    move-exception v0
    move-object v9, v8
    move-object/from16 v16, v22
    move-object/from16 v11, v27
    const/4 v6, 0x0
    move-object/from16 v8, v57
    goto/16 :label_0ef7
    :label_0877
    move-exception v0
    move-object v9, v8
    move-object/from16 v16, v22
    move-object/from16 v11, v27
    const/4 v6, 0x0
    move-object/from16 v8, v57
    goto/16 :label_0ebe
    :label_0882
    invoke-virtual {v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    :label_0885
    const/16 v2, 0x11
    const/4 v10, 0x0
    invoke-virtual {v8, v2, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/16 v2, 0x12
    invoke-virtual {v8, v2, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->unknownDialogsIds:Lz/f;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual {v2, v3, v6, v7}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0897
    move-object v2, v8
    :label_0898
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_089e
    goto :label_08a4
    :label_089f
    move/from16 v24, v2
    move-object/from16 v44, v3
    move-wide v6, v7
    :label_08a4
    invoke-direct {v1, v11}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->normalizeFlags(Lorg/telegram/tgnet/TLRPC$Message;)V
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v11}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v3
    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v11, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :label_08b6
    const/4 v3, 0x0
    :label_08b7
    const/4 v12, 0x2
    if-ge v3, v12, :label_0a64
    const/4 v12, 0x1
    if-ne v3, v12, :label_08bf
    const/4 v8, 0x1
    goto :label_08c0
    :label_08bf
    const/4 v8, 0x0
    :label_08c0
    if-eqz v8, :label_08fd
    if-nez v21, :label_08d3
    :label_08c4
    iget v9, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move v12, v3
    move-object v10, v4
    iget-wide v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getForumTypeFlags(J)I
    move-result v3
    invoke-static {v9, v11, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;I)J
    move-result-wide v3
    goto :label_08d7
    :label_08d3
    move v12, v3
    move-object v10, v4
    move-wide/from16 v3, v54
    :label_08d7
    cmp-long v9, v3, v19
    if-nez v9, :label_08e2
    move v4, v12
    move-wide/from16 v45, v13
    move-object/from16 v3, v22
    goto/16 :label_0a52
    :label_08e2
    if-nez v26, :label_08fa
    invoke-static {v13, v14, v11}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v42
    cmp-long v9, v42, v19
    if-eqz v9, :label_08fa
    if-nez v35, :label_08f3
    new-instance v35, Ljava/util/ArrayList;
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V
    :label_08f3
    move-object/from16 v9, v35
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_08f8
    move-object/from16 v35, v9
    :label_08fa
    move-object/from16 v9, v27
    goto :label_0903
    :label_08fd
    move v12, v3
    move-object v10, v4
    move-wide/from16 v3, v54
    move-object/from16 v9, v28
    :label_0903
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move/from16 v25, v8
    const/4 v8, 0x1
    invoke-virtual {v9, v8, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v8, 0x2
    invoke-virtual {v9, v8, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    :label_0912
    if-eqz v25, :label_091a
    const/4 v8, 0x3
    :label_0915
    invoke-virtual {v9, v8, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    :label_0918
    const/4 v3, 0x4
    goto :label_091b
    :label_091a
    const/4 v3, 0x3
    :label_091b
    add-int/lit8 v4, v3, 0x1
    :label_091d
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v8
    invoke-virtual {v9, v3, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v8, v3, 0x2
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v9, v4, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v4, v3, 0x3
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-virtual {v9, v8, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v8, v3, 0x4
    invoke-virtual {v9, v4, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    add-int/lit8 v4, v3, 0x5
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v15
    :label_093d
    if-nez v15, :label_0946
    :label_093f
    iget-boolean v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z
    :label_0941
    if-eqz v15, :label_0944
    goto :label_0946
    :label_0944
    const/4 v15, 0x0
    goto :label_0947
    :label_0946
    const/4 v15, 0x1
    :label_0947
    invoke-virtual {v9, v8, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v8, v3, 0x6
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    invoke-virtual {v9, v4, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0953
    and-int/lit16 v4, v4, 0x400
    if-eqz v4, :label_095f
    add-int/lit8 v3, v3, 0x7
    :label_0959
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    invoke-virtual {v9, v8, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_095e
    goto :label_0968
    :label_095f
    add-int/lit8 v3, v3, 0x7
    :label_0961
    invoke-virtual {v1, v11}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v4
    invoke-virtual {v9, v8, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_0968
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    :label_096a
    if-eqz v4, :label_0982
    :label_096c
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    invoke-virtual {v8}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v8
    invoke-direct {v4, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    invoke-virtual {v8, v4}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    add-int/lit8 v8, v3, 0x1
    invoke-virtual {v9, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    :label_0981
    goto :label_0988
    :label_0982
    add-int/lit8 v8, v3, 0x1
    :label_0984
    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    const/4 v4, 0x0
    :label_0988
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I
    if-nez v3, :label_098e
    const/4 v3, 0x1
    goto :label_0994
    :label_098e
    const/4 v15, 0x2
    if-ne v3, v15, :label_0993
    const/4 v3, 0x2
    goto :label_0994
    :label_0993
    const/4 v3, 0x0
    :label_0994
    add-int/lit8 v15, v8, 0x1
    invoke-virtual {v9, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v3, v8, 0x2
    move-object/from16 v42, v4
    iget-boolean v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z
    invoke-virtual {v9, v15, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    add-int/lit8 v4, v8, 0x3
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I
    invoke-virtual {v9, v3, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;
    :label_09ab
    if-eqz v3, :label_09c3
    :label_09ad
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;
    invoke-virtual {v15}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v15
    invoke-direct {v3, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    add-int/lit8 v8, v8, 0x4
    invoke-virtual {v9, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    :label_09c2
    goto :label_09c9
    :label_09c3
    add-int/lit8 v8, v8, 0x4
    :label_09c5
    invoke-virtual {v9, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    const/4 v3, 0x0
    :label_09c9
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    :label_09cb
    if-eqz v4, :label_09dc
    add-int/lit8 v15, v8, 0x1
    move-object/from16 v43, v3
    :label_09d1
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I
    if-eqz v3, :label_09d6
    goto :label_09d8
    :label_09d6
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I
    :label_09d8
    invoke-virtual {v9, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_09db
    goto :label_09e4
    :label_09dc
    move-object/from16 v43, v3
    add-int/lit8 v15, v8, 0x1
    const/4 v3, 0x0
    :label_09e1
    invoke-virtual {v9, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_09e4
    add-int/lit8 v3, v15, 0x1
    move v4, v12
    move-wide/from16 v45, v13
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getChannelId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v12
    invoke-virtual {v9, v15, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-static {v11}, Lorg/telegram/messenger/MessageCustomParamsHelper;->writeLocalParams(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/NativeByteBuffer;
    move-result-object v8
    :label_09f4
    if-nez v8, :label_09fc
    add-int/lit8 v15, v15, 0x2
    :label_09f8
    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    :label_09fb
    goto :label_0a01
    :label_09fc
    add-int/lit8 v15, v15, 0x2
    :label_09fe
    invoke-virtual {v9, v3, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    :label_0a01
    if-nez v25, :label_0a18
    :label_0a03
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int v3, v3, v37
    if-eqz v3, :label_0a12
    add-int/lit8 v3, v15, 0x1
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    invoke-virtual {v9, v15, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    :label_0a10
    move v15, v3
    goto :label_0a18
    :label_0a12
    add-int/lit8 v3, v15, 0x1
    invoke-virtual {v9, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    :label_0a17
    goto :label_0a10
    :label_0a18
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    :label_0a1a
    if-eqz v3, :label_0a22
    :label_0a1c
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I
    invoke-virtual {v9, v15, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_0a21
    goto :label_0a26
    :label_0a22
    const/4 v12, 0x0
    :label_0a23
    invoke-virtual {v9, v15, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    :label_0a26
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0a29
    if-nez v4, :label_0a41
    if-eqz v22, :label_0a41
    move-object/from16 v3, v22
    :label_0a2f
    invoke-direct {v1, v3, v11}, Lorg/telegram/messenger/MessagesStorage;->bindMessageTags(Lorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/tgnet/TLRPC$Message;)V
    goto :label_0a43
    :label_0a33
    move-exception v0
    :label_0a34
    move-object/from16 v8, v57
    :label_0a36
    move-object/from16 v16, v3
    goto/16 :label_0434
    :label_0a3a
    move-exception v0
    :label_0a3b
    move-object/from16 v8, v57
    :label_0a3d
    move-object/from16 v16, v3
    goto/16 :label_043f
    :label_0a41
    move-object/from16 v3, v22
    :label_0a43
    if-eqz v43, :label_0a48
    invoke-virtual/range {v43 .. v43}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0a48
    if-eqz v8, :label_0a4d
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0a4d
    if-eqz v42, :label_0a52
    invoke-virtual/range {v42 .. v42}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :label_0a52
    add-int/lit8 v4, v4, 0x1
    move-object/from16 v22, v3
    move v3, v4
    move-object v4, v10
    move-wide/from16 v13, v45
    goto/16 :label_08b7
    :label_0a5c
    move-exception v0
    move-object/from16 v3, v22
    goto :label_0a34
    :label_0a60
    move-exception v0
    move-object/from16 v3, v22
    goto :label_0a3b
    :label_0a64
    move-object v10, v4
    move-wide/from16 v45, v13
    move-object/from16 v3, v22
    move/from16 v4, v56
    if-eqz v21, :label_0a75
    const/4 v13, -0x2
    if-ne v4, v13, :label_0a71
    goto :label_0a75
    :label_0a71
    move-object/from16 v8, v57
    goto/16 :label_0afb
    :label_0a75
    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v8
    if-eqz v8, :label_0aa4
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    :label_0a80
    move-object/from16 v8, v57
    const/4 v12, 0x1
    :label_0a83
    invoke-virtual {v8, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v12, 0x2
    invoke-virtual {v8, v12, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/4 v9, 0x3
    invoke-virtual {v8, v9, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v0
    const/4 v9, 0x4
    invoke-virtual {v8, v9, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v12, 0x5
    invoke-virtual {v8, v12, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    goto :label_0afb
    :label_0aa0
    move-exception v0
    goto :label_0a36
    :label_0aa2
    move-exception v0
    goto :label_0a3d
    :label_0aa4
    move-object/from16 v8, v57
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageService;
    if-eqz v9, :label_0afb
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;
    :label_0aae
    if-eqz v9, :label_0afb
    :label_0ab0
    iget-object v9, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "DELETE FROM media_v4 WHERE mid = "
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "DELETE FROM media_counts_v2 WHERE uid = "
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v0, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0af6
    goto :label_0afb
    :label_0af7
    move-exception v0
    :label_0af8
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_0afb
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v1, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->getForumTypeFlags(J)I
    move-result v9
    invoke-static {v0, v11, v9}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;I)J
    move-result-wide v12
    if-nez v21, :label_0b16
    const/4 v9, -0x2
    if-ne v4, v9, :label_0b11
    cmp-long v0, v12, v19
    if-eqz v0, :label_0b11
    goto :label_0b16
    :label_0b11
    move-object/from16 v9, v39
    const/4 v12, 0x5
    const/4 v13, 0x6
    goto :label_0b48
    :label_0b16
    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_0b11
    invoke-virtual/range {v39 .. v39}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    move-object/from16 v9, v39
    const/4 v14, 0x1
    invoke-virtual {v9, v14, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v15, 0x2
    invoke-virtual {v9, v15, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    if-eqz v21, :label_0b2f
    move-wide/from16 v12, v54
    :label_0b2f
    const/4 v14, 0x3
    invoke-virtual {v9, v14, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/4 v12, 0x4
    invoke-virtual {v9, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v0
    const/4 v12, 0x5
    invoke-virtual {v9, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v13, 0x6
    invoke-virtual {v9, v13, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0b48
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I
    if-eqz v0, :label_0b98
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-lez v0, :label_0b98
    if-nez v30, :label_0b5d
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "REPLACE INTO enc_tasks_v4 VALUES(?, ?, ?, ?)"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v30
    :label_0b5d
    move-object/from16 v2, v30
    :label_0b5f
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v14, 0x1
    invoke-virtual {v2, v14, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    const/4 v12, 0x2
    invoke-virtual {v2, v12, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I
    add-int/2addr v0, v12
    const/4 v14, 0x3
    invoke-virtual {v2, v14, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    const/4 v12, 0x4
    const/4 v14, 0x0
    invoke-virtual {v2, v12, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I
    add-int/2addr v0, v14
    move/from16 v14, v17
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I
    move-result v0
    :label_0b8a
    move v14, v0
    move-object/from16 v30, v2
    goto :label_0b9b
    :label_0b8e
    move-exception v0
    move-object/from16 v30, v2
    goto/16 :label_0a36
    :label_0b93
    move-exception v0
    move-object/from16 v30, v2
    goto/16 :label_0a3d
    :label_0b98
    move/from16 v14, v17
    const/4 v12, 0x4
    :label_0b9b
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v2, :label_0bdc
    if-nez v32, :label_0bab
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "REPLACE INTO polls_v2 VALUES(?, ?, ?)"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v32
    :label_0bab
    move-object/from16 v2, v32
    :label_0bad
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v12, 0x1
    invoke-virtual {v2, v12, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    move/from16 v57, v14
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    const/4 v12, 0x2
    invoke-virtual {v2, v12, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Poll;->id:J
    const/4 v14, 0x3
    invoke-virtual {v2, v14, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0bcd
    move-object/from16 v32, v2
    :label_0bcf
    const/4 v12, 0x2
    const/4 v15, 0x3
    goto :label_0c17
    :label_0bd2
    move-exception v0
    move-object/from16 v32, v2
    goto/16 :label_0a36
    :label_0bd7
    move-exception v0
    move-object/from16 v32, v2
    goto/16 :label_0a3d
    :label_0bdc
    move/from16 v57, v14
    :label_0bde
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-eqz v0, :label_0bcf
    if-nez v29, :label_0bec
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    const-string v2, "REPLACE INTO webpage_pending_v2 VALUES(?, ?, ?)"
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v29
    :label_0bec
    move-object/from16 v2, v29
    :label_0bee
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J
    const/4 v14, 0x1
    invoke-virtual {v2, v14, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    const/4 v12, 0x2
    invoke-virtual {v2, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    const/4 v15, 0x3
    invoke-virtual {v2, v15, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :label_0c0a
    move-object/from16 v29, v2
    goto :label_0c17
    :label_0c0d
    move-exception v0
    move-object/from16 v29, v2
    goto/16 :label_0a36
    :label_0c12
    move-exception v0
    move-object/from16 v29, v2
    goto/16 :label_0a3d
    :label_0c17
    if-nez v4, :label_0c54
    :label_0c19
    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_0c54
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getForumTypeFlags(J)I
    move-result v2
    invoke-static {v0, v11, v2}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;I)J
    move-result-wide v13
    invoke-static {v6, v7, v13, v14}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v0
    move-object/from16 v2, v31
    if-nez v2, :label_0c33
    const/4 v13, 0x0
    goto :label_0c39
    :label_0c33
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;
    :label_0c39
    if-eqz v13, :label_0c41
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-ge v13, v14, :label_0c4d
    :label_0c41
    if-nez v2, :label_0c4a
    new-instance v31, Ljava/util/HashMap;
    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V
    move-object/from16 v2, v31
    :label_0c4a
    invoke-virtual {v2, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_0c4d
    move/from16 v13, v57
    move-object/from16 v31, v2
    move/from16 v0, v24
    goto :label_0c57
    :label_0c54
    move-object/from16 v2, v31
    goto :label_0c4d
    :label_0c57
    add-int/lit8 v2, v40, 0x1
    move-object/from16 v11, v50
    move-object v12, v3
    move-object/from16 v24, v5
    move-object v3, v8
    move-object/from16 v25, v10
    move-object/from16 v23, v44
    const/4 v14, 0x0
    const/4 v15, 0x1
    move v5, v2
    move v10, v4
    move-wide v7, v6
    move-object v4, v9
    move-object/from16 v2, v18
    move/from16 v6, v41
    move-wide/from16 v17, v45
    move-object/from16 v9, v51
    goto/16 :label_03f9
    :label_0c73
    move-exception v0
    move-object/from16 v8, v57
    move-object/from16 v3, v22
    goto/16 :label_0a36
    :label_0c7a
    move-exception v0
    move-object/from16 v8, v57
    move-object/from16 v3, v22
    goto/16 :label_0a3d
    :label_0c81
    move-exception v0
    move-object v8, v3
    move-object v3, v12
    goto/16 :label_0a36
    :label_0c86
    move-exception v0
    move-object v8, v3
    move-object v3, v12
    goto/16 :label_0a3d
    :label_0c8b
    move/from16 v43, v0
    move-object/from16 v18, v2
    move-wide v6, v7
    move-object v0, v11
    move v14, v13
    move-object/from16 v44, v23
    move-object/from16 v5, v24
    move-object/from16 v10, v25
    move-object/from16 v2, v31
    move-object v8, v3
    move-object v3, v12
    :label_0c9c
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0c9f
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ca2
    if-eqz v3, :label_0cbd
    :label_0ca4
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ca7
    const/4 v12, 0x0
    goto :label_0cbe
    :label_0ca9
    move-exception v0
    move-object/from16 v16, v3
    const/4 v6, 0x0
    :label_0cad
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v28, 0x0
    goto/16 :label_0ef7
    :label_0cb3
    move-exception v0
    move-object/from16 v16, v3
    const/4 v6, 0x0
    :label_0cb7
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v28, 0x0
    goto/16 :label_0ebe
    :label_0cbd
    move-object v12, v3
    :label_0cbe
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0cc1
    if-eqz v29, :label_0cd5
    :label_0cc3
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    const/16 v29, 0x0
    goto :label_0cd5
    :label_0cc9
    move-exception v0
    move-object/from16 v16, v12
    const/4 v6, 0x0
    const/4 v8, 0x0
    goto :label_0cad
    :label_0ccf
    move-exception v0
    move-object/from16 v16, v12
    const/4 v6, 0x0
    const/4 v8, 0x0
    goto :label_0cb7
    :label_0cd5
    if-eqz v30, :label_0ce6
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    move-wide/from16 v8, v19
    const/4 v4, 0x0
    invoke-virtual {v3, v14, v8, v9, v4}, Lorg/telegram/messenger/MessagesController;->didAddedNewTask(IJLandroid/util/SparseArray;)V
    const/16 v30, 0x0
    :label_0ce6
    if-eqz v32, :label_0ced
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    const/16 v32, 0x0
    :label_0ced
    if-eqz v2, :label_0d11
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :label_0cf7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :label_0d11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v8
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8, v4, v9}, Lorg/telegram/messenger/MediaDataController;->putBotKeyboard(Lorg/telegram/messenger/MessagesStorage$TopicKey;Lorg/telegram/tgnet/TLRPC$Message;)V
    :label_0d10
    goto :label_0cf7
    :label_0d11
    move-object v4, v10
    const/4 v10, 0x0
    :label_0d13
    invoke-direct {v1, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->deleteFromDownloadQueue(Ljava/util/ArrayList;Z)V
    new-instance v2, Lorg/telegram/messenger/cf;
    const/16 v3, 0x12
    invoke-direct {v2, v3, v5, v1}, Lorg/telegram/messenger/cf;-><init>(ILjava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v2
    move-object/from16 v3, v44
    invoke-virtual {v2, v3, v10}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V
    move-object/from16 v9, v51
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;
    invoke-direct {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/List;)V
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;
    invoke-direct {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/List;)V
    :label_0d35
    const-string v2, " WHERE did = "
    move/from16 v15, v43
    const v3, 0x7fffffff
    if-eq v15, v3, :label_0d90
    :label_0d3e
    iget-object v3, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "UPDATE dialogs SET unread_count_i = "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    new-instance v3, Lorg/telegram/messenger/support/LongSparseIntArray;
    const/4 v14, 0x1
    invoke-direct {v3, v14}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>(I)V
    invoke-virtual {v3, v6, v7, v15}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    :label_0d71
    const/4 v9, 0x0
    :label_0d72
    invoke-virtual {v4, v9, v3}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    goto :label_0d92
    :label_0d76
    move-exception v0
    :label_0d77
    move-object v6, v9
    move-object v8, v6
    move-object v11, v8
    :label_0d7a
    move-object/from16 v28, v11
    move-object/from16 v16, v12
    goto/16 :label_0ef7
    :label_0d80
    move-exception v0
    :label_0d81
    move-object v6, v9
    move-object v8, v6
    move-object v11, v8
    :label_0d84
    move-object/from16 v28, v11
    move-object/from16 v16, v12
    goto/16 :label_0ebe
    :label_0d8a
    move-exception v0
    const/4 v9, 0x0
    goto :label_0d77
    :label_0d8d
    move-exception v0
    const/4 v9, 0x0
    goto :label_0d81
    :label_0d90
    const/4 v9, 0x0
    const/4 v14, 0x1
    :label_0d92
    if-eqz v0, :label_0ddb
    iget-object v3, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    move-object/from16 v4, v36
    if-nez v4, :label_0d9f
    const-string v4, "NULL"
    goto :label_0db0
    :label_0d9f
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v4, ""
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    :label_0db0
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "UPDATE dialogs SET last_mid_group = "
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, " AND last_mid <= "
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto :label_0ddc
    :label_0ddb
    move v14, v10
    :label_0ddc
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    if-nez v58, :label_0de9
    if-eqz v14, :label_0de6
    goto :label_0de9
    :label_0de6
    move-object/from16 v0, v35
    goto :label_0df7
    :label_0de9
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    const/4 v7, 0x0
    move-wide/from16 v2, v52
    move-wide/from16 v4, v33
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    goto :label_0de6
    :label_0df7
    if-eqz v0, :label_0e03
    new-instance v2, Lorg/telegram/messenger/cf;
    const/16 v3, 0x13
    invoke-direct {v2, v3, v0, v1}, Lorg/telegram/messenger/cf;-><init>(ILjava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0e03
    move-object/from16 v11, v18
    invoke-direct {v1, v11}, Lorg/telegram/messenger/MessagesStorage;->onReactionsUpdate(Ljava/util/ArrayList;)V
    :label_0e08
    move-object v11, v12
    move-object/from16 v16, v32
    :label_0e0b
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v0, :label_0e12
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0e12
    if-eqz v11, :label_0e17
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0e17
    if-eqz v16, :label_0e1c
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0e1c
    if-eqz v29, :label_0e21
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0e21
    if-eqz v30, :label_0ef5
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    goto/16 :label_0ef5
    :label_0e28
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v11, v6
    goto/16 :label_0d7a
    :label_0e2e
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v11, v6
    goto/16 :label_0d84
    :label_0e34
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v16, v3
    move-object v6, v9
    move-object/from16 v28, v6
    :label_0e3b
    move-object/from16 v11, v27
    goto/16 :label_0ef7
    :label_0e3f
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v16, v3
    move-object v6, v9
    move-object/from16 v28, v6
    :label_0e46
    move-object/from16 v11, v27
    goto/16 :label_0ebe
    :label_0e4a
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v16, v3
    move-object v6, v9
    goto :label_0e3b
    :label_0e50
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v16, v3
    move-object v6, v9
    goto :label_0e46
    :label_0e56
    move-exception v0
    move-object v8, v3
    const/4 v9, 0x0
    move-object v6, v9
    move-object/from16 v16, v6
    :label_0e5c
    move-object/from16 v29, v16
    :label_0e5e
    move-object/from16 v30, v29
    move-object/from16 v32, v30
    goto :label_0e3b
    :label_0e63
    move-exception v0
    move-object v8, v3
    const/4 v9, 0x0
    move-object v6, v9
    move-object/from16 v16, v6
    :label_0e69
    move-object/from16 v29, v16
    :label_0e6b
    move-object/from16 v30, v29
    move-object/from16 v32, v30
    goto :label_0e46
    :label_0e70
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v8, v6
    move-object/from16 v16, v8
    goto :label_0e5c
    :label_0e77
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v8, v6
    move-object/from16 v16, v8
    goto :label_0e69
    :label_0e7e
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v8, v6
    move-object/from16 v16, v8
    move-object/from16 v28, v16
    move-object/from16 v29, v28
    goto :label_0e5e
    :label_0e89
    move-exception v0
    const/4 v9, 0x0
    move-object v6, v9
    move-object v8, v6
    move-object/from16 v16, v8
    move-object/from16 v28, v16
    move-object/from16 v29, v28
    goto :label_0e6b
    :label_0e94
    move-exception v0
    const/4 v9, 0x0
    :label_0e96
    move-object v6, v9
    move-object v8, v6
    move-object v11, v8
    move-object/from16 v16, v11
    move-object/from16 v28, v16
    move-object/from16 v29, v28
    move-object/from16 v30, v29
    move-object/from16 v32, v30
    goto :label_0ef7
    :label_0ea4
    move-exception v0
    const/4 v9, 0x0
    :label_0ea6
    move-object v6, v9
    move-object v8, v6
    move-object v11, v8
    move-object/from16 v16, v11
    move-object/from16 v28, v16
    move-object/from16 v29, v28
    move-object/from16 v30, v29
    move-object/from16 v32, v30
    goto :label_0ebe
    :label_0eb4
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v1, v49
    goto :label_0e96
    :label_0eb9
    move-exception v0
    const/4 v9, 0x0
    move-object/from16 v1, v49
    goto :label_0ea6
    :label_0ebe
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :label_0ec1
    iget-object v0, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v0, :label_0ec8
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0ec8
    if-eqz v11, :label_0ecd
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ecd
    if-eqz v16, :label_0ed2
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ed2
    if-eqz v28, :label_0ed7
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ed7
    if-eqz v8, :label_0edc
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0edc
    if-eqz v32, :label_0ee1
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ee1
    if-eqz v29, :label_0ee6
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ee6
    if-eqz v30, :label_0eeb
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0eeb
    if-eqz v9, :label_0ef0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0ef0
    if-eqz v6, :label_0ef5
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0ef5
    return-void
    :label_0ef6
    move-exception v0
    :label_0ef7
    iget-object v2, v1, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    if-eqz v2, :label_0efe
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :label_0efe
    if-eqz v11, :label_0f03
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f03
    if-eqz v16, :label_0f08
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f08
    if-eqz v28, :label_0f0d
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f0d
    if-eqz v8, :label_0f12
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f12
    if-eqz v32, :label_0f17
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f17
    if-eqz v29, :label_0f1c
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f1c
    if-eqz v30, :label_0f21
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f21
    if-eqz v9, :label_0f26
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :label_0f26
    if-eqz v6, :label_0f2b
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :label_0f2b
    throw v0
    .catch Ljava/lang/Exception; {:label_000c .. :label_0014} :label_0ea4
    .catchall {:label_000c .. :label_0014} :label_0e94
    .catch Ljava/lang/Exception; {:label_002c .. :label_0034} :label_0100
    .catchall {:label_002c .. :label_0034} :label_00f6
    .catch Ljava/lang/Exception; {:label_0034 .. :label_00de} :label_008e
    .catchall {:label_0034 .. :label_00de} :label_007d
    .catch Ljava/lang/Exception; {:label_00de .. :label_0114} :label_0100
    .catchall {:label_00de .. :label_0114} :label_00f6
    .catch Ljava/lang/Exception; {:label_0114 .. :label_019b} :label_008e
    .catchall {:label_0114 .. :label_019b} :label_007d
    .catch Ljava/lang/Exception; {:label_019b .. :label_01d6} :label_0100
    .catchall {:label_019b .. :label_01d6} :label_00f6
    .catch Ljava/lang/Exception; {:label_01d6 .. :label_0233} :label_022b
    .catchall {:label_01d6 .. :label_0233} :label_0226
    .catch Ljava/lang/Exception; {:label_0233 .. :label_0252} :label_0100
    .catchall {:label_0233 .. :label_0252} :label_00f6
    .catch Ljava/lang/Exception; {:label_0253 .. :label_025b} :label_0ea4
    .catchall {:label_0253 .. :label_025b} :label_0e94
    .catch Ljava/lang/Exception; {:label_0265 .. :label_0274} :label_0100
    .catchall {:label_0265 .. :label_0274} :label_00f6
    .catch Ljava/lang/Exception; {:label_027d .. :label_0282} :label_0ea4
    .catchall {:label_027d .. :label_0282} :label_0e94
    .catch Ljava/lang/Exception; {:label_0287 .. :label_02fd} :label_02c6
    .catchall {:label_0287 .. :label_02fd} :label_02b3
    .catch Ljava/lang/Exception; {:label_030c .. :label_0326} :label_0eb9
    .catchall {:label_030c .. :label_0326} :label_0eb4
    .catch Ljava/lang/Exception; {:label_032d .. :label_0352} :label_0ea4
    .catchall {:label_032d .. :label_0352} :label_0e94
    .catch Ljava/lang/Exception; {:label_0356 .. :label_035b} :label_0100
    .catchall {:label_0356 .. :label_035b} :label_00f6
    .catch Ljava/lang/Exception; {:label_035e .. :label_0366} :label_0ea4
    .catchall {:label_035e .. :label_0366} :label_0e94
    .catch Ljava/lang/Exception; {:label_0366 .. :label_036e} :label_0e89
    .catchall {:label_0366 .. :label_036e} :label_0e7e
    .catch Ljava/lang/Exception; {:label_036e .. :label_0376} :label_0e77
    .catchall {:label_036e .. :label_0376} :label_0e70
    .catch Ljava/lang/Exception; {:label_0376 .. :label_037e} :label_0e63
    .catchall {:label_0376 .. :label_037e} :label_0e56
    .catch Ljava/lang/Exception; {:label_0382 .. :label_03e0} :label_03a7
    .catchall {:label_0382 .. :label_03e0} :label_039f
    .catch Ljava/lang/Exception; {:label_03fb .. :label_0403} :label_0c86
    .catchall {:label_03fb .. :label_0403} :label_0c81
    .catch Ljava/lang/Exception; {:label_040f .. :label_0421} :label_0450
    .catchall {:label_040f .. :label_0421} :label_044c
    .catch Ljava/lang/Exception; {:label_0428 .. :label_0462} :label_043a
    .catchall {:label_0428 .. :label_0462} :label_042f
    .catch Ljava/lang/Exception; {:label_0469 .. :label_0477} :label_0732
    .catchall {:label_0469 .. :label_0477} :label_0730
    .catch Ljava/lang/Exception; {:label_0477 .. :label_0490} :label_072c
    .catchall {:label_0477 .. :label_0490} :label_0728
    .catch Ljava/lang/Exception; {:label_0491 .. :label_0497} :label_071d
    .catchall {:label_0491 .. :label_0497} :label_0712
    .catch Ljava/lang/Exception; {:label_0497 .. :label_04a2} :label_06d5
    .catchall {:label_0497 .. :label_04a2} :label_06ce
    .catch Ljava/lang/Exception; {:label_04a4 .. :label_04b8} :label_062a
    .catchall {:label_04a4 .. :label_04b8} :label_0621
    .catch Ljava/lang/Exception; {:label_04bb .. :label_04d2} :label_04df
    .catchall {:label_04bb .. :label_04d2} :label_04d4
    .catch Ljava/lang/Exception; {:label_04f7 .. :label_04fb} :label_062a
    .catchall {:label_04f7 .. :label_04fb} :label_0621
    .catch Ljava/lang/Exception; {:label_04fe .. :label_0517} :label_04df
    .catchall {:label_04fe .. :label_0517} :label_04d4
    .catch Ljava/lang/Exception; {:label_0517 .. :label_051b} :label_062a
    .catchall {:label_0517 .. :label_051b} :label_0621
    .catch Ljava/lang/Exception; {:label_051d .. :label_0533} :label_04df
    .catchall {:label_051d .. :label_0533} :label_04d4
    .catch Ljava/lang/Exception; {:label_053f .. :label_0541} :label_062a
    .catchall {:label_053f .. :label_0541} :label_0621
    .catch Ljava/lang/Exception; {:label_0543 .. :label_054f} :label_057e
    .catchall {:label_0543 .. :label_054f} :label_057a
    .catch Ljava/lang/Exception; {:label_0552 .. :label_0554} :label_0575
    .catchall {:label_0552 .. :label_0554} :label_0572
    .catch Ljava/lang/Exception; {:label_0555 .. :label_0557} :label_0568
    .catchall {:label_0555 .. :label_0557} :label_055e
    .catch Ljava/lang/Exception; {:label_0582 .. :label_0586} :label_061a
    .catchall {:label_0582 .. :label_0586} :label_0613
    .catch Ljava/lang/Exception; {:label_0588 .. :label_059a} :label_0568
    .catchall {:label_0588 .. :label_059a} :label_055e
    .catch Ljava/lang/Exception; {:label_059f .. :label_05a3} :label_061a
    .catchall {:label_059f .. :label_05a3} :label_0613
    .catch Ljava/lang/Exception; {:label_05a5 .. :label_05b7} :label_0568
    .catchall {:label_05a5 .. :label_05b7} :label_055e
    .catch Ljava/lang/Exception; {:label_05bd .. :label_05bf} :label_061a
    .catchall {:label_05bd .. :label_05bf} :label_0613
    .catch Ljava/lang/Exception; {:label_05c1 .. :label_05c7} :label_0568
    .catchall {:label_05c1 .. :label_05c7} :label_055e
    .catch Ljava/lang/Exception; {:label_05dd .. :label_0611} :label_05ea
    .catchall {:label_05dd .. :label_0611} :label_05e2
    .catch Ljava/lang/Exception; {:label_064d .. :label_066e} :label_06ac
    .catchall {:label_064d .. :label_066e} :label_06a8
    .catch Ljava/lang/Exception; {:label_0670 .. :label_06fb} :label_0699
    .catchall {:label_0670 .. :label_06fb} :label_0690
    .catch Ljava/lang/Exception; {:label_0756 .. :label_0770} :label_07fc
    .catchall {:label_0756 .. :label_0770} :label_07f9
    .catch Ljava/lang/Exception; {:label_0770 .. :label_0799} :label_078e
    .catchall {:label_0770 .. :label_0799} :label_078b
    .catch Ljava/lang/Exception; {:label_079b .. :label_07a3} :label_07fc
    .catchall {:label_079b .. :label_07a3} :label_07f9
    .catch Ljava/lang/Exception; {:label_07a3 .. :label_07f5} :label_07c7
    .catchall {:label_07a3 .. :label_07f5} :label_07bc
    .catch Ljava/lang/Exception; {:label_0800 .. :label_0808} :label_07fc
    .catchall {:label_0800 .. :label_0808} :label_07f9
    .catch Ljava/lang/Exception; {:label_0809 .. :label_0897} :label_0877
    .catchall {:label_0809 .. :label_0897} :label_086c
    .catch Ljava/lang/Exception; {:label_0898 .. :label_089e} :label_07c7
    .catchall {:label_0898 .. :label_089e} :label_07bc
    .catch Ljava/lang/Exception; {:label_08a4 .. :label_08b6} :label_0c7a
    .catchall {:label_08a4 .. :label_08b6} :label_0c73
    .catch Ljava/lang/Exception; {:label_08c4 .. :label_08f8} :label_07fc
    .catchall {:label_08c4 .. :label_08f8} :label_07f9
    .catch Ljava/lang/Exception; {:label_0903 .. :label_0912} :label_0a60
    .catchall {:label_0903 .. :label_0912} :label_0a5c
    .catch Ljava/lang/Exception; {:label_0915 .. :label_0918} :label_07fc
    .catchall {:label_0915 .. :label_0918} :label_07f9
    .catch Ljava/lang/Exception; {:label_091d .. :label_093d} :label_0a60
    .catchall {:label_091d .. :label_093d} :label_0a5c
    .catch Ljava/lang/Exception; {:label_093f .. :label_0941} :label_07fc
    .catchall {:label_093f .. :label_0941} :label_07f9
    .catch Ljava/lang/Exception; {:label_0947 .. :label_0953} :label_0a60
    .catchall {:label_0947 .. :label_0953} :label_0a5c
    .catch Ljava/lang/Exception; {:label_0959 .. :label_095e} :label_07fc
    .catchall {:label_0959 .. :label_095e} :label_07f9
    .catch Ljava/lang/Exception; {:label_0961 .. :label_096a} :label_0a60
    .catchall {:label_0961 .. :label_096a} :label_0a5c
    .catch Ljava/lang/Exception; {:label_096c .. :label_0981} :label_07fc
    .catchall {:label_096c .. :label_0981} :label_07f9
    .catch Ljava/lang/Exception; {:label_0984 .. :label_09ab} :label_0a60
    .catchall {:label_0984 .. :label_09ab} :label_0a5c
    .catch Ljava/lang/Exception; {:label_09ad .. :label_09c2} :label_07fc
    .catchall {:label_09ad .. :label_09c2} :label_07f9
    .catch Ljava/lang/Exception; {:label_09c5 .. :label_09cb} :label_0a60
    .catchall {:label_09c5 .. :label_09cb} :label_0a5c
    .catch Ljava/lang/Exception; {:label_09d1 .. :label_09db} :label_07fc
    .catchall {:label_09d1 .. :label_09db} :label_07f9
    .catch Ljava/lang/Exception; {:label_09e1 .. :label_09f4} :label_0a60
    .catchall {:label_09e1 .. :label_09f4} :label_0a5c
    .catch Ljava/lang/Exception; {:label_09f8 .. :label_09fb} :label_07fc
    .catchall {:label_09f8 .. :label_09fb} :label_07f9
    .catch Ljava/lang/Exception; {:label_09fe .. :label_0a01} :label_0a60
    .catchall {:label_09fe .. :label_0a01} :label_0a5c
    .catch Ljava/lang/Exception; {:label_0a03 .. :label_0a17} :label_07fc
    .catchall {:label_0a03 .. :label_0a17} :label_07f9
    .catch Ljava/lang/Exception; {:label_0a18 .. :label_0a1a} :label_0a60
    .catchall {:label_0a18 .. :label_0a1a} :label_0a5c
    .catch Ljava/lang/Exception; {:label_0a1c .. :label_0a21} :label_07fc
    .catchall {:label_0a1c .. :label_0a21} :label_07f9
    .catch Ljava/lang/Exception; {:label_0a23 .. :label_0a29} :label_0a60
    .catchall {:label_0a23 .. :label_0a29} :label_0a5c
    .catch Ljava/lang/Exception; {:label_0a2f .. :label_0a80} :label_0a3a
    .catchall {:label_0a2f .. :label_0a80} :label_0a33
    .catch Ljava/lang/Exception; {:label_0a83 .. :label_0aae} :label_0aa2
    .catchall {:label_0a83 .. :label_0aae} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0ab0 .. :label_0af6} :label_0af7
    .catchall {:label_0ab0 .. :label_0af6} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0af8 .. :label_0b5d} :label_0aa2
    .catchall {:label_0af8 .. :label_0b5d} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0b5f .. :label_0b8a} :label_0b93
    .catchall {:label_0b5f .. :label_0b8a} :label_0b8e
    .catch Ljava/lang/Exception; {:label_0b9b .. :label_0bab} :label_0aa2
    .catchall {:label_0b9b .. :label_0bab} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0bad .. :label_0bcd} :label_0bd7
    .catchall {:label_0bad .. :label_0bcd} :label_0bd2
    .catch Ljava/lang/Exception; {:label_0bde .. :label_0bec} :label_0aa2
    .catchall {:label_0bde .. :label_0bec} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0bee .. :label_0c0a} :label_0c12
    .catchall {:label_0bee .. :label_0c0a} :label_0c0d
    .catch Ljava/lang/Exception; {:label_0c19 .. :label_0c4d} :label_0aa2
    .catchall {:label_0c19 .. :label_0c4d} :label_0aa0
    .catch Ljava/lang/Exception; {:label_0c9c .. :label_0c9f} :label_0e50
    .catchall {:label_0c9c .. :label_0c9f} :label_0e4a
    .catch Ljava/lang/Exception; {:label_0c9f .. :label_0ca2} :label_0e3f
    .catchall {:label_0c9f .. :label_0ca2} :label_0e34
    .catch Ljava/lang/Exception; {:label_0ca4 .. :label_0ca7} :label_0cb3
    .catchall {:label_0ca4 .. :label_0ca7} :label_0ca9
    .catch Ljava/lang/Exception; {:label_0cbe .. :label_0cc1} :label_0e2e
    .catchall {:label_0cbe .. :label_0cc1} :label_0e28
    .catch Ljava/lang/Exception; {:label_0cc3 .. :label_0d10} :label_0ccf
    .catchall {:label_0cc3 .. :label_0d10} :label_0cc9
    .catch Ljava/lang/Exception; {:label_0d13 .. :label_0d35} :label_0d8d
    .catchall {:label_0d13 .. :label_0d35} :label_0d8a
    .catch Ljava/lang/Exception; {:label_0d3e .. :label_0d71} :label_0d8d
    .catchall {:label_0d3e .. :label_0d71} :label_0d8a
    .catch Ljava/lang/Exception; {:label_0d72 .. :label_0e08} :label_0d80
    .catchall {:label_0d72 .. :label_0e08} :label_0d76
    .catchall {:label_0ebe .. :label_0ec1} :label_0ef6
.end method
