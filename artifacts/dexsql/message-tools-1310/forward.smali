# file_id=0 method_idx=45701 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I"
.method public sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I
    .registers 78

    move-object/from16 v1, v62
    move-wide/from16 v2, v64
    if-eqz v63, :label_000c
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_0010
    :label_000c
    const/16 v19, 0x0
    goto/16 :label_0cb5
    :label_0010
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v4
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v0
    const/16 v16, 0x7
    const/4 v7, 0x1
    if-nez v0, :label_0c22
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v8
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J
    move-result-wide v9
    const-wide/16 v17, 0x0
    cmp-long v0, v9, v17
    if-gtz v0, :label_0043
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J
    move-result-wide v9
    :label_0043
    cmp-long v0, v9, v73
    if-eqz v0, :label_0079
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I
    move-result v4
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    move v5, v0
    new-instance v0, Lorg/telegram/messenger/dk;
    move/from16 v6, v67
    move/from16 v7, v68
    move/from16 v8, v69
    move/from16 v9, v70
    move-object/from16 v10, v71
    move/from16 v11, v72
    move-wide/from16 v12, v75
    move-object/from16 v14, v77
    move/from16 v20, v4
    move v15, v5
    const/16 v19, 0x0
    move/from16 v5, v66
    move-wide v3, v2
    move-object/from16 v2, v63
    invoke-direct/range {v0 .. v14}, Lorg/telegram/messenger/dk;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJLorg/telegram/messenger/MessageSuggestionParams;)V
    move-wide v2, v3
    move-object v4, v0
    move/from16 v0, v20
    invoke-static {v15, v0, v2, v3, v4}, Lorg/telegram/ui/Components/g5;->Z(IIJLorg/telegram/messenger/Utilities$Callback;)V
    return v19
    :label_0079
    move-object/from16 v15, v63
    const/16 v19, 0x0
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v20
    move/from16 v21, v7
    if-eqz v20, :label_00c4
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v6
    if-nez v6, :label_0095
    goto/16 :label_0cb5
    :label_0095
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    invoke-virtual {v6, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v6
    if-eqz v6, :label_00a5
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z
    xor-int/lit8 v6, v6, 0x1
    :label_00a3
    move v7, v6
    goto :label_00a8
    :label_00a5
    move/from16 v6, v21
    goto :label_00a3
    :label_00a8
    move/from16 v31, v6
    move/from16 v30, v7
    move-wide/from16 v9, v17
    move/from16 v23, v19
    move/from16 v26, v23
    move/from16 v24, v21
    move/from16 v25, v24
    move/from16 v27, v25
    move/from16 v28, v27
    move/from16 v29, v28
    move/from16 v32, v29
    move/from16 v33, v32
    const/4 v6, 0x0
    const/4 v7, 0x0
    goto/16 :label_014c
    :label_00c4
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    neg-long v9, v2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v7
    if-eqz v7, :label_00f9
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z
    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    xor-int/lit8 v10, v9, 0x1
    if-nez v9, :label_00f4
    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z
    if-eqz v9, :label_00f4
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v9
    move/from16 v23, v10
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v9
    if-eqz v9, :label_00f6
    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J
    goto :label_00ff
    :label_00f4
    move/from16 v23, v10
    :label_00f6
    move-wide/from16 v9, v17
    goto :label_00ff
    :label_00f9
    move-wide/from16 v9, v17
    move/from16 v7, v19
    move/from16 v23, v7
    :label_00ff
    if-eqz v6, :label_010e
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v11
    move-wide/from16 v24, v9
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-virtual {v11, v9, v10, v4, v5}, Lorg/telegram/messenger/MessagesController;->getAdminRank(JJ)Ljava/lang/String;
    move-result-object v9
    goto :label_0111
    :label_010e
    move-wide/from16 v24, v9
    const/4 v9, 0x0
    :label_0111
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v10
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v11
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v26
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v27
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v28
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v29
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v30
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v31
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v32
    move/from16 v33, v32
    move/from16 v32, v29
    move/from16 v29, v28
    move/from16 v28, v27
    move/from16 v27, v26
    move/from16 v26, v23
    move/from16 v23, v7
    move-object v7, v9
    move-wide/from16 v60, v24
    move/from16 v24, v10
    move/from16 v25, v11
    move-wide/from16 v9, v60
    :label_014c
    new-instance v11, Lz/f;
    invoke-direct {v11}, Lz/f;-><init>()V
    new-instance v34, Ljava/util/ArrayList;
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    new-instance v35, Ljava/util/ArrayList;
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V
    new-instance v36, Ljava/util/ArrayList;
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    new-instance v38, Lz/f;
    invoke-direct/range {v38 .. v38}, Lz/f;-><init>()V
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v0
    cmp-long v39, v2, v4
    if-nez v39, :label_0179
    move/from16 v40, v21
    goto :label_017b
    :label_0179
    move/from16 v40, v19
    :label_017b
    move/from16 v14, v19
    move-object/from16 v41, v35
    move-object/from16 v12, v36
    move-object/from16 v1, v37
    move-object/from16 v13, v38
    move-object/from16 v37, v0
    move/from16 v36, v14
    move-object/from16 v35, v34
    move/from16 v34, v36
    :label_018d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v14, v0, :label_0c1f
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v38
    if-lez v38, :label_01a5
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v38
    if-eqz v38, :label_01c8
    :label_01a5
    const/16 v20, 0x0
    const/16 v22, 0x8
    move-object v15, v0
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    move-object/from16 v45, v13
    move-object/from16 v42, v35
    move/from16 v44, v40
    move-object/from16 v51, v41
    move-object/from16 v0, v62
    move-object/from16 v35, v11
    move-object/from16 v41, v12
    move-object/from16 v40, v37
    move-wide/from16 v37, v4
    goto/16 :label_0b98
    :label_01c8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z
    move-result v38
    if-nez v38, :label_01e6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z
    move-result v38
    if-nez v38, :label_01e6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v38
    if-nez v38, :label_01e6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGame()Z
    move-result v38
    if-eqz v38, :label_01e1
    goto :label_01e6
    :label_01e1
    move/from16 v38, v19
    :label_01e3
    move/from16 v42, v14
    goto :label_01e9
    :label_01e6
    move/from16 v38, v21
    goto :label_01e3
    :label_01e9
    if-nez v24, :label_0247
    if-eqz v38, :label_0247
    if-nez v36, :label_021f
    const/16 v0, 0x8
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v36
    if-eqz v36, :label_01f9
    const/4 v14, 0x4
    goto :label_01fb
    :label_01f9
    move/from16 v14, v21
    :label_01fb
    move-object/from16 v15, v77
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    move/from16 v36, v14
    :label_0209
    move/from16 v44, v40
    move/from16 v53, v42
    const/16 v20, 0x0
    const/16 v22, 0x8
    :label_0211
    move-object/from16 v1, v62
    move-object/from16 v42, v35
    move-object/from16 v40, v37
    move-wide/from16 v37, v4
    move-object/from16 v35, v11
    move-wide/from16 v4, v75
    goto/16 :label_0c03
    :label_021f
    move-object/from16 v15, v77
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    move-object/from16 v45, v13
    move/from16 v44, v40
    move-object/from16 v51, v41
    move/from16 v53, v42
    const/16 v20, 0x0
    const/16 v22, 0x8
    move-object/from16 v1, v62
    move-object/from16 v41, v12
    move-object/from16 v42, v35
    move-object/from16 v40, v37
    move-wide/from16 v37, v4
    move-object/from16 v35, v11
    move-wide/from16 v4, v75
    goto/16 :label_0bfd
    :label_0247
    const/16 v43, 0x4
    if-nez v25, :label_026b
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    if-eqz v14, :label_026b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v14
    if-nez v14, :label_026b
    if-nez v38, :label_026b
    if-nez v36, :label_021f
    const/16 v0, 0x10
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_0268
    const/16 v14, 0xa
    goto :label_01fb
    :label_0268
    const/16 v14, 0xc
    goto :label_01fb
    :label_026b
    const/16 v14, 0x12
    if-nez v33, :label_0285
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v48
    if-eqz v48, :label_0285
    if-nez v36, :label_021f
    invoke-static {v6, v14}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_0281
    const/16 v14, 0x13
    goto/16 :label_01fb
    :label_0281
    const/16 v14, 0x14
    goto/16 :label_01fb
    :label_0285
    if-nez v27, :label_02b6
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    if-eqz v14, :label_02b6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v14
    if-eqz v14, :label_02b6
    if-nez v38, :label_02b6
    if-nez v36, :label_021f
    const/16 v14, 0x11
    invoke-static {v6, v14}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_02a4
    const/16 v0, 0x9
    goto :label_02a6
    :label_02a4
    const/16 v0, 0xb
    :label_02a6
    move-object/from16 v15, v77
    move/from16 v36, v0
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    goto/16 :label_0209
    :label_02b6
    const/16 v14, 0x11
    if-nez v32, :label_02d0
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v14, :label_02d0
    if-nez v36, :label_021f
    const/16 v0, 0xa
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_02ce
    const/4 v0, 0x6
    goto :label_02a6
    :label_02ce
    const/4 v0, 0x3
    goto :label_02a6
    :label_02d0
    if-nez v32, :label_02ec
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    if-eqz v14, :label_02ec
    if-nez v36, :label_021f
    const/16 v0, 0xa
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_02e8
    const/16 v14, 0x15
    goto/16 :label_01fb
    :label_02e8
    const/16 v14, 0x16
    goto/16 :label_01fb
    :label_02ec
    if-nez v31, :label_031a
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v14
    if-eqz v14, :label_031a
    if-eqz v6, :label_0308
    if-nez v36, :label_021f
    const/16 v0, 0x14
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_0305
    const/16 v0, 0xd
    goto :label_02a6
    :label_0305
    const/16 v0, 0xe
    goto :label_02a6
    :label_0308
    if-nez v36, :label_021f
    move-object/from16 v15, v77
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    move/from16 v36, v16
    goto/16 :label_0209
    :label_031a
    if-nez v30, :label_0352
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v14
    if-eqz v14, :label_0352
    if-eqz v6, :label_0338
    if-nez v36, :label_021f
    const/16 v0, 0x15
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_0334
    const/16 v14, 0xf
    goto/16 :label_01fb
    :label_0334
    const/16 v14, 0x10
    goto/16 :label_01fb
    :label_0338
    if-nez v36, :label_021f
    move-object/from16 v15, v77
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v43, v8
    move-wide/from16 v46, v9
    move/from16 v44, v40
    move/from16 v53, v42
    const/16 v20, 0x0
    const/16 v22, 0x8
    const/16 v36, 0x8
    goto/16 :label_0211
    :label_0352
    if-nez v28, :label_0370
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    if-eqz v14, :label_0370
    if-nez v38, :label_0370
    if-nez v36, :label_021f
    const/16 v0, 0x13
    invoke-static {v6, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v0
    if-eqz v0, :label_036c
    const/16 v14, 0x11
    goto/16 :label_01fb
    :label_036c
    const/16 v14, 0x12
    goto/16 :label_01fb
    :label_0370
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    if-nez v66, :label_0503
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v46
    cmp-long v38, v46, v4
    if-nez v38, :label_0396
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z
    move-result v38
    if-eqz v38, :label_0396
    iget-object v15, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v38, v12
    move-object/from16 v44, v13
    iget-wide v12, v15, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v12, v12, v4
    if-nez v12, :label_039a
    move/from16 v12, v21
    goto :label_039c
    :label_0396
    move-object/from16 v38, v12
    move-object/from16 v44, v13
    :label_039a
    move/from16 v12, v19
    :label_039c
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v13
    if-eqz v13, :label_042f
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;
    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V
    iput-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    and-int/lit8 v15, v15, 0x1
    if-eqz v15, :label_03bd
    iget v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v15, v15, 0x1
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-object v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :label_03bd
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    and-int/lit8 v15, v15, 0x20
    if-eqz v15, :label_03cd
    iget v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v15, v15, 0x20
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;
    iput-object v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;
    :label_03cd
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    and-int/lit8 v15, v15, 0x4
    if-eqz v15, :label_03dd
    iget v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v15, v15, 0x4
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I
    :label_03dd
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    const/16 v22, 0x8
    and-int/lit8 v15, v15, 0x8
    if-eqz v15, :label_03ef
    iget v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v15, v15, 0x8
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    iput-object v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    :label_03ef
    if-eqz v39, :label_03f3
    if-eqz v26, :label_0419
    :label_03f3
    iget v12, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    const/16 v45, 0x10
    and-int/lit8 v12, v12, 0x10
    if-eqz v12, :label_0419
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z
    move-result v12
    if-nez v12, :label_0419
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v13, v13, 0x10
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-object v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I
    :label_0419
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I
    move/from16 v13, v43
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0427
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    goto/16 :label_04da
    :label_042f
    move/from16 v13, v43
    if-nez v12, :label_0427
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v46
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;
    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V
    iput-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v15
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/2addr v15, v13
    iput v15, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z
    move-result v12
    if-eqz v12, :label_0466
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v13, v13, 0x1
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    goto :label_0496
    :label_0466
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V
    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-object v15, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v48, v1
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    iput-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    iget v6, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    or-int/lit8 v6, v6, 0x1
    iput v6, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    if-eqz v6, :label_0496
    cmp-long v6, v46, v17
    if-lez v6, :label_0496
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v6, :label_0494
    move-object v1, v6
    :label_0494
    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :label_0496
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    if-eqz v1, :label_049d
    goto :label_04d1
    :label_049d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-nez v1, :label_04d1
    cmp-long v1, v46, v17
    if-lez v1, :label_04d1
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    if-eqz v1, :label_04d1
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v1
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v1
    if-eqz v1, :label_04d1
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;
    invoke-static {v7, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    const/16 v22, 0x8
    or-int/lit8 v6, v6, 0x8
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    :label_04d1
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    const/4 v13, 0x4
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_04da
    if-nez v39, :label_050d
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v1, :label_050d
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    const/16 v45, 0x10
    or-int/lit8 v6, v6, 0x10
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v6
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v1, v12, v4
    if-nez v1, :label_050d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    iput-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    goto :label_050d
    :label_0503
    move-object/from16 v48, v1
    move-object/from16 v49, v6
    move-object/from16 v50, v7
    move-object/from16 v38, v12
    move-object/from16 v44, v13
    :label_050d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWelcomeAnchored()Z
    move-result v1
    if-eqz v1, :label_053c
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v1, :label_053c
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v6, :label_053c
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    new-instance v7, Lorg/telegram/messenger/b;
    const/16 v12, 0x18
    invoke-direct {v7, v12}, Lorg/telegram/messenger/b;-><init>(I)V
    invoke-static {v6, v7}, Lorg/telegram/tgnet/TLObject;->deepCopy(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/TLObject;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$Peer;
    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v6
    cmp-long v1, v6, v17
    if-lez v1, :label_053c
    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    :label_053c
    new-instance v1, Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;
    new-instance v6, Ljava/lang/StringBuilder;
    const-string v7, ""
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v12
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    const-string v12, "fwd_id"
    invoke-virtual {v1, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    const-string v12, "fwd_peer"
    invoke-virtual {v1, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :label_0588
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/high16 v6, 0x400000
    or-int/2addr v1, v6
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0588
    if-nez v29, :label_059a
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-eqz v1, :label_059a
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :label_05a0
    :label_059a
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :label_05a0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    iput-boolean v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v6, :label_05b0
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v6, v6, 0x200
    iput v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_05b0
    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    cmp-long v1, v12, v17
    if-eqz v1, :label_05be
    iput-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v1, v1, 0x800
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_05be
    cmp-long v1, v9, v17
    if-eqz v1, :label_05db
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;
    move/from16 v6, v21
    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z
    iput-wide v9, v1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J
    iget v12, v1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I
    or-int/2addr v12, v6
    iput v12, v1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/high16 v6, 0x800000
    or-int/2addr v1, v6
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_05db
    if-eqz v67, :label_05e1
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v1, :label_05e7
    :label_05e1
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :label_05e7
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    if-eqz v1, :label_05f5
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I
    or-int/lit16 v6, v6, 0x2000
    iput v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    :label_05f5
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    if-nez v1, :label_05fb
    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :label_05fb
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v1
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;
    if-eqz v6, :label_06ef
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;-><init>()V
    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;->rows:Ljava/util/ArrayList;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    move-result v12
    move/from16 v13, v19
    move v15, v13
    :label_0623
    move-wide/from16 v46, v9
    if-ge v13, v12, :label_06d9
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;->rows:Ljava/util/ArrayList;
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButtonRow;
    iget-object v10, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButtonRow;->buttons:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v10
    move-object/from16 v43, v1
    move/from16 v1, v19
    const/16 v51, 0x0
    :label_063b
    if-ge v1, v10, :label_066f
    move/from16 v52, v10
    iget-object v10, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButtonRow;->buttons:Ljava/util/ArrayList;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    move/from16 v53, v1
    const-class v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;
    invoke-static {v10, v1}, Lue/c;->a(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_keyboard$ButtonTypeProto;
    move-result-object v1
    check-cast v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;
    move-object/from16 v54, v9
    if-nez v1, :label_0674
    const-class v9, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;
    invoke-static {v10, v9}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v9
    if-nez v9, :label_0674
    const-class v9, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeSwitchInline;
    invoke-static {v10, v9}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v9
    if-nez v9, :label_0674
    const-class v9, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeBuy;
    invoke-static {v10, v9}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v9
    if-eqz v9, :label_066e
    goto :label_0674
    :label_066e
    const/4 v15, 0x1
    :label_066f
    move/from16 v55, v12
    move/from16 v56, v13
    goto :label_06cc
    :label_0674
    if-eqz v1, :label_06a5
    new-instance v9, Lorg/telegram/tgnet/tl/TL_keyboard$TL_keyboardInlineButton;
    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_keyboard$TL_keyboardInlineButton;-><init>()V
    move/from16 v55, v12
    new-instance v12, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;
    invoke-direct {v12}, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;-><init>()V
    iput-object v12, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->type:Lorg/telegram/tgnet/tl/TL_keyboard$InlineButtonType;
    move/from16 v56, v13
    iget v13, v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->flags:I
    iput v13, v12, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->flags:I
    iget-object v13, v10, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->style:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonStyle;
    iput-object v13, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->style:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonStyle;
    iget-object v13, v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->fwd_text:Ljava/lang/String;
    if-eqz v13, :label_0697
    iput-object v13, v12, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->fwd_text:Ljava/lang/String;
    iput-object v13, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->text:Ljava/lang/String;
    goto :label_069b
    :label_0697
    iget-object v10, v10, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->text:Ljava/lang/String;
    iput-object v10, v9, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->text:Ljava/lang/String;
    :label_069b
    iget-object v10, v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->url:Ljava/lang/String;
    iput-object v10, v12, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->url:Ljava/lang/String;
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->button_id:I
    iput v1, v12, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrlAuth;->button_id:I
    move-object v10, v9
    goto :label_06a9
    :label_06a5
    move/from16 v55, v12
    move/from16 v56, v13
    :label_06a9
    if-nez v51, :label_06b6
    new-instance v1, Lorg/telegram/tgnet/tl/TL_keyboard$TL_keyboardInlineButtonRow;
    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_keyboard$TL_keyboardInlineButtonRow;-><init>()V
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;->rows:Ljava/util/ArrayList;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_06b8
    :label_06b6
    move-object/from16 v1, v51
    :label_06b8
    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButtonRow;->buttons:Ljava/util/ArrayList;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v9, v53, 0x1
    move-object/from16 v51, v1
    move v1, v9
    move/from16 v10, v52
    move-object/from16 v9, v54
    move/from16 v12, v55
    move/from16 v13, v56
    goto/16 :label_063b
    :label_06cc
    if-eqz v15, :label_06cf
    goto :label_06d9
    :label_06cf
    add-int/lit8 v13, v56, 0x1
    move-object/from16 v1, v43
    move-wide/from16 v9, v46
    move/from16 v12, v55
    goto/16 :label_0623
    :label_06d9
    if-nez v15, :label_06e3
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit8 v1, v1, 0x40
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_06e1
    const/4 v6, 0x0
    goto :label_06f2
    :label_06e3
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v6, 0x0
    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit8 v1, v1, -0x41
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    goto :label_06f2
    :label_06ef
    move-wide/from16 v46, v9
    goto :label_06e1
    :label_06f2
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :label_0700
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v1, v1, 0x80
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0700
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-nez v1, :label_0706
    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :label_0706
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v1
    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I
    move-result v1
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I
    const/4 v1, 0x1
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    cmp-long v1, v9, v17
    if-eqz v1, :label_0743
    invoke-virtual {v11, v9, v10}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Long;
    if-nez v1, :label_0736
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J
    move-result-wide v9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    invoke-virtual {v11, v1, v9, v10}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0736
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    move-result-wide v9
    iput-wide v9, v14, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/high16 v7, 0x20000
    or-int/2addr v1, v7
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0743
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v1, v9, v17
    if-eqz v1, :label_0762
    if-eqz v26, :label_0762
    if-eqz v23, :label_0758
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    :label_0756
    const/4 v1, 0x1
    goto :label_075b
    :label_0758
    iput-object v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    goto :label_0756
    :label_075b
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    move-object/from16 v9, v49
    :label_075f
    move-object/from16 v1, v50
    goto :label_079d
    :label_0762
    const/4 v1, 0x1
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v7
    neg-long v9, v2
    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v7
    move-object/from16 v9, v49
    invoke-static {v9, v7, v1}, Lorg/telegram/messenger/ChatObject;->getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J
    move-result-wide v12
    cmp-long v1, v12, v4
    if-nez v1, :label_0786
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v1, v1, 0x100
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    goto :label_075f
    :label_0786
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v1
    invoke-virtual {v1, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v1
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v1, v50
    if-eqz v50, :label_079d
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    iget v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/high16 v10, 0x10000
    or-int/2addr v7, v10
    iput v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_079d
    iget-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    cmp-long v7, v12, v17
    if-nez v7, :label_07a9
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J
    move-result-wide v12
    iput-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    :label_07a9
    iget-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    move-object/from16 v10, v38
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    move-object/from16 v7, v44
    invoke-virtual {v7, v14, v12, v13}, Lz/f;->k(Ljava/lang/Object;J)V
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v12
    if-eqz v12, :label_07d0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getEphemeralId()I
    move-result v12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v12
    move-object/from16 v13, v48
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 v15, 0x1
    goto :label_07dd
    :label_07d0
    move-object/from16 v13, v48
    iget v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v12
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move/from16 v15, v34
    :label_07dd
    if-eqz v69, :label_07e2
    move/from16 v12, v69
    goto :label_07ea
    :label_07e2
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v12
    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v12
    :label_07ea
    iput v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    move-object/from16 v12, v37
    instance-of v6, v12, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    if-eqz v6, :label_0804
    if-eqz v26, :label_0804
    move-object/from16 v50, v1
    if-nez v69, :label_0801
    const/4 v1, 0x1
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v1, v1, 0x400
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0801
    move-wide/from16 v37, v4
    goto :label_081f
    :label_0804
    move-object/from16 v50, v1
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move-wide/from16 v37, v4
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit16 v4, v4, 0x400
    if-eqz v4, :label_081c
    if-nez v69, :label_081c
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v1, v1, 0x400
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_081c
    const/4 v1, 0x1
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    :label_081f
    iput-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    iput-object v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v1
    if-nez v1, :label_082f
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v1
    if-eqz v1, :label_0843
    :label_082f
    if-eqz v6, :label_0840
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getChannelId()J
    move-result-wide v4
    cmp-long v1, v4, v17
    if-eqz v1, :label_0840
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z
    move-result v1
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    goto :label_0843
    :label_0840
    const/4 v1, 0x1
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    :label_0843
    if-nez v71, :label_087f
    if-nez v77, :label_087f
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v4, :label_087f
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v4, :label_0859
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v4, v1}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z
    move-result v1
    if-eqz v1, :label_0871
    :label_0859
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    const/16 v45, 0x10
    and-int/lit8 v4, v4, 0x10
    if-eqz v4, :label_087f
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :label_087f
    :label_0871
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/16 v22, 0x8
    or-int/lit8 v1, v1, 0x8
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    :label_087f
    cmp-long v1, v73, v17
    if-lez v1, :label_0890
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I
    or-int/lit8 v4, v4, 0x40
    iput v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I
    move-wide/from16 v4, v73
    iput-wide v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J
    :label_088d
    move-wide/from16 v4, v75
    goto :label_0893
    :label_0890
    move-wide/from16 v4, v73
    goto :label_088d
    :label_0893
    cmp-long v6, v4, v17
    if-eqz v6, :label_08a9
    invoke-virtual/range {v62 .. v62}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    invoke-virtual {v6, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v6
    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    const/high16 v34, 0x10000000
    or-int v6, v6, v34
    iput v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_08a9
    if-eqz v77, :label_08b1
    invoke-virtual/range {v77 .. v77}, Lorg/telegram/messenger/MessageSuggestionParams;->toTl()Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    move-result-object v6
    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    :label_08b1
    new-instance v6, Lorg/telegram/messenger/MessageObject;
    move/from16 v34, v1
    move-object/from16 v44, v7
    move-object/from16 v1, v62
    iget v7, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move-object/from16 v43, v8
    const/4 v8, 0x1
    invoke-direct {v6, v7, v14, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    if-eqz v69, :label_08c5
    move v7, v8
    goto :label_08c7
    :label_08c5
    move/from16 v7, v19
    :label_08c7
    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    iput-boolean v8, v6, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z
    move-object/from16 v7, v35
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v8, v41
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v49, v9
    iget v9, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move-object/from16 v35, v11
    move/from16 v11, v19
    invoke-static {v9, v11}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v9
    invoke-virtual {v9, v6}, Lvg/b6;->d(Lorg/telegram/messenger/MessageObject;)V
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v9, :label_0919
    const/4 v9, 0x0
    :label_08ed
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I
    move-result v11
    if-ge v9, v11, :label_0919
    move-object/from16 v11, v63
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v41
    check-cast v41, Lorg/telegram/messenger/MessageObject;
    move/from16 v48, v9
    invoke-virtual/range {v41 .. v41}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    if-ne v9, v4, :label_0914
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iput-object v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;
    iput-object v5, v6, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    goto :label_091b
    :label_0914
    add-int/lit8 v9, v48, 0x1
    move-wide/from16 v4, v75
    goto :label_08ed
    :label_0919
    move-object/from16 v11, v63
    :label_091b
    if-eqz v69, :label_091f
    const/4 v4, 0x1
    goto :label_0920
    :label_091f
    const/4 v4, 0x0
    :label_0920
    invoke-virtual {v1, v14, v4}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v4, :label_0951
    new-instance v4, Ljava/lang/StringBuilder;
    const-string v5, "forward message user_id = "
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, " chat_id = "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, " channel_id = "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, " access_hash = "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J
    invoke-static {v4, v5, v6}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0951
    if-eqz v71, :label_0981
    if-nez v77, :label_0981
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V
    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    const/16 v45, 0x10
    or-int/lit8 v5, v5, 0x10
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    invoke-virtual/range {v71 .. v71}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I
    move-object/from16 v4, v71
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z
    if-eqz v5, :label_097e
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    const/4 v6, 0x1
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    const/16 v22, 0x8
    or-int/lit8 v6, v6, 0x8
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    goto :label_0984
    :label_097e
    const/16 v22, 0x8
    goto :label_0984
    :label_0981
    move-object/from16 v4, v71
    goto :label_097e
    :label_0984
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/16 v6, 0x64
    if-eq v5, v6, :label_09ca
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/16 v21, 0x1
    add-int/lit8 v5, v5, -0x1
    move/from16 v14, v42
    if-eq v14, v5, :label_09cc
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v5
    add-int/lit8 v5, v5, -0x1
    if-eq v14, v5, :label_09b5
    add-int/lit8 v5, v14, 0x1
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v5
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v41
    cmp-long v5, v5, v41
    if-eqz v5, :label_09b5
    goto :label_09cc
    :label_09b5
    move-object v0, v1
    move-object/from16 v42, v7
    move-object/from16 v51, v8
    move-object/from16 v41, v10
    move-object/from16 v48, v13
    move-object/from16 v45, v44
    const/16 v20, 0x0
    const/16 v21, 0x1
    move/from16 v44, v40
    move-object/from16 v40, v12
    goto/16 :label_0b85
    :label_09ca
    move/from16 v14, v42
    :label_09cc
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v51
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    if-eqz v69, :label_09da
    const/16 v57, 0x1
    goto :label_09dc
    :label_09da
    const/16 v57, 0x0
    :label_09dc
    const-wide/16 v58, 0x0
    const/16 v53, 0x0
    const/16 v54, 0x1
    const/16 v55, 0x0
    const/16 v56, 0x0
    move-object/from16 v52, v5
    invoke-virtual/range {v51 .. v59}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    if-eqz v69, :label_09f3
    const/4 v6, 0x1
    goto :label_09f4
    :label_09f3
    const/4 v6, 0x0
    :label_09f4
    invoke-virtual {v5, v2, v3, v7, v6}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I
    const/4 v9, 0x0
    new-array v4, v9, [Ljava/lang/Object;
    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    invoke-virtual {v4, v9}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V
    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v68, :label_0a25
    iget v5, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;
    move-result-object v5
    const-string/jumbo v6, "silent_"
    invoke-static {v6, v2, v3, v5, v9}, Lorg/telegram/messenger/h4;->t(Ljava/lang/String;JLandroid/content/SharedPreferences;Z)Z
    move-result v5
    if-eqz v5, :label_0a23
    goto :label_0a25
    :label_0a23
    const/4 v5, 0x0
    goto :label_0a26
    :label_0a25
    const/4 v5, 0x1
    :label_0a26
    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z
    if-eqz v71, :label_0a36
    invoke-virtual/range {v71 .. v71}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->top_msg_id:I
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    or-int/lit16 v5, v5, 0x200
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    :label_0a36
    move/from16 v5, v69
    if-eqz v69, :label_0a50
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->schedule_date:I
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    or-int/lit16 v9, v6, 0x400
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    move/from16 v9, v70
    if-eqz v70, :label_0a52
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->schedule_repeat_period:I
    const v41, 0x1000400
    or-int v6, v6, v41
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    goto :label_0a52
    :label_0a50
    move/from16 v9, v70
    :label_0a52
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    if-eqz v6, :label_0a84
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v41, v8
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J
    if-eqz v2, :label_0a8d
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J
    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J
    goto :label_0a8d
    :label_0a84
    move-object/from16 v41, v8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :label_0a8d
    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;
    iput-object v13, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;
    move/from16 v2, v66
    iput-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->drop_author:Z
    move/from16 v6, v67
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->drop_media_captions:Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v8, 0x1
    if-ne v3, v8, :label_0aaf
    const/4 v9, 0x0
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z
    if-eqz v3, :label_0aaf
    move v3, v8
    goto :label_0ab0
    :label_0aaf
    const/4 v3, 0x0
    :label_0ab0
    iput-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z
    iput-boolean v15, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_ephemeral:Z
    move/from16 v3, v72
    if-ltz v3, :label_0ac2
    iget v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    const/high16 v21, 0x100000
    or-int v9, v9, v21
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->video_timestamp:I
    :label_0ac2
    if-lez v34, :label_0ad7
    iget v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    const/high16 v21, 0x200000
    or-int v9, v9, v21
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v9
    int-to-long v8, v9
    mul-long v8, v8, v73
    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->allow_paid_stars:J
    :label_0ad7
    if-eqz v77, :label_0aee
    invoke-virtual/range {v77 .. v77}, Lorg/telegram/messenger/MessageSuggestionParams;->toTl()Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    move-result-object v8
    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    if-eqz v71, :label_0aee
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;-><init>()V
    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;
    invoke-virtual/range {v71 .. v71}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    iput v9, v8, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->reply_to_msg_id:I
    :label_0aee
    move-wide/from16 v8, v75
    invoke-direct {v1, v4, v8, v9}, Lorg/telegram/messenger/SendMessagesHelper;->applyMonoForumPeerId(Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;J)V
    move-object/from16 v42, v0
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    move-object/from16 v34, v0
    const v0, 0x7ffffffe
    if-ne v5, v0, :label_0b03
    const/4 v11, 0x1
    goto :label_0b04
    :label_0b03
    const/4 v11, 0x0
    :label_0b04
    new-instance v0, Lorg/telegram/messenger/hk;
    move/from16 v2, v40
    move-object/from16 v40, v12
    move v12, v2
    move-wide/from16 v2, v64
    move-object v9, v4
    move-object/from16 v48, v13
    move-object/from16 v4, v41
    move-object/from16 v6, v42
    move-object/from16 v8, v43
    const/16 v20, 0x0
    const/16 v21, 0x1
    move-object/from16 v42, v7
    move-object/from16 v41, v10
    move-object/from16 v10, v44
    move-object v7, v1
    move v1, v5
    move-object/from16 v5, v34
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/hk;-><init>(IJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;Lz/f;ZZ)V
    move-object/from16 v51, v4
    move-object v2, v9
    move-object/from16 v45, v10
    move/from16 v44, v12
    new-instance v1, Lorg/telegram/messenger/pi;
    const/4 v5, 0x2
    move-object v4, v0
    move-object v0, v1
    move-object/from16 v3, v34
    move-object/from16 v1, v62
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/pi;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    move-object/from16 v60, v1
    move-object v1, v0
    move-object/from16 v0, v60
    iget v4, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I
    const/4 v9, 0x0
    invoke-static {v4, v9}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v4
    invoke-virtual {v4, v2, v3, v1}, Lvg/b6;->c(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/lang/Runnable;)Z
    move-result v2
    if-eqz v2, :label_0b4f
    invoke-virtual {v1}, Lorg/telegram/messenger/pi;->run()V
    :label_0b4f
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -0x1
    if-eq v14, v1, :label_0b85
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    new-instance v5, Lz/f;
    invoke-direct {v5}, Lz/f;-><init>()V
    move-object/from16 v42, v1
    move-object/from16 v41, v2
    move-object v12, v3
    move-object/from16 v48, v4
    move-object v13, v5
    move/from16 v53, v14
    move/from16 v34, v15
    move-wide/from16 v2, v64
    move-wide/from16 v4, v75
    move-object/from16 v15, v77
    move-object v1, v0
    goto/16 :label_0c03
    :label_0b85
    move-wide/from16 v2, v64
    move-wide/from16 v4, v75
    move-object v1, v0
    move/from16 v53, v14
    move/from16 v34, v15
    move-object/from16 v12, v41
    move-object/from16 v13, v45
    move-object/from16 v41, v51
    move-object/from16 v15, v77
    goto/16 :label_0c03
    :label_0b98
    iget v1, v15, Lorg/telegram/messenger/MessageObject;->type:I
    if-nez v1, :label_0bf4
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :label_0bf4
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v1, :label_0bae
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object v5, v7
    goto :label_0bb0
    :label_0bae
    move-object/from16 v5, v20
    :label_0bb0
    iget-object v1, v15, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    if-eqz v5, :label_0bbb
    move/from16 v6, v21
    goto :label_0bbc
    :label_0bbb
    const/4 v6, 0x0
    :label_0bbc
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    const/4 v13, 0x0
    move v2, v14
    const/4 v14, 0x0
    const/4 v3, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    move/from16 v10, v68
    move/from16 v11, v69
    move/from16 v12, v70
    move-object/from16 v4, v71
    move-object v0, v1
    move/from16 v53, v2
    move-object/from16 v52, v15
    move-wide/from16 v1, v64
    move-object/from16 v15, v77
    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v0
    move-wide v2, v1
    iput-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;
    move-wide/from16 v4, v75
    iput-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I
    move-result v1
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I
    move-object/from16 v1, v62
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    goto :label_0bfd
    :label_0bf4
    move-wide/from16 v2, v64
    move-wide/from16 v4, v75
    move-object/from16 v15, v77
    move-object v1, v0
    move/from16 v53, v14
    :label_0bfd
    move-object/from16 v12, v41
    move-object/from16 v13, v45
    move-object/from16 v41, v51
    :label_0c03
    add-int/lit8 v14, v53, 0x1
    move-object/from16 v15, v63
    move-object/from16 v11, v35
    move-wide/from16 v4, v37
    move-object/from16 v37, v40
    move-object/from16 v35, v42
    move-object/from16 v8, v43
    move/from16 v40, v44
    move-wide/from16 v9, v46
    move-object/from16 v1, v48
    move-object/from16 v6, v49
    move-object/from16 v7, v50
    const/16 v19, 0x0
    goto/16 :label_018d
    :label_0c1f
    move-object/from16 v1, v62
    return v36
    :label_0c22
    move-wide/from16 v4, v75
    move-object/from16 v15, v77
    move/from16 v21, v7
    const/16 v22, 0x8
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    long-to-int v6, v2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-result-object v0
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v0
    if-eqz v0, :label_0c5c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v8
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-eqz v0, :label_0c5c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v0
    if-eqz v0, :label_0c5c
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z
    xor-int/lit8 v7, v0, 0x1
    goto :label_0c5e
    :label_0c5c
    move/from16 v7, v21
    :label_0c5e
    const/4 v9, 0x0
    const/4 v11, 0x0
    :label_0c60
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v11, v0, :label_0c8e
    move-object/from16 v10, v63
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    if-nez v7, :label_0c7d
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v6
    if-eqz v6, :label_0c7d
    if-nez v9, :label_0c8b
    move/from16 v9, v16
    goto :label_0c8b
    :label_0c7d
    if-nez v7, :label_0c8b
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_0c8b
    if-nez v9, :label_0c8b
    move/from16 v9, v22
    :label_0c8b
    add-int/lit8 v11, v11, 0x1
    goto :label_0c60
    :label_0c8e
    move-object/from16 v10, v63
    if-nez v9, :label_0cb4
    const/4 v11, 0x0
    :label_0c93
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v11, v0, :label_0cb4
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    move-object v6, v1
    move-object v1, v0
    move-object v0, v6
    move-wide v6, v4
    move-object v8, v15
    move-wide/from16 v4, v73
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;JJJLorg/telegram/messenger/MessageSuggestionParams;)V
    add-int/lit8 v11, v11, 0x1
    move-object/from16 v1, v62
    move-wide/from16 v2, v64
    move-wide/from16 v4, v75
    move-object/from16 v15, v77
    goto :label_0c93
    :label_0cb4
    return v9
    :label_0cb5
    return v19
.end method

