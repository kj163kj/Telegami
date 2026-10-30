# file_id=2 method_idx=27293 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V"
.method public final x3(Lorg/telegram/messenger/MessageObject;)V
    .registers 29

    move-object/from16 v0, v27
    move-object/from16 v1, v28
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v3
    iget-boolean v5, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    const-string v6, " "
    iget v7, v0, Lorg/telegram/ui/Cells/u1;->H7:I
    const-string v8, ""
    const-wide/16 v10, 0x0
    if-eqz v5, :label_001b
    :label_0018
    const/4 v2, 0x0
    goto/16 :label_00d5
    :label_001b
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J
    cmp-long v5, v12, v10
    if-eqz v5, :label_003e
    iget v5, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-nez v2, :label_0038
    goto :label_0018
    :label_0038
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    goto/16 :label_00d5
    :label_003e
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    const-string v12, "\n"
    if-eqz v5, :label_0061
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->R7:Z
    if-eqz v2, :label_0057
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v13
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v15
    cmp-long v2, v13, v15
    if-nez v2, :label_0057
    goto :label_0018
    :label_0057
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    goto/16 :label_00d5
    :label_0061
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v5, :label_006e
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    if-eqz v13, :label_006e
    invoke-virtual {v13, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    goto :label_00d5
    :label_006e
    if-eqz v5, :label_00a7
    iget-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->imported:Z
    if-eqz v12, :label_00a7
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const-string v12, "ImportedMessage"
    if-ne v5, v2, :label_0083
    sget v2, Lorg/telegram/messenger/R$string;->ImportedMessage:I
    invoke-static {v12, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    goto :label_00d5
    :label_0083
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I
    int-to-long v13, v5
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatImportedDate(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Lorg/telegram/messenger/R$string;->ImportedMessage:I
    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    goto :label_00d5
    :label_00a7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_0018
    cmp-long v2, v3, v10
    if-lez v2, :label_0018
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    if-eqz v2, :label_0018
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_0018
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;
    invoke-static {v5, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v5, 0xa
    const/16 v12, 0x20
    invoke-virtual {v2, v5, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v2
    :label_00d5
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    cmp-long v5, v12, v10
    if-gez v5, :label_00fd
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    neg-long v12, v12
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v12
    invoke-virtual {v5, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v5
    if-eqz v5, :label_00fd
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z
    if-eqz v5, :label_00fd
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit16 v5, v5, 0x100
    if-eqz v5, :label_00fd
    const/4 v2, 0x0
    :label_00fd
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z
    move-result v5
    if-eqz v5, :label_0110
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    :label_0110
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v3
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    const/4 v5, 0x1
    const/4 v12, 0x0
    if-nez v4, :label_0120
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z
    if-eqz v4, :label_0124
    :label_0120
    move-wide/from16 v16, v10
    goto/16 :label_019e
    :label_0124
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    const v13, 0x8000
    if-eqz v4, :label_0137
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v4, :label_0137
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v4
    if-eqz v4, :label_013a
    :label_0137
    move-wide/from16 v16, v10
    goto :label_018a
    :label_013a
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/u1;->Zc:Z
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v3
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z
    if-nez v4, :label_0187
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    move v14, v12
    :label_0163
    if-ge v14, v4, :label_0187
    iget-object v15, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/messenger/MessageObject;
    move-wide/from16 v16, v10
    iget-object v10, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/2addr v10, v13
    if-nez v10, :label_0184
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v10
    if-eqz v10, :label_017f
    goto :label_0184
    :label_017f
    add-int/lit8 v14, v14, 0x1
    move-wide/from16 v10, v16
    goto :label_0163
    :label_0184
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/u1;->Zc:Z
    goto :label_01a0
    :label_0187
    move-wide/from16 v16, v10
    goto :label_01a0
    :label_018a
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/2addr v4, v13
    if-nez v4, :label_019a
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v4
    if-eqz v4, :label_0198
    goto :label_019a
    :label_0198
    move v4, v12
    goto :label_019b
    :label_019a
    move v4, v5
    :label_019b
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/u1;->Zc:Z
    goto :label_01a0
    :label_019e
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/u1;->Zc:Z
    :label_01a0
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v4
    const v10, 0x7ffffffe
    const-string v11, ", "
    if-eqz v4, :label_01b0
    :label_01ad
    move-object v4, v8
    goto/16 :label_02d8
    :label_01b0
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v13, v4, Lorg/telegram/messenger/MessageObject;->notime:Z
    if-nez v13, :label_01ad
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v4
    if-nez v4, :label_01ad
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v4
    if-nez v4, :label_01ad
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v4
    if-eqz v4, :label_01cd
    goto :label_01ad
    :label_01cd
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v13, v4, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-eqz v13, :label_01da
    iget-object v13, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    if-ne v13, v10, :label_01da
    goto :label_01ad
    :label_01da
    iget v13, v4, Lorg/telegram/messenger/MessageObject;->realDate:I
    if-eqz v13, :label_0210
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v7, v7, Lorg/telegram/messenger/MessageObject;->realDate:I
    const-wide/16 v18, 0x3e8
    int-to-long v14, v7
    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->formatSmallDateChat(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    move-result-object v7
    iget-object v13, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v13, v13, Lorg/telegram/messenger/MessageObject;->realDate:I
    int-to-long v13, v13
    mul-long v13, v13, v18
    invoke-virtual {v7, v13, v14}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    goto/16 :label_02d8
    :label_0210
    const-wide/16 v18, 0x3e8
    iget-boolean v13, v4, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v13, :label_0246
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v13, v7
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatSmallDateChat(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    move-result-object v7
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v13, v13
    mul-long v13, v13, v18
    invoke-virtual {v7, v13, v14}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    goto/16 :label_02d8
    :label_0246
    iget-boolean v13, v0, Lorg/telegram/ui/Cells/u1;->Zc:Z
    if-eqz v13, :label_02a7
    invoke-static {v7}, Lorg/telegram/messenger/AppGlobalConfig;->getInstance(I)Lorg/telegram/messenger/AppGlobalConfig;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/messenger/AppGlobalConfig;->messagePrimaryEditedDate:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;
    invoke-virtual {v4}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z
    move-result v4
    if-eqz v4, :label_027b
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v4, :label_025f
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getMaxEditDate()I
    move-result v4
    goto :label_0263
    :label_025f
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I
    :label_0263
    if-nez v4, :label_0275
    iget-object v13, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v13
    if-eqz v13, :label_0275
    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v4
    :label_0275
    int-to-long v13, v4
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPmEditedDate(J)Ljava/lang/String;
    move-result-object v4
    goto :label_02d8
    :label_027b
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    sget v7, Lorg/telegram/messenger/R$string;->EditedMessage:I
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    move-result-object v7
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v13, v13
    mul-long v13, v13, v18
    invoke-virtual {v7, v13, v14}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    goto :label_02d8
    :label_02a7
    iget-boolean v7, v4, Lorg/telegram/messenger/MessageObject;->isSaved:Z
    if-eqz v7, :label_02c5
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v4, :label_02c5
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I
    if-nez v7, :label_02b9
    iget v13, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_date:I
    if-eqz v13, :label_02c5
    :label_02b9
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_date:I
    if-nez v4, :label_02be
    goto :label_02bf
    :label_02be
    move v7, v4
    :label_02bf
    int-to-long v13, v7
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;
    move-result-object v4
    goto :label_02d8
    :label_02c5
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    move-result-object v4
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v13, v7
    mul-long v13, v13, v18
    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    move-result-object v4
    :label_02d8
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->video_processing_pending:Z
    if-eqz v7, :label_02ea
    sget v7, Lorg/telegram/messenger/R$string;->ScheduledTimeApprox:I
    new-array v13, v5, [Ljava/lang/Object;
    aput-object v4, v13, v12
    invoke-static {v7, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    :label_02ea
    if-eqz v2, :label_0311
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v13, v7, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J
    cmp-long v13, v13, v16
    if-eqz v13, :label_02fb
    invoke-static {v4, v11}, Lu8/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0313
    :label_02fb
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v7, :label_030a
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->imported:Z
    if-eqz v7, :label_030a
    invoke-static {v6, v4}, Lu8/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0313
    :label_030a
    invoke-static {v11, v4}, Lu8/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0313
    :label_0311
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    :label_0313
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isStakedDice()Z
    move-result v4
    const/4 v6, 0x4
    const/4 v13, 0x3
    const-string v15, "  "
    if-eqz v4, :label_0354
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getStakedDiceAmount()J
    move-result-wide v18
    invoke-static/range {v18 .. v19}, Lvg/d8;->N0(J)Ljava/lang/String;
    move-result-object v4
    const v18, -0x41570a3d
    iget-object v14, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    const/16 v19, 0x2
    new-array v7, v6, [Ljava/lang/CharSequence;
    const-string v20, "\ud83d\udc8e"
    aput-object v20, v7, v12
    aput-object v4, v7, v5
    aput-object v15, v7, v19
    aput-object v14, v7, v13
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    const v14, 0x3f866666
    const v9, 0x3f0ccccd
    invoke-static {v4, v9, v7, v14}, Lvg/d8;->Q0(Ljava/lang/CharSequence;FFF)Landroid/text/SpannableStringBuilder;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0359
    :label_0354
    const v18, -0x41570a3d
    const/16 v19, 0x2
    :label_0359
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v21
    cmp-long v4, v21, v16
    if-gez v4, :label_036b
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->getStarsPrice()J
    move-result-wide v21
    move-object v7, v11
    move-wide/from16 v10, v21
    goto :label_036e
    :label_036b
    move-object v7, v11
    move-wide/from16 v10, v16
    :label_036e
    cmp-long v9, v10, v16
    if-lez v9, :label_03a4
    long-to-int v9, v10
    invoke-static {v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;
    move-result-object v9
    iget-object v10, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v6, v6, [Ljava/lang/CharSequence;
    const-string v11, "\u2b50\ufe0f"
    aput-object v11, v6, v12
    aput-object v9, v6, v5
    aput-object v15, v6, v19
    aput-object v10, v6, v13
    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    int-to-float v9, v9
    const v26, 0x3f70a3d7
    const/16 v21, 0x0
    const v23, 0x3f4ccccd
    const/16 v24, 0x0
    move-object/from16 v22, v6
    move/from16 v25, v9
    invoke-static/range {v21 .. v26}, Lvg/d8;->V0(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ir;FF)Landroid/text/SpannableStringBuilder;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    :label_03a4
    iget-object v6, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v6, :label_0496
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->schedule_repeat_period:I
    if-eqz v6, :label_0496
    const v9, 0x1e13380
    if-ne v6, v9, :label_03cb
    sget v6, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatYearly:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto/16 :label_0496
    :label_03cb
    const v9, 0xeff100
    const-string v10, "MessageScheduledRepeatMonthlyMany"
    if-ne v6, v9, :label_03eb
    const/4 v6, 0x6
    new-array v9, v12, [Ljava/lang/Object;
    invoke-static {v10, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto/16 :label_0496
    :label_03eb
    const v9, 0x77f880
    if-ne v6, v9, :label_0408
    new-array v6, v12, [Ljava/lang/Object;
    invoke-static {v10, v13, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto/16 :label_0496
    :label_0408
    const v9, 0x278d00
    if-ne v6, v9, :label_0424
    sget v6, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatMonthly:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0496
    :label_0424
    const v9, 0x127500
    if-ne v6, v9, :label_0440
    sget v6, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatBiweekly:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0496
    :label_0440
    const v9, 0x93a80
    if-ne v6, v9, :label_045c
    sget v6, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatWeekly:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0496
    :label_045c
    const v9, 0x15180
    if-ne v6, v9, :label_0478
    sget v6, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatDaily:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    goto :label_0496
    :label_0478
    sget v9, Lorg/telegram/messenger/R$string;->MessageScheduledRepeatSeconds:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    new-array v10, v5, [Ljava/lang/Object;
    aput-object v6, v10, v12
    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    iget-object v9, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    new-array v10, v13, [Ljava/lang/CharSequence;
    aput-object v6, v10, v12
    aput-object v7, v10, v5
    aput-object v9, v10, v19
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v6
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    :label_0496
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    if-nez v7, :label_049e
    move v9, v12
    goto :label_04a2
    :label_049e
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I
    move-result v9
    :label_04a2
    invoke-virtual {v6, v7, v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v6
    float-to-double v6, v6
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v6, v6
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v9, v7, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-eqz v9, :label_04bf
    iget-object v9, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const v4, 0x7ffffffe
    if-eq v9, v4, :label_04c3
    :label_04bf
    iget-boolean v4, v7, Lorg/telegram/messenger/MessageObject;->notime:Z
    if-eqz v4, :label_04cc
    :label_04c3
    const/high16 v4, 0x41000000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v6, v4
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_04cc
    iget-object v4, v0, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v4, :label_04da
    invoke-interface {v4}, Lorg/telegram/ui/Cells/l1;->R()I
    move-result v4
    const/16 v6, 0x9
    if-ne v4, v6, :label_04da
    move v4, v5
    goto :label_04db
    :label_04da
    move v4, v12
    :label_04db
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit16 v7, v7, 0x400
    const/high16 v9, 0x41200000
    const/high16 v10, 0x40000000
    if-eqz v7, :label_053d
    if-nez v4, :label_053d
    iget v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    const/4 v6, 0x0
    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;
    move-result-object v4
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->Tb:Ljava/lang/String;
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v4
    float-to-double v6, v4
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v4, v6
    iput v4, v0, Lorg/telegram/ui/Cells/u1;->Sb:I
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->M3:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
    int-to-float v4, v4
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F
    move-result v6
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    sub-float/2addr v6, v7
    mul-float/2addr v6, v4
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->M3:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v4
    int-to-float v4, v4
    div-float/2addr v6, v4
    iget v4, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    int-to-float v4, v4
    iget v7, v0, Lorg/telegram/ui/Cells/u1;->Sb:I
    int-to-float v7, v7
    add-float/2addr v7, v6
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    add-float/2addr v7, v6
    add-float/2addr v7, v4
    float-to-int v4, v7
    iput v4, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_053d
    iget v4, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0x14
    if-ne v4, v6, :label_059a
    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v6
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-wide v14, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->total_amount:J
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->currency:Ljava/lang/String;
    invoke-virtual {v6, v14, v15, v7}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    move-result-object v6
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v6
    new-array v11, v5, [Ljava/lang/Object;
    aput-object v6, v11, v12
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    move-result v6
    move/from16 v11, v19
    if-lt v6, v11, :label_058a
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v11, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    :label_058a
    iput-object v4, v0, Lorg/telegram/ui/Cells/u1;->Nb:Ljava/lang/String;
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->v2:Landroid/text/TextPaint;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v4
    float-to-double v6, v4
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v4, v6
    iput v4, v0, Lorg/telegram/ui/Cells/u1;->Mb:I
    :label_059a
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-eqz v4, :label_05ab
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/u1;->R7:Z
    if-eqz v4, :label_05ab
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-eqz v4, :label_05ad
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-eqz v4, :label_05ab
    goto :label_05ad
    :label_05ab
    const/4 v6, 0x0
    goto :label_0602
    :label_05ad
    if-eqz v3, :label_05ab
    invoke-direct {v0}, Lorg/telegram/ui/Cells/u1;->getRepliesCount()I
    move-result v3
    const/4 v6, 0x0
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    iput-object v3, v0, Lorg/telegram/ui/Cells/u1;->Wb:Ljava/lang/String;
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v3
    float-to-double v3, v3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v3, v3
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->Vb:I
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Q3:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v3
    int-to-float v3, v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F
    move-result v4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    sub-float/2addr v4, v6
    mul-float/2addr v4, v3
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Q3:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v4, v3
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    int-to-float v3, v3
    iget v6, v0, Lorg/telegram/ui/Cells/u1;->Vb:I
    int-to-float v6, v6
    add-float/2addr v6, v4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    add-float/2addr v6, v4
    add-float/2addr v6, v3
    float-to-int v3, v6
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    goto :label_0604
    :label_0602
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->Wb:Ljava/lang/String;
    :label_0604
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/u1;->X7:Z
    if-eqz v3, :label_0618
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->U3:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
    const/high16 v6, 0x40400000
    invoke-static {v6, v4, v3}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v3
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_0618
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    const/high16 v4, 0x41900000
    if-eqz v3, :label_064d
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v3
    if-eqz v3, :label_062e
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v3
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    goto :label_064d
    :label_062e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v3
    if-eqz v3, :label_064d
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v3, v6, v16
    if-eqz v3, :label_064d
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v3
    if-nez v3, :label_064d
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v3
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_064d
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactions()Z
    move-result v3
    if-eqz v3, :label_0668
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->M:Lvf/q0;
    iget-boolean v6, v3, Lvf/q0;->b:Z
    if-eqz v6, :label_0668
    const v6, 0x7fffffff
    invoke-virtual {v3, v6, v13}, Lvf/q0;->p(II)V
    iget v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    iget v3, v3, Lvf/q0;->q:I
    add-int/2addr v6, v3
    iput v6, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_0668
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;
    move-result-object v3
    iget-wide v6, v0, Lorg/telegram/ui/Cells/u1;->h0:J
    if-eqz v3, :label_0673
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J
    goto :label_0675
    :label_0673
    move-wide/from16 v9, v16
    :label_0675
    cmp-long v6, v6, v9
    if-eqz v6, :label_06e1
    iget-object v6, v0, Lorg/telegram/ui/Cells/u1;->k0:Lorg/telegram/ui/Components/q5;
    if-nez v6, :label_069a
    new-instance v6, Lorg/telegram/ui/Components/q5;
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v7, :label_068c
    invoke-interface {v7}, Lorg/telegram/ui/Cells/l1;->f()Z
    move-result v7
    if-nez v7, :label_068a
    goto :label_068c
    :label_068a
    move v7, v12
    goto :label_068d
    :label_068c
    move v7, v5
    :label_068d
    const/high16 v9, 0x41600000
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    const/16 v10, 0x17
    invoke-direct {v6, v9, v10, v0, v7}, Lorg/telegram/ui/Components/q5;-><init>(IILandroid/view/View;Z)V
    iput-object v6, v0, Lorg/telegram/ui/Cells/u1;->k0:Lorg/telegram/ui/Components/q5;
    :label_069a
    iget v6, v0, Lorg/telegram/ui/Cells/u1;->i0:I
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    if-ne v6, v7, :label_06a6
    move v6, v5
    goto :label_06a7
    :label_06a6
    move v6, v12
    :label_06a7
    if-eqz v3, :label_06ca
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_06bd
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->k0:Lorg/telegram/ui/Components/q5;
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    move-result-object v7
    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/Components/q5;->g(Landroid/graphics/drawable/Drawable;Z)V
    goto :label_06d0
    :label_06bd
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->flags:I
    and-int/2addr v5, v7
    if-eqz v5, :label_06d0
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->k0:Lorg/telegram/ui/Components/q5;
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->static_icon_id:J
    invoke-virtual {v5, v9, v10, v6}, Lorg/telegram/ui/Components/q5;->j(JZ)Z
    goto :label_06d0
    :label_06ca
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->k0:Lorg/telegram/ui/Components/q5;
    const/4 v7, 0x0
    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/Components/q5;->g(Landroid/graphics/drawable/Drawable;Z)V
    :label_06d0
    if-eqz v3, :label_06d5
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J
    goto :label_06d7
    :label_06d5
    move-wide/from16 v5, v16
    :label_06d7
    iput-wide v5, v0, Lorg/telegram/ui/Cells/u1;->h0:J
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->i0:I
    :label_06e1
    iget-wide v5, v0, Lorg/telegram/ui/Cells/u1;->h0:J
    cmp-long v3, v5, v16
    if-eqz v3, :label_06f6
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->notime:Z
    if-nez v3, :label_06f6
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v3
    iput v4, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    :label_06f6
    if-eqz v2, :label_0780
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->C8:I
    if-nez v3, :label_0704
    const/high16 v3, 0x447a0000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_0704
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->C8:I
    iget v4, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v3, v4
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-eqz v4, :label_0723
    iget v4, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v4, v5, :label_071c
    const/high16 v4, 0x41a00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    :label_071a
    sub-int/2addr v3, v4
    goto :label_0723
    :label_071c
    const/high16 v4, 0x42c00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    goto :label_071a
    :label_0723
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v4
    invoke-static {v2, v4, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-virtual {v4, v2, v12, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v4
    float-to-double v4, v4
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v4, v4
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I
    move-result v5
    iput v5, v0, Lorg/telegram/ui/Cells/u1;->rb:I
    if-le v4, v3, :label_0753
    if-gtz v3, :label_0748
    goto :label_0755
    :label_0748
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    int-to-float v5, v3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v8
    move v12, v3
    goto :label_0755
    :label_0753
    move-object v8, v2
    move v12, v4
    :label_0755
    new-instance v2, Landroid/text/SpannableStringBuilder;
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J
    cmp-long v1, v3, v16
    if-eqz v1, :label_076b
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    goto :label_0773
    :label_076b
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :label_0773
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    add-int/2addr v1, v12
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    add-int/2addr v1, v12
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    return-void
    :label_0780
    iput v12, v0, Lorg/telegram/ui/Cells/u1;->rb:I
    return-void
.end method

