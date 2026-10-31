# file_id=2 method_idx=49877 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V"
.method public final q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 64

    move-object/from16 v0, v59
    move-object/from16 v1, v61
    move-object/from16 v2, v62
    move-object/from16 v3, v63
    const/16 v4, 0xf
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const/16 v5, 0xb
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    const/16 v6, 0x72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/16 v7, 0xc
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    const/16 v8, 0xd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    const/16 v9, 0xe
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    const/16 v10, 0x10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    const/16 v12, 0x15
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    const/16 v14, 0x14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v15
    const/16 v16, 0x20
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v12
    const/16 v16, 0x1b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v10
    const/16 v18, 0x1d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v14
    move-object/from16 v19, v11
    const/16 v20, 0x17
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    move-object/from16 v21, v4
    const/16 v22, 0x5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    move-object/from16 v23, v13
    const/16 v24, 0x4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    move-object/from16 v25, v15
    const/16 v26, 0x11
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v15
    move-object/from16 v27, v15
    const/16 v28, 0x8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v15
    move-object/from16 v29, v4
    const/16 v30, 0x6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    move-object/from16 v31, v4
    const/16 v32, 0xa
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    move-object/from16 v33, v13
    const/16 v34, 0x9
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    move-object/from16 v35, v13
    const/16 v36, 0x3
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    move-object/from16 v37, v5
    const/16 v38, 0x0
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    move-object/from16 v39, v4
    const/16 v40, 0x1
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    move-object/from16 v41, v11
    iget-object v11, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v42, v6
    iget-object v6, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-object/from16 v43, v7
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ko;->J8(Lorg/telegram/messenger/MessageObject;)I
    move-result v7
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v44
    if-eqz v44, :label_00c7
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v45
    if-nez v45, :label_00c7
    move/from16 v45, v40
    :label_00c4
    move-object/from16 v46, v14
    goto :label_00ca
    :label_00c7
    move/from16 v45, v38
    goto :label_00c4
    :label_00ca
    iget v14, v0, Lorg/telegram/ui/ko;->Q3:I
    move-object/from16 v47, v8
    move/from16 v8, v36
    if-eq v14, v8, :label_00eb
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->E9()Z
    move-result v8
    if-nez v8, :label_00eb
    if-eqz v44, :label_00db
    goto :label_00eb
    :label_00db
    iget v8, v0, Lorg/telegram/ui/ko;->Q3:I
    move/from16 v14, v40
    if-eq v8, v14, :label_00eb
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->K9()Z
    move-result v8
    if-eqz v8, :label_00ed
    iget-boolean v8, v0, Lorg/telegram/ui/ko;->g4:Z
    if-nez v8, :label_00ed
    :label_00eb
    move-object v14, v9
    goto :label_011e
    :label_00ed
    iget-object v8, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :label_0111
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v48
    move-object v14, v9
    iget-wide v8, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v8, v48, v8
    if-eqz v8, :label_010c
    iget-object v8, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canPinMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v8
    if-eqz v8, :label_010c
    iget-object v8, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z
    if-nez v8, :label_010c
    const/4 v8, 0x1
    goto :label_010e
    :label_010c
    move/from16 v8, v38
    :label_010e
    move/from16 v48, v8
    goto :label_0128
    :label_0111
    move-object v14, v9
    iget-object v8, v0, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v8, :label_011e
    iget-object v8, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v8
    if-eqz v8, :label_0121
    :label_011e
    move/from16 v48, v38
    goto :label_0128
    :label_0121
    iget-object v8, v0, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v8, :label_011e
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z
    goto :label_010e
    :label_0128
    iget-wide v8, v0, Lorg/telegram/ui/ko;->S5:J
    invoke-static {v8, v9}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z
    move-result v8
    const-wide/32 v49, 0x77628
    if-nez v8, :label_0139
    iget-wide v8, v0, Lorg/telegram/ui/ko;->S5:J
    cmp-long v8, v8, v49
    if-nez v8, :label_013b
    :label_0139
    move/from16 v48, v38
    :label_013b
    const/16 v8, 0x18
    if-eqz v48, :label_015b
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    if-lez v9, :label_015b
    iget-object v9, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-eqz v9, :label_014f
    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;
    if-eqz v9, :label_015b
    :label_014f
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v9
    if-nez v9, :label_015b
    iget v9, v11, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v9, v8, :label_015b
    const/4 v9, 0x1
    goto :label_015d
    :label_015b
    move/from16 v9, v38
    :label_015d
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->D9()Z
    move-result v48
    if-nez v48, :label_0175
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-nez v8, :label_0175
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v51
    cmp-long v8, v51, v49
    if-nez v8, :label_0172
    goto :label_0175
    :label_0172
    move/from16 v8, v38
    goto :label_0176
    :label_0175
    const/4 v8, 0x1
    :label_0176
    move/from16 v49, v8
    if-nez v8, :label_0186
    iget v8, v11, Lorg/telegram/messenger/MessageObject;->type:I
    move/from16 v50, v9
    move/from16 v9, v18
    if-ne v8, v9, :label_0183
    goto :label_0188
    :label_0183
    move/from16 v8, v38
    goto :label_0189
    :label_0186
    move/from16 v50, v9
    :label_0188
    const/4 v8, 0x1
    :label_0189
    if-nez v44, :label_01dd
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v51
    move/from16 v18, v8
    iget-wide v8, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v8, v51, v8
    if-eqz v8, :label_01d0
    if-eqz v50, :label_01d0
    iget-object v8, v0, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :label_01d3
    if-eqz v6, :label_01d0
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v8
    if-nez v8, :label_01d0
    iget-object v8, v0, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    iget-object v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    move-object/from16 v51, v14
    move/from16 v14, v38
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :label_01e0
    goto :label_01d5
    :label_01d0
    move-object/from16 v51, v14
    goto :label_01e0
    :label_01d3
    move-object/from16 v51, v14
    :label_01d5
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v8
    if-nez v8, :label_01e0
    const/4 v8, 0x1
    goto :label_01e1
    :label_01dd
    move/from16 v18, v8
    goto :label_01d0
    :label_01e0
    const/4 v8, 0x0
    :label_01e1
    if-nez v44, :label_0212
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v11, v9}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-eqz v9, :label_0212
    iget-object v9, v0, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    iget-object v14, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->c3:Lorg/telegram/messenger/MessageObject;
    if-nez v14, :label_01f8
    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->d3:Lorg/telegram/messenger/VideoEditedInfo;
    if-eqz v9, :label_01f6
    goto :label_01f8
    :label_01f6
    const/4 v9, 0x0
    goto :label_01f9
    :label_01f8
    const/4 v9, 0x1
    :label_01f9
    if-nez v9, :label_0212
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v52
    move v14, v8
    iget-wide v8, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v8, v52, v8
    if-eqz v8, :label_0213
    iget v8, v11, Lorg/telegram/messenger/MessageObject;->type:I
    move/from16 v9, v20
    if-eq v8, v9, :label_0213
    move/from16 v9, v26
    if-eq v8, v9, :label_0213
    const/4 v8, 0x1
    goto :label_0214
    :label_0212
    move v14, v8
    :label_0213
    const/4 v8, 0x0
    :label_0214
    if-eqz v8, :label_0252
    if-eqz v6, :label_0252
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v8
    move/from16 v52, v14
    const/4 v9, 0x0
    const/4 v14, 0x0
    :label_0222
    if-ge v9, v8, :label_024b
    move/from16 v53, v8
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lorg/telegram/messenger/MessageObject;
    move/from16 v54, v9
    if-eqz v9, :label_023a
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v9
    if-nez v9, :label_0246
    :label_023a
    iput-object v8, v0, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :label_0246
    add-int/lit8 v14, v14, 0x1
    :label_0246
    add-int/lit8 v9, v54, 0x1
    move/from16 v8, v53
    goto :label_0222
    :label_024b
    const/4 v8, 0x2
    if-ge v14, v8, :label_0250
    const/4 v8, 0x1
    goto :label_0254
    :label_0250
    const/4 v8, 0x0
    goto :label_0254
    :label_0252
    move/from16 v52, v14
    :label_0254
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v9
    const-wide/16 v53, 0x0
    if-nez v9, :label_026c
    iget v9, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v14, 0x1
    if-eq v9, v14, :label_026c
    iget-object v9, v0, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v9, :label_026f
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v9
    if-nez v9, :label_026c
    goto :label_026f
    :label_026c
    move/from16 v55, v8
    goto :label_02cc
    :label_026f
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v9
    if-nez v9, :label_026c
    if-ne v7, v14, :label_0286
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v55
    move v14, v8
    iget-wide v8, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v8, v55, v8
    if-eqz v8, :label_0283
    goto :label_0287
    :label_0283
    move/from16 v55, v14
    goto :label_02cc
    :label_0286
    move v14, v8
    :label_0287
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;
    if-nez v8, :label_0283
    if-nez v44, :label_0283
    iget-object v8, v0, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v8, :label_029b
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v8
    if-ltz v8, :label_0283
    :label_029b
    iget-object v8, v0, Lorg/telegram/ui/ko;->N0:Lorg/telegram/ui/al;
    if-eqz v8, :label_02c8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
    move-result v8
    if-nez v8, :label_02c8
    iget-boolean v8, v0, Lorg/telegram/ui/ko;->H0:Z
    if-eqz v8, :label_0283
    iget-object v8, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :label_0283
    iget v9, v0, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move/from16 v55, v14
    iget-object v14, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v14
    invoke-static {v9, v8, v14}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J
    move-result-wide v8
    cmp-long v8, v8, v53
    if-nez v8, :label_02ca
    iget-object v8, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v8, v8, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z
    if-nez v8, :label_02ca
    goto :label_02cc
    :label_02c8
    move/from16 v55, v14
    :label_02ca
    const/4 v8, 0x1
    goto :label_02cd
    :label_02cc
    const/4 v8, 0x0
    :label_02cd
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v9, :label_02e6
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-eqz v9, :label_02e6
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-nez v9, :label_02e6
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->K9()Z
    move-result v9
    if-nez v9, :label_02e6
    const/4 v8, 0x0
    :label_02e6
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v9, :label_02ff
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-eqz v9, :label_02ff
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-nez v9, :label_02ff
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-nez v9, :label_02ff
    const/4 v8, 0x0
    :label_02ff
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v9, :label_030b
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-nez v9, :label_030b
    const/4 v14, 0x0
    goto :label_030c
    :label_030b
    move v14, v8
    :label_030c
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v8
    if-eqz v8, :label_033a
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v8
    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v8
    if-nez v8, :label_033a
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v8
    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z
    move-result v8
    if-nez v8, :label_033a
    iget-boolean v8, v11, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-nez v8, :label_033a
    sget v8, Lorg/telegram/messenger/R$string;->HideAd:I
    const/16 v9, 0x1f
    invoke-static {v8, v9, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_block2:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_033a
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v8
    const/16 v9, 0x21
    if-eqz v8, :label_037e
    iget-boolean v8, v11, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-eqz v8, :label_037e
    sget v8, Lorg/telegram/messenger/R$string;->AboutRevenueSharingAds:I
    invoke-static {v8, v9, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_report:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v8, Lorg/telegram/messenger/R$string;->ReportAd:I
    const/16 v9, 0x22
    invoke-static {v8, v9, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_block2:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v8
    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z
    move-result v8
    if-nez v8, :label_037e
    sget v8, Lorg/telegram/messenger/R$string;->RemoveAds:I
    const/16 v9, 0x23
    invoke-static {v8, v9, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_cancel:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_037e
    iget-object v8, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isPaidSuggestedPostProtected()Z
    move-result v8
    if-eqz v8, :label_0389
    sget v8, Lorg/telegram/messenger/R$drawable;->menu_delete_paid:I
    goto :label_0396
    :label_0389
    iget-object v8, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I
    if-eqz v8, :label_0394
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_delete_auto:I
    goto :label_0396
    :label_0394
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_delete:I
    :label_0396
    const/4 v9, -0x1
    move/from16 v57, v8
    const/16 v8, 0x24
    if-ne v7, v9, :label_03eb
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v6, :label_03be
    if-eq v6, v8, :label_03be
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_03be
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z
    move-result v5
    if-nez v5, :label_03be
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    const/4 v7, 0x0
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ko;->G8(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v5
    if-eqz v5, :label_03d6
    :label_03be
    if-eqz v18, :label_03c2
    if-eqz v44, :label_03d6
    :label_03c2
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v5
    if-nez v5, :label_03d6
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I
    invoke-static {v5, v2, v3, v13}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_03d6
    sget v5, Lorg/telegram/messenger/R$string;->CancelSending:I
    const/16 v6, 0x18
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_03e6
    move-object/from16 v51, v15
    :label_03e8
    const/4 v6, 0x0
    goto/16 :label_126b
    :label_03eb
    if-nez v7, :label_0425
    sget v6, Lorg/telegram/messenger/R$string;->Retry:I
    invoke-static {v6, v2, v3, v5}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_retry:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v8, 0x3
    if-ne v5, v8, :label_0411
    iget-wide v5, v0, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v5, v5, v7
    if-eqz v5, :label_0411
    sget v5, Lorg/telegram/messenger/R$string;->Remove:I
    goto :label_0413
    :label_0411
    sget v5, Lorg/telegram/messenger/R$string;->Delete:I
    :label_0413
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_03e6
    :label_0425
    const-string v9, "ViewReplies"
    const/4 v8, 0x1
    if-ne v7, v8, :label_06b2
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :label_05c2
    if-nez v14, :label_0432
    if-eqz v45, :label_0452
    :label_0432
    if-eqz v60, :label_043a
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v5
    if-nez v5, :label_0452
    :label_043a
    iget-boolean v5, v0, Lorg/telegram/ui/ko;->Oa:Z
    if-nez v5, :label_0452
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    move/from16 v7, v34
    if-eq v5, v7, :label_0452
    sget v5, Lorg/telegram/messenger/R$string;->Reply:I
    invoke-static {v5, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_reply:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0452
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->K9()Z
    move-result v5
    if-nez v5, :label_048b
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v14, 0x1
    if-eq v5, v14, :label_048b
    if-eqz v60, :label_048b
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v5
    if-eqz v5, :label_048b
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v5, :label_048b
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->canViewThread()Z
    move-result v5
    if-eqz v5, :label_048b
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->getRepliesCount()I
    move-result v5
    const/4 v14, 0x0
    new-array v7, v14, [Ljava/lang/Object;
    invoke-static {v9, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewreplies:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_048b
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_04b9
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_04b9
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v7, :label_04b9
    iget-object v7, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v7, :label_04b9
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z
    if-eqz v7, :label_04b9
    iget-boolean v7, v0, Lorg/telegram/ui/ko;->g4:Z
    if-nez v7, :label_04b9
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v5, :label_04b9
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z
    if-eqz v5, :label_04b9
    sget v5, Lorg/telegram/messenger/R$string;->ViewInTopic:I
    invoke-static {v5, v2, v3, v12}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewintopic:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_04b9
    if-eqz v52, :label_04cc
    sget v5, Lorg/telegram/messenger/R$string;->UnpinMessage:I
    move-object/from16 v8, v51
    invoke-static {v5, v2, v3, v8}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unpin:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_04de
    :label_04cc
    if-eqz v50, :label_04de
    sget v5, Lorg/telegram/messenger/R$string;->PinMessage:I
    move-object/from16 v7, v47
    invoke-static {v5, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_pin:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_04de
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_052d
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v5
    if-nez v5, :label_052d
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v7, v5, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v7, :label_052d
    const/4 v7, 0x0
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessageObject;->getMessageTextToTranslate(Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :label_0509
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_0509
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v5
    if-eqz v5, :label_051d
    :label_0509
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v7, 0x24
    if-ne v6, v7, :label_052d
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v6, :label_052d
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    if-eqz v6, :label_052d
    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->translated:Z
    if-nez v5, :label_052d
    :label_051d
    sget v5, Lorg/telegram/messenger/R$string;->TranslateMessage:I
    move-object/from16 v6, v46
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_translate:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_052d
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v11, v5}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_053b
    iget v5, v11, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v9, 0x11
    if-ne v5, v9, :label_0541
    :label_053b
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v7, 0x9
    if-ne v5, v7, :label_0551
    :label_0541
    sget v5, Lorg/telegram/messenger/R$string;->Edit:I
    move-object/from16 v6, v43
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0551
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_0583
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v5
    cmp-long v5, v5, v53
    if-nez v5, :label_0583
    iget-object v5, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v5, :label_0583
    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_0583
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    if-nez v6, :label_0583
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v5, :label_0583
    sget v5, Lorg/telegram/messenger/R$string;->EditOfferAdd:I
    move-object/from16 v6, v42
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_edit_price:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0583
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v7, 0x9
    if-eq v5, v7, :label_05ee
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v6, :label_05ee
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMediaEmptyWebpage()Z
    move-result v5
    if-nez v5, :label_05ee
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    if-lez v5, :label_05ee
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v5
    if-nez v5, :label_05ee
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v5, :label_05b1
    iget-object v5, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :label_05ee
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-eqz v5, :label_05ee
    :label_05b1
    sget v5, Lorg/telegram/messenger/R$string;->ReportChat:I
    move-object/from16 v6, v41
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_report:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_05ee
    :label_05c2
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    if-lez v5, :label_05ee
    if-nez v14, :label_05ce
    if-eqz v45, :label_05ee
    :label_05ce
    if-eqz v60, :label_05d6
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v5
    if-nez v5, :label_05ee
    :label_05d6
    iget-boolean v5, v0, Lorg/telegram/ui/ko;->Oa:Z
    if-nez v5, :label_05ee
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v7, 0x9
    if-eq v5, v7, :label_05ee
    sget v5, Lorg/telegram/messenger/R$string;->Reply:I
    invoke-static {v5, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_reply:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_05ee
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_0663
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_0663
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;
    if-eqz v6, :label_0610
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    if-eqz v5, :label_0610
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I
    invoke-static {v5, v2, v3, v13}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0610
    iget-object v5, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :label_0663
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-static {v5, v6}, Lorg/telegram/messenger/UserObject;->isService(J)Z
    move-result v5
    if-nez v5, :label_0663
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;
    if-nez v7, :label_062e
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;
    if-nez v7, :label_062e
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;
    if-eqz v6, :label_0663
    :label_062e
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v5
    if-eqz v5, :label_063b
    sget v5, Lorg/telegram/messenger/R$string;->SendAnotherGift:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    goto :label_064e
    :label_063b
    sget v5, Lorg/telegram/messenger/R$string;->SendGiftTo:I
    iget-object v6, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v6
    const/4 v14, 0x1
    new-array v7, v14, [Ljava/lang/Object;
    const/16 v38, 0x0
    aput-object v6, v7, v38
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    :label_064e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/16 v5, 0x6c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_gift:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0663
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v14, 0x1
    if-ne v5, v14, :label_066a
    const/4 v5, 0x1
    goto :label_066b
    :label_066a
    const/4 v5, 0x0
    :label_066b
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v11, v5, v6}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_03e6
    iget-object v5, v0, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v5, :label_067d
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_03e6
    :label_067d
    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_0687
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;
    if-nez v5, :label_03e6
    :label_0687
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v8, 0x3
    if-ne v5, v8, :label_069d
    iget-wide v5, v0, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v5, v5, v7
    if-eqz v5, :label_069d
    sget v5, Lorg/telegram/messenger/R$string;->Remove:I
    goto :label_069f
    :label_069d
    sget v5, Lorg/telegram/messenger/R$string;->Delete:I
    :label_069f
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_03e6
    :label_06b2
    move/from16 v16, v14
    move-object/from16 v58, v41
    move-object/from16 v14, v47
    move-object/from16 v8, v51
    const/16 v6, 0x14
    if-ne v7, v6, :label_0709
    sget v6, Lorg/telegram/messenger/R$string;->Retry:I
    invoke-static {v6, v2, v3, v5}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_retry:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-eqz v18, :label_06d0
    if-eqz v44, :label_06de
    :label_06d0
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I
    invoke-static {v5, v2, v3, v13}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_06de
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v8, 0x3
    if-ne v5, v8, :label_06f4
    iget-wide v5, v0, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v5, v5, v7
    if-eqz v5, :label_06f4
    sget v5, Lorg/telegram/messenger/R$string;->Remove:I
    goto :label_06f6
    :label_06f4
    sget v5, Lorg/telegram/messenger/R$string;->Delete:I
    :label_06f6
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_03e6
    :label_0709
    iget-object v5, v0, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v5, :label_0fb9
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPaidSuggestedPostProtected()Z
    move-result v5
    if-nez v5, :label_072a
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v6, 0x1
    if-ne v5, v6, :label_072a
    sget v5, Lorg/telegram/messenger/R$string;->MessageScheduleSend:I
    const/16 v6, 0x64
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_send:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_072a
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    if-eqz v5, :label_0782
    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    const/16 v47, 0x12
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    move-object/from16 v51, v5
    instance-of v5, v6, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;
    if-nez v5, :label_0748
    instance-of v5, v6, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;
    if-eqz v5, :label_0755
    :label_0748
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v5
    if-nez v5, :label_0755
    sget v5, Lorg/telegram/messenger/R$string;->CallBack:I
    :label_0750
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    goto :label_0758
    :label_0755
    sget v5, Lorg/telegram/messenger/R$string;->CallAgain:I
    goto :label_0750
    :label_0758
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_callback:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v51 .. v51}, Lorg/telegram/ui/Components/voip/c2;->a(Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;)Z
    move-result v5
    if-eqz v5, :label_0784
    sget v5, Lorg/telegram/messenger/R$string;->CallMessageReportProblem:I
    const/16 v6, 0x13
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_fave:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0784
    :label_0782
    const/16 v47, 0x12
    :label_0784
    if-nez v16, :label_07a4
    if-nez v45, :label_07a4
    if-nez v18, :label_07c4
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_07c4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v5
    if-nez v5, :label_07c4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v5, v5, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v5, :label_07c4
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    if-nez v5, :label_07c4
    :label_07a4
    iget-boolean v5, v0, Lorg/telegram/ui/ko;->Oa:Z
    if-nez v5, :label_07c4
    if-eqz v60, :label_07b0
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v5
    if-nez v5, :label_07c4
    :label_07b0
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v6, 0x9
    if-eq v5, v6, :label_07c4
    sget v5, Lorg/telegram/messenger/R$string;->Reply:I
    invoke-static {v5, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_reply:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_07c4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v6, :label_07f4
    move-object/from16 v16, v5
    const/16 v5, 0x24
    if-eq v6, v5, :label_07f4
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v5
    if-nez v5, :label_07f4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_07f4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z
    move-result v5
    if-nez v5, :label_07f4
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-object/from16 v51, v15
    const/4 v15, 0x0
    invoke-static {v5, v6, v15}, Lorg/telegram/ui/ko;->G8(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v5
    if-eqz v5, :label_080e
    goto :label_07f6
    :label_07f4
    move-object/from16 v51, v15
    :label_07f6
    if-eqz v18, :label_07fa
    if-eqz v44, :label_080e
    :label_07fa
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-nez v5, :label_080e
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I
    invoke-static {v5, v2, v3, v13}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_080e
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->K9()Z
    move-result v5
    if-nez v5, :label_085f
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v6, 0x1
    if-eq v5, v6, :label_085f
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :label_085f
    if-eqz v60, :label_085f
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z
    if-nez v5, :label_0829
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v5
    if-eqz v5, :label_085f
    :label_0829
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v5, :label_085f
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->canViewThread()Z
    move-result v5
    if-eqz v5, :label_085f
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v5
    if-eqz v5, :label_084a
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->getRepliesCount()I
    move-result v5
    const/4 v6, 0x0
    new-array v13, v6, [Ljava/lang/Object;
    invoke-static {v9, v5, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0853
    :label_084a
    sget v5, Lorg/telegram/messenger/R$string;->ViewThread:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0853
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewreplies:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_085f
    if-nez v44, :label_089a
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v5
    if-nez v5, :label_089a
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v6, 0x1
    if-eq v5, v6, :label_089a
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_089a
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-nez v5, :label_089a
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v5
    iget-wide v9, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v5, v5, v9
    if-eqz v5, :label_089a
    sget v5, Lorg/telegram/messenger/R$string;->CopyLink:I
    const/16 v6, 0x16
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_link:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_089a
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_08c8
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_08c8
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v6, :label_08c8
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :label_08c8
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z
    if-eqz v6, :label_08c8
    iget-boolean v6, v0, Lorg/telegram/ui/ko;->g4:Z
    if-nez v6, :label_08c8
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v5, :label_08c8
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z
    if-eqz v5, :label_08c8
    sget v5, Lorg/telegram/messenger/R$string;->ViewInTopic:I
    invoke-static {v5, v2, v3, v12}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewintopic:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_08c8
    const/16 v5, 0x19
    const/4 v6, 0x2
    if-ne v7, v6, :label_0a6b
    iget v6, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v7, 0x1
    if-eq v6, v7, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v7, v6, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v9, 0x11
    if-ne v7, v9, :label_0932
    if-nez v18, :label_0932
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v7, :label_0932
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    const/4 v7, -0x2
    invoke-static {v6, v7}, Lmg/g;->f(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;I)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    const/4 v9, -0x3
    invoke-static {v6, v9}, Lmg/g;->f(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;I)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    if-eqz v7, :label_08fc
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v9, :label_08fc
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v9
    if-eqz v9, :label_090e
    :label_08fc
    iget-object v9, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v9, v9, Lorg/telegram/messenger/MessageObject;->expandedExplanation:Z
    if-eqz v9, :label_0910
    if-eqz v6, :label_0910
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v6, :label_0910
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-nez v6, :label_0910
    :label_090e
    const/4 v6, 0x1
    goto :label_0911
    :label_0910
    const/4 v6, 0x0
    :label_0911
    if-eqz v6, :label_0932
    if-eqz v7, :label_0922
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-eqz v6, :label_0922
    sget v6, Lorg/telegram/messenger/R$string;->SaveToMusic:I
    :label_091f
    move-object/from16 v15, v39
    goto :label_0925
    :label_0922
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    goto :label_091f
    :label_0925
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0934
    :label_0932
    move-object/from16 v15, v39
    :label_0934
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v9, 0x11
    if-ne v6, v9, :label_0a17
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isPollClosed()Z
    move-result v6
    if-nez v6, :label_0a17
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v7, :label_09e3
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    if-eqz v6, :label_096e
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PollResults;->can_view_stats:Z
    if-eqz v6, :label_096e
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v6
    if-nez v6, :label_096e
    sget v6, Lorg/telegram/messenger/R$string;->PollV2MenuViewStats:I
    const/16 v7, 0x73
    invoke-static {v6, v7, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_stats:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_096e
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->canUnvote()Z
    move-result v6
    if-eqz v6, :label_0982
    sget v6, Lorg/telegram/messenger/R$string;->Unvote:I
    invoke-static {v6, v5, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unvote:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0982
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v6
    if-nez v6, :label_0d86
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v6
    if-eqz v6, :label_099c
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_09b6
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-nez v6, :label_09b6
    :label_099c
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-nez v7, :label_0d86
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z
    if-nez v7, :label_09b6
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    if-eqz v6, :label_0d86
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z
    if-eqz v6, :label_0d86
    :label_09b6
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isQuiz()Z
    move-result v6
    if-eqz v6, :label_09c6
    sget v6, Lorg/telegram/messenger/R$string;->StopQuiz:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_09cf
    :label_09c6
    sget v6, Lorg/telegram/messenger/R$string;->StopPoll:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_09cf
    const/16 v6, 0x1a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_pollstop:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_09e3
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    if-eqz v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v11, v6}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_09ff
    sget v6, Lorg/telegram/messenger/R$string;->EditToDo:I
    const/16 v7, 0x6d
    invoke-static {v6, v7, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_09ff
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->canAppendToTodo()Z
    move-result v6
    if-eqz v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->AddTasks:I
    const/16 v7, 0x6e
    invoke-static {v6, v7, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_addbot:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0a17
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v6
    if-eqz v6, :label_0a41
    if-nez v18, :label_0a41
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0a41
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0a41
    sget v6, Lorg/telegram/messenger/R$string;->SaveToMusic:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0a41
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v6
    if-eqz v6, :label_0d86
    if-nez v18, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0a6b
    move-object/from16 v15, v39
    const/4 v6, 0x3
    if-ne v7, v6, :label_0a98
    if-nez v18, :label_0a98
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-eqz v7, :label_0d86
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-eqz v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGIFs:I
    move-object/from16 v9, v37
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gif:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0a98
    move-object/from16 v9, v37
    move/from16 v6, v24
    if-ne v7, v6, :label_0b7c
    if-nez v18, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->hasRevealedExtendedMedia()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v6
    if-eqz v6, :label_0ada
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGallery:I
    move-object/from16 v7, v33
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gallery:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    move-object/from16 v10, v31
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0ada
    move-object/from16 v10, v31
    move-object/from16 v7, v33
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v6
    if-eqz v6, :label_0b14
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0b14
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0b14
    sget v6, Lorg/telegram/messenger/R$string;->SaveToMusic:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0b14
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v6
    if-eqz v6, :label_0b64
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0b64
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0b64
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-eqz v6, :label_0b46
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGIFs:I
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gif:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0b46
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0b64
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGallery:I
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gallery:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0b7c
    move/from16 v6, v22
    move-object/from16 v10, v31
    if-ne v7, v6, :label_0bc2
    sget v6, Lorg/telegram/messenger/R$string;->ApplyLocalizationFile:I
    move-object/from16 v9, v29
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_language:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v18, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0bc2
    move-object/from16 v9, v29
    move/from16 v6, v32
    if-ne v7, v6, :label_0c06
    sget v6, Lorg/telegram/messenger/R$string;->ApplyThemeFile:I
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_theme:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v18, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0c06
    move/from16 v6, v30
    if-ne v7, v6, :label_0c59
    if-nez v18, :label_0c59
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->hasRevealedExtendedMedia()Z
    move-result v6
    if-nez v6, :label_0c59
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v6
    if-nez v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGallery:I
    const/4 v7, 0x7
    invoke-static {v6, v7, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gallery:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v6, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0c59
    const/4 v6, 0x7
    if-ne v7, v6, :label_0cc4
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMask()Z
    move-result v6
    if-eqz v6, :label_0c76
    sget v6, Lorg/telegram/messenger/R$string;->AddToMasks:I
    move-object/from16 v7, v35
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_sticker:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0c76
    move-object/from16 v7, v35
    sget v6, Lorg/telegram/messenger/R$string;->AddToStickers:I
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_sticker:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v7
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-nez v6, :label_0cb2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z
    move-result v6
    if-eqz v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->AddToFavorites:I
    move-object/from16 v9, v25
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_fave:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0cb2
    sget v6, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I
    move-object/from16 v10, v23
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unfave:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_0d86
    :label_0cc4
    move-object/from16 v10, v23
    move-object/from16 v9, v25
    move/from16 v6, v28
    if-ne v7, v6, :label_0d4b
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J
    cmp-long v9, v6, v53
    if-eqz v9, :label_0ce7
    iget v9, v0, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v9, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v6
    goto :label_0ce8
    :label_0ce7
    const/4 v6, 0x0
    :label_0ce8
    if-eqz v6, :label_0d1a
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v12
    cmp-long v7, v9, v12
    if-eqz v7, :label_0d1a
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v7
    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    if-nez v6, :label_0d1a
    sget v6, Lorg/telegram/messenger/R$string;->AddContactTitle:I
    move-object/from16 v7, v21
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0d1a
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v6
    if-nez v6, :label_0d86
    if-nez v18, :label_0d3a
    sget v6, Lorg/telegram/messenger/R$string;->Copy:I
    move-object/from16 v7, v19
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0d3a
    sget v6, Lorg/telegram/messenger/R$string;->Call:I
    move-object/from16 v7, v27
    invoke-static {v6, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_callback:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0d86
    :label_0d4b
    const/16 v6, 0x9
    if-ne v7, v6, :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v7
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v6
    if-nez v6, :label_0d78
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z
    move-result v6
    if-eqz v6, :label_0d86
    sget v6, Lorg/telegram/messenger/R$string;->AddToFavorites:I
    invoke-static {v6, v2, v3, v9}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_fave:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0d86
    :label_0d78
    sget v6, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I
    invoke-static {v6, v2, v3, v10}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unfave:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0d86
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v6
    if-nez v6, :label_0ded
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->E9()Z
    move-result v6
    if-nez v6, :label_0ded
    iget v6, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v7, 0x1
    if-eq v6, v7, :label_0ded
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v6
    if-eqz v6, :label_0da9
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->hasExtendedMediaPreview()Z
    move-result v6
    if-eqz v6, :label_0ded
    :label_0da9
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z
    move-result v6
    if-nez v6, :label_0ded
    iget-object v6, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v7, v6, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v9, 0x10
    if-eq v7, v9, :label_0ded
    if-nez v49, :label_0ded
    const/16 v9, 0x23
    if-eq v7, v9, :label_0ded
    move/from16 v9, v47
    if-eq v7, v9, :label_0ded
    const/16 v9, 0x21
    if-eq v7, v9, :label_0ded
    const/16 v9, 0x25
    if-eq v7, v9, :label_0ded
    const/16 v9, 0x22
    if-eq v7, v9, :label_0ded
    if-eq v7, v5, :label_0ded
    const/16 v5, 0x15
    if-eq v7, v5, :label_0ded
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isWallpaperAction()Z
    move-result v5
    if-nez v5, :label_0ded
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v5
    if-nez v5, :label_0ded
    iget v5, v11, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0x18
    if-eq v5, v6, :label_0ded
    const/16 v6, 0x1e
    if-eq v5, v6, :label_0ded
    const/4 v5, 0x1
    goto :label_0dee
    :label_0ded
    const/4 v5, 0x0
    :label_0dee
    if-eqz v5, :label_0dff
    sget v5, Lorg/telegram/messenger/R$string;->Forward:I
    const/4 v6, 0x2
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_forward:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0dff
    if-eqz v52, :label_0e10
    sget v5, Lorg/telegram/messenger/R$string;->UnpinMessage:I
    invoke-static {v5, v2, v3, v8}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unpin:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0e20
    :label_0e10
    if-eqz v50, :label_0e20
    sget v5, Lorg/telegram/messenger/R$string;->PinMessage:I
    invoke-static {v5, v2, v3, v14}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_pin:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0e20
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_0e71
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v5
    if-nez v5, :label_0e71
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v6, :label_0e71
    iget-object v6, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    const/4 v7, 0x0
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessageObject;->getMessageTextToTranslate(Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :label_0e4d
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_0e4d
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v5
    if-eqz v5, :label_0e61
    :label_0e4d
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v7, 0x24
    if-ne v6, v7, :label_0e71
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v6, :label_0e71
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    if-eqz v6, :label_0e71
    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->translated:Z
    if-nez v5, :label_0e71
    :label_0e61
    sget v5, Lorg/telegram/messenger/R$string;->TranslateMessage:I
    move-object/from16 v6, v46
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_translate:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0e71
    if-nez v55, :label_0e79
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v7, 0x9
    if-ne v5, v7, :label_0e89
    :label_0e79
    sget v5, Lorg/telegram/messenger/R$string;->Edit:I
    move-object/from16 v6, v43
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0e89
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_0ebb
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v5
    cmp-long v5, v5, v53
    if-nez v5, :label_0ebb
    iget-object v5, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v5, :label_0ebb
    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_0ebb
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    if-nez v6, :label_0ebb
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v5, :label_0ebb
    sget v5, Lorg/telegram/messenger/R$string;->EditOfferAdd:I
    move-object/from16 v6, v42
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_edit_price:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0ebb
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPaidSuggestedPostProtected()Z
    move-result v5
    if-nez v5, :label_0ee2
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v14, 0x1
    if-ne v5, v14, :label_0ee2
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessageObject;->canEditMessageScheduleTime(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_0ee2
    sget v5, Lorg/telegram/messenger/R$string;->MessageScheduleEditTime:I
    const/16 v6, 0x66
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0ee2
    iget-object v5, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v5, :label_0eeb
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v5
    goto :label_0eed
    :label_0eeb
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_0eed
    if-eqz v5, :label_0f22
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isFactCheckable()Z
    move-result v6
    if-eqz v6, :label_0f22
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->canEditFactcheck:Z
    if-eqz v6, :label_0f22
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_0f22
    iget v6, v0, Lorg/telegram/ui/ko;->Q3:I
    if-nez v6, :label_0f22
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFactCheck()Lorg/telegram/tgnet/TLRPC$TL_factCheck;
    move-result-object v5
    if-nez v5, :label_0f12
    sget v5, Lorg/telegram/messenger/R$string;->AddFactCheck:I
    goto :label_0f14
    :label_0f12
    sget v5, Lorg/telegram/messenger/R$string;->EditFactCheck:I
    :label_0f14
    const/16 v6, 0x6a
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_factcheck:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0f22
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/16 v7, 0x9
    if-eq v5, v7, :label_0f74
    const/4 v14, 0x1
    if-eq v5, v14, :label_0f74
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v6, :label_0f74
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    if-lez v5, :label_0f74
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v5
    if-nez v5, :label_0f74
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v5, :label_0f4b
    iget-object v5, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :label_0f74
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-eqz v5, :label_0f74
    :label_0f4b
    iget-object v5, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v5
    if-eqz v5, :label_0f64
    sget v5, Lorg/telegram/messenger/R$string;->BlockContact:I
    move-object/from16 v6, v58
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_block2:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0f74
    :label_0f64
    move-object/from16 v6, v58
    sget v5, Lorg/telegram/messenger/R$string;->ReportChat:I
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_report:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0f74
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v14, 0x1
    if-ne v5, v14, :label_0f7b
    const/4 v5, 0x1
    goto :label_0f7c
    :label_0f7b
    const/4 v5, 0x0
    :label_0f7c
    iget-object v6, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v11, v5, v6}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-eqz v5, :label_03e8
    iget-object v5, v0, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v5, :label_0f8e
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_03e8
    :label_0f8e
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v8, 0x3
    if-ne v5, v8, :label_0fa4
    iget-wide v5, v0, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v5, v5, v7
    if-eqz v5, :label_0fa4
    sget v5, Lorg/telegram/messenger/R$string;->Remove:I
    goto :label_0fa6
    :label_0fa4
    sget v5, Lorg/telegram/messenger/R$string;->Delete:I
    :label_0fa6
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_03e8
    :label_0fb9
    move-object/from16 v17, v4
    move-object/from16 v51, v15
    move-object/from16 v6, v19
    move-object/from16 v5, v21
    move-object/from16 v8, v29
    move-object/from16 v4, v31
    move-object/from16 v11, v33
    move-object/from16 v14, v35
    move-object/from16 v15, v39
    if-nez v16, :label_0fd7
    if-eqz v45, :label_0fd0
    goto :label_0fd7
    :label_0fd0
    move-object/from16 v21, v5
    move-object/from16 v19, v6
    :label_0fd4
    move-object/from16 v6, v51
    goto :label_1001
    :label_0fd7
    if-eqz v60, :label_0fdf
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v16
    if-nez v16, :label_0fd0
    :label_0fdf
    move-object/from16 v19, v6
    iget-boolean v6, v0, Lorg/telegram/ui/ko;->Oa:Z
    if-nez v6, :label_0ffe
    iget v6, v0, Lorg/telegram/ui/ko;->Q3:I
    move-object/from16 v21, v5
    const/16 v5, 0x9
    if-eq v6, v5, :label_0fd4
    sget v5, Lorg/telegram/messenger/R$string;->Reply:I
    move-object/from16 v6, v51
    invoke-static {v5, v2, v3, v6}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_reply:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_1001
    :label_0ffe
    move-object/from16 v21, v5
    goto :label_0fd4
    :label_1001
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v51, v6
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v6, :label_102b
    move-object/from16 v16, v5
    const/16 v5, 0x24
    if-eq v6, v5, :label_102b
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_102b
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z
    move-result v5
    if-nez v5, :label_102b
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v0, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-object/from16 v35, v14
    const/4 v14, 0x0
    invoke-static {v5, v6, v14}, Lorg/telegram/ui/ko;->G8(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v5
    if-eqz v5, :label_1040
    goto :label_102e
    :label_102b
    move-object/from16 v35, v14
    const/4 v14, 0x0
    :label_102e
    if-eqz v18, :label_1032
    if-eqz v44, :label_1040
    :label_1032
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I
    invoke-static {v5, v2, v3, v13}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1040
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->K9()Z
    move-result v5
    if-nez v5, :label_105c
    iget v5, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v6, 0x1
    if-eq v5, v6, :label_105c
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :label_105c
    if-eqz v60, :label_105c
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z
    if-nez v5, :label_105e
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v5
    if-eqz v5, :label_105c
    goto :label_105e
    :label_105c
    const/4 v6, 0x0
    goto :label_1095
    :label_105e
    iget-object v5, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v5, :label_105c
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->canViewThread()Z
    move-result v5
    if-eqz v5, :label_105c
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->hasReplies()Z
    move-result v5
    if-eqz v5, :label_107f
    invoke-virtual/range {v60 .. v60}, Lorg/telegram/messenger/MessageObject;->getRepliesCount()I
    move-result v5
    const/4 v6, 0x0
    new-array v13, v6, [Ljava/lang/Object;
    invoke-static {v9, v5, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_1089
    :label_107f
    const/4 v6, 0x0
    sget v5, Lorg/telegram/messenger/R$string;->ViewThread:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1089
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewreplies:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1095
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_10c3
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_10c3
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v9, :label_10c3
    iget-object v9, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v9, :label_10c3
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z
    if-eqz v9, :label_10c3
    iget-boolean v9, v0, Lorg/telegram/ui/ko;->g4:Z
    if-nez v9, :label_10c3
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v5, :label_10c3
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z
    if-eqz v5, :label_10c3
    sget v5, Lorg/telegram/messenger/R$string;->ViewInTopic:I
    invoke-static {v5, v2, v3, v12}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_viewintopic:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_10c3
    const/4 v5, 0x4
    if-ne v7, v5, :label_1182
    if-nez v18, :label_1182
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasRevealedExtendedMedia()Z
    move-result v5
    if-nez v5, :label_1182
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v5
    if-nez v5, :label_1182
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v5
    if-eqz v5, :label_10fe
    sget v5, Lorg/telegram/messenger/R$string;->SaveToGallery:I
    invoke-static {v5, v2, v3, v11}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_gallery:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v5, v2, v3, v4}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_10fe
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v5
    if-eqz v5, :label_1134
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v5
    if-nez v5, :label_1134
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v5
    if-nez v5, :label_1134
    sget v5, Lorg/telegram/messenger/R$string;->SaveToMusic:I
    invoke-static {v5, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v5, v2, v3, v4}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_1134
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v5
    if-nez v5, :label_1172
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v5
    if-eqz v5, :label_1172
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v5
    if-nez v5, :label_1172
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v5
    if-nez v5, :label_1172
    sget v5, Lorg/telegram/messenger/R$string;->SaveToDownloads:I
    invoke-static {v5, v2, v3, v15}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_download:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v5, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v5, v2, v3, v4}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_shareout:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_1172
    sget v4, Lorg/telegram/messenger/R$string;->SaveToGallery:I
    invoke-static {v4, v2, v3, v11}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_gallery:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_1182
    const/4 v4, 0x5
    if-ne v7, v4, :label_1195
    sget v4, Lorg/telegram/messenger/R$string;->ApplyLocalizationFile:I
    invoke-static {v4, v2, v3, v8}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_language:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_1195
    const/16 v4, 0xa
    if-ne v7, v4, :label_11a9
    sget v4, Lorg/telegram/messenger/R$string;->ApplyThemeFile:I
    invoke-static {v4, v2, v3, v8}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_theme:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_11a9
    const/4 v4, 0x7
    if-ne v7, v4, :label_11be
    sget v4, Lorg/telegram/messenger/R$string;->AddToStickers:I
    move-object/from16 v14, v35
    invoke-static {v4, v2, v3, v14}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_sticker:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_1240
    :label_11be
    const/16 v4, 0x8
    if-ne v7, v4, :label_1240
    iget-object v4, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J
    cmp-long v7, v4, v53
    if-eqz v7, :label_11dd
    iget v7, v0, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v7, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v8
    goto :label_11de
    :label_11dd
    move-object v8, v14
    :label_11de
    if-eqz v8, :label_1210
    iget-wide v4, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v9
    cmp-long v4, v4, v9
    if-eqz v4, :label_1210
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;
    iget-wide v7, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    if-nez v4, :label_1210
    sget v4, Lorg/telegram/messenger/R$string;->AddContactTitle:I
    move-object/from16 v5, v21
    invoke-static {v4, v2, v3, v5}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1210
    iget-object v4, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :label_1240
    if-nez v18, :label_1230
    sget v4, Lorg/telegram/messenger/R$string;->Copy:I
    move-object/from16 v7, v19
    invoke-static {v4, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_copy:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1230
    sget v4, Lorg/telegram/messenger/R$string;->Call:I
    move-object/from16 v7, v27
    invoke-static {v4, v2, v3, v7}, Lorg/telegram/ui/va;->A(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_callback:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1240
    iget v4, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v8, 0x3
    if-ne v4, v8, :label_1256
    iget-wide v4, v0, Lorg/telegram/ui/ko;->c4:J
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v4, v4, v7
    if-eqz v4, :label_1256
    sget v4, Lorg/telegram/messenger/R$string;->Remove:I
    goto :label_1258
    :label_1256
    sget v4, Lorg/telegram/messenger/R$string;->Delete:I
    :label_1258
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v4, v17
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_126b
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;
    iget-object v5, v5, Lorg/telegram/messenger/AppGlobalConfig;->walletAvailable:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;
    invoke-virtual {v5}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z
    move-result v5
    if-eqz v5, :label_12d0
    iget-object v5, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGramTransfer;
    if-eqz v7, :label_12d0
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v7
    cmp-long v5, v7, v53
    if-lez v5, :label_12d0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    iget-object v7, v0, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v5
    if-eqz v5, :label_12d0
    move-object/from16 v5, v51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v5
    if-ltz v5, :label_12ac
    const/16 v40, 0x1
    add-int/lit8 v5, v5, 0x1
    goto :label_12b5
    :label_12ac
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v4
    if-gez v4, :label_12b4
    move v5, v6
    goto :label_12b5
    :label_12b4
    move v5, v4
    :label_12b5
    sget v4, Lorg/telegram/messenger/R$string;->WalletSendMoney:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    const/16 v4, 0x75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_gram:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :label_12d0
    invoke-virtual/range {v59 .. v60}, Lorg/telegram/ui/ko;->ac(Lorg/telegram/messenger/MessageObject;)Z
    move-result v4
    if-eqz v4, :label_12e6
    sget v4, Lorg/telegram/messenger/R$string;->WelcomeMessageRevert:I
    const/16 v5, 0x74
    invoke-static {v4, v5, v2, v3}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v2, Lorg/telegram/messenger/R$drawable;->outline_revert_24:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_12e6
    return-void
.end method
