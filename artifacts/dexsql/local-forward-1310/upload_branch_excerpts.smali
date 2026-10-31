# Non-contiguous excerpts of sendMessage(SendMessageParams); original decoded line numbers follow.
# file_id=0 method_idx=45704 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V"
.method public sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
# ... omitted; decoded line 3148
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v10, " chat_id = "
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v10, " channel_id = "
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v10, " access_hash = "
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v10, " notify = "
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v10, v27
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v10, " silent = "
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v10, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;
    move-result-object v10
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    move-object/from16 v18, v6
    move-object/from16 v6, v38
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    :label_13ef
    const/4 v11, 0x0
    :label_13f0
    invoke-interface {v10, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v6
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
# ... omitted; decoded line 3560
    move-result-object v8
    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v8
    if-eqz v8, :label_1639
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V
    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-wide/from16 v68, v11
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J
    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J
    goto :label_164c
    :label_1639
    move-wide/from16 v68, v11
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :label_164c
    :label_1643
    move-wide/from16 v68, v11
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :label_164c
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1651
    goto :label_165b
    :label_1652
    move-wide/from16 v68, v11
    :label_1654
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :label_165b
    iget-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z
    :label_165f
# ... omitted; decoded line 3867
    move-object/from16 v6, v39
    move-object/from16 v13, v53
    move/from16 v12, v70
    move-object v9, v5
    move/from16 v5, v16
    goto/16 :label_1c41
    :label_17e7
    const-string/jumbo v10, "query"
    move-wide/from16 v68, v11
    const/4 v11, 0x3
    if-ne v6, v11, :label_1974
    :label_17ef
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V
    move-object/from16 v11, v46
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;
    move/from16 v12, v70
    iput-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    move-object/from16 v36, v9
    iget-boolean v9, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->isLivePhoto:Z
    :label_1806
    if-eqz v9, :label_182f
    const/4 v9, 0x1
    :label_1809
    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->live_photo:Z
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    or-int/lit16 v9, v9, 0x80
    iput v9, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :label_1811
    move-object/from16 v85, v5
    move/from16 v75, v6
    :label_1815
    iget-wide v5, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->livePhotoTimestamp:J
    long-to-double v5, v5
    const-wide v37, 0x408f400000000000L
    div-double v5, v5, v37
    double-to-int v5, v5
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->video_timestamp:I
# ... omitted; decoded line 3977
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v9, v17, 0x1
    move/from16 v6, v16
    const/4 v2, 0x0
    goto :label_187a
    :label_1893
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v55, 0x1
    or-int/lit8 v2, v2, 0x1
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    invoke-virtual {v5}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :label_189e
    iget-wide v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    const-wide/16 v50, 0x0
    cmp-long v2, v5, v50
    if-nez v2, :label_18ac
    move-object v10, v3
    move-object v6, v13
    move-object/from16 v87, v14
    const/4 v5, 0x1
    goto :label_18f4
    :label_18ac
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;
    :label_18b8
    move-object v6, v13
    move-object/from16 v87, v14
    :label_18bb
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    :label_18c7
    if-nez v9, :label_18d8
    const/4 v13, 0x0
    :label_18ca
    new-array v9, v13, [B
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    goto :label_18d8
    :label_18cf
    move-exception v0
    move/from16 v28, v22
    move-object/from16 v3, v85
    :label_18d4
    move-object/from16 v11, v87
    goto/16 :label_02b8
    :label_18d8
    if-eqz v4, :label_18f0
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :label_18f0
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
# ... omitted; decoded line 4188
    if-eq v14, v2, :label_19d6
    const/16 v2, 0x9
    if-ne v14, v2, :label_19de
    :label_19d6
    move-object/from16 v53, v13
    move-object/from16 v6, v39
    move-object/from16 v3, v87
    goto/16 :label_1b46
    :label_19de
    const/16 v2, 0x8
    if-ne v14, v2, :label_1a7f
    :label_19e2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;
    iput-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    if-eqz v5, :label_1a0d
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    :label_19f5
    move-object/from16 v3, v87
    :label_19f7
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
    or-int/lit8 v5, v5, 0x2
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    goto :label_1a0f
    :label_1a02
    move-exception v0
    :label_1a03
    move-object v11, v3
    move-object v3, v9
    :label_1a05
    move/from16 v28, v22
    goto/16 :label_02b8
    :label_1a09
    move-exception v0
    move-object/from16 v3, v87
    goto :label_1a03
    :label_1a0d
    move-object/from16 v3, v87
    :label_1a0f
    iget-wide v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    const-wide/16 v50, 0x0
    cmp-long v5, v5, v50
    if-nez v5, :label_1a1e
    move-object v10, v2
    move-object/from16 v53, v13
    move/from16 v75, v14
    const/4 v5, 0x1
    goto :label_1a5d
    :label_1a1e
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V
    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;
    move-object/from16 v53, v13
    move/from16 v75, v14
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v13, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v13, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B
    iput-object v11, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    if-nez v11, :label_1a41
    const/4 v11, 0x0
    new-array v13, v11, [B
    iput-object v13, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    :label_1a41
    if-eqz v4, :label_1a59
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :label_1a59
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/String;
    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
    or-int/lit8 v6, v6, 0x2
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :label_1a59
    iput-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    move-object v10, v5
    const/4 v5, 0x0
    :label_1a5d
    new-instance v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-direct {v6, v1, v7, v8}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V
    const/4 v7, 0x3
# ... omitted; decoded line 4409
    :label_1b3a
    move-object/from16 v57, v4
    move/from16 v75, v14
    move-object/from16 v7, v18
    move-object/from16 v13, v53
    const/4 v5, 0x0
    const/4 v10, 0x0
    goto/16 :label_1a9f
    :label_1b46
    if-nez v53, :label_1b57
    if-nez v24, :label_1b57
    move/from16 v75, v14
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    :label_1b4e
    const-wide/16 v50, 0x0
    cmp-long v2, v13, v50
    if-nez v2, :label_1b55
    goto :label_1b59
    :label_1b55
    const/4 v2, 0x0
    goto :label_1ba4
    :label_1b57
    move/from16 v75, v14
    :label_1b59
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V
    iput-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :label_1b60
    if-eqz v5, :label_1b6e
    :label_1b62
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
    or-int/lit8 v5, v5, 0x2
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :label_1b6e
    const-string v5, "forceDocument"
    if-nez v41, :label_1b8c
    :label_1b72
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v13
    if-nez v13, :label_1b8f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v13
    const-string v14, "mp4"
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v13
    if-eqz v13, :label_1b8f
    if-eqz v4, :label_1b8c
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v13
    :label_1b8a
# ... omitted; decoded line 4473
    if-eqz v5, :label_1b99
    const/4 v5, 0x1
    goto :label_1b9a
    :label_1b99
    const/4 v5, 0x0
    :label_1b9a
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->force_file:Z
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;
    :label_1ba4
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    :label_1ba6
    const-wide/16 v50, 0x0
    cmp-long v5, v13, v50
    if-nez v5, :label_1bb5
    :label_1bac
    invoke-static {v2}, Lorg/telegram/messenger/h4;->v(Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;)Z
    move-result v5
    :label_1bb0
    move-object v10, v2
    move-object v14, v10
    move-object/from16 v87, v3
    goto :label_1bf3
    :label_1bb5
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V
    iput-object v13, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;
    :label_1bc1
    move-object v14, v2
    move-object/from16 v87, v3
    :label_1bc4
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v2, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v2, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B
    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    if-nez v2, :label_1bd7
    const/4 v2, 0x0
    new-array v3, v2, [B
    iput-object v3, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    :label_1bd7
    if-eqz v4, :label_1bef
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :label_1bef
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
    or-int/lit8 v2, v2, 0x2
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :label_1bef
    iput-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    move-object v10, v5
    const/4 v5, 0x0
    :label_1bf3
    if-eqz v14, :label_1c31
    if-nez v18, :label_1c0f
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
# ... omitted; decoded line 4576
    move-object/from16 v13, v53
    move-object/from16 v2, v18
    :label_1c35
    move-object v7, v2
    move-object/from16 v57, v4
    move-object/from16 v14, v87
    goto/16 :label_1a7c
    :label_1c3c
    move-exception v0
    move-object/from16 v87, v3
    goto/16 :label_1911
    :label_1c41
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V
    iput-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :label_1c48
    if-eqz v5, :label_1c62
    :label_1c4a
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    :label_1c4c
    move-object/from16 v14, v87
    :label_1c4e
    iput v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v20, 0x2
    or-int/lit8 v5, v5, 0x2
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    goto :label_1c64
    :label_1c59
    move-exception v0
    :label_1c5a
    move-object v3, v9
    move-object v11, v14
    goto/16 :label_1a05
    :label_1c5e
    move-exception v0
    move-object/from16 v14, v87
    goto :label_1c5a
    :label_1c62
    move-object/from16 v14, v87
    :label_1c64
# ... omitted; decoded line 4647
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    const/16 v55, 0x1
    or-int/lit8 v2, v2, 0x1
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    invoke-virtual {v5}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :label_1ca5
    move-object/from16 v4, v45
    goto :label_1cab
    :label_1ca8
    move-object/from16 v57, v4
    goto :label_1ca5
    :label_1cab
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J
    const-wide/16 v50, 0x0
    cmp-long v2, v10, v50
    if-nez v2, :label_1cb6
    move-object v10, v3
    const/4 v5, 0x1
    goto :label_1cd9
    :label_1cb6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Photo;->id:J
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B
    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B
    :label_1cce
    if-nez v10, :label_1cd5
    const/4 v11, 0x0
    :label_1cd1
    new-array v10, v11, [B
    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B
    :label_1cd5
    iput-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :label_1cd7
    move-object v10, v2
    const/4 v5, 0x0
    :label_1cd9
    if-nez v18, :label_1cef
    :label_1cdb
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-direct {v2, v1, v7, v8}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V
    const/4 v8, 0x0
    iput v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I
    iput-object v9, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;
    iput-object v13, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;
    if-eqz v22, :label_1ceb
    const/4 v7, 0x1
    goto :label_1cec
    :label_1ceb
    const/4 v7, 0x0
# ... omitted; decoded line 5963
    :label_249f
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->key:[B
    if-eqz v2, :label_24a5
    if-eqz v31, :label_24a8
    :label_24a5
    move-object/from16 v8, v69
    goto :label_24d7
    :label_24a8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->key:[B
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v66
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :label_24c5
    const/16 v71, 0x0
    move-object/from16 v70, v2
    move-object/from16 v72, v3
    move-object/from16 v68, v4
    move-object/from16 v67, v6
    :label_24cf
    invoke-virtual/range {v66 .. v72}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    :label_24d2
    move-object/from16 v13, v53
    move-wide/from16 v9, v81
    goto :label_251e
    :label_24d7
    if-nez v18, :label_250e
    :label_24d9
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-wide/from16 v9, v81
    invoke-direct {v2, v1, v9, v10}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V
    iput-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
# ... omitted; decoded line 6150
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;
    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J
    iput-object v13, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;
    invoke-direct {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    :label_25d7
    move-object v12, v3
    move-object/from16 v87, v14
    goto/16 :label_2862
    :label_25dc
    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    cmp-long v2, v7, v50
    if-eqz v2, :label_25f0
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v2
    if-nez v2, :label_25f6
    const/4 v7, 0x1
    invoke-static {v11, v7}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v2
    if-eqz v2, :label_25f0
    goto :label_25f6
    :label_25f0
    move-object/from16 v2, v18
    move-object/from16 v69, v75
    goto/16 :label_266c
    :label_25f6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V
    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->date:I
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-direct {v1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->copyAttributesForSecretChat(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    move-result-object v4
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    invoke-direct {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->getThumbForSecretChat(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    if-eqz v2, :label_262c
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :label_2642
    :label_262c
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;
# ... omitted; decoded line 6298
    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->key:[B
    if-eqz v2, :label_26d6
    if-eqz v31, :label_26d9
    :label_26d6
    move-object/from16 v8, v69
    goto :label_2705
    :label_26d9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->key:[B
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v66
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :label_26f6
    const/16 v71, 0x0
    move-object/from16 v70, v2
    move-object/from16 v72, v3
    move-object/from16 v68, v4
    move-object/from16 v67, v6
    :label_2700
    invoke-virtual/range {v66 .. v72}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    :label_2703
    goto/16 :label_251e
    :label_2705
    if-nez v18, :label_2734
    :label_2707
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-direct {v2, v1, v9, v10}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V
    iput-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/4 v7, 0x2
    iput v7, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I
    iput-object v6, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;
# ... omitted; decoded line 6451
    if-eqz v31, :label_27c3
    :label_27bf
    move-object v12, v3
    move-object/from16 v14, v75
    goto :label_27fd
    :label_27c3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J
    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J
    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v66
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :label_27e2
    const/16 v71, 0x0
    move-object/from16 v70, v2
    move-object/from16 v72, v3
    move-object/from16 v68, v4
    move-object/from16 v67, v6
    move-object/from16 v69, v75
    :label_27ee
    invoke-virtual/range {v66 .. v72}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    :label_27f1
    move-object/from16 v12, v72
    goto/16 :label_2521
    :label_27f5
    move-exception v0
    move-object/from16 v12, v72
    :label_27f8
    move-object v3, v12
    goto :label_2792
    :label_27fa
