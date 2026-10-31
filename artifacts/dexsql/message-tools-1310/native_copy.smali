# file_id=0 method_idx=45671 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;JJJLorg/telegram/messenger/MessageSuggestionParams;)V"
.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;JJJLorg/telegram/messenger/MessageSuggestionParams;)V
    .registers 36

    move-object/from16 v15, v28
    if-nez v15, :label_0006
    goto/16 :label_021b
    :label_0006
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const/4 v3, 0x0
    if-eqz v2, :label_0178
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;
    if-nez v4, :label_0178
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-nez v4, :label_0178
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;
    if-nez v4, :label_0178
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    if-nez v4, :label_0178
    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v1
    if-eqz v1, :label_007f
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_007f
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v2, :label_0037
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_document;
    if-eqz v1, :label_007f
    :label_0037
    new-instance v3, Ljava/util/HashMap;
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "sent_"
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, "_"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v4
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, v15, Lorg/telegram/messenger/MessageObject;->type:I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getSize()J
    move-result-wide v4
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v2, "parentObject"
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_007f
    move-object v10, v3
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-eqz v3, :label_00b5
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photo;
    iget-object v5, v15, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I
    const/16 v16, 0x0
    move-object v1, v2
    const/4 v2, 0x0
    const/4 v6, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x1
    const/4 v12, 0x0
    const/4 v13, 0x0
    move-wide/from16 v3, v29
    move-object/from16 v0, v35
    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    move-wide/from16 v2, v31
    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J
    move-wide/from16 v4, v33
    iput-wide v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    move-object/from16 v6, v27
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_00b5
    move-object/from16 v6, v27
    move-wide/from16 v2, v31
    move-wide/from16 v4, v33
    move-object/from16 v0, v35
    iget-object v7, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_document;
    if-eqz v8, :label_00f3
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    iget-object v6, v15, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I
    const/16 v17, 0x0
    const/16 v18, 0x0
    const/4 v2, 0x0
    move-object v1, v7
    const/4 v7, 0x0
    move-object v11, v10
    const/4 v10, 0x0
    const/4 v12, 0x1
    const/4 v13, 0x0
    const/4 v14, 0x0
    move-object/from16 v16, v28
    move-wide/from16 v4, v29
    invoke-static/range {v1 .. v18}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    move-wide/from16 v2, v31
    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J
    move-wide/from16 v4, v33
    iput-wide v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    move-object/from16 v6, v27
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_00f3
    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    if-nez v1, :label_00fb
    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    if-eqz v1, :label_0100
    :label_00fb
    move-object v8, v0
    move-object v0, v6
    move-wide v6, v4
    move-wide v4, v2
    goto :label_015b
    :label_0100
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    if-eqz v1, :label_013b
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;
    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    iput-object v7, v12, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;
    iput-object v7, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;
    iput-object v7, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J
    iput-wide v7, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v16, 0x0
    const/16 v17, 0x0
    const/16 v18, 0x0
    const/16 v19, 0x1
    move-wide/from16 v13, v29
    invoke-static/range {v12 .. v21}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZII)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    iput-wide v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_013b
    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v1
    if-nez v1, :label_0158
    invoke-static {v15}, Lorg/telegram/messenger/h4;->m(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    move-result-object v1
    const/4 v9, 0x0
    const/4 v10, -0x1
    const/4 v4, 0x1
    const/4 v5, 0x0
    const/4 v6, 0x1
    const/4 v7, 0x0
    const/4 v8, 0x0
    move-wide/from16 v13, v33
    move-object v15, v0
    move-wide v11, v2
    move-object/from16 v0, v27
    move-wide/from16 v2, v29
    invoke-virtual/range {v0 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I
    return-void
    :label_0158
    move-object v0, v6
    goto/16 :label_021b
    :label_015b
    iget-object v14, v15, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/16 v19, 0x0
    const/16 v20, 0x0
    const/4 v15, 0x0
    const/16 v16, 0x0
    const/16 v17, 0x0
    const/16 v18, 0x1
    move-wide/from16 v12, v29
    invoke-static/range {v11 .. v20}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZII)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    iput-wide v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J
    iput-wide v6, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    iput-object v8, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_0178
    move-object/from16 v0, v27
    move-wide/from16 v4, v31
    move-wide/from16 v6, v33
    move-object/from16 v8, v35
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    if-eqz v9, :label_01ff
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-eqz v9, :label_018d
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v17, v2
    goto :label_018f
    :label_018d
    move-object/from16 v17, v3
    :label_018f
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    if-eqz v1, :label_01d5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :label_01d5
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0x0
    :label_019f
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :label_01d5
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;
    if-nez v9, :label_01cf
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;
    if-eqz v9, :label_01d2
    :label_01cf
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_01d2
    add-int/lit8 v1, v1, 0x1
    goto :label_019f
    :label_01d5
    move-object/from16 v19, v3
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x0
    const/16 v26, 0x0
    const/16 v16, 0x0
    const/16 v18, 0x1
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x1
    const/16 v23, 0x0
    const/16 v24, 0x0
    move-wide/from16 v13, v29
    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    iput-wide v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J
    iput-wide v6, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    iput-object v8, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_01ff
    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v1
    if-eqz v1, :label_021b
    invoke-static {v15}, Lorg/telegram/messenger/h4;->m(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    move-result-object v1
    const/4 v9, 0x0
    const/4 v10, -0x1
    const/4 v4, 0x1
    const/4 v5, 0x0
    const/4 v6, 0x1
    const/4 v7, 0x0
    const/4 v8, 0x0
    move-wide/from16 v2, v29
    move-wide/from16 v11, v31
    move-wide/from16 v13, v33
    move-object/from16 v15, v35
    invoke-virtual/range {v0 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I
    :label_021b
    return-void
.end method
