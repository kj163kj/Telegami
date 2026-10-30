# file_id=2 method_idx=26984 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->V3(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V"
.method public final V3(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V
    .registers 116

    move-object/from16 v1, v109
    move-object/from16 v12, v110
    move-object/from16 v6, v111
    move/from16 v0, v112
    move/from16 v2, v113
    move/from16 v14, v114
    move/from16 v15, v115
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->checkLayout()Z
    move-result v3
    const/4 v13, 0x0
    if-eqz v3, :label_0016
    goto :label_0024
    :label_0016
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v3, :label_001b
    goto :label_0026
    :label_001b
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->U4:I
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v4, v4, Landroid/graphics/Point;->y:I
    if-ne v3, v4, :label_0024
    goto :label_0026
    :label_0024
    iput-object v13, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    :label_0026
    iput-object v13, v12, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->T4:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    if-ne v3, v4, :label_0032
    const/4 v3, 0x0
    goto :label_0033
    :label_0032
    const/4 v3, 0x1
    :label_0033
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v4, v4, Landroid/graphics/Point;->y:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->U4:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->T4:I
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v4
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->pd:Z
    const/4 v10, 0x0
    iput v10, v1, Lorg/telegram/ui/Cells/u1;->Ab:F
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z
    move-result v4
    if-nez v4, :label_0050
    move-object v4, v13
    goto :label_0054
    :label_0050
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :label_0054
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v5, :label_0059
    goto :label_0065
    :label_0059
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    if-ne v5, v7, :label_0065
    const/4 v11, 0x0
    goto :label_0066
    :label_0065
    const/4 v11, 0x1
    :label_0066
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eq v5, v12, :label_006b
    goto :label_0096
    :label_006b
    iget-boolean v5, v12, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z
    if-eqz v5, :label_0070
    goto :label_0096
    :label_0070
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v5, :label_0075
    goto :label_0094
    :label_0075
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;
    move-result-object v7
    iget-object v10, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7, v10}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    move-result v7
    if-nez v7, :label_0084
    goto :label_008f
    :label_0084
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-nez v7, :label_0089
    goto :label_008f
    :label_0089
    invoke-interface {v7}, Lorg/telegram/ui/Cells/l1;->o1()Z
    move-result v7
    if-eqz v7, :label_0091
    :label_008f
    const/4 v7, 0x0
    goto :label_0092
    :label_0091
    const/4 v7, 0x1
    :label_0092
    if-ne v5, v7, :label_0096
    :label_0094
    const/4 v5, 0x0
    goto :label_0097
    :label_0096
    const/4 v5, 0x1
    :label_0097
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const/4 v10, 0x3
    if-nez v7, :label_009d
    goto :label_00b4
    :label_009d
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    if-eq v7, v9, :label_00a8
    goto :label_00b4
    :label_00a8
    iget v7, v1, Lorg/telegram/ui/Cells/u1;->Lc:I
    if-eq v7, v10, :label_00ad
    goto :label_00b4
    :label_00ad
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSent()Z
    move-result v7
    if-eqz v7, :label_00b4
    goto :label_00e2
    :label_00b4
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eq v7, v12, :label_00b9
    goto :label_00c5
    :label_00b9
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->s3()Z
    move-result v7
    if-eqz v7, :label_00c0
    goto :label_00e2
    :label_00c0
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/u1;->Z4:Z
    if-eqz v7, :label_00c5
    goto :label_00e2
    :label_00c5
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->e7:Ljava/lang/String;
    iget-object v9, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    if-eq v7, v9, :label_00ce
    goto :label_00e2
    :label_00ce
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/u1;->Y7:Z
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->X7:Z
    if-eq v7, v9, :label_00d5
    goto :label_00e2
    :label_00d5
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->f7:Lorg/telegram/tgnet/TLRPC$Message;
    if-eq v4, v7, :label_00da
    goto :label_00e2
    :label_00da
    iget-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->translated:Z
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/u1;->Qc:Z
    if-ne v4, v7, :label_00e2
    const/4 v4, 0x0
    goto :label_00e3
    :label_00e2
    const/4 v4, 0x1
    :label_00e3
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-ne v6, v7, :label_00e9
    const/4 v7, 0x0
    goto :label_00ea
    :label_00e9
    const/4 v7, 0x1
    :label_00ea
    if-eqz v11, :label_00ed
    goto :label_010a
    :label_00ed
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v9, :label_00f2
    goto :label_010a
    :label_00f2
    iget v8, v12, Lorg/telegram/messenger/MessageObject;->stableId:I
    invoke-virtual {v12, v9}, Lorg/telegram/messenger/MessageObject;->copyStableParams(Lorg/telegram/messenger/MessageObject;)V
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v9, v9, Lorg/telegram/messenger/MessageObject;->isSavedFiltered:Z
    if-nez v9, :label_00fe
    goto :label_0103
    :label_00fe
    iget-boolean v9, v12, Lorg/telegram/messenger/MessageObject;->isSavedFiltered:Z
    if-eqz v9, :label_0103
    goto :label_0108
    :label_0103
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v9, :label_0108
    goto :label_010a
    :label_0108
    iput v8, v12, Lorg/telegram/messenger/MessageObject;->stableId:I
    :label_010a
    iput-object v13, v1, Lorg/telegram/ui/Cells/u1;->B3:Landroid/text/SpannableStringBuilder;
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->i9:Z
    move/from16 v19, v8
    const/4 v8, 0x4
    if-eqz v19, :label_0117
    move v9, v11
    const/16 v19, 0x8
    goto :label_0155
    :label_0117
    const/16 v19, 0x8
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->K5:Z
    if-eqz v9, :label_011f
    move v9, v11
    goto :label_0155
    :label_011f
    iget v9, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    if-eq v9, v10, :label_0125
    move v9, v11
    goto :label_0153
    :label_0125
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->W7:Z
    if-nez v9, :label_012b
    move v9, v11
    goto :label_0135
    :label_012b
    move v9, v11
    iget-wide v10, v1, Lorg/telegram/ui/Cells/u1;->a8:J
    invoke-virtual {v12, v10, v11}, Lorg/telegram/messenger/MessageObject;->isLinkedToChat(J)Z
    move-result v10
    if-eqz v10, :label_0135
    goto :label_013a
    :label_0135
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-nez v10, :label_013a
    goto :label_0155
    :label_013a
    iget-object v10, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v10, :label_013f
    goto :label_0153
    :label_013f
    iget-object v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F
    if-eqz v11, :label_0144
    goto :label_014b
    :label_0144
    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v13, v13, 0x8
    if-eqz v13, :label_014b
    goto :label_0153
    :label_014b
    if-nez v11, :label_014e
    goto :label_0155
    :label_014e
    iget v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/2addr v10, v8
    if-nez v10, :label_0155
    :label_0153
    move v10, v4
    goto :label_0156
    :label_0155
    const/4 v10, 0x1
    :label_0156
    if-eqz v5, :label_0159
    goto :label_0165
    :label_0159
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v4
    if-nez v4, :label_0160
    goto :label_0165
    :label_0160
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->M0:Z
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/u1;->M3(Z)Z
    :label_0165
    if-eqz v5, :label_0168
    goto :label_016e
    :label_0168
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isPoll()Z
    move-result v4
    if-nez v4, :label_0173
    :label_016e
    move/from16 v23, v3
    const/4 v8, 0x0
    goto/16 :label_0287
    :label_0173
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v4
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-nez v4, :label_0181
    const/4 v4, 0x0
    const/4 v11, 0x0
    const/4 v13, 0x0
    goto :label_0191
    :label_0181
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I
    :label_0191
    if-nez v13, :label_0194
    goto :label_019d
    :label_0194
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->P6:Ljava/util/ArrayList;
    if-nez v8, :label_0199
    goto :label_019d
    :label_0199
    iget v8, v1, Lorg/telegram/ui/Cells/u1;->Q6:I
    if-ne v11, v8, :label_019f
    :label_019d
    const/4 v8, 0x0
    goto :label_01a0
    :label_019f
    const/4 v8, 0x1
    :label_01a0
    if-eqz v8, :label_01a5
    move/from16 v23, v3
    goto :label_01ad
    :label_01a5
    move/from16 v23, v3
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->P6:Ljava/util/ArrayList;
    if-ne v13, v3, :label_01ac
    goto :label_01ad
    :label_01ac
    const/4 v8, 0x1
    :label_01ad
    if-eqz v8, :label_01b0
    goto :label_01b8
    :label_01b0
    iget-boolean v3, v12, Lorg/telegram/messenger/MessageObject;->forceShowPollResults:Z
    iget-boolean v13, v1, Lorg/telegram/ui/Cells/u1;->t6:Z
    if-ne v3, v13, :label_01b7
    goto :label_01b8
    :label_01b7
    const/4 v8, 0x1
    :label_01b8
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->N6:Lorg/telegram/tgnet/TLRPC$Poll;
    if-ne v3, v4, :label_01bd
    goto :label_01cb
    :label_01bd
    if-nez v3, :label_01c0
    goto :label_01c4
    :label_01c0
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z
    if-nez v3, :label_01c6
    :label_01c4
    const/4 v3, 0x0
    goto :label_01c7
    :label_01c6
    const/4 v3, 0x1
    :label_01c7
    iget-boolean v13, v4, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z
    if-ne v3, v13, :label_01cd
    :label_01cb
    const/4 v3, 0x0
    goto :label_01da
    :label_01cd
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->l6:Z
    if-eqz v3, :label_01d3
    const/4 v3, 0x0
    goto :label_01d9
    :label_01d3
    const/4 v3, 0x1
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->x6:Z
    const/4 v3, 0x0
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->y6:Z
    :label_01d9
    const/4 v8, 0x1
    :label_01da
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->B6:Z
    if-nez v8, :label_01df
    goto :label_020f
    :label_01df
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-nez v3, :label_01e4
    goto :label_020f
    :label_01e4
    const/4 v3, 0x0
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->g6:F
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->l6:Z
    if-eqz v3, :label_01ec
    goto :label_01f1
    :label_01ec
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->t6:Z
    if-nez v3, :label_01f1
    goto :label_0200
    :label_01f1
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVoted()Z
    move-result v3
    if-eqz v3, :label_01f8
    goto :label_0200
    :label_01f8
    iget-boolean v3, v12, Lorg/telegram/messenger/MessageObject;->forceShowPollResults:Z
    if-eqz v3, :label_01fd
    goto :label_0200
    :label_01fd
    const/4 v3, 0x1
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->z6:Z
    :label_0200
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->Q6:I
    if-nez v3, :label_0205
    goto :label_020c
    :label_0205
    if-nez v3, :label_0208
    goto :label_020a
    :label_0208
    if-eqz v11, :label_020c
    :label_020a
    const/4 v3, 0x0
    goto :label_020d
    :label_020c
    const/4 v3, 0x1
    :label_020d
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->B6:Z
    :label_020f
    if-eqz v9, :label_0213
    goto/16 :label_0287
    :label_0213
    if-nez v4, :label_0217
    goto/16 :label_0287
    :label_0217
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->N6:Lorg/telegram/tgnet/TLRPC$Poll;
    if-nez v3, :label_021d
    goto/16 :label_0287
    :label_021d
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z
    if-nez v3, :label_0223
    goto/16 :label_0287
    :label_0223
    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z
    if-nez v3, :label_0228
    goto :label_0287
    :label_0228
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v3, :label_022d
    goto :label_0287
    :label_022d
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->l6:Z
    if-eqz v3, :label_0232
    goto :label_0287
    :label_0232
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVoted()Z
    move-result v3
    if-nez v3, :label_0239
    goto :label_0287
    :label_0239
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    if-nez v4, :label_0246
    goto :label_0287
    :label_0246
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v4
    if-eqz v4, :label_024f
    goto :label_0287
    :label_024f
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v11, 0x0
    :label_0258
    if-lt v11, v4, :label_025c
    const/4 v13, 0x0
    goto :label_0271
    :label_025c
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/tgnet/TLRPC$PollAnswerVoters;
    move-object/from16 v24, v3
    iget-boolean v3, v13, Lorg/telegram/tgnet/TLRPC$PollAnswerVoters;->chosen:Z
    if-nez v3, :label_0271
    add-int/lit8 v11, v11, 0x1
    move-object/from16 v3, v24
    goto :label_0258
    :label_0271
    if-nez v13, :label_0274
    goto :label_0287
    :label_0274
    add-int/lit16 v11, v11, 0x1f4
    iget-boolean v3, v13, Lorg/telegram/tgnet/TLRPC$PollAnswerVoters;->correct:Z
    if-nez v3, :label_027d
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrQuizIncorrectAnswer:I
    goto :label_027f
    :label_027d
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrQuizCorrectAnswer:I
    :label_027f
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x4
    invoke-virtual {v1, v11, v4, v3}, Lorg/telegram/ui/Cells/u1;->I3(IILjava/lang/String;)V
    :label_0287
    if-eqz v7, :label_028a
    goto :label_02a7
    :label_028a
    if-nez v6, :label_028d
    goto :label_02a7
    :label_028d
    iget-object v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0x1
    if-gt v3, v4, :label_0298
    const/4 v3, 0x0
    goto :label_02a0
    :label_0298
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    move-result-object v3
    :label_02a0
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-ne v3, v4, :label_02a6
    const/4 v7, 0x0
    goto :label_02a7
    :label_02a6
    const/4 v7, 0x1
    :label_02a7
    if-eqz v5, :label_02aa
    goto :label_02b6
    :label_02aa
    iget-wide v3, v1, Lorg/telegram/ui/Cells/u1;->h0:J
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getEffectId()J
    move-result-wide v24
    cmp-long v3, v3, v24
    if-nez v3, :label_02b5
    goto :label_02b6
    :label_02b5
    const/4 v5, 0x1
    :label_02b6
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->F8:Z
    invoke-virtual {v12, v3}, Lorg/telegram/messenger/MessageObject;->updateSideMenuEnabled(Z)Z
    move-result v3
    if-nez v3, :label_02c1
    move/from16 v24, v5
    goto :label_02c3
    :label_02c1
    const/16 v24, 0x1
    :label_02c3
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->Yc:Lorg/telegram/ui/Cells/t1;
    const/4 v11, 0x5
    move v5, v8
    move/from16 v25, v9
    move/from16 v26, v7
    iget v7, v1, Lorg/telegram/ui/Cells/u1;->H7:I
    move/from16 v27, v7
    const/4 v7, 0x2
    if-eqz v24, :label_02d3
    goto :label_0302
    :label_02d3
    if-eqz v10, :label_02d6
    goto :label_0302
    :label_02d6
    if-eqz v26, :label_02d9
    goto :label_0302
    :label_02d9
    if-eqz v5, :label_02dc
    goto :label_0302
    :label_02dc
    if-nez v23, :label_02df
    goto :label_02e6
    :label_02df
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isPoll()Z
    move-result v23
    if-eqz v23, :label_02e6
    goto :label_0302
    :label_02e6
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->l3(Lorg/telegram/messenger/MessageObject;)Z
    move-result v23
    if-eqz v23, :label_02ed
    goto :label_0302
    :label_02ed
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->E:Z
    if-eq v4, v0, :label_02f2
    goto :label_0302
    :label_02f2
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->D:Z
    if-ne v4, v2, :label_0302
    move-object v14, v1
    move-object v9, v12
    move-object v11, v13
    move/from16 v15, v27
    const/4 v2, 0x0
    const/4 v8, -0x1
    const/high16 v33, 0x3f800000
    goto/32 :label_7643
    :label_0302
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->w:Lo7/i;
    invoke-virtual {v4}, Lo7/i;->v()V
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    if-nez v4, :label_030c
    goto :label_030f
    :label_030c
    invoke-virtual {v4}, Lorg/telegram/ui/Components/sy0;->e()V
    :label_030f
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->X7:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Y7:Z
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E:Z
    iput-boolean v14, v1, Lorg/telegram/ui/Cells/u1;->F:Z
    iput-boolean v15, v1, Lorg/telegram/ui/Cells/u1;->G:Z
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->D:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_0320
    goto :label_032b
    :label_0320
    if-ne v0, v12, :label_0323
    goto :label_032b
    :label_0323
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-nez v0, :label_0328
    goto :label_032b
    :label_0328
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/RichMessageLayout;->detach(Landroid/view/View;)V
    :label_032b
    iput-object v12, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iput-object v6, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    const-wide/high16 v3, -0x4000000000000000L
    iput-wide v3, v1, Lorg/telegram/ui/Cells/u1;->P5:D
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->e7:Ljava/lang/String;
    if-eqz v25, :label_033d
    :label_033b
    const/4 v3, 0x0
    goto :label_0340
    :label_033d
    if-nez v26, :label_033b
    goto :label_034e
    :label_0340
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->f8:Z
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->F3:Z
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->x0:Z
    if-nez v0, :label_0349
    goto :label_034c
    :label_0349
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->G3()V
    :label_034c
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->x0:Z
    :label_034e
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v0, :label_0354
    :label_0352
    const/4 v3, 0x0
    goto :label_035e
    :label_0354
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v3, 0x1
    if-gt v0, v3, :label_0363
    goto :label_0352
    :label_035e
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    goto :label_0373
    :label_0363
    const/4 v3, 0x0
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_0371
    goto :label_0373
    :label_0371
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    :label_0373
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v0, :label_0378
    goto :label_03a9
    :label_0378
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z
    if-nez v0, :label_03a9
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->D:Z
    if-nez v0, :label_0381
    goto :label_038e
    :label_0381
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_0386
    goto :label_0390
    :label_0386
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v22, 0x4
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_0390
    :label_038e
    const/4 v0, 0x0
    goto :label_0391
    :label_0390
    const/4 v0, 0x1
    :label_0391
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->H:Z
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E:Z
    if-nez v0, :label_0398
    goto :label_03a3
    :label_0398
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_039d
    goto :label_03a5
    :label_039d
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v0, v0, 0x8
    if-nez v0, :label_03a5
    :label_03a3
    const/4 v0, 0x0
    goto :label_03a6
    :label_03a5
    const/4 v0, 0x1
    :label_03a6
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->I:Z
    goto :label_03b1
    :label_03a9
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->D:Z
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->H:Z
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E:Z
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->I:Z
    :label_03b1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v3, :label_03b8
    goto :label_03d9
    :label_03b8
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    move-result v3
    if-nez v3, :label_03c5
    goto :label_03d9
    :label_03c5
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-nez v3, :label_03ca
    goto :label_03d9
    :label_03ca
    invoke-interface {v3}, Lorg/telegram/ui/Cells/l1;->o1()Z
    move-result v3
    if-eqz v3, :label_03d1
    goto :label_03d9
    :label_03d1
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    invoke-interface {v3}, Lorg/telegram/ui/Cells/l1;->h1()Z
    move-result v3
    if-eqz v3, :label_03db
    :label_03d9
    const/4 v3, 0x0
    goto :label_03dc
    :label_03db
    const/4 v3, 0x1
    :label_03dc
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->R0:Lcf/n1;
    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    const/16 v2, 0x96
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V
    const/4 v2, 0x0
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeByScale(F)V
    const/4 v2, 0x0
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->o0:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->p0:I
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->translated:Z
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->Qc:Z
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Lc:I
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Mc:I
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Nc:I
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getRepliesCount()I
    move-result v2
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Oc:I
    if-nez v25, :label_0417
    const/4 v4, 0x0
    goto :label_041f
    :label_0417
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->d8:Z
    const/4 v2, 0x1
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->k8:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->P:Z
    :label_041f
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->x5:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->wa:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->za:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->J8:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->f:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-nez v2, :label_042e
    goto :label_043e
    :label_042e
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-nez v4, :label_0435
    goto :label_043e
    :label_0435
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I
    if-nez v4, :label_043a
    goto :label_043e
    :label_043a
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_0440
    :label_043e
    const/4 v2, 0x0
    goto :label_0441
    :label_0440
    const/4 v2, 0x1
    :label_0441
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->o8:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v2
    if-nez v2, :label_044a
    goto :label_0453
    :label_044a
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_044f
    goto :label_0455
    :label_044f
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-nez v2, :label_0455
    :label_0453
    const/4 v2, 0x0
    goto :label_0456
    :label_0455
    const/4 v2, 0x1
    :label_0456
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->n8:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v2
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->customAvatarDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :label_0462
    :label_0460
    const/4 v2, 0x1
    goto :label_0471
    :label_0462
    iget-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z
    if-eqz v4, :label_0467
    goto :label_0460
    :label_0467
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v4, :label_0460
    move/from16 v26, v2
    :label_046f
    const/4 v4, 0x0
    goto :label_0476
    :label_0471
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->n8:Z
    const/16 v26, 0x1
    goto :label_046f
    :label_0476
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->l8:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->L:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->A1:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->y1:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->z1:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->D1:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->va:I
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v2
    if-nez v2, :label_0549
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->searchType:I
    if-eq v2, v7, :label_053d
    const/4 v4, 0x1
    if-eq v2, v4, :label_0539
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v8
    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/MessagesController;->isPeerNoForwards(J)Z
    move-result v2
    if-eqz v2, :label_04a1
    :label_049f
    const/4 v4, 0x0
    goto :label_04f6
    :label_04a1
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v2, :label_04a6
    goto :label_04aa
    :label_04a6
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-nez v2, :label_049f
    :label_04aa
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-eqz v2, :label_04af
    goto :label_04b5
    :label_04af
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_04b7
    :label_04b5
    const/4 v2, 0x0
    goto :label_04b8
    :label_04b7
    const/4 v2, 0x1
    :label_04b8
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->c8:Z
    if-eqz v4, :label_04bf
    goto :label_04f2
    :label_04bf
    const/4 v4, 0x1
    if-eq v2, v4, :label_04c4
    goto/16 :label_0553
    :label_04c4
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-nez v2, :label_04cb
    goto :label_04ec
    :label_04cb
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_04d2
    goto :label_04ec
    :label_04d2
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v2, :label_04db
    goto :label_04ec
    :label_04db
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v8
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v30
    cmp-long v2, v8, v30
    if-nez v2, :label_04ec
    goto :label_04f2
    :label_04ec
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->isSaved:Z
    if-nez v2, :label_04f2
    goto/16 :label_0553
    :label_04f2
    iput v7, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto/16 :label_0553
    :label_04f6
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->c8:Z
    if-nez v2, :label_04fe
    goto/16 :label_0553
    :label_04fe
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-eqz v2, :label_0503
    goto :label_0553
    :label_0503
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v2
    if-eqz v2, :label_050a
    goto :label_0553
    :label_050a
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v2, :label_050f
    goto :label_0513
    :label_050f
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_0516
    :label_0513
    iput v7, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto :label_0553
    :label_0516
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v4, v2, 0x8
    if-nez v4, :label_051d
    goto :label_0529
    :label_051d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_0525
    move v4, v7
    goto :label_0526
    :label_0525
    const/4 v4, 0x1
    :label_0526
    and-int/2addr v2, v4
    if-nez v2, :label_052b
    :label_0529
    const/4 v2, 0x0
    goto :label_052c
    :label_052b
    const/4 v2, 0x1
    :label_052c
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z
    if-eqz v4, :label_0533
    goto :label_0536
    :label_0533
    if-nez v2, :label_0536
    goto :label_0553
    :label_0536
    iput v7, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto :label_0553
    :label_0539
    const/4 v4, 0x0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto :label_0553
    :label_053d
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_0545
    const/4 v2, 0x0
    goto :label_0546
    :label_0545
    move v2, v7
    :label_0546
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto :label_0553
    :label_0549
    const/4 v4, 0x4
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-nez v2, :label_0551
    goto :label_0553
    :label_0551
    iput v11, v1, Lorg/telegram/ui/Cells/u1;->va:I
    :label_0553
    invoke-static {v12}, Lorg/telegram/messenger/TranslateController;->isSummarizable(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->xa:Z
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->z9:Z
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->ga:Z
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Oa:Landroid/text/StaticLayout;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->cb:Landroid/text/StaticLayout;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->db:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Na:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Ma:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->La:Z
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Ra:Landroid/graphics/RectF;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Sa:Lpf/a;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->I4:Z
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->pc:Lorg/telegram/ui/Components/x5;
    invoke-static {v1, v8}, Lorg/telegram/ui/Components/b6;->release(Landroid/view/View;Lorg/telegram/ui/Components/x5;)V
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->f7:Lorg/telegram/tgnet/TLRPC$Message;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->G4:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->m7:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->L9:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->z8:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->d2:I
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->V9:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->hc:Lorg/telegram/tgnet/TLRPC$User;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->N2:Landroid/text/StaticLayout;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Ya:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->s1:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v2, :label_05ab
    goto :label_05b0
    :label_05ab
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    if-eqz v2, :label_05b0
    goto :label_05b9
    :label_05b0
    if-nez v6, :label_05b3
    goto :label_05b7
    :label_05b3
    iget-boolean v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionAbove:Z
    if-nez v2, :label_05b9
    :label_05b7
    const/4 v2, 0x0
    goto :label_05ba
    :label_05b9
    const/4 v2, 0x1
    :label_05ba
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->t1:Z
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->u1:Z
    const-wide/16 v8, 0x0
    iput-wide v8, v1, Lorg/telegram/ui/Cells/u1;->x1:J
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->Vc:Z
    if-nez v2, :label_05c8
    goto :label_05cf
    :label_05c8
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->nd:Lorg/telegram/ui/Cells/e1;
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Vc:Z
    :label_05cf
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->v5:Lorg/telegram/ui/Components/na0;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/na0;->c()V
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->s5:Lorg/telegram/ui/Components/ra0;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->r5:Lorg/telegram/ui/Components/b6;
    const/4 v2, -0x1
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->w5:I
    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->L1:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->h1:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->g2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->M1:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->h2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->i2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->j2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->k2:Z
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->b7:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->c7:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->k9:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->q3:Z
    const/4 v4, 0x0
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->W0:Landroid/graphics/drawable/GradientDrawable;
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    if-nez v8, :label_05ff
    :label_05fd
    const/4 v4, 0x0
    goto :label_060c
    :label_05ff
    iget v9, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x1d
    if-ne v9, v2, :label_0606
    goto :label_05fd
    :label_0606
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/l4;->e()V
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    goto :label_05fd
    :label_060c
    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/u1;->setInstantButtonPressed(Z)V
    if-eqz v5, :label_0612
    goto :label_061b
    :label_0612
    const/4 v2, 0x0
    :label_0613
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->u3:[Landroid/graphics/drawable/Drawable;
    array-length v5, v4
    if-ge v2, v5, :label_061b
    goto/32 :label_7c57
    :label_061b
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->D3()V
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->H2:Lorg/telegram/ui/Components/yc;
    if-nez v2, :label_0624
    const/4 v4, 0x0
    goto :label_0628
    :label_0624
    const/4 v4, 0x0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/yc;->c(Z)V
    :label_0628
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->V2:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->R2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->T2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->S2:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->U2:Z
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->v7:Lrg/g;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->w7:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->O4:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->s0:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Q4:I
    const/4 v2, -0x1
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->u7:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->K6:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->V6:Z
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Y6:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->M6:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->d7:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->j7:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->l2:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->e2:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->m2:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v5, 0x0
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->L2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->B2:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->a4:I
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput-object v8, v1, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->q4:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->n4:I
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->g4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->f4:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->h4:Ljava/lang/CharSequence;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->k4:I
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->X3:Lorg/telegram/ui/Components/d21;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    if-nez v4, :label_0686
    goto :label_068b
    :label_0686
    invoke-virtual {v4}, Lorg/telegram/ui/Components/l9;->h()V
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    :label_068b
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->w4:Lte/n;
    if-nez v4, :label_0691
    :label_068f
    const/4 v4, 0x0
    goto :label_0697
    :label_0691
    invoke-virtual {v4}, Lte/n;->b()V
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->w4:Lte/n;
    goto :label_068f
    :label_0697
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->v1:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->w1:Z
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v24, :label_06a6
    goto :label_06ad
    :label_06a6
    if-eqz v25, :label_06a9
    goto :label_06ad
    :label_06a9
    if-nez v10, :label_06ad
    :label_06ab
    const/4 v2, -0x1
    goto :label_06b0
    :label_06ad
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    goto :label_06ab
    :label_06b0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->N4:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->W4:I
    const/4 v4, 0x0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->V4:I
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->F4:Z
    if-nez v4, :label_06bd
    :label_06bb
    const/4 v4, 0x0
    goto :label_06d1
    :label_06bd
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    if-nez v4, :label_06c2
    goto :label_06bb
    :label_06c2
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    if-nez v4, :label_06c7
    goto :label_06bb
    :label_06c7
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageLoader;->removeTestWebFile(Ljava/lang/String;)V
    goto :label_06bb
    :label_06d1
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->F4:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Z4:Z
    const/4 v5, 0x1
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->E5:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->K5:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->a3:I
    const/4 v5, 0x0
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->De:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->X9:Landroid/graphics/drawable/Drawable;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->W9:I
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->fa:Landroid/graphics/drawable/Drawable;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->ea:I
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->b3:Ljava/lang/CharSequence;
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->i9:Z
    const/4 v8, 0x0
    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->setSideClip(F)V
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V
    const/4 v9, 0x1
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadiusEnabled(Z)V
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->i3:Landroid/graphics/LinearGradient;
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->j3:Lorg/telegram/ui/Components/pd0;
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->d6:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->e6:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->c3:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->e3:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->f3:I
    iput v8, v1, Lorg/telegram/ui/Cells/u1;->d3:F
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->g3:I
    const/16 v5, 0x2d
    iput v5, v1, Lorg/telegram/ui/Cells/u1;->h3:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->k3:I
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    if-nez v5, :label_071d
    goto :label_071f
    :label_071d
    iput-boolean v4, v5, Lorg/telegram/ui/Cells/m3;->a:Z
    :label_071f
    iput v4, v3, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-nez v4, :label_0728
    goto :label_0730
    :label_0728
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->psa_type:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :label_0732
    :label_0730
    const/4 v4, 0x0
    goto :label_0733
    :label_0732
    const/4 v4, 0x1
    :label_0733
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->g7:Z
    if-nez v4, :label_0738
    goto :label_073c
    :label_0738
    const/4 v4, 0x0
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/u1;->s1(I)V
    :label_073c
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Od:Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;
    if-nez v4, :label_0742
    const/4 v2, 0x0
    goto :label_0750
    :label_0742
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v8
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->isBotPendingDraft:Z
    invoke-virtual {v4, v8, v9, v5, v2}, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->getAnimator(JIZ)Lorg/telegram/ui/xj0;
    move-result-object v2
    :label_0750
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->he:Lorg/telegram/ui/xj0;
    if-nez v2, :label_0759
    :label_0754
    move v7, v0
    move-object v11, v3
    const/high16 v9, 0x3f800000
    goto :label_0787
    :label_0759
    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v5, 0x24
    if-ne v4, v5, :label_0760
    goto :label_0765
    :label_0760
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v2, v4}, Lorg/telegram/ui/xj0;->l(Ljava/util/List;)V
    :label_0765
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->isBotPendingDraft:Z
    if-eqz v2, :label_076a
    goto :label_0754
    :label_076a
    move-object v4, v3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v2
    move-object v5, v4
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->he:Lorg/telegram/ui/xj0;
    move v9, v0
    new-instance v0, Lorg/telegram/messenger/z5;
    move-object/from16 v30, v5
    const/4 v5, 0x5
    move v7, v9
    move-object/from16 v11, v30
    const/high16 v9, 0x3f800000
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/z5;-><init>(Ljava/lang/Object;JII)V
    invoke-virtual {v8, v0}, Lorg/telegram/ui/xj0;->m(Lorg/telegram/messenger/z5;)V
    :label_0787
    invoke-virtual {v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V
    if-eqz v24, :label_078d
    goto :label_0791
    :label_078d
    if-nez v10, :label_0791
    :label_078f
    const/4 v4, 0x0
    goto :label_07b4
    :label_0791
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->z6:Z
    if-eqz v0, :label_0796
    goto :label_078f
    :label_0796
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->X5:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v2, 0x0
    :label_079d
    if-ge v2, v3, :label_07a2
    goto/32 :label_7c1c
    :label_07a2
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->W5:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->W5:Ljava/util/ArrayList;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->X5:Ljava/util/ArrayList;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->X5:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    goto :label_078f
    :label_07b4
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-virtual {v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setForceLoading(Z)V
    invoke-virtual {v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V
    invoke-virtual {v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V
    invoke-virtual {v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V
    const/4 v2, 0x0
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    const-wide/16 v2, -0x1
    const-wide/16 v4, -0x1
    invoke-virtual {v11, v2, v3, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setMediaStartEndTime(JJ)V
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->M:Lvf/q0;
    if-eqz v25, :label_07d3
    :label_07d1
    const/4 v4, 0x0
    goto :label_07de
    :label_07d3
    iget-boolean v0, v12, Lorg/telegram/messenger/MessageObject;->reactionsChanged:Z
    if-eqz v0, :label_07d8
    goto :label_07d1
    :label_07d8
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-ne v7, v0, :label_07d1
    goto/16 :label_084d
    :label_07de
    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->reactionsChanged:Z
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v0, :label_07e5
    goto :label_07ee
    :label_07e5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    if-nez v0, :label_07ea
    goto :label_07ee
    :label_07ea
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->reactions_as_tags:Z
    if-nez v0, :label_07f0
    :label_07ee
    const/4 v0, 0x0
    goto :label_07f1
    :label_07f0
    const/4 v0, 0x1
    :label_07f1
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactions()Z
    move-result v2
    if-nez v2, :label_07f8
    goto :label_080a
    :label_07f8
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v2
    if-eqz v2, :label_07ff
    goto :label_080a
    :label_07ff
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_0804
    goto :label_0812
    :label_0804
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x8
    if-nez v2, :label_0812
    :label_080a
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    const/4 v2, 0x0
    const/4 v4, 0x0
    invoke-virtual {v8, v2, v4, v4, v0}, Lvf/q0;->s(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/j6;)V
    goto :label_084d
    :label_0812
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactionsInLayout()Z
    move-result v2
    const/16 v18, 0x1
    xor-int/lit8 v2, v2, 0x1
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v3, :label_0824
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-virtual {v8, v12, v2, v0, v3}, Lvf/q0;->s(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/j6;)V
    goto :label_084d
    :label_0824
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    if-eqz v0, :label_082b
    goto :label_083c
    :label_082b
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v2, :label_0830
    goto :label_083c
    :label_0830
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    if-nez v0, :label_0835
    goto :label_0839
    :label_0835
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->reactions_as_tags:Z
    if-nez v0, :label_083b
    :label_0839
    const/4 v0, 0x0
    goto :label_083c
    :label_083b
    const/4 v0, 0x1
    :label_083c
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactionsInLayout()Z
    move-result v3
    const/16 v18, 0x1
    xor-int/lit8 v3, v3, 0x1
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-virtual {v8, v2, v3, v0, v4}, Lvf/q0;->s(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/j6;)V
    :label_084d
    if-nez v24, :label_0850
    goto :label_0869
    :label_0850
    const/4 v4, 0x0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->C0:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->B0:I
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_085a
    goto :label_0869
    :label_085a
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    if-nez v0, :label_085f
    goto :label_0869
    :label_085f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v3, 0x1
    if-gt v0, v3, :label_0867
    goto :label_0869
    :label_0867
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->G0:Z
    :label_0869
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v0, :label_086e
    goto :label_0876
    :label_086e
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-gtz v0, :label_087d
    :label_0876
    iget-wide v2, v1, Lorg/telegram/ui/Cells/u1;->a8:J
    invoke-virtual {v12, v2, v3}, Lorg/telegram/messenger/MessageObject;->isLinkedToChat(J)Z
    move-result v0
    goto :label_088e
    :label_087d
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    iget-wide v2, v1, Lorg/telegram/ui/Cells/u1;->a8:J
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessageObject;->isLinkedToChat(J)Z
    move-result v0
    :label_088e
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->W7:Z
    const/16 v3, 0x11
    const/high16 v40, 0x41c00000
    const/high16 v5, 0x40000000
    if-nez v2, :label_0899
    goto :label_089c
    :label_0899
    if-eqz v0, :label_089c
    goto :label_08a9
    :label_089c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-nez v0, :label_08a2
    :label_08a0
    const/4 v2, 0x0
    goto :label_08c1
    :label_08a2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_08a9
    goto :label_08a0
    :label_08a9
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_08ae
    goto :label_08b5
    :label_08ae
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v0, v0, 0x8
    if-nez v0, :label_08b5
    goto :label_08a0
    :label_08b5
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->searchType:I
    if-eqz v0, :label_08ba
    goto :label_08a0
    :label_08ba
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v0
    if-eqz v0, :label_08ce
    goto :label_08a0
    :label_08c1
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    const/4 v2, 0x0
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->a9:Z
    :label_08c6
    move/from16 v41, v5
    move/from16 v112, v27
    const/high16 v14, 0x40800000
    goto/16 :label_0af6
    :label_08ce
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getRepliesCount()I
    move-result v0
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-eqz v2, :label_08d9
    goto :label_08df
    :label_08d9
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v2
    if-eqz v2, :label_092b
    :label_08df
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-eqz v2, :label_08e5
    :label_08e3
    const/4 v2, 0x0
    goto :label_08e8
    :label_08e5
    if-gtz v0, :label_08ec
    goto :label_08e3
    :label_08e8
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    :label_08ea
    const/4 v2, 0x0
    goto :label_091f
    :label_08ec
    const/4 v2, 0x0
    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->E2:Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v2, v6
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->e9:I
    new-instance v31, Landroid/text/StaticLayout;
    sget-object v33, Lorg/telegram/ui/ActionBar/n6;->E2:Landroid/text/TextPaint;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->e9:I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int v34, v6, v2
    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/high16 v36, 0x3f800000
    move-object/from16 v32, v0
    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v31
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    goto :label_08ea
    :label_091f
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->a9:Z
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-nez v0, :label_0927
    const/4 v0, 0x3
    goto :label_0928
    :label_0927
    const/4 v0, 0x2
    :label_0928
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    goto :label_08c6
    :label_092b
    const/4 v2, 0x1
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->i9:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->R8:Lorg/telegram/ui/Components/z50;
    if-eqz v2, :label_0933
    goto :label_0940
    :label_0933
    new-instance v2, Lorg/telegram/ui/Components/z50;
    const/high16 v6, 0x40e00000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/z50;-><init>(I)V
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->R8:Lorg/telegram/ui/Components/z50;
    :label_0940
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-nez v2, :label_0a68
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-nez v2, :label_095c
    if-eqz v0, :label_0953
    const-string v2, "CommentsNoNumber"
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    :label_0950
    move-object/from16 v31, v2
    goto :label_0971
    :label_0953
    sget v2, Lorg/telegram/messenger/R$string;->LeaveAComment:I
    const-string v6, "LeaveAComment"
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    goto :label_0950
    :label_095c
    if-eqz v0, :label_0968
    const/4 v2, 0x0
    new-array v6, v2, [Ljava/lang/Object;
    const-string v2, "CommentsCount"
    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    goto :label_0950
    :label_0968
    sget v2, Lorg/telegram/messenger/R$string;->LeaveAComment:I
    const-string v6, "LeaveAComment"
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    goto :label_0950
    :label_0971
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getRecentRepliers()Ljava/util/ArrayList;
    move-result-object v2
    if-nez v0, :label_0978
    goto :label_0981
    :label_0978
    if-nez v2, :label_097b
    goto :label_0981
    :label_097b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-eqz v6, :label_09a8
    :label_0981
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->V8:[Lorg/telegram/messenger/ImageReceiver;
    if-nez v2, :label_0986
    goto :label_098c
    :label_0986
    const/4 v2, 0x0
    :label_0987
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->V8:[Lorg/telegram/messenger/ImageReceiver;
    array-length v7, v6
    if-lt v2, v7, :label_0999
    :label_098c
    move v9, v0
    move/from16 v41, v5
    move/from16 v112, v27
    move-object/from16 v0, v31
    const/high16 v14, 0x40800000
    :label_0995
    const/16 v32, 0x0
    goto/16 :label_0a7b
    :label_0999
    aget-object v6, v6, v2
    const/4 v7, 0x0
    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->X8:[Z
    const/16 v17, 0x0
    aput-boolean v17, v6, v2
    add-int/lit8 v2, v2, 0x1
    goto :label_0987
    :label_09a8
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->k1()V
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v6
    move v7, v3
    const/4 v3, 0x0
    const/16 v32, 0x0
    :label_09b3
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->V8:[Lorg/telegram/messenger/ImageReceiver;
    array-length v5, v4
    if-lt v3, v5, :label_09c3
    move v9, v0
    move/from16 v112, v27
    move-object/from16 v0, v31
    const/high16 v14, 0x40800000
    const/high16 v41, 0x40000000
    goto/16 :label_0a7b
    :label_09c3
    if-lt v3, v6, :label_09e1
    if-nez v6, :label_09c8
    goto :label_09d4
    :label_09c8
    aget-object v4, v4, v3
    const/4 v5, 0x0
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->X8:[Z
    const/16 v17, 0x0
    aput-boolean v17, v4, v3
    :label_09d4
    move v9, v0
    move-object/from16 v34, v2
    move/from16 v112, v27
    const/high16 v14, 0x40800000
    const/high16 v41, 0x40000000
    move/from16 v27, v6
    goto/16 :label_0a55
    :label_09e1
    aget-object v4, v4, v3
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    int-to-float v5, v5
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    const/4 v9, 0x0
    invoke-virtual {v4, v9, v9, v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v7
    if-nez v7, :label_0a20
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z
    move-result v7
    if-nez v7, :label_0a0d
    move v9, v0
    move v1, v6
    const/4 v0, 0x0
    :label_0a0a
    move-wide v5, v4
    const/4 v4, 0x0
    goto :label_0a2f
    :label_0a0d
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v7
    move v9, v0
    neg-long v0, v4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    move v1, v6
    move-wide v5, v4
    move-object v4, v0
    const/4 v0, 0x0
    goto :label_0a2f
    :label_0a20
    move v9, v0
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    move v1, v6
    goto :label_0a0a
    :label_0a2f
    new-instance v7, Lorg/telegram/messenger/n0;
    move-object/from16 v34, v2
    move-object v2, v0
    move-object v0, v7
    const/16 v7, 0xa
    const/high16 v14, 0x40800000
    const/high16 v41, 0x40000000
    move/from16 v112, v27
    move/from16 v27, v1
    move-object/from16 v1, v109
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;JI)V
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->X8:[Z
    const/16 v18, 0x1
    aput-boolean v18, v0, v3
    if-eqz v3, :label_0a52
    const/16 v7, 0x11
    goto :label_0a53
    :label_0a52
    const/4 v7, 0x2
    :label_0a53
    add-int v32, v32, v7
    :label_0a55
    add-int/lit8 v3, v3, 0x1
    move/from16 v14, v114
    move v0, v9
    move/from16 v6, v27
    move-object/from16 v2, v34
    move/from16 v5, v41
    const/16 v7, 0x11
    const/high16 v9, 0x3f800000
    move/from16 v27, v112
    goto/16 :label_09b3
    :label_0a68
    move v9, v0
    move/from16 v41, v5
    move/from16 v112, v27
    const/high16 v14, 0x40800000
    sget v0, Lorg/telegram/messenger/R$string;->ViewInChat:I
    const-string v2, "ViewInChat"
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v31
    move-object/from16 v0, v31
    goto/16 :label_0995
    :label_0a7b
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->e3:Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->e9:I
    new-instance v42, Landroid/text/StaticLayout;
    sget-object v44, Lorg/telegram/ui/ActionBar/n6;->e3:Landroid/text/TextPaint;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->e9:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int v45, v3, v2
    sget-object v46, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/high16 v47, 0x3f800000
    move-object/from16 v43, v0
    invoke-direct/range {v42 .. v49}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v42
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    if-nez v9, :label_0aac
    :label_0aaa
    const/4 v4, 0x0
    goto :label_0ab1
    :label_0aac
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v0, :label_0abd
    goto :label_0aaa
    :label_0ab1
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->a9:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Z8:Lorg/telegram/ui/Components/j6;
    if-nez v0, :label_0ab8
    goto :label_0aea
    :label_0ab8
    const/4 v3, 0x1
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/j6;->b(IZ)V
    goto :label_0aea
    :label_0abd
    const/4 v3, 0x1
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->a9:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Z8:Lorg/telegram/ui/Components/j6;
    if-eqz v0, :label_0acb
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->animateComments:Z
    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/Components/j6;->b(IZ)V
    const/4 v4, 0x0
    goto :label_0ad8
    :label_0acb
    new-instance v0, Lorg/telegram/ui/Components/j6;
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->e3:Landroid/text/TextPaint;
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/j6;-><init>(Lorg/telegram/ui/Cells/u1;Landroid/text/TextPaint;)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Z8:Lorg/telegram/ui/Components/j6;
    const/4 v4, 0x0
    invoke-virtual {v0, v9, v4}, Lorg/telegram/ui/Components/j6;->b(IZ)V
    :label_0ad8
    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->animateComments:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Z8:Lorg/telegram/ui/Components/j6;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/j6;->a()I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->h9:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    invoke-static {v14, v0, v2}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    :label_0aea
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    add-int/lit8 v2, v32, 0x46
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    :label_0af6
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x1b
    const/16 v3, 0x13
    const/16 v4, 0xe
    const/high16 v27, 0x42400000
    const/high16 v42, 0x40400000
    const/16 v9, 0x9
    const/high16 v43, 0x41880000
    move/from16 v44, v14
    const-string v14, "_"
    const/high16 v31, 0x41800000
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->S0:Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v32, v7
    const/high16 v45, 0x41a00000
    const/high16 v46, 0x41100000
    const/16 v47, 0x32
    const/high16 v48, 0x41200000
    const/16 v49, 0x47
    const/16 v50, 0x34
    const/high16 v38, 0x41000000
    if-eq v0, v2, :label_69eb
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v0
    if-nez v0, :label_696f
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/high16 v51, 0x42600000
    const-wide/32 v52, 0x28ae10
    const/high16 v55, 0x43160000
    const/high16 v56, 0x42ac0000
    const/high16 v58, 0x41600000
    const/16 v7, 0x17
    const/16 v5, 0x10
    const/16 v6, 0x18
    const/high16 v61, 0x43870000
    const/high16 v63, 0x42480000
    if-nez v0, :label_0b61
    :label_0b3f
    move/from16 v15, v112
    move-object v9, v8
    move-object v6, v12
    move-object/from16 v84, v13
    move-object/from16 v76, v14
    move/from16 v4, v25
    move/from16 v69, v38
    move/from16 v67, v58
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move-object v14, v1
    move-object v1, v11
    move-object/from16 v11, v32
    goto/16 :label_401e
    :label_0b61
    const/16 v2, 0x24
    if-ne v0, v2, :label_0b66
    goto :label_0b3f
    :label_0b66
    if-ne v0, v6, :label_0b69
    goto :label_0b3f
    :label_0b69
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v0
    if-eqz v0, :label_0b70
    goto :label_0b3f
    :label_0b70
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-nez v0, :label_0b3f
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    move-object/from16 v66, v13
    move-object/from16 v67, v14
    if-eq v0, v5, :label_3d43
    const/16 v5, 0xc
    const/high16 v68, 0x42000000
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->U0:Lorg/telegram/ui/Components/j9;
    if-eq v0, v5, :label_3a20
    const/4 v5, 0x2
    if-eq v0, v5, :label_3894
    if-eq v0, v4, :label_36d8
    const/16 v5, 0x11
    if-eq v0, v5, :label_3697
    const/16 v5, 0x1d
    if-eq v0, v5, :label_32d5
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-nez v0, :label_0b9a
    goto :label_0ba8
    :label_0b9a
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_0ba1
    goto :label_0bae
    :label_0ba1
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v0
    if-nez v0, :label_0ba8
    goto :label_0bae
    :label_0ba8
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v0, v7, :label_0bae
    const/4 v0, 0x0
    goto :label_0baf
    :label_0bae
    const/4 v0, 0x1
    :label_0baf
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-eqz v0, :label_0bbb
    :label_0bb7
    const-wide/16 v28, 0x0
    goto/16 :label_0c33
    :label_0bbb
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v0, v5, :label_0bc1
    goto :label_0bb7
    :label_0bc1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_0bc8
    :label_0bc5
    const-wide/16 v28, 0x0
    goto :label_0be3
    :label_0bc8
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_0bcf
    goto :label_0bc5
    :label_0bcf
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v69
    const-wide/16 v28, 0x0
    cmp-long v0, v69, v28
    if-gez v0, :label_0bda
    goto :label_0c21
    :label_0bda
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v69
    cmp-long v0, v69, v52
    if-nez v0, :label_0be3
    goto :label_0c21
    :label_0be3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isFromGroup()Z
    move-result v0
    if-nez v0, :label_0bea
    goto :label_0bf1
    :label_0bea
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_0bf1
    goto :label_0c21
    :label_0bf1
    iget-boolean v0, v12, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v0, :label_0bf6
    goto :label_0c21
    :label_0bf6
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_0bfd
    goto :label_0c06
    :label_0bfd
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v0, :label_0c06
    goto :label_0c21
    :label_0c06
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-nez v0, :label_0c0b
    goto :label_0c2e
    :label_0c0b
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_0c12
    goto :label_0c2e
    :label_0c12
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-nez v0, :label_0c17
    goto :label_0c1c
    :label_0c17
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->D8:Z
    if-eqz v0, :label_0c1c
    goto :label_0c21
    :label_0c1c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->S7:Z
    if-nez v0, :label_0c21
    goto :label_0c2e
    :label_0c21
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_0c26
    goto :label_0c30
    :label_0c26
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v22, 0x4
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_0c30
    :label_0c2e
    const/4 v0, 0x0
    goto :label_0c31
    :label_0c30
    const/4 v0, 0x1
    :label_0c31
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->Xa:Z
    :label_0c33
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-ne v0, v9, :label_0c39
    const/4 v0, 0x0
    goto :label_0c3a
    :label_0c39
    const/4 v0, 0x1
    :label_0c3a
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    const/4 v5, 0x1
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->v1:Z
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->L1:Z
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->gifState:F
    cmpl-float v0, v0, v41
    if-nez v0, :label_0c49
    :label_0c47
    const/4 v5, 0x1
    goto :label_0c65
    :label_0c49
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z
    move-result v0
    if-nez v0, :label_0c50
    goto :label_0c55
    :label_0c50
    iget-boolean v0, v12, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_0c55
    goto :label_0c47
    :label_0c55
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    move/from16 v5, v19
    if-ne v0, v5, :label_0c5e
    :label_0c5b
    const/high16 v5, 0x3f800000
    goto :label_0c62
    :label_0c5e
    const/4 v5, 0x5
    if-eq v0, v5, :label_0c5b
    goto :label_0c47
    :label_0c62
    iput v5, v12, Lorg/telegram/messenger/MessageObject;->gifState:F
    goto :label_0c47
    :label_0c65
    invoke-virtual {v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v0
    if-nez v0, :label_0c9e
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v0
    if-nez v0, :label_0c84
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->gifState:F
    const/16 v16, 0x0
    cmpl-float v0, v0, v16
    if-eqz v0, :label_0c7e
    const/4 v0, 0x0
    goto :label_0c7f
    :label_0c7e
    const/4 v0, 0x1
    :label_0c7f
    invoke-virtual {v11, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    :label_0c82
    const/4 v5, 0x1
    goto :label_0ca4
    :label_0c84
    const/16 v16, 0x0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    if-nez v0, :label_0c91
    goto :label_0c99
    :label_0c91
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v0
    if-eqz v0, :label_0c99
    const/4 v0, 0x0
    goto :label_0c9a
    :label_0c99
    const/4 v0, 0x1
    :label_0c9a
    invoke-virtual {v11, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    goto :label_0c82
    :label_0c9e
    const/4 v5, 0x1
    const/16 v16, 0x0
    invoke-virtual {v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    :label_0ca4
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v0
    invoke-virtual {v11, v0}, Lorg/telegram/messenger/ImageReceiver;->setForcePreview(Z)V
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v0, v9, :label_2d36
    const/4 v4, 0x4
    if-eq v0, v4, :label_2740
    if-eq v0, v3, :label_2691
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_216c
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v2
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-eq v0, v5, :label_0d2f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_0d2a
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_0cda
    goto :label_0cf4
    :label_0cda
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x1
    if-ne v2, v5, :label_0ce0
    goto :label_0cee
    :label_0ce0
    const/16 v4, 0x14
    if-ne v2, v4, :label_0ce5
    goto :label_0cee
    :label_0ce5
    const/4 v4, 0x3
    if-ne v2, v4, :label_0ce9
    goto :label_0cee
    :label_0ce9
    const/16 v5, 0x8
    if-eq v2, v5, :label_0cee
    goto :label_0cf4
    :label_0cee
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-ge v2, v0, :label_0d09
    :label_0cf4
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    :label_0d00
    int-to-float v0, v0
    const v2, 0x3f333333
    mul-float/2addr v0, v2
    float-to-int v0, v0
    move v2, v0
    const/4 v0, 0x0
    goto :label_0d3a
    :label_0d09
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_0d1d
    const/4 v2, 0x0
    goto :label_0d1f
    :label_0d1d
    const/16 v2, 0xa
    :label_0d1f
    add-int/lit8 v2, v2, 0x40
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    move v2, v0
    const/4 v0, 0x1
    goto :label_0d3a
    :label_0d2a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    goto :label_0d00
    :label_0d2f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v2, 0x7
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v0, 0x0
    const/4 v2, 0x0
    :label_0d3a
    const/high16 v4, 0x42c80000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    if-eqz v0, :label_0d7e
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_0d48
    goto :label_0d69
    :label_0d48
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_0d4f
    goto :label_0d69
    :label_0d4f
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v0, :label_0d69
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0d69
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_0d69
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_0d69
    const/high16 v0, 0x428e0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    :label_0d67
    sub-int/2addr v2, v0
    goto :label_0da7
    :label_0d69
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-nez v0, :label_0d77
    if-nez v26, :label_0d70
    goto :label_0da7
    :label_0d70
    const/high16 v0, 0x42500000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_0d67
    :label_0d77
    const/high16 v0, 0x428e0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_0d67
    :label_0d7e
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v0, v5, :label_0d84
    goto :label_0d90
    :label_0d84
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_0d8b
    goto :label_0d90
    :label_0d8b
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    :label_0d90
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v0
    if-gt v2, v0, :label_0d97
    goto :label_0d9c
    :label_0d97
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v0
    move v2, v0
    :label_0d9c
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v0
    if-gt v4, v0, :label_0da3
    goto :label_0da7
    :label_0da3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v4
    :label_0da7
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x1
    if-ne v0, v5, :label_0daf
    :label_0dac
    const/16 v5, 0x28
    goto :label_0de0
    :label_0daf
    const/16 v5, 0x14
    if-eq v0, v5, :label_0dac
    const/4 v5, 0x3
    if-ne v0, v5, :label_0dba
    const/4 v3, 0x0
    const/16 v5, 0x28
    goto :label_0dd1
    :label_0dba
    const/16 v5, 0x8
    if-eq v0, v5, :label_0dce
    const/4 v5, 0x5
    if-eq v0, v5, :label_0dc2
    goto :label_0deb
    :label_0dc2
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    const/16 v5, 0x28
    invoke-static {v0, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_0dcc
    const/4 v0, 0x1
    goto :label_0dec
    :label_0dce
    const/16 v5, 0x28
    const/4 v3, 0x0
    :label_0dd1
    invoke-virtual {v1, v12, v3}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {v0, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->u4(Lorg/telegram/messenger/MessageObject;)V
    goto :label_0dcc
    :label_0de0
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->u4(Lorg/telegram/messenger/MessageObject;)V
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {v0, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_0deb
    const/4 v0, 0x0
    :label_0dec
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v3, :label_0df3
    goto :label_0df8
    :label_0df3
    const/4 v5, 0x0
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    :label_0df8
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-eq v3, v5, :label_0e80
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :label_0e03
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_0e03
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->hasExtendedMediaPreview()Z
    move-result v5
    if-nez v5, :label_0e50
    if-nez v3, :label_0e0c
    goto :label_0e10
    :label_0e0c
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-eqz v5, :label_0e49
    :label_0e10
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v3, :label_0e17
    const-wide/16 v70, 0x3e8
    goto :label_0e6c
    :label_0e17
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/4 v3, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    :label_0e22
    if-lt v3, v5, :label_0e2b
    move/from16 v3, v52
    move/from16 v5, v53
    const-wide/16 v70, 0x3e8
    goto :label_0e75
    :label_0e2b
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    const-wide/16 v70, 0x3e8
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-nez v13, :label_0e3c
    goto :label_0e44
    :label_0e3c
    iget v13, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    move/from16 v52, v9
    move/from16 v53, v13
    :label_0e44
    add-int/lit8 v3, v3, 0x1
    const/16 v9, 0x9
    goto :label_0e22
    :label_0e49
    const-wide/16 v70, 0x3e8
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    goto :label_0e75
    :label_0e50
    const-wide/16 v70, 0x3e8
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;
    const/4 v5, 0x0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I
    if-nez v5, :label_0e64
    goto :label_0e68
    :label_0e64
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I
    if-nez v9, :label_0e74
    :label_0e68
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :label_0e6f
    :label_0e6c
    const/4 v3, 0x0
    const/4 v5, 0x0
    goto :label_0e75
    :label_0e6f
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    goto :label_0e75
    :label_0e74
    move v3, v9
    :label_0e75
    invoke-static {v5, v3, v2, v4}, Lorg/telegram/ui/Cells/u1;->C2(IIII)Landroid/graphics/PointF;
    move-result-object v3
    iget v5, v3, Landroid/graphics/PointF;->x:F
    float-to-int v5, v5
    iget v3, v3, Landroid/graphics/PointF;->y:F
    float-to-int v3, v3
    goto :label_0e98
    :label_0e80
    const-wide/16 v70, 0x3e8
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-nez v3, :label_0e87
    goto :label_0e8d
    :label_0e87
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v3
    if-eqz v3, :label_0e91
    :label_0e8d
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I
    :label_0e8f
    move v3, v5
    goto :label_0e98
    :label_0e91
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I
    move-result v5
    goto :label_0e8f
    :label_0e98
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v9, :label_0e9d
    goto :label_0eab
    :label_0e9d
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    const-string v13, "s"
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-nez v9, :label_0ea8
    goto :label_0eab
    :label_0ea8
    const/4 v9, 0x0
    iput-object v9, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_0eab
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v9, :label_0eb0
    goto :label_0ed8
    :label_0eb0
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eq v9, v13, :label_0eb5
    goto :label_0ed8
    :label_0eb5
    iget v9, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v13, 0x1
    if-ne v9, v13, :label_0ebc
    :label_0eba
    const/4 v9, 0x0
    goto :label_0ed4
    :label_0ebc
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->hasVideoCover()Z
    move-result v9
    if-nez v9, :label_0ec3
    goto :label_0eca
    :label_0ec3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v9
    if-nez v9, :label_0eca
    goto :label_0eba
    :label_0eca
    iget v9, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v13, 0x14
    if-eq v9, v13, :label_0eba
    const/4 v9, 0x0
    iput-object v9, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :label_0ed8
    :label_0ed4
    iput-object v9, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v9, v1, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    :label_0ed8
    if-nez v0, :label_0edb
    goto :label_0f03
    :label_0edb
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v0
    if-eqz v0, :label_0ee2
    goto :label_0f03
    :label_0ee2
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_0ee7
    goto :label_0eec
    :label_0ee7
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eq v0, v9, :label_0eec
    goto :label_0f03
    :label_0eec
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_0ef2
    :label_0ef0
    const/4 v9, 0x1
    goto :label_0efd
    :label_0ef2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    const-string v9, "m"
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0ef0
    goto :label_0f03
    :label_0efd
    invoke-virtual {v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V
    invoke-virtual {v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V
    :label_0f03
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0f08
    goto :label_0f15
    :label_0f08
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-nez v0, :label_0f0d
    goto :label_0f15
    :label_0f0d
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v0, :label_0f12
    goto :label_0f15
    :label_0f12
    const/4 v9, 0x0
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    :label_0f15
    if-nez v5, :label_0f18
    goto :label_0f1c
    :label_0f18
    if-eqz v3, :label_0f1c
    goto/16 :label_0f80
    :label_0f1c
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v9, 0x8
    if-eq v0, v9, :label_0f23
    goto :label_0f80
    :label_0f23
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    if-nez v0, :label_0f2a
    goto :label_0f80
    :label_0f2a
    const/4 v9, 0x0
    :label_0f2b
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v13
    if-lt v9, v13, :label_0f35
    move v4, v3
    goto :label_0f7f
    :label_0f35
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-eqz v14, :label_0f42
    goto :label_0f49
    :label_0f42
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-nez v14, :label_0f49
    add-int/lit8 v9, v9, 0x1
    goto :label_0f2b
    :label_0f49
    iget v0, v13, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    int-to-float v0, v0
    int-to-float v3, v2
    div-float v5, v0, v3
    div-float/2addr v0, v5
    float-to-int v0, v0
    iget v9, v13, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    int-to-float v9, v9
    div-float/2addr v9, v5
    float-to-int v5, v9
    if-gt v5, v4, :label_0f79
    const/high16 v4, 0x42f00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    if-lt v5, v4, :label_0f63
    move v4, v5
    :label_0f61
    move v5, v0
    goto :label_0f7f
    :label_0f63
    const/high16 v4, 0x42f00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    iget v5, v13, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    int-to-float v5, v5
    int-to-float v9, v4
    div-float/2addr v5, v9
    iget v9, v13, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    int-to-float v9, v9
    div-float/2addr v9, v5
    cmpg-float v3, v9, v3
    if-ltz v3, :label_0f77
    goto :label_0f61
    :label_0f77
    float-to-int v5, v9
    goto :label_0f7f
    :label_0f79
    int-to-float v3, v5
    int-to-float v5, v4
    div-float/2addr v3, v5
    int-to-float v0, v0
    div-float/2addr v0, v3
    float-to-int v5, v0
    :label_0f7f
    move v3, v4
    :label_0f80
    if-nez v5, :label_0f83
    goto :label_0f86
    :label_0f83
    if-eqz v3, :label_0f86
    goto :label_0f8b
    :label_0f86
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    move v5, v3
    :label_0f8b
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v4, 0x3
    if-eq v0, v4, :label_0f91
    goto :label_0fa7
    :label_0f91
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->z4:I
    const/high16 v4, 0x42200000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v0
    if-lt v5, v4, :label_0f9d
    goto :label_0fa7
    :label_0f9d
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->z4:I
    const/high16 v4, 0x42200000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int v5, v4, v0
    :label_0fa7
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-ne v0, v7, :label_0fac
    goto :label_0faf
    :label_0fac
    if-eq v0, v6, :label_0faf
    goto :label_0fcc
    :label_0faf
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v0, v0, Landroid/graphics/Point;->x:I
    int-to-double v3, v0
    const-wide v13, 0x3fe0f5c28f5c28f6L
    mul-double/2addr v3, v13
    const/high16 v0, 0x43960000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-double v13, v0
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(DD)D
    move-result-wide v3
    double-to-int v5, v3
    int-to-float v0, v5
    mul-float v0, v0, v31
    div-float v0, v0, v46
    float-to-int v3, v0
    :label_0fcc
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    if-nez v0, :label_0fd1
    goto :label_0fe9
    :label_0fd1
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->ta:I
    const/4 v4, 0x3
    if-ne v0, v4, :label_0fd7
    goto :label_0fe9
    :label_0fd7
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v0
    if-lt v5, v4, :label_0fe1
    goto :label_0fe9
    :label_0fe1
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int v5, v4, v0
    :label_0fe9
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    const/high16 v4, 0x447a0000
    if-nez v0, :label_0ff7
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->C8:I
    goto :label_101f
    :label_0ff7
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getGroupPhotosWidth()I
    move-result v0
    const/4 v2, 0x0
    const/4 v9, 0x0
    :label_0ffd
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v13
    if-lt v2, v13, :label_1008
    goto :label_1016
    :label_1008
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-byte v14, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eqz v14, :label_211d
    :label_1016
    const/high16 v0, 0x420c0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v9, v0
    iput v9, v1, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_101f
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v2, 0x5
    if-eq v0, v2, :label_1025
    goto :label_1041
    :label_1025
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I
    int-to-double v13, v0
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->N2:Landroid/text/TextPaint;
    const-string v2, "00:00"
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    float-to-double v6, v0
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    sub-double/2addr v13, v6
    const/high16 v0, 0x42380000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-double v6, v0
    sub-double/2addr v13, v6
    double-to-int v0, v13
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_1041
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->ob:I
    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I
    const/16 v6, 0xa
    if-ge v2, v6, :label_104f
    const/16 v59, 0x12
    goto :label_1051
    :label_104f
    const/16 v59, 0x16
    :label_1051
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_1059
    const/4 v2, 0x0
    goto :label_105b
    :label_1059
    const/16 v2, 0x14
    :label_105b
    add-int v2, v59, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int v7, v2, v0
    if-lt v5, v7, :label_1067
    goto :label_1068
    :label_1067
    move v5, v7
    :label_1068
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v0
    if-nez v0, :label_10a3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v0
    if-nez v0, :label_1075
    goto :label_107b
    :label_1075
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->hasExtendedMediaPreview()Z
    move-result v0
    if-eqz v0, :label_107d
    :label_107b
    const/4 v14, 0x1
    goto :label_10be
    :label_107d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_1097
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    :label_108f
    int-to-float v0, v0
    const v2, 0x3f19999a
    mul-float/2addr v0, v2
    float-to-int v0, v0
    move v5, v0
    goto :label_109c
    :label_1097
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    goto :label_108f
    :label_109c
    int-to-float v0, v5
    const v2, 0x3f1c28f6
    mul-float/2addr v0, v2
    float-to-int v3, v0
    goto :label_107b
    :label_10a3
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I
    move-result v3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    xor-int/lit8 v2, v0, 0x1
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-nez v0, :label_10b5
    move v0, v3
    goto :label_10b6
    :label_10b5
    const/4 v0, 0x0
    :label_10b6
    div-int/lit8 v2, v3, 0x2
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    move v5, v3
    const/4 v14, 0x0
    move v3, v0
    :label_10be
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v0, :label_1106
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I
    move-result v0
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-eqz v2, :label_10d3
    goto :label_10e4
    :label_10d3
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-eqz v2, :label_10d8
    goto :label_10e2
    :label_10d8
    iget-boolean v2, v8, Lvf/q0;->s:Z
    if-eqz v2, :label_10dd
    goto :label_10e4
    :label_10dd
    iget-boolean v2, v8, Lvf/q0;->b:Z
    if-eqz v2, :label_10e2
    goto :label_10e4
    :label_10e2
    if-lt v5, v0, :label_10ec
    :label_10e4
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int v0, v5, v0
    const/4 v2, 0x0
    goto :label_10ed
    :label_10ec
    const/4 v2, 0x1
    :label_10ed
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v5
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v9, :label_10f9
    goto :label_1100
    :label_10f9
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    add-int/2addr v9, v4
    iput v9, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_1100
    move v13, v3
    move v4, v5
    move v3, v2
    :label_1103
    move v2, v0
    goto/16 :label_12d5
    :label_1106
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    move-result v0
    int-to-float v0, v0
    const/high16 v2, 0x3f000000
    mul-float v52, v0, v2
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getGroupPhotosWidth()I
    move-result v0
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v2, v2
    div-float/2addr v2, v4
    int-to-float v0, v0
    mul-float/2addr v2, v0
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-byte v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-nez v3, :label_1130
    goto :label_1153
    :label_1130
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-nez v3, :label_1137
    goto :label_1142
    :label_1137
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v18, 0x1
    and-int/lit8 v3, v3, 0x1
    if-eqz v3, :label_1142
    goto :label_1156
    :label_1142
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-eqz v3, :label_1149
    goto :label_1153
    :label_1149
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v23, 0x2
    and-int/lit8 v3, v3, 0x2
    if-nez v3, :label_1156
    :label_1153
    move/from16 v111, v4
    goto :label_11a8
    :label_1156
    const/4 v3, 0x0
    const/4 v5, 0x0
    const/4 v9, 0x0
    :label_1159
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v13
    if-lt v3, v13, :label_1166
    move/from16 v111, v4
    goto :label_11a6
    :label_1166
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    move/from16 v111, v4
    iget-byte v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eqz v4, :label_20a4
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-byte v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eq v4, v6, :label_2052
    if-gt v4, v6, :label_11a6
    move v6, v2
    move v4, v3
    move-object/from16 v83, v8
    move-object v8, v11
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v28, v0
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object v14, v1
    move-object v1, v12
    goto/16 :label_20f5
    :label_11a6
    sub-int/2addr v5, v9
    add-int/2addr v2, v5
    :label_11a8
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v3, :label_11b2
    goto :label_11d4
    :label_11b2
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-eqz v3, :label_11b9
    goto :label_11d4
    :label_11b9
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v3, :label_11d4
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_11d4
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-nez v3, :label_11d4
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v3, :label_11d4
    const/high16 v3, 0x428e0000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    :label_11d1
    sub-int/2addr v2, v3
    :label_11d2
    move v4, v2
    goto :label_11de
    :label_11d4
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-nez v3, :label_11d9
    goto :label_11d2
    :label_11d9
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    goto :label_11d1
    :label_11de
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F
    if-nez v3, :label_11f0
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F
    mul-float v2, v2, v52
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    move v5, v2
    goto :label_1209
    :label_11f0
    const/4 v2, 0x0
    const/4 v3, 0x0
    :label_11f2
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F
    array-length v9, v6
    if-lt v3, v9, :label_2008
    iget-byte v3, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B
    iget-byte v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    sub-int/2addr v3, v5
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F
    const/high16 v6, 0x40e00000
    mul-float/2addr v5, v6
    invoke-static {v5}, Ljava/lang/Math;->round(F)I
    move-result v5
    mul-int/2addr v5, v3
    add-int/2addr v5, v2
    :label_1209
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v3, v2, 0x2
    if-nez v3, :label_1214
    goto :label_1218
    :label_1214
    and-int/lit8 v6, v2, 0x1
    if-nez v6, :label_1235
    :label_1218
    if-eqz v3, :label_121b
    goto :label_1221
    :label_121b
    const/16 v18, 0x1
    and-int/lit8 v2, v2, 0x1
    if-eqz v2, :label_122e
    :label_1221
    if-nez v3, :label_1229
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_1227
    sub-int/2addr v4, v2
    goto :label_123a
    :label_1229
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_1227
    :label_122e
    const/high16 v2, 0x41300000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_1227
    :label_1235
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_1227
    :label_123a
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-eqz v2, :label_1242
    move v9, v4
    goto :label_1248
    :label_1242
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v4
    move v9, v2
    :label_1248
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_124d
    goto :label_1258
    :label_124d
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v3
    and-int/2addr v2, v3
    if-nez v2, :label_1258
    const/4 v3, 0x0
    goto :label_1260
    :label_1258
    const/high16 v2, 0x41700000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v3, v9, v2
    :label_1260
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v6
    and-int/2addr v2, v6
    if-eqz v2, :label_126c
    goto :label_1284
    :label_126c
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_1271
    goto :label_1284
    :label_1271
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z
    if-nez v2, :label_1278
    goto :label_1282
    :label_1278
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v22, 0x4
    and-int/lit8 v2, v2, 0x4
    if-eqz v2, :label_1284
    :label_1282
    move v0, v3
    goto :label_12d0
    :label_1284
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_1289
    goto :label_1293
    :label_1289
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v6
    and-int/2addr v2, v6
    if-nez v2, :label_1293
    goto :label_129a
    :label_1293
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    invoke-static {v2}, Lorg/telegram/ui/Cells/u1;->w2(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)I
    move-result v2
    add-int/2addr v3, v2
    :label_129a
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v6
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
    move-result v13
    const/4 v2, 0x0
    const/16 v55, 0x1
    :label_12b1
    if-lt v2, v13, :label_1e1b
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v18, 0x1
    and-int/lit8 v0, v0, 0x1
    if-nez v0, :label_12be
    goto :label_12c2
    :label_12be
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-nez v0, :label_12cb
    :label_12c2
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->cachedWidthForCaption:I
    if-gtz v0, :label_12c9
    goto :label_1282
    :label_12c9
    move v3, v0
    goto :label_1282
    :label_12cb
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->cachedWidthForCaption:I
    goto :label_1282
    :label_12d0
    move v13, v5
    move v5, v9
    const/4 v3, 0x0
    goto/16 :label_1103
    :label_12d5
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-nez v0, :label_12df
    move/from16 v111, v3
    :label_12db
    const/4 v0, 0x0
    const/4 v3, 0x0
    goto/16 :label_13aa
    :label_12df
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->a4:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v0
    const/16 v23, 0x2
    mul-int/lit8 v0, v0, 0x2
    sub-int/2addr v2, v0
    new-instance v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v6
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    :label_12f2
    move/from16 v111, v3
    :label_12f4
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    invoke-direct {v0, v6, v9, v3, v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->bounceFrom(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V
    if-nez v111, :label_1309
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    goto :label_1314
    :label_1305
    move-exception v0
    :label_1306
    const/4 v3, 0x0
    goto/16 :label_13a6
    :label_1309
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    if-gt v0, v2, :label_1312
    goto :label_1314
    :label_1312
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    :label_1314
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight()I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v0, :label_1328
    goto :label_1346
    :label_1328
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z
    if-eqz v3, :label_132f
    goto :label_1334
    :label_132f
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z
    if-nez v0, :label_1334
    goto :label_1346
    :label_1334
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->q4:I
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_1346
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_134b
    goto :label_1358
    :label_134b
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v3
    and-int/2addr v0, v3
    if-nez v0, :label_1358
    const/4 v9, 0x0
    iput-object v9, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    goto :label_12db
    :label_1358
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_135a
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int v6, v5, v6
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I
    move-result v0
    iget-boolean v6, v8, Lvf/q0;->s:Z
    if-eqz v6, :label_136b
    goto :label_1370
    :label_136b
    iget-boolean v6, v8, Lvf/q0;->b:Z
    if-nez v6, :label_1370
    goto :label_138d
    :label_1370
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v6
    if-eqz v6, :label_1377
    goto :label_138d
    :label_1377
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v0, v6
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I
    sub-int/2addr v0, v6
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v6
    add-int/2addr v6, v7
    if-lt v0, v6, :label_1389
    goto :label_138d
    :label_1389
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-eqz v0, :label_138f
    :label_138d
    const/4 v0, 0x0
    goto :label_13aa
    :label_138f
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v3, v0
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v0, v6
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_139d
    const/4 v0, 0x1
    goto :label_13aa
    :label_139f
    move-exception v0
    goto :label_13a6
    :label_13a1
    move-exception v0
    move/from16 v111, v3
    goto/16 :label_1306
    :label_13a6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto :label_138d
    :label_13aa
    const/high16 v6, 0x41f00000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int v6, v2, v6
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/u1;->t3(I)I
    move-result v6
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v9, :label_13bb
    goto :label_13c6
    :label_13bb
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v9, :label_13c0
    goto :label_13c6
    :label_13c0
    const/high16 v9, 0x41400000
    invoke-static {v9, v6, v3}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v3
    :label_13c6
    iget v6, v1, Lorg/telegram/ui/Cells/u1;->Y3:I
    if-gez v6, :label_13ce
    :label_13ca
    move/from16 v52, v0
    :label_13cc
    const/4 v6, -0x1
    goto :label_13dd
    :label_13ce
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v9, :label_13d3
    goto :label_13ca
    :label_13d3
    move/from16 v52, v0
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Z3:I
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v1, v6, v0, v9}, Lorg/telegram/ui/Cells/u1;->Y2(IILjava/util/ArrayList;)V
    goto :label_13cc
    :label_13dd
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->Z3:I
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->Y3:I
    iget-boolean v0, v8, Lvf/q0;->b:Z
    if-eqz v0, :label_13e6
    goto :label_1408
    :label_13e6
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    sub-int/2addr v0, v9
    if-gt v0, v2, :label_13f1
    const/4 v0, 0x0
    goto :label_13f2
    :label_13f1
    const/4 v0, 0x1
    :label_13f2
    iget v9, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v39, 0x42100000
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v39
    sub-int v9, v9, v39
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I
    move-result v2
    const/4 v9, 0x3
    invoke-virtual {v8, v2, v9}, Lvf/q0;->p(II)V
    iget-boolean v9, v8, Lvf/q0;->s:Z
    if-eqz v9, :label_140d
    :label_1408
    move v0, v3
    const/high16 v39, 0x3f800000
    goto/16 :label_14da
    :label_140d
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v9, :label_1421
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v9
    if-nez v9, :label_141a
    const/high16 v39, 0x3f800000
    goto :label_142d
    :label_141a
    const/high16 v9, 0x3f800000
    iput v9, v8, Lvf/q0;->a:F
    move/from16 v39, v9
    goto :label_142d
    :label_1421
    const/high16 v9, 0x3f800000
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getVideoTranscriptionProgress()F
    move-result v33
    move/from16 v39, v9
    sub-float v9, v39, v33
    iput v9, v8, Lvf/q0;->a:F
    :label_142d
    iget v9, v8, Lvf/q0;->o:I
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v6, :label_1445
    const/high16 v62, 0x41400000
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v9
    iget v9, v8, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v55
    add-int v9, v55, v9
    iput v9, v8, Lvf/q0;->m:I
    goto :label_1451
    :label_1445
    const/high16 v62, 0x41400000
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v9
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    add-int/2addr v6, v9
    :label_1451
    iput v6, v8, Lvf/q0;->p:I
    add-int/2addr v3, v6
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v6, :label_1459
    goto :label_146e
    :label_1459
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v6, :label_145e
    goto :label_146e
    :label_145e
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v6
    if-nez v6, :label_1465
    goto :label_146e
    :label_1465
    iget v6, v8, Lvf/q0;->m:I
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    add-int/2addr v9, v6
    iput v9, v8, Lvf/q0;->m:I
    :label_146e
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v6
    if-eqz v6, :label_1475
    goto :label_14b2
    :label_1475
    iget v6, v8, Lvf/q0;->q:I
    add-int/2addr v6, v7
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v9
    add-int/2addr v6, v9
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    add-int/2addr v9, v6
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I
    move-result v2
    iget v6, v8, Lvf/q0;->u:I
    int-to-float v6, v6
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v9
    if-eqz v9, :label_1490
    goto :label_149c
    :label_1490
    int-to-float v2, v2
    sub-float/2addr v2, v6
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v6
    add-int/2addr v6, v7
    int-to-float v6, v6
    cmpg-float v2, v2, v6
    if-ltz v2, :label_14b4
    :label_149c
    if-eqz v0, :label_149f
    goto :label_14b2
    :label_149f
    iget v0, v8, Lvf/q0;->u:I
    add-int/2addr v0, v7
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    if-gt v0, v2, :label_14a7
    goto :label_14a9
    :label_14a7
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    :label_14a9
    iget v0, v8, Lvf/q0;->q:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    if-gt v0, v2, :label_14b0
    goto :label_14b2
    :label_14b0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    :label_14b2
    move v0, v3
    goto :label_14da
    :label_14b4
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v3, v2
    iget v2, v8, Lvf/q0;->p:I
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v2
    iput v6, v8, Lvf/q0;->p:I
    iget v2, v8, Lvf/q0;->m:I
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v2, v6
    iput v2, v8, Lvf/q0;->m:I
    if-eqz v0, :label_14ce
    goto :label_14d7
    :label_14ce
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    iget v2, v8, Lvf/q0;->q:I
    if-lt v0, v2, :label_14d5
    goto :label_14d7
    :label_14d5
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    :label_14d7
    move v0, v3
    const/16 v52, 0x1
    :label_14da
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->C2:Landroid/text/TextPaint;
    const-string v3, "100%"
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
    const/high16 v3, 0x42c80000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    add-float/2addr v2, v3
    float-to-int v2, v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v3, :label_14f1
    const/4 v6, 0x4
    goto :label_1512
    :label_14f1
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v6, 0x4
    if-ne v3, v6, :label_14f7
    goto :label_14fb
    :label_14f7
    const/4 v7, 0x2
    if-eq v3, v7, :label_14fb
    goto :label_1512
    :label_14fb
    if-lt v5, v2, :label_14fe
    goto :label_1512
    :label_14fe
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v5, :label_150a
    goto :label_1511
    :label_150a
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v3
    iput v5, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_1511
    move v5, v2
    :label_1512
    if-nez v111, :label_1515
    goto :label_151e
    :label_1515
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    if-lt v5, v3, :label_1521
    :label_151e
    move/from16 v22, v5
    goto :label_153d
    :label_1521
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->r4:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int v5, v3, v2
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v5
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v3, :label_1535
    goto :label_151e
    :label_1535
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_151e
    :label_153d
    if-eqz v24, :label_1547
    :label_153f
    move-object/from16 v17, v8
    move-object/from16 v5, v67
    const/4 v8, 0x0
    const/4 v9, 0x0
    goto/16 :label_15c2
    :label_1547
    if-eqz v25, :label_154a
    goto :label_153f
    :label_154a
    if-nez v10, :label_153f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    int-to-float v2, v4
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v2, v3
    float-to-int v2, v2
    int-to-float v4, v13
    div-float/2addr v4, v3
    float-to-int v3, v4
    move-object/from16 v5, v67
    invoke-static {v2, v3, v5}, Lu8/a;->d(IILjava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v3
    if-eqz v3, :label_1563
    goto :label_156b
    :label_1563
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :label_157f
    :label_156b
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-nez v2, :label_1577
    :label_1571
    move-object/from16 v17, v8
    const/4 v8, 0x0
    const/4 v9, 0x0
    goto/16 :label_1648
    :label_1577
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getFancyBlurFilter()Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v2
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :label_1571
    :label_157f
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v3
    if-nez v3, :label_158a
    goto :label_1571
    :label_158a
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    move-object/from16 v17, v8
    const/4 v8, 0x0
    const/4 v9, 0x0
    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "@"
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;
    move-result-object v4
    invoke-virtual {v4, v3, v9}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z
    move-result v3
    if-nez v3, :label_15b6
    goto/16 :label_1648
    :label_15b6
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    goto/16 :label_1648
    :label_15c2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    int-to-float v2, v4
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v2, v3
    float-to-int v2, v2
    int-to-float v4, v13
    div-float/2addr v4, v3
    float-to-int v3, v4
    invoke-static {v2, v3, v5}, Lu8/a;->d(IILjava/lang/String;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    if-nez v2, :label_15d9
    goto :label_15e1
    :label_15d9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0x1
    if-le v2, v3, :label_15e1
    goto :label_15f0
    :label_15e1
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v4, 0x3
    if-ne v2, v4, :label_15e7
    goto :label_15f0
    :label_15e7
    const/16 v3, 0x8
    if-ne v2, v3, :label_15ec
    goto :label_15f0
    :label_15ec
    const/4 v3, 0x5
    if-eq v2, v3, :label_15f0
    goto :label_1648
    :label_15f0
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-nez v2, :label_1606
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    const-string v4, "_b"
    invoke-static {v2, v3, v4}, La2/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    goto :label_1648
    :label_1606
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getFancyBlurFilter()Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v2
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v2
    if-eqz v2, :label_1614
    goto :label_1623
    :label_1614
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    const-string v4, "_b2"
    invoke-static {v2, v3, v4}, La2/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    :label_1623
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v2
    if-nez v2, :label_1639
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    const-string v4, "_b2"
    invoke-static {v2, v3, v4}, La2/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    goto :label_1648
    :label_1639
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    const-string v4, "_b2r"
    invoke-static {v2, v3, v4}, La2/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    :label_1648
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v4, 0x3
    if-ne v2, v4, :label_164e
    goto :label_1658
    :label_164e
    const/16 v3, 0x8
    if-ne v2, v3, :label_1653
    goto :label_1658
    :label_1653
    const/4 v3, 0x5
    if-eq v2, v3, :label_1658
    move v2, v9
    goto :label_1659
    :label_1658
    const/4 v2, 0x1
    :label_1659
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :label_165f
    :label_165d
    const/4 v4, -0x1
    goto :label_166a
    :label_165f
    if-eqz v2, :label_1662
    goto :label_165d
    :label_1662
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    if-eqz v4, :label_1667
    goto :label_165d
    :label_1667
    const/4 v4, -0x1
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    :label_166a
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :label_166f
    goto :label_1679
    :label_166f
    if-eqz v2, :label_1672
    goto :label_1679
    :label_1672
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    if-eqz v2, :label_1677
    goto :label_1679
    :label_1677
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    :label_1679
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isHiddenSensitive()Z
    move-result v2
    if-eqz v2, :label_1686
    :label_1681
    const/4 v3, 0x3
    :label_1682
    const/16 v23, 0x2
    goto/16 :label_1700
    :label_1686
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z
    move-result v2
    if-nez v2, :label_168d
    goto :label_1681
    :label_168d
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasVideoCover()Z
    move-result v2
    if-nez v2, :label_1696
    goto :label_169f
    :label_1696
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v2
    if-nez v2, :label_169f
    goto :label_1681
    :label_169f
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v3, :label_16a6
    goto :label_1681
    :label_16a6
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v2
    if-nez v2, :label_16ad
    goto :label_16b9
    :label_16ad
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-eqz v3, :label_16b4
    goto :label_16b9
    :label_16b4
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->revealingMediaSpoilers:Z
    if-nez v2, :label_16b9
    goto :label_1681
    :label_16b9
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v3, 0x3
    if-eq v2, v3, :label_16bf
    :label_16be
    goto :label_1682
    :label_16bf
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-eqz v2, :label_16c6
    goto :label_16be
    :label_16c6
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v7, v2, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-eqz v7, :label_16cd
    goto :label_16e6
    :label_16cd
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    if-eqz v2, :label_16d2
    goto :label_16e6
    :label_16d2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->canStreamVideo()Z
    move-result v2
    if-nez v2, :label_16d9
    goto :label_16be
    :label_16d9
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v2
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_16e6
    goto :label_16be
    :label_16e6
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_16ee
    const/4 v7, 0x1
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/u1;->m7:Z
    goto :label_1682
    :label_16ee
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v7, v2, 0x1
    const/16 v23, 0x2
    if-nez v7, :label_16f7
    goto :label_16fb
    :label_16f7
    and-int/lit8 v2, v2, 0x2
    if-nez v2, :label_16fd
    :label_16fb
    move v2, v9
    goto :label_16fe
    :label_16fd
    const/4 v2, 0x1
    :label_16fe
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->m7:Z
    :label_1700
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z
    move-result v2
    if-nez v2, :label_170a
    move v2, v9
    goto :label_170c
    :label_170a
    move/from16 v2, v23
    :label_170c
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v7, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v3, :label_1d26
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->m7:Z
    if-nez v3, :label_1c15
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v10, 0x17
    if-ne v3, v10, :label_1741
    :label_171c
    move-object/from16 v76, v5
    move/from16 v53, v13
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move/from16 v67, v58
    move-object/from16 v84, v66
    const/4 v15, 0x1
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    goto/16 :label_1bf6
    :label_1741
    const/16 v10, 0x18
    if-eq v3, v10, :label_171c
    const/16 v10, 0x14
    if-eq v3, v10, :label_1bad
    const/4 v4, 0x1
    if-eq v3, v4, :label_1ad7
    const/16 v4, 0x8
    if-ne v3, v4, :label_1775
    move/from16 v19, v4
    move-object v10, v12
    const/4 v12, 0x5
    :label_1754
    move-object/from16 v76, v5
    move-object/from16 v36, v8
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v15, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v67, v58
    const/high16 v35, 0x40c00000
    const/16 v54, 0x12
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    move v11, v2
    goto/16 :label_1848
    :label_1775
    const/4 v4, 0x5
    if-eq v3, v4, :label_1842
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    if-nez v6, :label_177d
    goto :label_1786
    :label_177d
    if-eq v3, v4, :label_1780
    goto :label_1786
    :label_1780
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v3
    if-eqz v3, :label_17f3
    :label_1786
    if-eqz v25, :label_178a
    :label_1788
    const/4 v3, 0x1
    goto :label_179c
    :label_178a
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v3
    if-eqz v3, :label_1793
    goto :label_1788
    :label_1793
    const/4 v3, 0x1
    invoke-virtual {v11, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    const/16 v6, 0xfa
    invoke-virtual {v11, v6}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V
    :label_179c
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    move/from16 v18, v3
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v7, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    move-object/from16 v67, v5
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    move-object v7, v11
    move v11, v2
    move-object v2, v6
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v7
    move-object/from16 v36, v8
    const-wide/16 v7, 0x0
    move/from16 v55, v9
    const/4 v9, 0x0
    move-object v10, v12
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v15, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move-object/from16 v76, v67
    const/4 v12, 0x5
    const/16 v19, 0x8
    const/high16 v35, 0x40c00000
    const/16 v54, 0x12
    const/high16 v57, 0x40a00000
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object/from16 v14, v109
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_17e4
    move-object v8, v1
    move-object v1, v10
    move/from16 v53, v13
    move/from16 v54, v15
    move/from16 v69, v38
    move-object/from16 v84, v66
    const/4 v15, 0x1
    :label_17ef
    move/from16 v66, v35
    goto/16 :label_1e03
    :label_17f3
    move-object/from16 v76, v5
    move-object/from16 v36, v8
    move-object v10, v12
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v15, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v67, v58
    const/16 v19, 0x8
    const/high16 v35, 0x40c00000
    const/16 v54, 0x12
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    move v12, v4
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    move v11, v2
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v7, 0x0
    const/4 v9, 0x0
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J
    div-long v3, v3, v70
    iget-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J
    div-long v5, v5, v70
    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setMediaStartEndTime(JJ)V
    goto :label_17e4
    :label_1842
    move-object v10, v12
    const/16 v19, 0x8
    move v12, v4
    goto/16 :label_1754
    :label_1848
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    move-result-object v2
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    if-nez v3, :label_185c
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-nez v3, :label_185a
    const/4 v8, 0x0
    goto :label_1864
    :label_185a
    const/4 v8, 0x2
    goto :label_1864
    :label_185c
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v3
    invoke-virtual {v3, v14}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V
    const/4 v8, 0x1
    :label_1864
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v3
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z
    move-result v4
    invoke-static {v3, v4}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v4
    if-eqz v4, :label_1873
    goto :label_1879
    :label_1873
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v4, v12, :label_1879
    const/4 v9, 0x0
    goto :label_1883
    :label_1879
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v9
    :label_1883
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isHiddenSensitive()Z
    move-result v4
    if-nez v4, :label_188a
    goto :label_188b
    :label_188a
    const/4 v9, 0x0
    :label_188b
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;
    move-result-object v4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z
    move-result v5
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v5
    if-nez v5, :label_189a
    goto :label_189f
    :label_189a
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    if-nez v5, :label_189f
    goto :label_18ad
    :label_189f
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v5
    if-eqz v5, :label_18a6
    goto :label_18bf
    :label_18a6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v5
    if-eqz v5, :label_18ad
    goto :label_18bf
    :label_18ad
    if-eqz v8, :label_18b2
    :label_18af
    const/4 v5, 0x1
    goto/16 :label_193e
    :label_18b2
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v5
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :label_18bd
    goto :label_18af
    :label_18bd
    if-nez v9, :label_18af
    :label_18bf
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    if-nez v2, :label_18c4
    goto :label_18d1
    :label_18c4
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v2, v12, :label_18c9
    goto :label_18d1
    :label_18c9
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-eqz v2, :label_1904
    :label_18d1
    if-eqz v15, :label_18d4
    goto :label_18e6
    :label_18d4
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-eqz v2, :label_18dd
    goto :label_18e6
    :label_18dd
    const/4 v3, 0x1
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    const/16 v2, 0xfa
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V
    :label_18e6
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v7, 0x0
    const/4 v9, 0x0
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_17e4
    :label_1904
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v9, 0x0
    const/4 v11, 0x0
    const-wide/16 v7, 0x0
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J
    div-long v3, v3, v70
    iget-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J
    div-long v5, v5, v70
    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setMediaStartEndTime(JJ)V
    move-object v8, v1
    move/from16 v53, v13
    move/from16 v54, v15
    move/from16 v69, v38
    move-object/from16 v84, v66
    const/4 v15, 0x1
    move-object/from16 v1, v110
    goto/16 :label_17ef
    :label_193e
    if-ne v8, v5, :label_1941
    goto :label_1962
    :label_1941
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-eqz v2, :label_1949
    :label_1947
    const/4 v5, 0x1
    goto :label_1962
    :label_1949
    if-eqz v8, :label_1958
    :label_194b
    move/from16 v53, v13
    move/from16 v54, v15
    move/from16 v69, v38
    move-object/from16 v84, v66
    const/4 v15, 0x1
    move/from16 v66, v35
    goto/16 :label_1a2c
    :label_1958
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->canStreamVideo()Z
    move-result v2
    if-nez v2, :label_195f
    goto :label_1947
    :label_195f
    if-nez v9, :label_194b
    goto :label_1947
    :label_1962
    if-eq v8, v5, :label_19f0
    if-nez v4, :label_1967
    goto :label_197b
    :label_1967
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_1977
    :label_196b
    move/from16 v53, v13
    move/from16 v54, v15
    move/from16 v69, v38
    move-object/from16 v84, v66
    move v15, v5
    move/from16 v66, v35
    goto :label_19be
    :label_1977
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v2, :label_196b
    :label_197b
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    move/from16 v28, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v3
    if-nez v3, :label_19a2
    move v3, v13
    const/4 v13, 0x0
    goto :label_19a4
    :label_19a2
    move v3, v13
    move v13, v11
    :label_19a4
    const/4 v11, 0x0
    move/from16 v29, v3
    move-object v3, v11
    move-object/from16 v12, v110
    move/from16 v54, v15
    move/from16 v15, v28
    move/from16 v53, v29
    move/from16 v69, v38
    move-object/from16 v84, v66
    move/from16 v66, v35
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_19b9
    move-object v8, v1
    move-object/from16 v1, v110
    goto/16 :label_1e03
    :label_19be
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v5, :label_19ce
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_19ce
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v5, :label_19dc
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    :label_19da
    move-object v7, v5
    goto :label_19df
    :label_19dc
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    goto :label_19da
    :label_19df
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    move v13, v11
    const/4 v11, 0x0
    const/4 v3, 0x0
    const/4 v5, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_19ec
    move-object v8, v1
    move-object v1, v12
    goto/16 :label_1e03
    :label_19f0
    move-object/from16 v12, v110
    move/from16 v53, v13
    move/from16 v54, v15
    move/from16 v69, v38
    move-object/from16 v84, v66
    move v15, v5
    move/from16 v66, v35
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v2
    if-nez v2, :label_1a08
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    goto :label_1a09
    :label_1a08
    const/4 v13, 0x0
    :label_1a09
    invoke-static {v13}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v9, 0x0
    move v13, v11
    const/4 v11, 0x0
    const/4 v3, 0x0
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_19b9
    :label_1a2c
    iput-boolean v15, v14, Lorg/telegram/ui/Cells/u1;->m7:Z
    if-eqz v54, :label_1a31
    goto :label_1a39
    :label_1a31
    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    const/16 v2, 0xfa
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V
    :label_1a39
    if-eqz v8, :label_1a3c
    goto :label_1a48
    :label_1a3c
    if-nez v4, :label_1a3f
    goto :label_1a48
    :label_1a3f
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_1a44
    goto :label_1aa6
    :label_1a44
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v2, :label_1aa6
    :label_1a48
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v2, :label_1a4d
    goto :label_1a56
    :label_1a4d
    if-eqz v54, :label_1a50
    goto :label_1a56
    :label_1a50
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z
    move-result v2
    if-nez v2, :label_1a7d
    :label_1a56
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const-string v3, "g"
    move v13, v11
    const/4 v11, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19b9
    :label_1a7d
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;
    move-result-object v8
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v3
    if-nez v3, :label_1a99
    const/4 v13, 0x0
    goto :label_1a9a
    :label_1a99
    move v13, v11
    :label_1a9a
    const-string v3, "g"
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v11, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19b9
    :label_1aa6
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v5, :label_1ab6
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_1ab6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v5, :label_1ac4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    :label_1ac2
    move-object v7, v5
    goto :label_1ac7
    :label_1ac4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    goto :label_1ac2
    :label_1ac7
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    move v13, v11
    const/4 v11, 0x0
    const-string v3, "g"
    const/4 v5, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19ec
    :label_1ad7
    move v15, v4
    move-object/from16 v76, v5
    move/from16 v53, v13
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move/from16 v67, v58
    move-object/from16 v84, v66
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    move v11, v2
    iget-boolean v2, v12, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z
    if-nez v2, :label_1b9e
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_1b09
    const/4 v5, 0x0
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    goto/16 :label_19ec
    :label_1b09
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    move-result-object v2
    iget-boolean v3, v12, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-nez v3, :label_1b66
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->loadingCancelled:Z
    if-eqz v3, :label_1b18
    goto :label_1b25
    :label_1b18
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v3
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v3
    if-eqz v3, :label_1b25
    goto :label_1b6d
    :label_1b25
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :label_1b6d
    iput-boolean v15, v14, Lorg/telegram/ui/Cells/u1;->Z4:Z
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v2, :label_1b36
    goto :label_1b40
    :label_1b36
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v3, :label_1b40
    const/4 v5, 0x0
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    goto/16 :label_19ec
    :label_1b40
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const-wide/16 v34, 0x0
    const/16 v36, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    move-object/from16 v28, v1
    move-object/from16 v32, v2
    move-object/from16 v33, v3
    move-object/from16 v37, v4
    move/from16 v38, v11
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_1b61
    move-object v1, v12
    move-object/from16 v8, v28
    goto/16 :label_1e03
    :label_1b66
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v2
    invoke-virtual {v2, v14}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V
    :label_1b6d
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v29
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    int-to-long v5, v5
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const/16 v36, 0x0
    move-object/from16 v28, v1
    move-object/from16 v30, v2
    move-object/from16 v32, v3
    move-object/from16 v33, v4
    move-wide/from16 v34, v5
    move-object/from16 v37, v7
    move/from16 v38, v11
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_1b61
    :label_1b9e
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/R$drawable;->theme_preview_image:I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    goto/16 :label_19ec
    :label_1bad
    move-object/from16 v76, v5
    move/from16 v53, v13
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move/from16 v67, v58
    move-object/from16 v84, v66
    const/4 v15, 0x1
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    move v11, v2
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const-wide/16 v34, 0x0
    const/16 v36, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    move-object/from16 v28, v1
    move-object/from16 v32, v2
    move-object/from16 v33, v3
    move-object/from16 v37, v4
    move/from16 v38, v11
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_1b61
    :label_1bf6
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-nez v2, :label_1c03
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V
    goto/16 :label_19ec
    :label_1c03
    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;
    if-nez v3, :label_1c0c
    invoke-static {v1, v2}, Lxg/f6;->x(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    goto/16 :label_19ec
    :label_1c0c
    invoke-static {}, Lxg/f6;->p()Landroid/graphics/drawable/Drawable;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    goto/16 :label_19ec
    :label_1c15
    move-object/from16 v76, v5
    move/from16 v53, v13
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move/from16 v67, v58
    move-object/from16 v84, v66
    const/4 v15, 0x1
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->hasVideoQualities()Z
    move-result v3
    if-nez v3, :label_1c49
    goto :label_1c50
    :label_1c49
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->thumbQuality:Lorg/telegram/ui/Components/b91;
    if-nez v3, :label_1c4e
    goto :label_1c50
    :label_1c4e
    iget-object v2, v3, Lorg/telegram/ui/Components/b91;->g:Lorg/telegram/tgnet/TLRPC$Document;
    :label_1c50
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v3
    if-nez v3, :label_1c5b
    const-string v3, "g"
    goto :label_1c5d
    :label_1c5b
    const-string v3, "gl"
    :label_1c5d
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    if-nez v4, :label_1c64
    goto :label_1c6d
    :label_1c64
    invoke-virtual {v4}, Lorg/telegram/messenger/VideoEditedInfo;->canAutoPlaySourceVideo()Z
    move-result v4
    if-nez v4, :label_1c6b
    goto :label_1c6d
    :label_1c6b
    if-nez v2, :label_1ce7
    :label_1c6d
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    if-nez v4, :label_1caa
    if-nez v2, :label_1c75
    goto/16 :label_19ec
    :label_1c75
    if-eqz v54, :label_1c78
    goto :label_1c7e
    :label_1c78
    if-eqz v10, :label_1c7b
    goto :label_1c7e
    :label_1c7b
    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    :label_1c7e
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v5
    move-object v6, v4
    move-object v4, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v7, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v9
    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const/4 v11, 0x0
    const/4 v13, 0x0
    move-object/from16 v107, v6
    move-object v6, v2
    move-object/from16 v2, v107
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19ec
    :label_1caa
    if-eqz v54, :label_1cad
    goto :label_1cb3
    :label_1cad
    if-eqz v10, :label_1cb0
    goto :label_1cb3
    :label_1cb0
    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    :label_1cb3
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    iget-object v4, v4, Lorg/telegram/ui/Components/b91;->d:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForVideoPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v5
    move-object v6, v4
    move-object v4, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v7, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v9
    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const/4 v11, 0x0
    const/4 v13, 0x0
    move-object/from16 v107, v6
    move-object v6, v2
    move-object/from16 v2, v107
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19b9
    :label_1ce7
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v5
    move-object v6, v4
    move-object v4, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v7, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v7
    move-object v8, v6
    move-object v6, v7
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    move-object v9, v8
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    move-object v2, v9
    move-wide v9, v10
    const/4 v11, 0x0
    const/4 v13, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J
    const-wide/16 v11, 0x3e8
    div-long/2addr v3, v11
    iget-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J
    div-long/2addr v5, v11
    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setMediaStartEndTime(JJ)V
    goto/16 :label_19b9
    :label_1d26
    move-object/from16 v76, v5
    move v4, v9
    move/from16 v53, v13
    move/from16 v20, v16
    move-object/from16 v83, v17
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move/from16 v67, v58
    move-object/from16 v84, v66
    const/4 v15, 0x1
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v58, 0x41f80000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move-object v14, v1
    move-object v1, v11
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;
    if-nez v3, :label_1de9
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;
    if-nez v3, :label_1d5b
    goto/16 :label_19b9
    :label_1d5b
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->isVideo:Z
    if-nez v3, :label_1d60
    goto :label_1d66
    :label_1d60
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->isLivePhoto()Z
    move-result v2
    if-eqz v2, :label_1dad
    :label_1d66
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I
    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I
    invoke-virtual {v1, v3, v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "thumb://"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ":"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumb:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v11, 0x0
    const/4 v13, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const-wide/16 v9, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19b9
    :label_1dad
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "vthumb://"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ":"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumb:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v11, 0x0
    const/4 v13, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const-wide/16 v9, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19b9
    :label_1de9
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumb:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v11, 0x0
    const/4 v13, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const-wide/16 v9, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_19ec
    :label_1e03
    move/from16 v15, v112
    move-object v6, v1
    move-object v1, v8
    move/from16 v8, v25
    move-object/from16 v11, v39
    move/from16 v2, v53
    move/from16 v7, v58
    move-object/from16 v9, v83
    move-object/from16 v13, v84
    const/4 v10, 0x4
    const/4 v12, -0x1
    const/high16 v39, 0x3f800000
    const/16 v77, 0x14
    goto/16 :label_2fa6
    :label_1e1b
    move-object/from16 v83, v8
    move-object v8, v11
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x1
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object v14, v1
    move-object v1, v12
    move-wide/from16 v11, v70
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject;
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-object v12, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-ne v11, v12, :label_1e58
    goto :label_1e62
    :label_1e58
    iget v12, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v22
    and-int v12, v12, v22
    if-nez v12, :label_1e69
    :label_1e62
    move/from16 v28, v0
    move v12, v2
    const/16 v82, 0x2
    goto/16 :label_1f6c
    :label_1e69
    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v4, v4
    div-float v4, v4, v111
    mul-float/2addr v4, v0
    move v12, v2
    move/from16 v22, v3
    float-to-double v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iget-byte v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-nez v3, :label_1e7f
    :label_1e7c
    const/16 v82, 0x2
    goto :label_1e9d
    :label_1e7f
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-nez v3, :label_1e86
    goto :label_1e8e
    :label_1e86
    iget v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/2addr v3, v15
    if-eqz v3, :label_1e8e
    const/16 v82, 0x2
    goto :label_1ea0
    :label_1e8e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-eqz v3, :label_1e95
    goto :label_1e7c
    :label_1e95
    iget v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v82, 0x2
    and-int/lit8 v3, v3, 0x2
    if-nez v3, :label_1ea0
    :label_1e9d
    move/from16 v28, v0
    goto :label_1ecf
    :label_1ea0
    move/from16 v28, v0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v15, 0x0
    :label_1ea5
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lt v3, v0, :label_1eb2
    move/from16 v29, v2
    goto :label_1ecc
    :label_1eb2
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    move/from16 v29, v2
    iget-byte v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eqz v2, :label_1fd2
    move/from16 v30, v3
    iget-byte v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eq v2, v3, :label_1fa3
    if-gt v2, v3, :label_1ecc
    goto/16 :label_2002
    :label_1ecc
    sub-int/2addr v4, v15
    add-int v2, v4, v29
    :label_1ecf
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    iget v0, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v3, v0, 0x2
    if-nez v3, :label_1edb
    goto :label_1edf
    :label_1edb
    and-int/lit8 v4, v0, 0x1
    if-nez v4, :label_1efa
    :label_1edf
    if-eqz v3, :label_1ee2
    goto :label_1ee6
    :label_1ee2
    and-int/lit8 v0, v0, 0x1
    if-eqz v0, :label_1ef3
    :label_1ee6
    if-nez v3, :label_1eee
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    :label_1eec
    sub-int/2addr v2, v0
    goto :label_1eff
    :label_1eee
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_1eec
    :label_1ef3
    const/high16 v0, 0x41300000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_1eec
    :label_1efa
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_1eec
    :label_1eff
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-eqz v0, :label_1f04
    goto :label_1f09
    :label_1f04
    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_1f09
    goto :label_1f15
    :label_1f09
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->o8:Z
    if-eqz v0, :label_1f0e
    goto :label_1f15
    :label_1f0e
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_1f15
    goto :label_1f2d
    :label_1f15
    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z
    if-eqz v0, :label_1f1a
    goto :label_1f2d
    :label_1f1a
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_1f21
    goto :label_1f2d
    :label_1f21
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v3
    const-wide/32 v29, 0x77628
    cmp-long v0, v3, v29
    if-eqz v0, :label_1f2d
    goto :label_1f3e
    :label_1f2d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawAvatar()Z
    move-result v0
    if-nez v0, :label_1f34
    goto :label_1f3e
    :label_1f34
    iget-boolean v0, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-nez v0, :label_1f39
    goto :label_1f3e
    :label_1f39
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    :label_1f3e
    invoke-static {v11}, Lorg/telegram/ui/Cells/u1;->w2(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)I
    move-result v0
    add-int/2addr v0, v2
    iget-boolean v2, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-eqz v2, :label_1f48
    goto :label_1f4d
    :label_1f48
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    :label_1f4d
    add-int v3, v22, v0
    iget-byte v2, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B
    if-ge v2, v4, :label_1f58
    goto :label_1f66
    :label_1f58
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z
    if-nez v2, :label_1f5f
    goto :label_1f6b
    :label_1f5f
    iget-byte v2, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    iget-byte v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B
    if-ne v2, v4, :label_1f66
    goto :label_1f6b
    :label_1f66
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->n4:I
    sub-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->n4:I
    :label_1f6b
    move v4, v0
    :label_1f6c
    if-nez v55, :label_1f6f
    goto :label_1f80
    :label_1f6f
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-nez v0, :label_1f74
    goto :label_1f80
    :label_1f74
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-nez v2, :label_1f7b
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    goto :label_1f80
    :label_1f7b
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    const/16 v55, 0x0
    :label_1f80
    add-int/lit8 v2, v12, 0x1
    move/from16 v15, v115
    move-object v12, v1
    move-object v11, v8
    move-object v1, v14
    move/from16 v14, v16
    move/from16 v16, v20
    move/from16 v31, v25
    move/from16 v0, v28
    move-object/from16 v32, v39
    move/from16 v25, v54
    move/from16 v58, v67
    move/from16 v38, v69
    move-object/from16 v67, v76
    move-object/from16 v8, v83
    move-object/from16 v66, v84
    const-wide/16 v70, 0x3e8
    move-wide/from16 v28, v17
    goto/16 :label_12b1
    :label_1fa3
    int-to-double v2, v15
    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v15, v15
    div-float v15, v15, v111
    mul-float v15, v15, v28
    move-wide/from16 v31, v2
    float-to-double v2, v15
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-nez v0, :label_1fbf
    const-wide/16 v33, 0x0
    move-wide/from16 v107, v33
    move-wide/from16 v33, v2
    move-wide/from16 v2, v107
    goto :label_1fcb
    :label_1fbf
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    move-wide/from16 v33, v2
    float-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    :label_1fcb
    add-double v2, v33, v2
    add-double v2, v2, v31
    double-to-int v0, v2
    move v15, v0
    goto :label_2002
    :label_1fd2
    move/from16 v30, v3
    int-to-double v2, v4
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v4, v4
    div-float v4, v4, v111
    mul-float v4, v4, v28
    move-wide/from16 v31, v2
    float-to-double v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-nez v0, :label_1ff0
    const-wide/16 v33, 0x0
    move-wide/from16 v107, v33
    move-wide/from16 v33, v2
    move-wide/from16 v2, v107
    goto :label_1ffc
    :label_1ff0
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    move-wide/from16 v33, v2
    float-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    :label_1ffc
    add-double v2, v33, v2
    add-double v2, v2, v31
    double-to-int v0, v2
    move v4, v0
    :label_2002
    add-int/lit8 v3, v30, 0x1
    move/from16 v2, v29
    goto/16 :label_1ea5
    :label_2008
    move-object/from16 v83, v8
    move-object v8, v11
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v28, v0
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object v14, v1
    move-object v1, v12
    aget v0, v6, v3
    mul-float v0, v0, v52
    float-to-double v5, v0
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v0, v5
    add-int/2addr v2, v0
    add-int/lit8 v3, v3, 0x1
    move/from16 v15, v115
    move-object v1, v14
    move/from16 v14, v16
    move/from16 v16, v20
    move/from16 v0, v28
    move/from16 v25, v54
    move/from16 v58, v67
    move-object/from16 v67, v76
    move-object/from16 v8, v83
    move-object/from16 v66, v84
    const-wide/16 v70, 0x3e8
    move-wide/from16 v28, v17
    goto/16 :label_11f2
    :label_2052
    move-object/from16 v83, v8
    move-object v8, v11
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v28, v0
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object v14, v1
    move-object v1, v12
    int-to-double v11, v9
    iget v0, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    move v6, v2
    move v4, v3
    float-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    iget v0, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-nez v0, :label_2092
    const-wide/16 v29, 0x0
    move-wide/from16 v107, v29
    move-wide/from16 v29, v2
    move-wide/from16 v2, v107
    goto :label_209e
    :label_2092
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    move-wide/from16 v29, v2
    float-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    :label_209e
    add-double v2, v29, v2
    add-double/2addr v2, v11
    double-to-int v0, v2
    move v9, v0
    goto :label_20f5
    :label_20a4
    move v6, v2
    move v4, v3
    move-object/from16 v83, v8
    move-object v8, v11
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v28, v0
    move/from16 v16, v14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    move-object v14, v1
    move-object v1, v12
    int-to-double v2, v5
    iget v0, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    float-to-double v11, v0
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v11
    iget v0, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-nez v0, :label_20e4
    const-wide/16 v29, 0x0
    move-wide/from16 v107, v29
    move-wide/from16 v29, v2
    move-wide/from16 v2, v107
    goto :label_20f0
    :label_20e4
    int-to-float v0, v0
    div-float v0, v0, v111
    mul-float v0, v0, v28
    move-wide/from16 v29, v2
    float-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    :label_20f0
    add-double/2addr v11, v2
    add-double v11, v11, v29
    double-to-int v0, v11
    move v5, v0
    :label_20f5
    add-int/lit8 v3, v4, 0x1
    move/from16 v4, v111
    move/from16 v15, v115
    move-object v12, v1
    move v2, v6
    move-object v11, v8
    move-object v1, v14
    move/from16 v14, v16
    move/from16 v16, v20
    move/from16 v31, v25
    move/from16 v0, v28
    move-object/from16 v32, v39
    move/from16 v25, v54
    move/from16 v58, v67
    move/from16 v38, v69
    move-object/from16 v67, v76
    move-object/from16 v8, v83
    move-object/from16 v66, v84
    const/16 v6, 0xa
    const-wide/16 v70, 0x3e8
    move-wide/from16 v28, v17
    goto/16 :label_1159
    :label_211d
    move-object v14, v1
    move/from16 v111, v4
    move-object/from16 v83, v8
    move-object v8, v11
    move-object v1, v12
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    int-to-double v6, v9
    iget v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I
    iget v9, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    add-int/2addr v4, v9
    int-to-float v4, v4
    div-float v4, v4, v111
    int-to-float v9, v0
    mul-float/2addr v4, v9
    float-to-double v11, v4
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v11
    add-double/2addr v11, v6
    double-to-int v9, v11
    add-int/lit8 v2, v2, 0x1
    move/from16 v4, v111
    move/from16 v15, v115
    move-object v12, v1
    move-object v11, v8
    move-object v1, v14
    move/from16 v25, v54
    move/from16 v58, v67
    move-object/from16 v67, v76
    move-object/from16 v8, v83
    move-object/from16 v66, v84
    const/16 v6, 0x18
    const/16 v7, 0x17
    const-wide/16 v70, 0x3e8
    goto/16 :label_0ffd
    :label_216c
    move-object v14, v1
    move-object/from16 v83, v8
    move-object v8, v11
    move-object v1, v12
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v39, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v4, 0x0
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->p8:Z
    iget v0, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0xd
    if-eq v0, v2, :label_2197
    const/4 v0, 0x0
    goto :label_2198
    :label_2197
    const/4 v0, 0x1
    :label_2198
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    if-nez v2, :label_219f
    goto :label_21a8
    :label_219f
    const/4 v9, 0x0
    :label_21a0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-lt v9, v3, :label_21ab
    :label_21a8
    const/4 v2, 0x0
    const/4 v9, 0x0
    goto :label_21c7
    :label_21ab
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v4, :label_21c3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-nez v4, :label_21be
    add-int/lit8 v9, v9, 0x1
    goto :label_21a0
    :label_21be
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    goto :label_21c7
    :label_21c3
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    :label_21c7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z
    move-result v3
    if-eqz v3, :label_21ce
    goto :label_21d5
    :label_21ce
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z
    move-result v3
    if-nez v3, :label_21d5
    goto :label_21de
    :label_21d5
    if-eqz v9, :label_21d8
    goto :label_21de
    :label_21d8
    if-eqz v2, :label_21db
    goto :label_21de
    :label_21db
    const/16 v9, 0x200
    move v2, v9
    :label_21de
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z
    move-result v3
    if-nez v3, :label_21e5
    goto :label_2208
    :label_21e5
    const/16 v3, 0x200
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I
    move-result v9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I
    move-result v2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v3
    if-nez v3, :label_21fa
    goto :label_2208
    :label_21fa
    sget v3, Lorg/telegram/ui/ActionBar/n6;->G6:I
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->K2(I)I
    move-result v3
    const/4 v4, 0x0
    invoke-virtual {v14, v4, v3}, Lorg/telegram/ui/Cells/u1;->v2(II)Landroid/graphics/ColorFilter;
    move-result-object v3
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :label_2208
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v3
    if-nez v3, :label_2222
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v3
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v4, v4, Landroid/graphics/Point;->y:I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    move-result v3
    int-to-float v3, v3
    const/high16 v4, 0x3f000000
    :label_221d
    mul-float/2addr v3, v4
    float-to-int v3, v3
    int-to-float v4, v3
    move v12, v3
    goto :label_222b
    :label_2222
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v3
    int-to-float v3, v3
    const v4, 0x3ecccccd
    goto :label_221d
    :label_222b
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v3
    if-eqz v3, :label_2232
    goto :label_225b
    :label_2232
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v3
    if-nez v3, :label_225b
    if-eqz v9, :label_223b
    goto :label_2244
    :label_223b
    float-to-int v2, v4
    const/high16 v3, 0x42c80000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int v9, v3, v2
    :label_2244
    int-to-float v2, v2
    int-to-float v3, v12
    int-to-float v5, v9
    div-float v5, v3, v5
    mul-float/2addr v5, v2
    float-to-int v2, v5
    int-to-float v5, v2
    cmpl-float v6, v5, v4
    if-gtz v6, :label_2253
    move v13, v2
    move v9, v12
    goto :label_2272
    :label_2253
    div-float v2, v4, v5
    mul-float/2addr v2, v3
    float-to-int v2, v2
    float-to-int v3, v4
    move v9, v2
    move v13, v3
    goto :label_2272
    :label_225b
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget v3, v3, Lorg/telegram/messenger/MessagesController;->animatedEmojisZoom:F
    int-to-float v5, v9
    const/high16 v6, 0x44000000
    div-float/2addr v5, v6
    int-to-float v6, v12
    mul-float/2addr v5, v6
    mul-float/2addr v5, v3
    float-to-int v5, v5
    int-to-float v2, v2
    const/high16 v6, 0x44000000
    div-float/2addr v2, v6
    mul-float/2addr v2, v4
    mul-float/2addr v2, v3
    float-to-int v2, v2
    move v13, v2
    move v9, v5
    :label_2272
    int-to-float v2, v9
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v2, v3
    float-to-int v2, v2
    int-to-float v4, v13
    div-float/2addr v4, v3
    float-to-int v3, v4
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-nez v4, :label_227f
    goto :label_2285
    :label_227f
    invoke-interface {v4, v1}, Lorg/telegram/ui/Cells/l1;->p0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v4
    if-nez v4, :label_2287
    :label_2285
    const/4 v4, 0x0
    goto :label_2288
    :label_2287
    const/4 v4, 0x1
    :label_2288
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :label_2291
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    goto :label_229b
    :label_2291
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    const/16 v6, 0x28
    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v5
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_229b
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v5
    if-nez v5, :label_240e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v5
    if-nez v5, :label_2306
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z
    move-result v5
    if-eqz v5, :label_22b4
    :label_22b1
    move-object/from16 v10, v76
    goto :label_22ed
    :label_22b4
    if-nez v0, :label_22b7
    goto :label_22bd
    :label_22b7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z
    move-result v5
    if-eqz v5, :label_22b1
    :label_22bd
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    iget v5, v1, Lorg/telegram/messenger/MessageObject;->stableId:I
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-object/from16 v10, v76
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "_nr_messageId="
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    if-nez v4, :label_22e1
    const/4 v3, 0x3
    goto :label_22e2
    :label_22e1
    move v3, v15
    :label_22e2
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :label_22e5
    move-object/from16 v37, v1
    move-object/from16 v30, v2
    :label_22e9
    const/4 v4, 0x0
    :label_22ea
    const/4 v11, 0x6
    goto/16 :label_2486
    :label_22ed
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0x1
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    goto :label_22e5
    :label_2306
    move-object/from16 v10, v76
    const/16 v5, 0x1010
    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z
    move-result v5
    if-eqz v5, :label_23c0
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :label_2315
    goto :label_2319
    :label_2315
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedStickerId:Ljava/lang/Long;
    if-nez v5, :label_2375
    :label_2319
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v6, Ljava/lang/StringBuilder;
    const-string v7, "%d_%d_nr_messageId=%d"
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedStickerColor:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    iget v7, v1, Lorg/telegram/messenger/MessageObject;->stableId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    const/4 v11, 0x3
    new-array v11, v11, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v2, v11, v23
    const/16 v86, 0x1
    aput-object v3, v11, v86
    const/4 v2, 0x2
    aput-object v7, v11, v2
    invoke-static {v5, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v3
    if-nez v3, :label_235d
    if-nez v4, :label_2357
    const/4 v3, 0x3
    goto :label_2358
    :label_2357
    move v3, v15
    :label_2358
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    const/4 v3, 0x1
    goto :label_2361
    :label_235d
    const/4 v3, 0x1
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :label_2361
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedStickerId:Ljava/lang/Long;
    if-nez v5, :label_236c
    goto :label_236f
    :label_236c
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    :label_236f
    move-object/from16 v30, v2
    move-object/from16 v37, v4
    goto/16 :label_22e9
    :label_2375
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;
    const-string v6, "%d_%d_nr_messageId=%d"
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedStickerColor:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    iget v6, v1, Lorg/telegram/messenger/MessageObject;->stableId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v7, 0x3
    new-array v7, v7, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v2, v7, v23
    const/4 v2, 0x1
    aput-object v3, v7, v2
    const/4 v3, 0x2
    aput-object v6, v7, v3
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    sget v4, Lorg/telegram/ui/ActionBar/n6;->lc:I
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    const v6, 0x3ecccccd
    const v7, 0x3f266666
    invoke-static {v6, v4, v5, v7}, Lorg/telegram/messenger/DocumentObject;->getCircleThumb(FILorg/telegram/ui/ActionBar/j6;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    move-result-object v4
    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->loadAnimatedEmojiDocument()V
    move-object/from16 v37, v1
    move-object/from16 v30, v3
    goto/16 :label_22ea
    :label_23c0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;
    const-string v6, "%d_%d_nr_messageId=%d"
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->emojiAnimatedStickerColor:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    iget v6, v1, Lorg/telegram/messenger/MessageObject;->stableId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v7, 0x3
    new-array v7, v7, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v2, v7, v23
    const/16 v86, 0x1
    aput-object v3, v7, v86
    const/4 v2, 0x2
    aput-object v6, v7, v2
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    sget v3, Lorg/telegram/ui/ActionBar/n6;->lc:I
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    const v5, 0x3ecccccd
    const v6, 0x3f266666
    invoke-static {v5, v3, v4, v6}, Lorg/telegram/messenger/DocumentObject;->getCircleThumb(FILorg/telegram/ui/ActionBar/j6;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    move-result-object v3
    const/4 v4, 0x3
    invoke-virtual {v8, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->loadAnimatedEmojiDocument()V
    move-object/from16 v37, v1
    move-object/from16 v30, v2
    move-object v4, v3
    goto/16 :label_22ea
    :label_240e
    move-object/from16 v10, v76
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "_dice_"
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v8, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;
    move-result-object v3
    invoke-static/range {v112 .. v112}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;
    move-result-object v4
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    move-result-object v4
    if-nez v4, :label_244f
    goto/16 :label_22e5
    :label_244f
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-gtz v5, :label_2459
    goto/16 :label_22e5
    :label_2459
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDiceValue()I
    move-result v5
    if-lez v5, :label_2463
    goto/16 :label_22e5
    :label_2463
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;
    const/4 v5, 0x0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;
    const-string v5, "\ud83c\udfb0"
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_247f
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v5, 0x28
    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v3
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :label_2482
    :label_247f
    const/4 v5, 0x0
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_2482
    iput-object v4, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    goto/16 :label_22e5
    :label_2486
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v2, v9, v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    const/high16 v62, 0x41400000
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v9
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/4 v2, 0x0
    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_24a4
    goto :label_24b2
    :label_24a4
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v2
    if-nez v2, :label_24af
    goto :label_24b2
    :label_24af
    const/4 v3, 0x1
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->f:Z
    :label_24b2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    if-nez v2, :label_24cb
    const/4 v5, 0x0
    const/4 v7, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    move-object v6, v1
    move-object v1, v8
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    move/from16 v16, v9
    move/from16 v22, v13
    move-object/from16 v9, v83
    move-object v13, v10
    move-object v10, v6
    goto/16 :label_25e8
    :label_24cb
    move-object v6, v1
    move-object v1, v8
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z
    move-result v2
    if-nez v2, :label_25a5
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->pathThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    if-nez v2, :label_2577
    iget-boolean v2, v6, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    if-nez v2, :label_2540
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    cmp-long v2, v2, v17
    if-nez v2, :label_2509
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v0
    move v2, v9
    const/4 v9, 0x0
    move/from16 v78, v11
    const/4 v11, 0x0
    move v5, v2
    const/4 v2, 0x0
    const/4 v3, 0x0
    move v7, v5
    const-string v5, "b1"
    move/from16 v16, v7
    const-wide/16 v7, 0x0
    move/from16 v22, v13
    move-object v13, v10
    move-object v10, v6
    move-object v6, v4
    move-object v4, v0
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_2505
    move-object/from16 v9, v83
    goto/16 :label_25e8
    :label_2509
    move/from16 v16, v9
    move/from16 v22, v13
    move-object v13, v10
    move-object v10, v6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v29
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    if-nez v4, :label_2523
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    :label_2523
    move-object/from16 v33, v4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    if-nez v0, :label_2530
    const/16 v36, 0x0
    goto :label_2534
    :label_2530
    const-string v0, "webp"
    move-object/from16 v36, v0
    :label_2534
    const/16 v38, 0x1
    const-string v32, "b1"
    move-object/from16 v28, v1
    move-wide/from16 v34, v2
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_2505
    :label_2540
    move/from16 v16, v9
    move/from16 v22, v13
    move-object v13, v10
    move-object v10, v6
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v29
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    if-nez v4, :label_255a
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    :label_255a
    move-object/from16 v33, v4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    if-nez v0, :label_2567
    const/16 v36, 0x0
    goto :label_256b
    :label_2567
    const-string v0, "webp"
    move-object/from16 v36, v0
    :label_256b
    const/16 v38, 0x1
    const-string v32, "b1"
    move-object/from16 v28, v1
    move-wide/from16 v34, v2
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_2505
    :label_2577
    move/from16 v16, v9
    move/from16 v22, v13
    move-object v13, v10
    move-object v10, v6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v29
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->pathThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v3
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    if-nez v0, :label_2592
    const/16 v34, 0x0
    goto :label_2596
    :label_2592
    const-string v0, "webp"
    move-object/from16 v34, v0
    :label_2596
    const/16 v36, 0x1
    move-object/from16 v28, v1
    move-object/from16 v31, v2
    move-wide/from16 v32, v3
    move-object/from16 v35, v37
    invoke-virtual/range {v28 .. v36}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_2505
    :label_25a5
    move/from16 v16, v9
    move/from16 v22, v13
    move-object v13, v10
    move-object v10, v6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v29
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->pathThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v3
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    if-nez v0, :label_25c8
    const/16 v36, 0x0
    goto :label_25cc
    :label_25c8
    const-string v0, "webp"
    move-object/from16 v36, v0
    :label_25cc
    const/16 v38, 0x1
    const-string v30, "g"
    const-string v32, "b1"
    move-object/from16 v28, v1
    move-object/from16 v33, v2
    move-wide/from16 v34, v3
    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    invoke-static {}, Lorg/telegram/ui/Cells/u1;->v3()Z
    move-result v0
    if-eqz v0, :label_25e3
    goto/16 :label_2505
    :label_25e3
    const/4 v3, 0x1
    iput v3, v1, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I
    goto/16 :label_2505
    :label_25e8
    iget-boolean v0, v9, Lvf/q0;->b:Z
    if-eqz v0, :label_25f0
    const/4 v0, 0x0
    const/high16 v12, 0x3f800000
    goto :label_2636
    :label_25f0
    const/high16 v0, 0x42100000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v0, v12
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_2600
    goto :label_2611
    :label_2600
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v2
    if-eqz v2, :label_2609
    goto :label_2613
    :label_2609
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v2
    if-nez v2, :label_2613
    :label_2611
    const/4 v2, 0x3
    goto :label_2614
    :label_2613
    const/4 v2, 0x5
    :label_2614
    invoke-virtual {v9, v0, v2}, Lvf/q0;->p(II)V
    const/high16 v12, 0x3f800000
    iput v12, v9, Lvf/q0;->a:F
    iget v0, v9, Lvf/q0;->o:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v9, Lvf/q0;->p:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v2
    if-eqz v2, :label_262d
    goto :label_2636
    :label_262d
    iget v2, v9, Lvf/q0;->m:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v9, Lvf/q0;->m:I
    :label_2636
    invoke-static/range {v39 .. v39}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v2
    if-nez v2, :label_2642
    :label_263f
    move-object/from16 v11, v39
    goto :label_2676
    :label_2642
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v2
    if-eqz v2, :label_264d
    goto :label_263f
    :label_264d
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v2
    if-nez v2, :label_2656
    goto :label_263f
    :label_2656
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-nez v2, :label_263f
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v3
    invoke-static {v2, v3}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    move-result-object v2
    move-object/from16 v11, v39
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getFancyBlurFilter()Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v2
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :label_2676
    move/from16 v15, v112
    move-object v6, v10
    move/from16 v39, v12
    move-object/from16 v76, v13
    move/from16 v2, v22
    move/from16 v8, v25
    move/from16 v7, v58
    move-object/from16 v13, v84
    const/4 v10, 0x4
    const/4 v12, -0x1
    const/16 v52, 0x0
    const/16 v77, 0x14
    move/from16 v22, v16
    const/16 v16, 0x0
    goto/16 :label_2fa6
    :label_2691
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v10, v12
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v13, v67
    const/4 v4, 0x0
    const/high16 v12, 0x3f800000
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->p8:Z
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->textWidth:I
    move-object/from16 v3, v84
    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v2
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v2, v4
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v0
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v62, 0x41400000
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int v4, v0, v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v4
    if-nez v4, :label_26eb
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v5, v5, Landroid/graphics/Point;->y:I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    move-result v4
    int-to-float v4, v4
    const/high16 v5, 0x3f000000
    :label_26e8
    mul-float/2addr v4, v5
    float-to-int v4, v4
    goto :label_26f4
    :label_26eb
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v4
    int-to-float v4, v4
    const v5, 0x3ecccccd
    goto :label_26e8
    :label_26f4
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget-boolean v5, v9, Lvf/q0;->b:Z
    if-eqz v5, :label_2700
    const/4 v4, 0x0
    goto :label_2722
    :label_2700
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v5
    if-nez v5, :label_270a
    const/4 v5, 0x3
    goto :label_270b
    :label_270a
    const/4 v5, 0x5
    :label_270b
    invoke-virtual {v9, v4, v5}, Lvf/q0;->p(II)V
    iput v12, v9, Lvf/q0;->a:F
    iget v4, v9, Lvf/q0;->o:I
    iput v4, v9, Lvf/q0;->p:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v4, v5
    iget v5, v9, Lvf/q0;->m:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v5
    iput v6, v9, Lvf/q0;->m:I
    :label_2722
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    move/from16 v15, v112
    move/from16 v22, v0
    move v0, v4
    move-object v6, v10
    move/from16 v39, v12
    move-object/from16 v76, v13
    move/from16 v8, v25
    move/from16 v7, v58
    const/4 v10, 0x4
    const/4 v12, -0x1
    const/16 v16, 0x1
    const/16 v52, 0x0
    const/16 v77, 0x14
    move-object v13, v3
    goto/16 :label_2fa6
    :label_2740
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v10, v12
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v3, v66
    move-object/from16 v13, v67
    const/high16 v12, 0x3f800000
    const/4 v15, 0x2
    const/16 v19, 0x8
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D
    move/from16 v39, v12
    move-object/from16 v76, v13
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    long-to-int v8, v12
    if-eqz v8, :label_277b
    goto :label_278c
    :label_277b
    sget v8, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I
    if-eqz v8, :label_278c
    const/4 v13, 0x1
    if-eq v8, v13, :label_2789
    const/4 v12, 0x3
    if-eq v8, v12, :label_2786
    goto :label_278c
    :label_2786
    const/16 v37, 0x1
    goto :label_278e
    :label_2789
    const/16 v37, 0x4
    goto :label_278e
    :label_278c
    const/16 v37, -0x1
    :label_278e
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v8
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;
    const v12, 0x43908000
    if-nez v8, :label_29dd
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :label_286f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v2
    if-nez v2, :label_27d3
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v2
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v8, :label_27be
    if-nez v26, :label_27bb
    const/4 v8, 0x0
    goto :label_27c0
    :label_27bb
    move/from16 v8, v50
    goto :label_27c0
    :label_27be
    move/from16 v8, v49
    :label_27c0
    add-int v8, v47, v8
    int-to-float v8, v8
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_27f6
    :label_27d3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v2
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v8, :label_27e2
    if-nez v26, :label_27df
    const/4 v8, 0x0
    goto :label_27e4
    :label_27df
    move/from16 v8, v50
    goto :label_27e4
    :label_27e2
    move/from16 v8, v49
    :label_27e4
    add-int v8, v47, v8
    int-to-float v8, v8
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_27f6
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_2806
    goto :label_280f
    :label_2806
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_280f
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v8, 0x42080000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v2, v8
    const/high16 v8, 0x43430000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    int-to-float v12, v2
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float v15, v12, v13
    float-to-int v15, v15
    move/from16 v111, v2
    int-to-float v2, v8
    div-float v13, v2, v13
    float-to-int v13, v13
    const/16 v35, 0x1
    const/16 v36, 0xf
    move/from16 v16, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->H7:I
    move/from16 v28, v2
    move-wide/from16 v29, v4
    move-wide/from16 v31, v6
    move/from16 v34, v13
    move/from16 v33, v15
    invoke-static/range {v28 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v12, v2
    float-to-int v4, v12
    div-float v5, v16, v2
    float-to-int v5, v5
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v2, v6
    const/4 v15, 0x2
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I
    move-result v2
    const/16 v6, 0xf
    invoke-static {v0, v4, v5, v6, v2}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(Lorg/telegram/tgnet/TLRPC$GeoPoint;IIII)Lorg/telegram/messenger/WebFile;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    move/from16 v22, v111
    move/from16 v15, v112
    move v13, v8
    const/4 v0, 0x0
    const/16 v77, 0x14
    goto/16 :label_2be6
    :label_286f
    move-wide/from16 v29, v4
    move-wide/from16 v31, v6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v2
    if-nez v2, :label_289d
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v2
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v4, :label_2888
    if-nez v26, :label_2885
    const/4 v4, 0x0
    goto :label_288a
    :label_2885
    move/from16 v4, v50
    goto :label_288a
    :label_2888
    move/from16 v4, v49
    :label_288a
    add-int v4, v47, v4
    int-to-float v4, v4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_28c0
    :label_289d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v2
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v4, :label_28ac
    if-nez v26, :label_28a9
    const/4 v4, 0x0
    goto :label_28ae
    :label_28a9
    move/from16 v4, v50
    goto :label_28ae
    :label_28ac
    move/from16 v4, v49
    :label_28ae
    add-int v4, v47, v4
    int-to-float v4, v4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_28c0
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_28d0
    goto :label_28d9
    :label_28d0
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_28d9
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v4, 0x42080000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    const/high16 v5, 0x43430000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    int-to-float v6, v4
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float v8, v6, v7
    float-to-int v8, v8
    int-to-float v12, v5
    div-float v7, v12, v7
    float-to-int v7, v7
    const/16 v35, 0x1
    const/16 v36, 0xf
    iget v13, v14, Lorg/telegram/ui/Cells/u1;->H7:I
    move/from16 v34, v7
    move/from16 v33, v8
    move/from16 v28, v13
    invoke-static/range {v28 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;
    move-result-object v7
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v6, v7
    float-to-int v6, v6
    div-float/2addr v12, v7
    float-to-int v8, v12
    float-to-double v12, v7
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v12
    double-to-int v7, v12
    const/4 v15, 0x2
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I
    move-result v7
    const/16 v12, 0xf
    invoke-static {v0, v6, v8, v12, v7}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(Lorg/telegram/tgnet/TLRPC$GeoPoint;IIII)Lorg/telegram/messenger/WebFile;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;
    sget-object v90, Lorg/telegram/ui/ActionBar/n6;->H2:Landroid/text/TextPaint;
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int v91, v6, v2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    const/16 v92, 0x0
    const/16 v94, 0x1
    move-object/from16 v89, v0
    move/from16 v93, v2
    invoke-static/range {v89 .. v94}, Lorg/telegram/ui/Components/ay0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFII)Landroid/text/StaticLayout;
    move-result-object v0
    move/from16 v91, v93
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :label_296b
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    const/16 v15, 0x14
    goto/16 :label_29d4
    :label_296b
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;
    sget-object v90, Lorg/telegram/ui/ActionBar/n6;->I2:Landroid/text/TextPaint;
    const/16 v92, 0x0
    const/16 v94, 0x1
    move/from16 v93, v91
    move-object/from16 v89, v2
    invoke-static/range {v89 .. v94}, Lorg/telegram/ui/Components/ay0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFII)Landroid/text/StaticLayout;
    move-result-object v2
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    const/4 v7, 0x0
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v6
    float-to-double v12, v6
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v12
    double-to-int v6, v12
    sub-int/2addr v2, v6
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v2, v6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v6
    cmpl-float v6, v6, v20
    if-gtz v6, :label_29a7
    const/4 v8, 0x0
    goto :label_29a8
    :label_29a7
    const/4 v8, 0x1
    :label_29a8
    if-eqz v8, :label_29ad
    const/16 v15, 0x14
    goto :label_29c8
    :label_29ad
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v7
    if-nez v7, :label_29ba
    const/16 v77, 0x0
    :label_29b7
    const/16 v15, 0x14
    goto :label_29bd
    :label_29ba
    const/16 v77, 0x14
    goto :label_29b7
    :label_29bd
    add-int/lit8 v7, v77, 0x14
    int-to-float v7, v7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v6
    if-lt v2, v7, :label_29c8
    goto :label_29d4
    :label_29c8
    if-nez v8, :label_29cd
    move/from16 v7, v69
    goto :label_29cf
    :label_29cd
    move/from16 v7, v48
    :label_29cf
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    :label_29d4
    move/from16 v22, v4
    move v13, v5
    move/from16 v77, v15
    move/from16 v15, v112
    goto/16 :label_2be6
    :label_29dd
    move-wide/from16 v29, v4
    move-wide/from16 v31, v6
    const/16 v15, 0x14
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v4
    if-nez v4, :label_2a0e
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v5, :label_29f8
    if-nez v26, :label_29f5
    const/4 v5, 0x0
    goto :label_29fa
    :label_29f5
    move/from16 v5, v50
    goto :label_29fa
    :label_29f8
    move/from16 v5, v49
    :label_29fa
    const/16 v6, 0x3b
    add-int/2addr v6, v5
    int-to-float v5, v6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_2a31
    :label_2a0e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v4
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v5, :label_2a1d
    if-nez v26, :label_2a1a
    const/4 v5, 0x0
    goto :label_2a1f
    :label_2a1a
    move/from16 v5, v50
    goto :label_2a1f
    :label_2a1d
    move/from16 v5, v49
    :label_2a1f
    add-int v5, v47, v5
    int-to-float v5, v5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_2a31
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v4
    if-nez v4, :label_2a41
    goto :label_2a4a
    :label_2a41
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_2a4a
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v5, 0x42140000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    const/high16 v5, 0x42580000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v5, v6
    const/high16 v6, 0x43430000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    const/high16 v7, 0x10000000
    int-to-double v7, v7
    const-wide v12, 0x400921fb54442d18L
    div-double v12, v7, v12
    const-wide v33, 0x400921fb54442d18L
    mul-double v28, v29, v33
    const-wide v33, 0x4066800000000000L
    div-double v28, v28, v33
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D
    move-result-wide v33
    const-wide/high16 v35, 0x3ff0000000000000L
    add-double v33, v33, v35
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D
    move-result-wide v28
    sub-double v35, v35, v28
    div-double v33, v33, v35
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->log(D)D
    move-result-wide v28
    mul-double v28, v28, v12
    const-wide/high16 v33, 0x4000000000000000L
    div-double v28, v28, v33
    sub-double v28, v7, v28
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J
    move-result-wide v28
    const v16, 0x4124cccd
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v16
    move-wide/from16 v33, v12
    const/4 v13, 0x6
    shl-int/lit8 v12, v16, 0x6
    int-to-long v13, v12
    sub-long v13, v28, v13
    long-to-double v12, v13
    sub-double/2addr v12, v7
    div-double v12, v12, v33
    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D
    move-result-wide v7
    const-wide/high16 v12, 0x4000000000000000L
    mul-double/2addr v7, v12
    const-wide v12, 0x3ff921fb54442d18L
    sub-double/2addr v12, v7
    const-wide v7, 0x4066800000000000L
    mul-double/2addr v12, v7
    const-wide v7, 0x400921fb54442d18L
    div-double v28, v12, v7
    int-to-float v7, v5
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float v12, v7, v8
    float-to-int v12, v12
    int-to-float v13, v6
    div-float v8, v13, v8
    float-to-int v8, v8
    const/16 v35, 0x0
    const/16 v36, 0xf
    move-object/from16 v14, v109
    move/from16 v77, v15
    iget v15, v14, Lorg/telegram/ui/Cells/u1;->H7:I
    move/from16 v34, v8
    move/from16 v33, v12
    move-wide/from16 v29, v28
    move/from16 v28, v15
    invoke-static/range {v28 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;
    move-result-object v8
    move-wide/from16 v28, v29
    iput-object v8, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    move/from16 v111, v5
    move v8, v6
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v7, v0
    float-to-int v7, v7
    div-float/2addr v13, v0
    float-to-int v12, v13
    move-wide v15, v5
    float-to-double v5, v0
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v0, v5
    const/4 v5, 0x2
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I
    move-result v37
    move/from16 v34, v7
    move/from16 v35, v12
    move-wide/from16 v30, v31
    move-wide/from16 v32, v15
    invoke-static/range {v28 .. v37}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(DDJIIII)Lorg/telegram/messenger/WebFile;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    const/4 v5, 0x1
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->e3(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->V3:Z
    if-eqz v0, :label_2b32
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/4 v0, 0x0
    goto :label_2b43
    :label_2b32
    const/4 v5, 0x0
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->nd:Lorg/telegram/ui/Cells/e1;
    const-wide/16 v6, 0x3e8
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Vc:Z
    :label_2b43
    new-instance v28, Landroid/text/StaticLayout;
    sget v5, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I
    const-string v6, "AttachLiveLocation"
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v5
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->H2:Landroid/text/TextPaint;
    int-to-float v7, v4
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v5, v6, v7, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v29
    sget-object v30, Lorg/telegram/ui/ActionBar/n6;->H2:Landroid/text/TextPaint;
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int v31, v5, v4
    sget-object v32, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v34, 0x0
    const/16 v35, 0x0
    const/high16 v33, 0x3f800000
    invoke-direct/range {v28 .. v35}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v5, v28
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->o4()V
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v5, :label_2ba7
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v5, :label_2b90
    const/16 v92, 0x0
    const/16 v93, 0x0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->q9:Lorg/telegram/messenger/ImageReceiver;
    const/16 v88, 0x0
    const/16 v89, 0x0
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->U0:Lorg/telegram/ui/Components/j9;
    const/16 v91, 0x0
    move-object/from16 v87, v2
    move-object/from16 v90, v5
    invoke-virtual/range {v87 .. v93}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    move/from16 v15, v112
    goto :label_2bb3
    :label_2b90
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    if-nez v6, :label_2b97
    :label_2b94
    move/from16 v15, v112
    goto :label_2b9c
    :label_2b97
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;
    iput-object v6, v14, Lorg/telegram/ui/Cells/u1;->Zb:Lorg/telegram/tgnet/TLRPC$FileLocation;
    goto :label_2b94
    :label_2b9c
    invoke-virtual {v2, v15, v5}, Lorg/telegram/ui/Components/j9;->k(ILorg/telegram/tgnet/TLRPC$Chat;)V
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->q9:Lorg/telegram/messenger/ImageReceiver;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V
    goto :label_2bb3
    :label_2ba7
    move/from16 v15, v112
    invoke-virtual {v2, v15, v5}, Lorg/telegram/ui/Components/j9;->m(ILorg/telegram/tgnet/TLRPC$User;)V
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->q9:Lorg/telegram/messenger/ImageReceiver;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V
    :label_2bb3
    new-instance v89, Landroid/text/StaticLayout;
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I
    if-nez v5, :label_2bbf
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v5, v2
    goto :label_2bc0
    :label_2bbf
    int-to-long v5, v5
    :label_2bc0
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatLocationUpdateDate(J)Ljava/lang/String;
    move-result-object v2
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->I2:Landroid/text/TextPaint;
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    int-to-float v6, v6
    invoke-static {v2, v5, v6, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v90
    sget-object v91, Lorg/telegram/ui/ActionBar/n6;->I2:Landroid/text/TextPaint;
    const/16 v95, 0x0
    const/16 v96, 0x0
    const/high16 v94, 0x3f800000
    move/from16 v92, v4
    move-object/from16 v93, v32
    invoke-direct/range {v89 .. v96}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v89
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    move/from16 v22, v111
    move v13, v8
    :label_2be6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v4
    long-to-int v2, v4
    if-eqz v2, :label_2bf9
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->mapProvider:I
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    const/4 v12, -0x1
    goto :label_2c13
    :label_2bf9
    sget v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I
    if-eqz v2, :label_2c0f
    const/4 v5, 0x1
    if-eq v2, v5, :label_2c0b
    const/4 v4, 0x3
    if-eq v2, v4, :label_2c07
    const/4 v12, -0x1
    iput v12, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    goto :label_2c13
    :label_2c07
    const/4 v12, -0x1
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    goto :label_2c13
    :label_2c0b
    const/4 v12, -0x1
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    goto :label_2c13
    :label_2c0f
    const/4 v5, 0x2
    const/4 v12, -0x1
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    :label_2c13
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    if-eqz v2, :label_2c18
    goto :label_2c39
    :label_2c18
    sget v2, Lorg/telegram/messenger/R$raw;->map_placeholder:I
    sget v4, Lorg/telegram/ui/ActionBar/n6;->Pb:I
    invoke-static {}, Lorg/telegram/ui/ActionBar/n6;->f1()Z
    move-result v5
    if-nez v5, :label_2c24
    const/4 v5, 0x6
    goto :label_2c25
    :label_2c24
    const/4 v5, 0x3
    :label_2c25
    int-to-float v5, v5
    const v6, 0x3df5c28f
    mul-float/2addr v5, v6
    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(IIF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    move-result-object v2
    const/4 v5, 0x1
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setAspectCenter(Z)V
    new-instance v4, Lorg/telegram/ui/Components/yq;
    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/yq;-><init>(Landroid/graphics/drawable/Drawable;)V
    iput-object v4, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    :label_2c39
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    invoke-static {v2}, Lcom/google/android/recaptcha/internal/a;->s(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :label_2c42
    goto :label_2c5f
    :label_2c42
    iget-object v2, v2, Lorg/telegram/ui/Components/yq;->a:Landroid/graphics/drawable/Drawable;
    instance-of v2, v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    if-nez v2, :label_2c49
    goto :label_2c5f
    :label_2c49
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    iget-object v2, v2, Lorg/telegram/ui/Components/yq;->a:Landroid/graphics/drawable/Drawable;
    check-cast v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_2c58
    sget v4, Lorg/telegram/ui/ActionBar/n6;->qe:I
    goto :label_2c5a
    :label_2c58
    sget v4, Lorg/telegram/ui/ActionBar/n6;->Pb:I
    :label_2c5a
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColorKey(ILorg/telegram/ui/ActionBar/j6;)V
    :label_2c5f
    const/16 v2, 0x12c
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V
    const v2, 0x3d4ccccd
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeByScale(F)V
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->z0:I
    if-eq v2, v12, :label_2cd7
    const/4 v5, 0x2
    if-eq v2, v5, :label_2ca4
    const/4 v4, 0x3
    if-ne v2, v4, :label_2c76
    const/4 v4, 0x4
    goto :label_2c7a
    :label_2c76
    const/4 v4, 0x4
    if-eq v2, v4, :label_2c7a
    goto :label_2c88
    :label_2c7a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;
    move-result-object v2
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/ImageLoader;->addTestWebFile(Ljava/lang/String;Lorg/telegram/messenger/WebFile;)V
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->F4:Z
    :label_2c88
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    if-nez v2, :label_2c92
    :label_2c8c
    move-object v6, v10
    move/from16 v111, v13
    move-object v13, v3
    move v10, v4
    goto :label_2ce5
    :label_2c92
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    const/16 v32, 0x0
    const-wide/16 v33, 0x0
    const/16 v30, 0x0
    move-object/from16 v28, v1
    move-object/from16 v29, v2
    move-object/from16 v31, v5
    invoke-virtual/range {v28 .. v34}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V
    goto :label_2c8c
    :label_2ca4
    const/4 v4, 0x4
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    if-nez v2, :label_2caa
    goto :label_2c8c
    :label_2caa
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileLoaded:Ljava/lang/Object;
    instance-of v6, v5, Lorg/telegram/messenger/ImageLocation;
    if-nez v6, :label_2cb2
    const/4 v5, 0x0
    goto :label_2cb4
    :label_2cb2
    check-cast v5, Lorg/telegram/messenger/ImageLocation;
    :label_2cb4
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iput-object v2, v10, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->V0:Lorg/telegram/ui/Components/yq;
    move/from16 v81, v4
    move-object v4, v5
    const/4 v5, 0x0
    const/4 v8, 0x0
    move-object/from16 v84, v3
    const/4 v3, 0x0
    move-object v7, v10
    move/from16 v111, v13
    move/from16 v10, v81
    move-object/from16 v13, v84
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V
    move-object/from16 v6, v110
    goto :label_2ce5
    :label_2cd7
    move/from16 v111, v13
    const/4 v10, 0x4
    move-object v13, v3
    const/4 v5, 0x0
    const/4 v7, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    move-object/from16 v6, v110
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    :label_2ce5
    iget-boolean v2, v9, Lvf/q0;->b:Z
    if-eqz v2, :label_2cea
    goto :label_2cee
    :label_2cea
    iget-boolean v2, v9, Lvf/q0;->s:Z
    if-eqz v2, :label_2cfa
    :label_2cee
    move/from16 v2, v111
    move/from16 v8, v25
    move/from16 v7, v58
    :label_2cf4
    const/16 v16, 0x1
    const/16 v52, 0x0
    goto/16 :label_2fa6
    :label_2cfa
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    const/4 v4, 0x3
    invoke-virtual {v9, v2, v4}, Lvf/q0;->p(II)V
    iget v2, v9, Lvf/q0;->o:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v9, Lvf/q0;->p:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v2, v9, Lvf/q0;->u:I
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    add-int/2addr v2, v3
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v3, v2, :label_2d20
    goto :label_2d32
    :label_2d20
    iget v2, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v9, Lvf/q0;->p:I
    iget v2, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v9, Lvf/q0;->m:I
    :label_2d32
    iget v2, v9, Lvf/q0;->p:I
    add-int/2addr v0, v2
    goto :label_2cee
    :label_2d36
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v20, v16
    move/from16 v54, v25
    move-wide/from16 v17, v28
    move/from16 v25, v31
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/4 v10, 0x4
    const/4 v12, -0x1
    const/16 v19, 0x8
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    const/high16 v58, 0x41f80000
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_2dc4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_2d8e
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_2d77
    if-nez v26, :label_2d74
    const/4 v2, 0x0
    goto :label_2d79
    :label_2d74
    move/from16 v2, v50
    goto :label_2d79
    :label_2d77
    move/from16 v2, v49
    :label_2d79
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    const/high16 v2, 0x43960000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_2db3
    :label_2d8e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_2d9d
    if-nez v26, :label_2d9a
    const/4 v2, 0x0
    goto :label_2d9f
    :label_2d9a
    move/from16 v2, v50
    goto :label_2d9f
    :label_2d9d
    move/from16 v2, v49
    :label_2d9f
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    const/high16 v2, 0x43960000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_2db3
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_2dba
    goto :label_2dca
    :label_2dba
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_2dca
    :label_2dc4
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_2dca
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_2dd3
    move/from16 v2, v50
    goto :label_2dd4
    :label_2dd3
    const/4 v2, 0x0
    :label_2dd4
    add-int/lit8 v2, v2, 0x56
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v2, v0, v2
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_2de3
    const/4 v0, 0x0
    goto :label_2e31
    :label_2de3
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v3
    const/16 v82, 0x2
    mul-int/lit8 v3, v3, 0x2
    sub-int/2addr v0, v3
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :label_2dfb
    goto :label_2e19
    :label_2dfb
    new-instance v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v3
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    invoke-direct {v0, v3, v4, v5, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->bounceFrom(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->v4()V
    :label_2e14
    goto :label_2e19
    :label_2e15
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_2e19
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_2e1f
    const/4 v0, 0x0
    goto :label_2e26
    :label_2e1f
    iget v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    const/4 v4, 0x0
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
    move-result v0
    :label_2e26
    if-gt v2, v0, :label_2e29
    goto :label_2e31
    :label_2e29
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v3, 0x430a0000
    invoke-static {v3, v2, v0}, Lj2/t;->b(FII)I
    move-result v2
    :label_2e31
    invoke-virtual {v14, v6, v2}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v3, :label_2e39
    goto :label_2e44
    :label_2e39
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v4, 0x42240000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v3, v4
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    :label_2e44
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    if-nez v3, :label_2e49
    goto :label_2e50
    :label_2e49
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/4 v4, 0x0
    :label_2e4e
    if-lt v4, v3, :label_329b
    :label_2e50
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    if-nez v3, :label_2e55
    goto :label_2e5c
    :label_2e55
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v5
    const/4 v3, 0x0
    :label_2e5a
    if-lt v3, v5, :label_3275
    :label_2e5c
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v3, :label_2e61
    goto :label_2e75
    :label_2e61
    iget v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v4
    const/16 v82, 0x2
    mul-int/lit8 v4, v4, 0x2
    add-int/2addr v4, v3
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v4
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    :label_2e75
    iget-boolean v3, v9, Lvf/q0;->b:Z
    if-eqz v3, :label_2e7a
    goto :label_2e84
    :label_2e7a
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    const/4 v4, 0x3
    invoke-virtual {v9, v3, v4}, Lvf/q0;->p(II)V
    iget-boolean v3, v9, Lvf/q0;->s:Z
    if-eqz v3, :label_2e87
    :label_2e84
    move/from16 v7, v58
    goto :label_2e8f
    :label_2e87
    iget v3, v9, Lvf/q0;->q:I
    move/from16 v7, v58
    invoke-static {v7, v3, v0}, Lorg/telegram/messenger/h4;->b(FII)I
    move-result v0
    :label_2e8f
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v0, v3, :label_2e94
    goto :label_2ea1
    :label_2e94
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v3, :label_2e99
    goto :label_2ea1
    :label_2e99
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v2, v0, v2
    :label_2ea1
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v0, :label_2f0d
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    if-nez v3, :label_2eb5
    const/4 v5, 0x1
    goto :label_2ebc
    :label_2eb5
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/4 v5, 0x1
    if-gt v3, v5, :label_2ebf
    :label_2ebc
    move/from16 v8, v25
    goto :label_2ecc
    :label_2ebf
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    sub-int/2addr v3, v5
    move/from16 v8, v25
    invoke-static {v8, v3, v2}, Lorg/telegram/messenger/h4;->D(FII)I
    move-result v2
    :label_2ecc
    iget-object v3, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :label_2ed5
    goto :label_2f0a
    :label_2ed5
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->t4:Landroid/text/StaticLayout;
    if-nez v3, :label_2eda
    goto :label_2f0a
    :label_2eda
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v5, 0x42f40000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->z4:I
    sub-int/2addr v4, v5
    iget-boolean v5, v9, Lvf/q0;->b:Z
    if-eqz v5, :label_2ef2
    goto :label_2ef7
    :label_2ef2
    iget-boolean v5, v9, Lvf/q0;->s:Z
    if-nez v5, :label_2ef7
    goto :label_2f0a
    :label_2ef7
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    if-lt v4, v5, :label_2f05
    const/4 v5, 0x1
    if-eq v3, v5, :label_2eff
    goto :label_2f0a
    :label_2eff
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    :label_2f03
    add-int/2addr v2, v3
    goto :label_2f0a
    :label_2f05
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    goto :label_2f03
    :label_2f0a
    move/from16 v22, v0
    goto :label_2f1d
    :label_2f0d
    move/from16 v8, v25
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    sub-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    goto :label_2f0a
    :label_2f1d
    iget-boolean v0, v9, Lvf/q0;->b:Z
    if-eqz v0, :label_2f22
    goto :label_2f26
    :label_2f22
    iget-boolean v0, v9, Lvf/q0;->s:Z
    if-eqz v0, :label_2f29
    :label_2f26
    const/4 v0, 0x0
    goto/16 :label_2cf4
    :label_2f29
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-eqz v0, :label_2f2e
    goto :label_2f37
    :label_2f2e
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v9, Lvf/q0;->m:I
    :label_2f37
    iget v0, v9, Lvf/q0;->o:I
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v3, :label_2f3e
    goto :label_2f45
    :label_2f3e
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v3, :label_2f45
    move/from16 v3, v20
    goto :label_2f47
    :label_2f45
    move/from16 v3, v69
    :label_2f47
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v9, Lvf/q0;->p:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v0, :label_2f56
    goto :label_2f64
    :label_2f56
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v0, :label_2f5b
    goto :label_2f64
    :label_2f5b
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v9, Lvf/q0;->p:I
    :label_2f64
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v3, v9, Lvf/q0;->u:I
    sub-int/2addr v0, v3
    const/high16 v3, 0x42280000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    if-lt v0, v3, :label_2f75
    goto :label_2f92
    :label_2f75
    iget v0, v9, Lvf/q0;->p:I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v3, :label_2f7e
    move/from16 v3, v62
    goto :label_2f80
    :label_2f7e
    const/high16 v3, 0x41700000
    :label_2f80
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v9, Lvf/q0;->p:I
    iget v0, v9, Lvf/q0;->m:I
    const/high16 v3, 0x41700000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    iput v0, v9, Lvf/q0;->m:I
    :label_2f92
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_2f97
    goto :label_2f9b
    :label_2f97
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_2f9d
    :label_2f9b
    const/4 v0, 0x0
    goto :label_2fa1
    :label_2f9d
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    :label_2fa1
    iget v3, v9, Lvf/q0;->p:I
    add-int/2addr v0, v3
    goto/16 :label_2cf4
    :label_2fa6
    invoke-static {v11}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v3
    if-nez v3, :label_2fb0
    goto :label_2fe2
    :label_2fb0
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v3
    if-eqz v3, :label_2fbb
    goto :label_2fe2
    :label_2fbb
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v3
    if-nez v3, :label_2fc4
    goto :label_2fe2
    :label_2fc4
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-nez v3, :label_2fe2
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v3
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v4
    invoke-static {v3, v4}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    move-result-object v3
    invoke-virtual {v11, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getFancyBlurFilter()Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v3
    invoke-virtual {v11, v3}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :label_2fe2
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-nez v3, :label_2fea
    goto :label_2ffa
    :label_2fea
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v3
    if-nez v3, :label_2ff1
    goto :label_2ffa
    :label_2ff1
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v3, :label_2ff6
    goto :label_301f
    :label_2ff6
    iget-byte v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eqz v3, :label_301f
    :label_2ffa
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Ya:Z
    if-nez v3, :label_3000
    :label_2ffe
    const/4 v4, 0x5
    goto :label_302e
    :label_3000
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v3
    if-nez v3, :label_3007
    goto :label_3013
    :label_3007
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-nez v3, :label_300c
    goto :label_2ffe
    :label_300c
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getReplyTopMsgId()I
    move-result v3
    if-eqz v3, :label_3013
    goto :label_2ffe
    :label_3013
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    const/high16 v4, 0x40e00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v3
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    goto :label_2ffe
    :label_301f
    iget v3, v6, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v4, 0x5
    if-ne v3, v4, :label_3025
    goto :label_302e
    :label_3025
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v3
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_302e
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v3, v5
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    if-nez v0, :label_3040
    goto :label_3049
    :label_3040
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3049
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_3050
    :label_304d
    const/16 v3, 0x13
    goto :label_3072
    :label_3050
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v0, v0, 0x8
    if-eqz v0, :label_3057
    goto :label_304d
    :label_3057
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v0
    if-eqz v0, :label_3060
    goto :label_304d
    :label_3060
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x13
    if-ne v0, v3, :label_3069
    goto :label_3072
    :label_3069
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3072
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v0
    if-nez v0, :label_307b
    goto :label_308e
    :label_307b
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v5, 0x41a80000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v0
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v0, 0x41a80000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->s0:I
    :label_308e
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_3093
    goto :label_309b
    :label_3093
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v0
    if-eqz v0, :label_30d0
    :label_309b
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_30a0
    goto :label_30cc
    :label_30a0
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v0
    if-nez v0, :label_30a9
    goto :label_30cc
    :label_30a9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v5, v0, 0x4
    if-eqz v5, :label_30b2
    goto :label_30cc
    :label_30b2
    and-int/lit8 v0, v0, 0x8
    if-nez v0, :label_30b7
    goto :label_30cc
    :label_30b7
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_30be
    goto :label_30cc
    :label_30be
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-eqz v0, :label_30c3
    goto :label_30cc
    :label_30c3
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_30cc
    move/from16 v5, v22
    const/4 v0, 0x0
    goto :label_30ff
    :label_30d0
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    invoke-static {v0}, Lorg/telegram/ui/Cells/u1;->w2(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)I
    move-result v0
    add-int v22, v0, v22
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/2addr v0, v10
    if-eqz v0, :label_30e1
    const/4 v0, 0x0
    goto :label_30ee
    :label_30e1
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v2, v0
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    const/16 v23, 0x0
    rsub-int/lit8 v0, v0, 0x0
    :label_30ee
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v5, v5, 0x8
    if-eqz v5, :label_30f9
    :label_30f6
    move/from16 v5, v22
    goto :label_30ff
    :label_30f9
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v2, v5
    goto :label_30f6
    :label_30ff
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v4, :label_3104
    goto :label_3124
    :label_3104
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-nez v4, :label_3109
    goto :label_3124
    :label_3109
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v4, :label_310e
    goto :label_3119
    :label_310e
    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v22
    and-int v4, v4, v22
    if-nez v4, :label_3119
    goto :label_3124
    :label_3119
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight()I
    move-result v0
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v0, v4
    :label_3124
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v4, v4, Lorg/telegram/messenger/MessageObject;->type:I
    if-ne v4, v3, :label_312e
    move/from16 v31, v8
    const/4 v3, 0x0
    goto :label_318a
    :label_312e
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v4, :label_3135
    move/from16 v31, v8
    goto :label_314a
    :label_3135
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    move/from16 v31, v8
    const/4 v8, 0x1
    if-eq v3, v8, :label_3141
    move/from16 v3, v39
    goto :label_3143
    :label_3141
    move/from16 v3, v41
    :label_3143
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v4, v3
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_314a
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v3, :label_314f
    goto :label_3169
    :label_314f
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-eqz v3, :label_3156
    goto :label_3169
    :label_3156
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v8, 0x1
    if-eq v4, v8, :label_3160
    move/from16 v4, v20
    goto :label_3162
    :label_3160
    move/from16 v4, v41
    :label_3162
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v3
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3169
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    if-gtz v3, :label_317b
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_318a
    :label_317b
    const/high16 v3, 0x40e00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_318a
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v4, :label_3190
    goto/16 :label_31f6
    :label_3190
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-boolean v8, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z
    if-nez v8, :label_3197
    goto :label_31f6
    :label_3197
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v8, 0x1
    if-gt v4, v8, :label_31a1
    goto :label_31f6
    :label_31a1
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/2addr v4, v10
    if-eqz v4, :label_31a9
    goto :label_31db
    :label_31a9
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v8, :label_31b2
    move/from16 v8, v66
    goto :label_31b4
    :label_31b2
    move/from16 v8, v42
    :label_31b4
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v8, :label_31c4
    move/from16 v8, v66
    goto :label_31c6
    :label_31c4
    move/from16 v8, v42
    :label_31c6
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v4, :label_31d4
    move/from16 v4, v66
    goto :label_31d6
    :label_31d4
    move/from16 v4, v42
    :label_31d6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v3, v4
    :label_31db
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v4, v4, 0x8
    if-eqz v4, :label_31e4
    goto :label_31f6
    :label_31e4
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v8, :label_31ed
    move/from16 v8, v66
    goto :label_31ef
    :label_31ed
    move/from16 v8, v42
    :label_31ef
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_31f6
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v4
    if-nez v4, :label_31fd
    goto :label_3203
    :label_31fd
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v4
    if-nez v4, :label_3210
    :label_3203
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v3, v4
    add-int/2addr v3, v0
    int-to-float v0, v3
    int-to-float v3, v5
    int-to-float v2, v2
    move/from16 v8, v20
    invoke-virtual {v1, v8, v0, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    goto :label_322a
    :label_3210
    move/from16 v8, v20
    const/high16 v0, 0x41500000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    const/high16 v2, 0x42300000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    const/high16 v3, 0x42300000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v1, v8, v0, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_322a
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v0
    if-nez v0, :label_323c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Eb:Lrg/f;
    if-nez v0, :label_3235
    goto :label_3256
    :label_3235
    invoke-virtual {v0, v14}, Lrg/f;->b(Landroid/view/View;)V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->Eb:Lrg/f;
    goto :label_3256
    :label_323c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Eb:Lrg/f;
    if-eqz v0, :label_3241
    goto :label_3256
    :label_3241
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-nez v0, :label_3246
    goto :label_3256
    :label_3246
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->w3()Lrg/f;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->Eb:Lrg/f;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->Fb:Ljava/lang/Integer;
    if-nez v2, :label_3251
    goto :label_3256
    :label_3251
    iget-object v0, v0, Lrg/f;->k:Ljava/util/HashMap;
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_3256
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->invalidate()V
    move/from16 v51, v7
    move-object/from16 v103, v9
    move v3, v10
    move-object v5, v11
    move-object v11, v13
    move/from16 v22, v31
    move/from16 v8, v39
    move/from16 v25, v54
    move/from16 v12, v66
    move-object/from16 v13, v76
    const/16 v53, 0xa
    :label_326c
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v9, v6
    goto/16 :label_6a3f
    :label_3275
    move/from16 v31, v25
    move/from16 v7, v58
    const/16 v8, 0x13
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->z4:I
    move/from16 v22, v10
    iget-boolean v10, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v10, :label_3286
    const/16 v10, 0x16
    goto :label_3288
    :label_3286
    move/from16 v10, v50
    :label_3288
    add-int/lit8 v10, v10, 0x56
    int-to-float v10, v10
    invoke-static {v10, v4, v0}, Lorg/telegram/messenger/h4;->b(FII)I
    move-result v0
    add-int/lit8 v3, v3, 0x1
    move/from16 v58, v7
    move/from16 v10, v22
    move/from16 v25, v31
    const/16 v20, 0x0
    goto/16 :label_2e5a
    :label_329b
    move/from16 v22, v10
    move/from16 v31, v25
    move/from16 v7, v58
    const/16 v8, 0x13
    const/4 v10, 0x5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v5
    iget-object v10, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v10, v4}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v10
    add-float/2addr v10, v5
    move/from16 v34, v7
    float-to-double v7, v10
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v7
    double-to-int v5, v7
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v7, :label_32c0
    const/16 v7, 0x16
    goto :label_32c2
    :label_32c0
    move/from16 v7, v50
    :label_32c2
    add-int/lit8 v7, v7, 0x56
    int-to-float v7, v7
    invoke-static {v7, v5, v0}, Lorg/telegram/messenger/h4;->b(FII)I
    move-result v0
    add-int/lit8 v4, v4, 0x1
    move/from16 v10, v22
    move/from16 v25, v31
    move/from16 v58, v34
    const/16 v20, 0x0
    goto/16 :label_2e4e
    :label_32d5
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v54, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/4 v12, -0x1
    const-wide/16 v17, 0x0
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_32fd
    goto :label_3316
    :label_32fd
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_3304
    goto :label_3316
    :label_3304
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v2
    cmp-long v0, v2, v17
    if-gez v0, :label_330d
    goto :label_3341
    :label_330d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v2
    cmp-long v0, v2, v52
    if-nez v0, :label_3316
    goto :label_3341
    :label_3316
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFromGroup()Z
    move-result v0
    if-nez v0, :label_331d
    goto :label_3324
    :label_331d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_3324
    goto :label_3334
    :label_3324
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_332b
    goto :label_333f
    :label_332b
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_3334
    goto :label_333f
    :label_3334
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_3339
    goto :label_3341
    :label_3339
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_3341
    :label_333f
    const/4 v8, 0x0
    goto :label_3342
    :label_3341
    const/4 v8, 0x1
    :label_3342
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->b8:Z
    const/16 v86, 0x1
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    if-eqz v0, :label_3351
    goto :label_3358
    :label_3351
    new-instance v0, Lorg/telegram/ui/Cells/l4;
    invoke-direct {v0, v14}, Lorg/telegram/ui/Cells/l4;-><init>(Lorg/telegram/ui/Cells/u1;)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    :label_3358
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iput v12, v0, Lorg/telegram/ui/Cells/l4;->m:I
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/l4;->g(Lorg/telegram/messenger/MessageObject;)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iget v0, v0, Lorg/telegram/ui/Cells/l4;->g:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->i9:Z
    if-nez v0, :label_3379
    goto :label_339b
    :label_3379
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->g9:I
    const/high16 v2, 0x41e00000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v2, v0, :label_3387
    goto :label_339b
    :label_3387
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->g9:I
    const/high16 v2, 0x41e00000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/l4;->m:I
    :label_339b
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I
    const/16 v3, 0xa
    if-ge v2, v3, :label_33a6
    const/16 v5, 0x12
    goto :label_33a8
    :label_33a6
    const/16 v5, 0x16
    :label_33a8
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_33b0
    const/4 v2, 0x0
    goto :label_33b2
    :label_33b0
    move/from16 v2, v77
    :label_33b2
    add-int/2addr v5, v2
    add-int/lit8 v5, v5, 0x14
    int-to-float v2, v5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v2, v0, :label_33c1
    :label_33bf
    const/4 v4, 0x0
    goto :label_33ce
    :label_33c1
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int v4, v2, v4
    iput v4, v0, Lorg/telegram/ui/Cells/l4;->m:I
    goto :label_33bf
    :label_33ce
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v0, v4
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    iput-object v4, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-nez v4, :label_33df
    goto/16 :label_3466
    :label_33df
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v4
    const/16 v82, 0x2
    mul-int/lit8 v4, v4, 0x2
    sub-int/2addr v0, v4
    new-instance v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v5
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    sget-object v8, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    invoke-direct {v4, v5, v7, v8, v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    iput-object v4, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->bounceFrom(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget v5, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r4:I
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight()I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v4, v5
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r4:I
    if-gt v4, v0, :label_3416
    goto :label_3432
    :label_3416
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v5
    const/16 v82, 0x2
    mul-int/lit8 v5, v5, 0x2
    add-int/2addr v5, v4
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v5, v4
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v5, v4
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v5, v4
    iput v5, v0, Lorg/telegram/ui/Cells/l4;->m:I
    :label_3432
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v0, :label_3437
    goto :label_3455
    :label_3437
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z
    if-eqz v4, :label_343e
    goto :label_3443
    :label_343e
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z
    if-nez v0, :label_3443
    goto :label_3455
    :label_3443
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v0, v4
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v0, v4
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_3455
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_345a
    goto :label_346b
    :label_345a
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v4
    and-int/2addr v0, v4
    if-nez v0, :label_346b
    const/4 v5, 0x0
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    :label_3466
    const/4 v4, 0x0
    :label_3467
    const/4 v8, 0x0
    goto :label_34b9
    :label_3469
    move-exception v0
    goto :label_34b4
    :label_346b
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_346d
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r4:I
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int/2addr v5, v7
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I
    move-result v0
    iget-boolean v5, v9, Lvf/q0;->s:Z
    if-eqz v5, :label_347f
    goto :label_3484
    :label_347f
    iget-boolean v5, v9, Lvf/q0;->b:Z
    if-nez v5, :label_3484
    goto :label_34a1
    :label_3484
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v5
    if-eqz v5, :label_348b
    goto :label_34a1
    :label_348b
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v0, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget v5, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I
    sub-int/2addr v0, v5
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v5
    add-int/2addr v5, v2
    if-lt v0, v5, :label_349d
    goto :label_34a1
    :label_349d
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-eqz v0, :label_34a2
    :label_34a1
    goto :label_3467
    :label_34a2
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v4, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v0, v5
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    :label_34b0
    const/4 v8, 0x1
    goto :label_34b9
    :label_34b2
    move-exception v0
    goto :label_34b5
    :label_34b4
    const/4 v4, 0x0
    :label_34b5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto :label_3467
    :label_34b9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_34be
    goto :label_34c2
    :label_34be
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-nez v5, :label_34c4
    :label_34c2
    const/4 v0, 0x0
    goto :label_34cd
    :label_34c4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight()I
    move-result v0
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v0, v5
    :label_34cd
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iget v7, v7, Lorg/telegram/ui/Cells/l4;->g:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    if-gt v5, v10, :label_34de
    goto :label_34ee
    :label_34de
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    sub-int/2addr v7, v10
    iput v7, v5, Lorg/telegram/ui/Cells/l4;->m:I
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/l4;->h(Lorg/telegram/messenger/MessageObject;)V
    :label_34ee
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/l4;->h(Lorg/telegram/messenger/MessageObject;)V
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iget v5, v5, Lorg/telegram/ui/Cells/l4;->g:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v5
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-lt v7, v2, :label_3501
    goto :label_3503
    :label_3501
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_3503
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iget v2, v2, Lorg/telegram/ui/Cells/l4;->h:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v5, v2
    add-int/2addr v5, v4
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_351a
    goto :label_3556
    :label_351a
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v2, :label_351f
    goto :label_3556
    :label_351f
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v5, 0x1
    if-gt v2, v5, :label_3529
    goto :label_3556
    :label_3529
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x4
    if-eqz v2, :label_3532
    goto :label_3544
    :label_3532
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    :label_3544
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x8
    if-eqz v2, :label_354d
    goto :label_3556
    :label_354d
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3556
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_355b
    goto :label_3564
    :label_355b
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_3564
    iget-boolean v2, v9, Lvf/q0;->b:Z
    if-eqz v2, :label_356a
    goto/16 :label_35d3
    :label_356a
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    const/4 v4, 0x3
    invoke-virtual {v9, v2, v4}, Lvf/q0;->p(II)V
    iget-boolean v2, v9, Lvf/q0;->s:Z
    if-eqz v2, :label_357a
    goto :label_35d3
    :label_357a
    iget v2, v9, Lvf/q0;->o:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    iput v4, v9, Lvf/q0;->p:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v2, v9, Lvf/q0;->q:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v2, v4, :label_358d
    goto :label_358f
    :label_358d
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_358f
    iget v2, v9, Lvf/q0;->u:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    add-int/2addr v2, v4
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v4, v2, :label_359e
    goto :label_35b0
    :label_359e
    iget v2, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    iput v4, v9, Lvf/q0;->p:I
    iget v2, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v9, Lvf/q0;->m:I
    :label_35b0
    iget-boolean v2, v6, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z
    if-eqz v2, :label_35b5
    goto :label_35cc
    :label_35b5
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-nez v2, :label_35ba
    goto :label_35cc
    :label_35ba
    iget v2, v9, Lvf/q0;->m:I
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->i9:Z
    if-eqz v4, :label_35c3
    move/from16 v4, v39
    goto :label_35c5
    :label_35c3
    move/from16 v4, v67
    :label_35c5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    iput v4, v9, Lvf/q0;->m:I
    :label_35cc
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v4, v9, Lvf/q0;->p:I
    add-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_35d3
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_35d8
    goto :label_35eb
    :label_35d8
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v5, 0x1
    if-eq v4, v5, :label_35e2
    move/from16 v4, v39
    goto :label_35e4
    :label_35e2
    move/from16 v4, v41
    :label_35e4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_35eb
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_35f0
    goto :label_3609
    :label_35f0
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_35f7
    goto :label_3609
    :label_35f7
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v5, 0x1
    if-eq v4, v5, :label_3600
    const/4 v10, 0x0
    goto :label_3602
    :label_3600
    move/from16 v10, v41
    :label_3602
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v2
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3609
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    if-gtz v2, :label_361b
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_362a
    :label_361b
    const/high16 v2, 0x41500000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v4
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_362a
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_3655
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-eqz v4, :label_3637
    goto :label_363e
    :label_3637
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v4, :label_363e
    goto :label_3647
    :label_363e
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-nez v4, :label_3643
    goto :label_3647
    :label_3643
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-eqz v4, :label_364e
    :label_3647
    const/high16 v4, 0x41700000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    goto :label_366e
    :label_364e
    const/high16 v4, 0x427c0000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    goto :label_366e
    :label_3655
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-nez v4, :label_3664
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v4, v5
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v4, v5
    goto :label_366e
    :label_3664
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v4, v5
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    :label_366e
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iput v4, v5, Lorg/telegram/ui/Cells/l4;->d:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v2, v4
    add-int/2addr v2, v0
    iput v2, v5, Lorg/telegram/ui/Cells/l4;->e:I
    move/from16 v53, v3
    move/from16 v52, v8
    move-object/from16 v103, v9
    move-object v5, v11
    move-object v11, v13
    move/from16 v3, v22
    move/from16 v22, v31
    move/from16 v51, v34
    move/from16 v8, v39
    move/from16 v25, v54
    move/from16 v12, v66
    move-object/from16 v13, v76
    const/16 v16, 0x1
    goto/16 :label_326c
    :label_3697
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v4, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/16 v3, 0xa
    const/4 v12, -0x1
    const-wide/16 v17, 0x0
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    invoke-virtual {v14, v6, v4}, Lorg/telegram/ui/Cells/u1;->W3(Lorg/telegram/messenger/MessageObject;Z)V
    move/from16 v53, v3
    :label_36bf
    move-object/from16 v103, v9
    move-object v5, v11
    move-object v11, v13
    move/from16 v3, v22
    move/from16 v22, v31
    move/from16 v51, v34
    move/from16 v8, v39
    move/from16 v12, v66
    move-object/from16 v13, v76
    :label_36cf
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v9, v6
    goto/16 :label_6a3a
    :label_36d8
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v4, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/16 v3, 0xa
    const/4 v12, -0x1
    const-wide/16 v17, 0x0
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->b8:Z
    if-eqz v0, :label_3702
    goto :label_3708
    :label_3702
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-nez v0, :label_370a
    :label_3708
    const/4 v8, 0x0
    goto :label_370b
    :label_370a
    const/4 v8, 0x1
    :label_370b
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_3712
    goto :label_372b
    :label_3712
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_3719
    goto :label_372b
    :label_3719
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v17
    if-gez v0, :label_3722
    goto :label_3756
    :label_3722
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v52
    if-nez v0, :label_372b
    goto :label_3756
    :label_372b
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFromGroup()Z
    move-result v0
    if-nez v0, :label_3732
    goto :label_3739
    :label_3732
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_3739
    goto :label_3749
    :label_3739
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_3740
    goto :label_3754
    :label_3740
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_3749
    goto :label_3754
    :label_3749
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_374e
    goto :label_3756
    :label_374e
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_3756
    :label_3754
    const/4 v8, 0x0
    goto :label_3757
    :label_3756
    const/4 v8, 0x1
    :label_3757
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_3783
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_376e
    if-nez v26, :label_376b
    const/4 v2, 0x0
    goto :label_3770
    :label_376b
    move/from16 v2, v50
    goto :label_3770
    :label_376e
    move/from16 v2, v49
    :label_3770
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_37a6
    :label_3783
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_3792
    if-nez v26, :label_378f
    const/4 v2, 0x0
    goto :label_3794
    :label_378f
    move/from16 v2, v50
    goto :label_3794
    :label_3792
    move/from16 v2, v49
    :label_3794
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_37a6
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_37ab
    goto :label_37ad
    :label_37ab
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_37ad
    invoke-virtual {v14, v6, v0}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    move-result v2
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    const/high16 v5, 0x42a40000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v5, v7
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v5, 0x42980000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v2, v7
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int/2addr v2, v7
    if-ge v5, v2, :label_37d3
    goto :label_37dc
    :label_37d3
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v2
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_37dc
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v2, :label_37e1
    goto :label_381d
    :label_37e1
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v2, :label_37e6
    goto :label_381d
    :label_37e6
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v5, 0x1
    if-gt v2, v5, :label_37f0
    goto :label_381d
    :label_37f0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x4
    if-eqz v2, :label_37f9
    goto :label_380b
    :label_37f9
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v2, v5
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v2, v5
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    :label_380b
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x8
    if-eqz v2, :label_3814
    goto :label_381d
    :label_3814
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v2, v5
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_381d
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_3822
    goto :label_382b
    :label_3822
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v2, v5
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_382b
    iget-boolean v2, v9, Lvf/q0;->b:Z
    if-eqz v2, :label_3835
    :label_382f
    move/from16 v53, v3
    move/from16 v25, v4
    goto/16 :label_36bf
    :label_3835
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    const/4 v5, 0x3
    invoke-virtual {v9, v0, v5}, Lvf/q0;->p(II)V
    iget-boolean v0, v9, Lvf/q0;->s:Z
    if-eqz v0, :label_3843
    goto :label_382f
    :label_3843
    iget v0, v9, Lvf/q0;->o:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v0, v9, Lvf/q0;->q:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v0, v2, :label_3856
    goto :label_3858
    :label_3856
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_3858
    iget v0, v9, Lvf/q0;->u:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    add-int/2addr v0, v2
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v2, v0, :label_3867
    goto :label_3879
    :label_3867
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v9, Lvf/q0;->m:I
    :label_3879
    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z
    if-eqz v0, :label_387e
    goto :label_388c
    :label_387e
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-nez v0, :label_3883
    goto :label_388c
    :label_3883
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->m:I
    :label_388c
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v9, Lvf/q0;->p:I
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_382f
    :label_3894
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v4, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/16 v3, 0xa
    const/4 v12, -0x1
    const-wide/16 v17, 0x0
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->b8:Z
    const/16 v86, 0x1
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_38c6
    goto :label_38df
    :label_38c6
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_38cd
    goto :label_38df
    :label_38cd
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v17
    if-gez v0, :label_38d6
    goto :label_3919
    :label_38d6
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v52
    if-nez v0, :label_38df
    goto :label_3919
    :label_38df
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFromGroup()Z
    move-result v0
    if-nez v0, :label_38e6
    goto :label_38ed
    :label_38e6
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_38ed
    goto :label_3919
    :label_38ed
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_38f4
    goto :label_38fd
    :label_38f4
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v0, :label_38fd
    goto :label_3919
    :label_38fd
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-nez v0, :label_3902
    goto :label_3917
    :label_3902
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_3909
    goto :label_3917
    :label_3909
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->S7:Z
    if-eqz v0, :label_390e
    goto :label_3919
    :label_390e
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-nez v0, :label_3913
    goto :label_3917
    :label_3913
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->D8:Z
    if-nez v0, :label_3919
    :label_3917
    const/4 v8, 0x0
    goto :label_391a
    :label_3919
    const/4 v8, 0x1
    :label_391a
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_3946
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_3931
    if-nez v26, :label_392e
    const/4 v2, 0x0
    goto :label_3933
    :label_392e
    move/from16 v2, v50
    goto :label_3933
    :label_3931
    move/from16 v2, v49
    :label_3933
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_3969
    :label_3946
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_3955
    if-nez v26, :label_3952
    const/4 v2, 0x0
    goto :label_3957
    :label_3952
    move/from16 v2, v50
    goto :label_3957
    :label_3955
    move/from16 v2, v49
    :label_3957
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_3969
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual {v14, v6, v2}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    const/high16 v2, 0x428c0000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v2, v5
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_3981
    goto :label_3988
    :label_3981
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v5, v2
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_3988
    iget-boolean v2, v9, Lvf/q0;->b:Z
    if-eqz v2, :label_398e
    goto/16 :label_382f
    :label_398e
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_3999
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_399d
    :label_3999
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_399d
    sub-int/2addr v0, v2
    const/4 v5, 0x3
    invoke-virtual {v9, v0, v5}, Lvf/q0;->p(II)V
    iget-boolean v0, v9, Lvf/q0;->s:Z
    if-eqz v0, :label_39a8
    goto/16 :label_382f
    :label_39a8
    iget v0, v9, Lvf/q0;->o:I
    iput v0, v9, Lvf/q0;->p:I
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_39be
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    goto :label_39c7
    :label_39be
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    :label_39c7
    iget v0, v9, Lvf/q0;->q:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v0, v2, :label_39ce
    goto :label_39d0
    :label_39ce
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_39d0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    if-nez v0, :label_39de
    goto :label_39e4
    :label_39de
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v0
    if-eqz v0, :label_39f3
    :label_39e4
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_39eb
    goto :label_39f8
    :label_39eb
    const/high16 v0, 0x41a40000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v2, v0
    goto :label_39f8
    :label_39f3
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    :label_39f8
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v0
    add-int/2addr v2, v0
    iget v0, v9, Lvf/q0;->u:I
    add-int/2addr v0, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-ge v0, v2, :label_3a05
    goto :label_3a17
    :label_3a05
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v9, Lvf/q0;->m:I
    :label_3a17
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v9, Lvf/q0;->p:I
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto/16 :label_382f
    :label_3a20
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v4, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v13, v66
    move-object/from16 v76, v67
    const/16 v3, 0xa
    const/4 v5, 0x1
    const/4 v12, -0x1
    const-wide/16 v17, 0x0
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/16 v77, 0x14
    move/from16 v67, v58
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->R2:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_3a4d
    goto :label_3a66
    :label_3a4d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_3a54
    goto :label_3a66
    :label_3a54
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v17
    if-gez v0, :label_3a5d
    goto :label_3a85
    :label_3a5d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v52
    if-nez v0, :label_3a66
    goto :label_3a85
    :label_3a66
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFromGroup()Z
    move-result v0
    if-nez v0, :label_3a6d
    goto :label_3a74
    :label_3a6d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_3a74
    goto :label_3a85
    :label_3a74
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_3a7b
    goto :label_3a83
    :label_3a7b
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_3a85
    :label_3a83
    const/4 v8, 0x0
    goto :label_3a86
    :label_3a85
    const/4 v8, 0x1
    :label_3a86
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->b8:Z
    const/4 v5, 0x1
    xor-int/2addr v0, v5
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    const/high16 v0, 0x41b00000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_3ac3
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v5, :label_3aae
    if-nez v26, :label_3aab
    const/4 v5, 0x0
    goto :label_3ab0
    :label_3aab
    move/from16 v5, v50
    goto :label_3ab0
    :label_3aae
    move/from16 v5, v49
    :label_3ab0
    add-int v5, v47, v5
    int-to-float v5, v5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_3ae6
    :label_3ac3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v5, :label_3ad2
    if-nez v26, :label_3acf
    const/4 v5, 0x0
    goto :label_3ad4
    :label_3acf
    move/from16 v5, v50
    goto :label_3ad4
    :label_3ad2
    move/from16 v5, v49
    :label_3ad4
    add-int v5, v47, v5
    int-to-float v5, v5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_3ae6
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v0, v5
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J
    cmp-long v0, v7, v17
    if-nez v0, :label_3afd
    const/4 v0, 0x0
    goto :label_3b09
    :label_3afd
    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    :label_3b09
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v5
    const/high16 v7, 0x42a00000
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int/2addr v5, v7
    if-ltz v5, :label_3b17
    goto :label_3b1b
    :label_3b17
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    :label_3b1b
    if-nez v0, :label_3b5d
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_3b2c
    goto :label_3b45
    :label_3b2c
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-eqz v7, :label_3b45
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->T4:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v7
    aget-object v2, v2, v7
    move-object/from16 v84, v13
    goto :label_3b62
    :label_3b45
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v8
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;
    move-object/from16 v84, v13
    move-wide/from16 v12, v17
    invoke-virtual {v2, v12, v13, v7, v8}, Lorg/telegram/ui/Components/j9;->n(JLjava/lang/String;Ljava/lang/String;)V
    goto :label_3b62
    :label_3b5d
    move-object/from16 v84, v13
    invoke-virtual {v2, v15, v0}, Lorg/telegram/ui/Components/j9;->m(ILorg/telegram/tgnet/TLRPC$User;)V
    :label_3b62
    invoke-virtual {v1, v0, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->vCardData:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :label_3bac
    if-nez v0, :label_3b70
    goto :label_3b78
    :label_3b70
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :label_3b9a
    :label_3b78
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-eqz v7, :label_3b91
    sget v2, Lorg/telegram/messenger/R$string;->NumberUnknown:I
    const-string v7, "NumberUnknown"
    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    :label_3b8e
    move-object/from16 v88, v2
    goto :label_3baf
    :label_3b91
    invoke-static {}, Lde/b;->c()Lde/b;
    move-result-object v7
    invoke-virtual {v7, v2}, Lde/b;->b(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    goto :label_3b8e
    :label_3b9a
    invoke-static {}, Lde/b;->c()Lde/b;
    move-result-object v2
    new-instance v7, Ljava/lang/StringBuilder;
    const-string v8, "+"
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;
    invoke-static {v7, v8, v2}, Lorg/telegram/messenger/h4;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Lde/b;)Ljava/lang/String;
    move-result-object v2
    goto :label_3b8e
    :label_3bac
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->vCardData:Ljava/lang/CharSequence;
    goto :label_3b8e
    :label_3baf
    if-eqz v0, :label_3bb2
    goto :label_3bc6
    :label_3bb2
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->vCardData:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :label_3bbb
    goto :label_3bc6
    :label_3bbb
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;
    if-nez v2, :label_3bc6
    goto :label_3bd4
    :label_3bc6
    if-nez v0, :label_3bcc
    const/4 v2, 0x1
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->T2:Z
    goto :label_3bd4
    :label_3bcc
    const/4 v2, 0x1
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->S2:Z
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z
    xor-int/2addr v0, v2
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->U2:Z
    :label_3bd4
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/16 v2, 0x20
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v2
    if-eqz v2, :label_3bf5
    goto :label_3c02
    :label_3bf5
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    if-eqz v0, :label_3c00
    goto :label_3c02
    :label_3c00
    const-string v0, ""
    :label_3c02
    new-instance v89, Landroid/text/StaticLayout;
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->R2:Landroid/text/TextPaint;
    int-to-float v7, v5
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v0, v2, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v90
    sget-object v91, Lorg/telegram/ui/ActionBar/n6;->R2:Landroid/text/TextPaint;
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int v92, v0, v5
    sget-object v93, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v95, 0x0
    const/16 v96, 0x0
    const/high16 v94, 0x3f800000
    invoke-direct/range {v89 .. v96}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v89
    move-object/from16 v91, v93
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->S2:Landroid/text/TextPaint;
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int v90, v0, v5
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    const/high16 v92, 0x3f800000
    const/16 v94, 0x0
    move/from16 v93, v0
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v87
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-nez v0, :label_3c4a
    goto :label_3c5a
    :label_3c4a
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v0
    if-nez v0, :label_3c51
    goto :label_3c5a
    :label_3c51
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_3c56
    goto :label_3c72
    :label_3c56
    iget-byte v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-eqz v0, :label_3c72
    :label_3c5a
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->Ya:Z
    if-nez v0, :label_3c5f
    goto :label_3c7b
    :label_3c5f
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v0
    if-eqz v0, :label_3c66
    goto :label_3c7b
    :label_3c66
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    const/high16 v2, 0x40e00000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    goto :label_3c7b
    :label_3c72
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_3c7b
    const/high16 v0, 0x42820000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v0, v2
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v0, :label_3c92
    goto :label_3c9b
    :label_3c92
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_3c9b
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->S2:Z
    if-eqz v0, :label_3ca0
    goto :label_3cdf
    :label_3ca0
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->U2:Z
    if-eqz v0, :label_3ca5
    goto :label_3cdf
    :label_3ca5
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->T2:Z
    if-nez v0, :label_3cdf
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-gtz v0, :label_3cb2
    goto :label_3ce2
    :label_3cb2
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v2, 0x42dc0000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v5
    const/16 v86, 0x1
    add-int/lit8 v5, v5, -0x1
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v2
    float-to-double v7, v2
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v7
    double-to-int v2, v7
    sub-int/2addr v0, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    if-lt v0, v2, :label_3cd5
    goto :label_3ce2
    :label_3cd5
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_3ce2
    :label_3cdf
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->l1()V
    :label_3ce2
    iget-boolean v0, v9, Lvf/q0;->b:Z
    if-eqz v0, :label_3ce7
    goto :label_3d24
    :label_3ce7
    iget-boolean v0, v9, Lvf/q0;->s:Z
    if-eqz v0, :label_3cec
    goto :label_3d24
    :label_3cec
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    const/4 v5, 0x3
    invoke-virtual {v9, v0, v5}, Lvf/q0;->p(II)V
    iget v0, v9, Lvf/q0;->o:I
    iput v0, v9, Lvf/q0;->p:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iget v2, v9, Lvf/q0;->u:I
    sub-int/2addr v0, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    if-lt v0, v2, :label_3d0a
    goto :label_3d1d
    :label_3d0a
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    neg-int v2, v2
    add-int/2addr v0, v2
    iput v0, v9, Lvf/q0;->m:I
    :label_3d1d
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v9, Lvf/q0;->p:I
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_3d24
    move/from16 v53, v3
    move/from16 v25, v4
    move-object/from16 v103, v9
    move-object v5, v11
    move/from16 v3, v22
    move/from16 v22, v31
    move/from16 v51, v34
    move/from16 v8, v39
    move/from16 v12, v66
    move-object/from16 v13, v76
    move-object/from16 v11, v84
    const/4 v0, 0x0
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v9, v6
    goto/16 :label_6a3b
    :label_3d43
    move/from16 v15, v112
    move-object v14, v1
    move-object v9, v8
    move-object v1, v11
    move-object v6, v12
    move/from16 v4, v25
    move-object/from16 v11, v32
    move/from16 v69, v38
    move-object/from16 v84, v66
    move-object/from16 v76, v67
    const/4 v2, 0x0
    const/16 v3, 0xa
    const/16 v22, 0x4
    const/high16 v34, 0x41f80000
    const/high16 v39, 0x3f800000
    const/high16 v57, 0x40a00000
    const/high16 v62, 0x41400000
    const/high16 v66, 0x40c00000
    const/high16 v68, 0x42000000
    const/16 v77, 0x14
    move/from16 v67, v58
    invoke-virtual {v14, v2}, Lorg/telegram/ui/Cells/u1;->s1(I)V
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_3d9b
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_3d86
    if-nez v26, :label_3d83
    const/4 v2, 0x0
    goto :label_3d88
    :label_3d83
    move/from16 v2, v50
    goto :label_3d88
    :label_3d86
    move/from16 v2, v49
    :label_3d88
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_3dbe
    :label_3d9b
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_3daa
    if-nez v26, :label_3da7
    const/4 v2, 0x0
    goto :label_3dac
    :label_3da7
    move/from16 v2, v50
    goto :label_3dac
    :label_3daa
    move/from16 v2, v49
    :label_3dac
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_3dbe
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v0
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    if-ltz v0, :label_3dd3
    goto :label_3dd7
    :label_3dd3
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    :label_3dd7
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    move-result-object v2
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v7, v5
    const-wide/16 v70, 0x3e8
    mul-long v7, v7, v70
    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    move-result-object v2
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    if-nez v7, :label_3e0f
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;
    if-nez v7, :label_3dfe
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v10, 0x0
    const/4 v12, 0x0
    :label_3dfc
    const/4 v13, 0x0
    goto :label_3e20
    :label_3dfe
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;
    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z
    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->active:Z
    const/16 v86, 0x1
    xor-int/lit8 v8, v8, 0x1
    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z
    iget v12, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->duration:I
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;
    goto :label_3e20
    :label_3e0f
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;
    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->duration:I
    move v12, v8
    move v8, v7
    move v7, v12
    move v12, v5
    goto :label_3dfc
    :label_3e20
    invoke-static {v6, v7, v8, v10}, Lorg/telegram/ui/Cells/u1;->x2(Lorg/telegram/messenger/MessageObject;ZZZ)Ljava/lang/String;
    move-result-object v5
    if-gtz v12, :label_3e27
    goto :label_3e38
    :label_3e27
    const-string v7, ", "
    invoke-static {v2, v7}, Lu8/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->formatCallDuration(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    :label_3e38
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v7, Lorg/telegram/ui/ActionBar/n6;->O2:Landroid/text/TextPaint;
    int-to-float v8, v0
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v5, v7, v8, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v88
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->O2:Landroid/text/TextPaint;
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int v90, v5, v0
    sget-object v91, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v93, 0x0
    const/16 v94, 0x0
    const/high16 v92, 0x3f800000
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v5, v87
    iput-object v5, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    move-object/from16 v95, v91
    new-instance v91, Landroid/text/StaticLayout;
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->S2:Landroid/text/TextPaint;
    const/high16 v7, 0x41980000
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int v7, v0, v7
    int-to-float v7, v7
    invoke-static {v2, v5, v7, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v92
    sget-object v93, Lorg/telegram/ui/ActionBar/n6;->S2:Landroid/text/TextPaint;
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int v94, v2, v0
    const/16 v97, 0x0
    const/16 v98, 0x0
    const/high16 v96, 0x3f800000
    invoke-direct/range {v91 .. v98}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v91
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    const/4 v5, 0x0
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v2
    float-to-int v2, v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->T3:I
    if-nez v13, :label_3e8e
    :label_3e8c
    const/4 v2, 0x0
    goto :label_3e95
    :label_3e8e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-gtz v2, :label_3e99
    goto :label_3e8c
    :label_3e95
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->X3:Lorg/telegram/ui/Components/d21;
    goto/16 :label_3f5b
    :label_3e99
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    if-eqz v2, :label_3e9e
    goto :label_3ed4
    :label_3e9e
    new-instance v2, Lorg/telegram/ui/Components/l9;
    const/4 v5, 0x0
    invoke-direct {v2, v14, v5}, Lorg/telegram/ui/Components/l9;-><init>(Landroid/view/View;Z)V
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/l9;->m(I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    const/high16 v5, 0x41900000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/l9;->j(I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    iput v5, v2, Lorg/telegram/ui/Components/l9;->p:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    iput v5, v2, Lorg/telegram/ui/Components/l9;->o:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->d3()Z
    move-result v2
    if-nez v2, :label_3ecf
    goto :label_3ed4
    :label_3ecf
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/l9;->g()V
    :label_3ed4
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v5
    if-nez v5, :label_3eef
    goto :label_3efe
    :label_3eef
    invoke-static {v15}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;
    move-result-object v5
    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :label_3efe
    const/4 v5, 0x0
    :label_3eff
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v7
    const/4 v12, 0x3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I
    move-result v7
    if-lt v5, v7, :label_4007
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I
    move-result v5
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I
    move-result v5
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/l9;->k(I)V
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v7
    const/4 v8, 0x0
    :label_3f1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    move-result v10
    if-nez v10, :label_3f23
    goto :label_3f43
    :label_3f23
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    move-result-wide v12
    iget-object v10, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    invoke-virtual {v3, v12, v13}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;
    move-result-object v3
    invoke-virtual {v10, v8, v3, v15}, Lorg/telegram/ui/Components/l9;->l(ILorg/telegram/tgnet/TLObject;I)V
    const/16 v86, 0x1
    add-int/lit8 v8, v8, 0x1
    if-ge v8, v5, :label_3f43
    const/16 v3, 0xa
    goto :label_3f1c
    :label_3f43
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->W3:Lorg/telegram/ui/Components/l9;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/l9;->a()V
    new-instance v3, Lorg/telegram/ui/Components/d21;
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I
    move-result v2
    const-string v5, "ConferenceCallOther"
    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    const/high16 v5, 0x41500000
    invoke-direct {v3, v2, v5}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/String;F)V
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->X3:Lorg/telegram/ui/Components/d21;
    :label_3f5b
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->T3:I
    int-to-float v2, v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->X3:Lorg/telegram/ui/Components/d21;
    if-eqz v3, :label_3f67
    invoke-virtual {v3}, Lorg/telegram/ui/Components/d21;->h()F
    move-result v10
    goto :label_3f68
    :label_3f67
    const/4 v10, 0x0
    :label_3f68
    add-float/2addr v2, v10
    const/high16 v3, 0x42440000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int v3, v0, v3
    int-to-float v3, v3
    cmpl-float v3, v2, v3
    if-gtz v3, :label_3f77
    goto :label_3f8e
    :label_3f77
    const/high16 v3, 0x42440000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    int-to-float v0, v0
    sub-float v0, v2, v0
    float-to-int v0, v0
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_3f8e
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    const/high16 v0, 0x42820000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v0, v3
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v0, :label_3fa1
    goto :label_3fa8
    :label_3fa1
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_3fa8
    iget-boolean v0, v9, Lvf/q0;->b:Z
    if-eqz v0, :label_3fc3
    :label_3fac
    move/from16 v25, v4
    move-object/from16 v103, v9
    move-object v5, v11
    move/from16 v3, v22
    move/from16 v22, v31
    move/from16 v51, v34
    move/from16 v8, v39
    move/from16 v12, v66
    move-object/from16 v13, v76
    move-object/from16 v11, v84
    const/16 v53, 0xa
    goto/16 :label_36cf
    :label_3fc3
    iget-boolean v0, v9, Lvf/q0;->s:Z
    if-eqz v0, :label_3fc8
    goto :label_3fac
    :label_3fc8
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    const/4 v5, 0x3
    invoke-virtual {v9, v0, v5}, Lvf/q0;->p(II)V
    iget v0, v9, Lvf/q0;->o:I
    iput v0, v9, Lvf/q0;->p:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v68 .. v68}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    iget v3, v9, Lvf/q0;->u:I
    sub-int/2addr v0, v3
    int-to-float v0, v0
    cmpg-float v0, v0, v2
    if-ltz v0, :label_3fe7
    goto :label_3ffa
    :label_3fe7
    iget v0, v9, Lvf/q0;->p:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v9, Lvf/q0;->p:I
    iget v0, v9, Lvf/q0;->m:I
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    neg-int v2, v2
    add-int/2addr v0, v2
    iput v0, v9, Lvf/q0;->m:I
    :label_3ffa
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v3, v9, Lvf/q0;->p:I
    add-int/2addr v2, v3
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_3fac
    :label_4007
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    add-int/lit8 v5, v5, 0x1
    const/16 v3, 0xa
    goto/16 :label_3eff
    :label_401e
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->b8:Z
    const/16 v86, 0x1
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iget v0, v6, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x24
    if-eq v0, v2, :label_402e
    const/4 v8, 0x0
    goto :label_402f
    :label_402e
    const/4 v8, 0x1
    :label_402f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_405e
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    move-result v0
    if-nez v8, :label_4046
    const/16 v2, 0x50
    goto :label_4048
    :label_4046
    const/16 v2, 0x28
    :label_4048
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-nez v3, :label_4053
    if-nez v26, :label_4050
    const/4 v3, 0x0
    goto :label_4055
    :label_4050
    const/16 v3, 0x2a
    goto :label_4055
    :label_4053
    move/from16 v3, v49
    :label_4055
    add-int/2addr v2, v3
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_405b
    sub-int/2addr v0, v2
    move v2, v0
    goto :label_407d
    :label_405e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    if-nez v8, :label_4067
    const/16 v2, 0x50
    goto :label_4069
    :label_4067
    const/16 v2, 0x28
    :label_4069
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-nez v3, :label_4074
    if-nez v26, :label_4071
    const/4 v3, 0x0
    goto :label_4076
    :label_4071
    const/16 v3, 0x2a
    goto :label_4076
    :label_4074
    move/from16 v3, v49
    :label_4076
    add-int/2addr v2, v3
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_405b
    :label_407d
    if-eqz v26, :label_4080
    goto :label_40d4
    :label_4080
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->c8:Z
    if-eqz v0, :label_4085
    goto :label_40d4
    :label_4085
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_408a
    goto :label_40a5
    :label_408a
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_4091
    goto :label_40a5
    :label_4091
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    const-wide/16 v17, 0x0
    cmp-long v0, v7, v17
    if-gez v0, :label_409c
    goto :label_40d4
    :label_409c
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J
    move-result-wide v7
    cmp-long v0, v7, v52
    if-nez v0, :label_40a5
    goto :label_40d4
    :label_40a5
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v0, :label_40ac
    goto :label_40c3
    :label_40ac
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    const-wide/16 v17, 0x0
    cmp-long v0, v7, v17
    if-nez v0, :label_40b5
    goto :label_40c3
    :label_40b5
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_40bc
    goto :label_40d4
    :label_40bc
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z
    move-result v0
    if-eqz v0, :label_40c3
    goto :label_40d4
    :label_40c3
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z
    move-result v0
    if-nez v0, :label_40ca
    goto :label_40d2
    :label_40ca
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_40d4
    :label_40d2
    const/4 v8, 0x0
    goto :label_40d5
    :label_40d4
    const/4 v8, 0x1
    :label_40d5
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v0
    if-nez v0, :label_40e0
    goto :label_4104
    :label_40e0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    int-to-double v7, v0
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->N2:Landroid/text/TextPaint;
    const-string v3, "00:00"
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    float-to-double v12, v0
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v12
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_40fd
    const/high16 v0, 0x42800000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_40fe
    :label_40fd
    const/4 v0, 0x0
    :label_40fe
    int-to-double v5, v0
    add-double/2addr v12, v5
    sub-double/2addr v7, v12
    double-to-int v0, v7
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_4104
    invoke-virtual/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v0
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    if-nez v0, :label_4115
    goto :label_411b
    :label_4115
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v0
    if-eqz v0, :label_412a
    :label_411b
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_4122
    goto :label_412f
    :label_4122
    const/high16 v0, 0x41a40000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v5, v0
    goto :label_412f
    :label_412a
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v5, v0
    :label_412f
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v0
    add-int v12, v5, v0
    move-object/from16 v10, v110
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;
    if-nez v0, :label_4142
    goto :label_4150
    :label_4142
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;
    invoke-static {v0}, Lorg/telegram/ui/b;->s(Lorg/telegram/tgnet/TLRPC$TL_game;)Z
    move-result v0
    if-nez v0, :label_4152
    :label_4150
    const/4 v8, 0x0
    goto :label_4153
    :label_4152
    const/4 v8, 0x1
    :label_4153
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->k2:Z
    if-nez v0, :label_4164
    goto :label_417a
    :label_4164
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->currency:Ljava/lang/String;
    const-string v5, "XTR"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_4177
    goto :label_417a
    :label_4177
    const/4 v5, 0x0
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->k2:Z
    :label_417a
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z
    if-eqz v0, :label_417f
    goto :label_4196
    :label_417f
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    if-nez v0, :label_418a
    goto :label_4196
    :label_418a
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;
    if-nez v0, :label_4198
    :label_4196
    const/4 v8, 0x0
    goto :label_4199
    :label_4198
    const/4 v8, 0x1
    :label_4199
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v8, :label_419f
    const/4 v13, 0x0
    goto :label_41a7
    :label_419f
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    :label_41a7
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z
    move-result v0
    if-nez v0, :label_41ae
    goto :label_41b5
    :label_41ae
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getStoryMentionWebpage()Lorg/telegram/tgnet/TLRPC$WebPage;
    move-result-object v13
    :label_41b5
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v0, :label_41ba
    goto :label_41be
    :label_41ba
    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/tl/TL_iv$Page;
    if-nez v5, :label_41c0
    :label_41be
    const/4 v8, 0x0
    goto :label_41c1
    :label_41c0
    const/4 v8, 0x1
    :label_41c1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-nez v0, :label_41c7
    const/4 v5, 0x0
    goto :label_41c9
    :label_41c7
    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;
    :label_41c9
    if-nez v0, :label_41cc
    goto :label_41e4
    :label_41cc
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :label_41d5
    goto :label_41e4
    :label_41d5
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v0
    if-eqz v0, :label_41dc
    goto :label_41e4
    :label_41dc
    const-string v0, "instagram"
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :label_41e6
    :label_41e4
    const/4 v8, 0x0
    goto :label_41e7
    :label_41e6
    const/4 v8, 0x1
    :label_41e7
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->G4:Z
    if-nez v13, :label_41ed
    const/4 v0, 0x0
    goto :label_41ef
    :label_41ed
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;
    :label_41ef
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v6
    if-nez v6, :label_41f7
    :label_41f5
    const/4 v7, 0x0
    goto :label_41fb
    :label_41f7
    const/4 v8, 0x1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    goto :label_41f5
    :label_41fb
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->X9:Landroid/graphics/drawable/Drawable;
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-eqz v6, :label_42dc
    if-nez v5, :label_420d
    :label_4203
    move/from16 v25, v4
    :label_4205
    const/16 v4, 0x9
    const/16 v5, 0xe
    :label_4209
    const/16 v6, 0x12
    goto/16 :label_4879
    :label_420d
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v3
    const-string v5, "instagram"
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :label_421a
    goto :label_4235
    :label_421a
    const-string v5, "twitter"
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :label_4223
    goto :label_4235
    :label_4223
    const-string v3, "telegram_album"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :label_422c
    goto :label_4235
    :label_422c
    const-string v3, "telegram_story_album"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_4235
    goto :label_4203
    :label_4235
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/tl/TL_iv$Page;
    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_iv$TL_page;
    if-nez v3, :label_423c
    goto :label_4203
    :label_423c
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-eqz v3, :label_4244
    :label_4242
    const/4 v5, 0x0
    goto :label_424d
    :label_4244
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v3
    if-nez v3, :label_4242
    goto :label_4203
    :label_424d
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/tl/TL_iv$Page;
    iget-object v5, v3, Lorg/telegram/tgnet/tl/TL_iv$Page;->blocks:Ljava/util/ArrayList;
    const/4 v3, 0x0
    const/4 v8, 0x1
    :label_425d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v6
    if-lt v3, v6, :label_42b7
    sget v3, Lorg/telegram/messenger/R$string;->Of:I
    const/16 v86, 0x1
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v7, 0x2
    new-array v7, v7, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v5, v7, v23
    aput-object v6, v7, v86
    const-string v5, "Of"
    invoke-static {v5, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v5
    float-to-double v5, v5
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v5, v5
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->p2:I
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->p2:I
    sget-object v91, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v93, 0x0
    const/16 v94, 0x0
    const/high16 v92, 0x3f800000
    move-object/from16 v88, v3
    move/from16 v90, v5
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v3, v87
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->L2:Landroid/text/StaticLayout;
    move/from16 v25, v4
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/4 v5, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x1
    :label_42ad
    const/16 v32, 0x0
    const-wide/16 v99, 0x0
    const/16 v101, 0x0
    const/16 v102, 0x0
    goto/16 :label_4886
    :label_42b7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/tl/TL_iv$PageBlock;
    instance-of v7, v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockSlideshow;
    if-nez v7, :label_42d0
    instance-of v7, v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockCollage;
    if-nez v7, :label_42c6
    goto :label_42d9
    :label_42c6
    check-cast v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockCollage;
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockCollage;->items:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v6
    :label_42ce
    move v8, v6
    goto :label_42d9
    :label_42d0
    check-cast v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockSlideshow;
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_iv$pageBlockSlideshow;->items:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v6
    goto :label_42ce
    :label_42d9
    add-int/lit8 v3, v3, 0x1
    goto :label_425d
    :label_42dc
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isUnsupported()Z
    move-result v5
    if-nez v5, :label_486a
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v5
    if-nez v5, :label_4856
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v5
    if-nez v5, :label_4846
    const-string v5, "telegram_channel_boost"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4838
    const-string v5, "telegram_group_boost"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4829
    const-string v5, "telegram_giftcode"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_481a
    const-string v5, "telegram_livestream"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_480b
    const-string v5, "telegram_voicechat"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_47fe
    const-string v5, "telegram_videochat"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_47f1
    const-string v5, "telegram_channel"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_47e6
    const-string v5, "telegram_channel_direct"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_47d9
    const-string v5, "telegram_user"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_47a8
    const-string v5, "telegram_aicomposetone"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4782
    const-string v5, "telegram_nft"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4746
    const-string v5, "telegram_megagroup"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_473a
    const-string v5, "telegram_message"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :label_435d
    :label_4356
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    goto/16 :label_4733
    :label_435d
    const-string v5, "photo"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4366
    goto :label_4371
    :label_4366
    if-nez v13, :label_4369
    goto :label_4371
    :label_4369
    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;
    invoke-static {v5}, Lje/f;->f(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :label_4356
    :label_4371
    const-string v5, "telegram_community"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :label_437e
    :label_4379
    move/from16 v25, v4
    const/4 v3, 0x1
    goto/16 :label_472b
    :label_437e
    const-string v5, "telegram_chatlist"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4379
    const-string v5, "telegram_botapp"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4720
    const-string v5, "telegram_theme"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_4686
    const-string v5, "telegram_story"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_462b
    const-string v5, "telegram_background"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_444e
    const-string v3, "telegram_auction"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_4420
    const-string v3, "telegram_stickerset"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_43f9
    const-string v3, "telegram_collection"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_43d1
    const-string v3, "telegram_call"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_43c8
    goto/16 :label_4203
    :label_43c8
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v3, 0x1b
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4203
    :label_43d1
    const/4 v5, 0x1
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    const-class v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftCollection;
    invoke-static {v3, v6}, Lue/d;->d(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftCollection;
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v6, 0x1c
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v3, :label_43f0
    move/from16 v25, v4
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/4 v5, 0x0
    :label_43ec
    const/4 v7, 0x0
    const/4 v8, 0x0
    goto/16 :label_42ad
    :label_43f0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftCollection;->icons:Ljava/util/ArrayList;
    :label_43f2
    move-object v5, v3
    move/from16 v25, v4
    const/4 v3, 0x0
    const/16 v4, 0x9
    goto :label_43ec
    :label_43f9
    const/4 v5, 0x1
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    const-class v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;
    invoke-static {v3, v6}, Lue/d;->d(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-nez v3, :label_440b
    :label_4408
    const/16 v6, 0x17
    goto :label_4410
    :label_440b
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->emojis:Z
    if-nez v6, :label_4413
    goto :label_4408
    :label_4410
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto :label_4417
    :label_4413
    const/16 v6, 0x18
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    :label_4417
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v3, :label_441d
    goto/16 :label_4203
    :label_441d
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->stickers:Ljava/util/ArrayList;
    goto :label_43f2
    :label_4420
    const/4 v5, 0x1
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    const-class v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;
    invoke-static {v3, v6}, Lue/d;->d(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v6, 0x1a
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    if-nez v3, :label_4435
    goto/16 :label_4203
    :label_4435
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    iput-object v6, v14, Lorg/telegram/ui/Cells/u1;->De:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    move-object/from16 v29, v3
    move/from16 v25, v4
    move-object/from16 v28, v6
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    const-wide/16 v7, 0x0
    const/16 v16, 0x0
    :label_444a
    const/16 v32, 0x0
    goto/16 :label_487c
    :label_444e
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/4 v5, 0x6
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    :label_4454
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v5
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v5
    const-string v6, "intensity"
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v6
    int-to-float v6, v6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->d3:F
    const-string v6, "bg_color"
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string v7, "rotation"
    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-nez v7, :label_4482
    goto :label_448c
    :label_4482
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    move-result v7
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->h3:I
    :label_448c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_4493
    goto :label_44b4
    :label_4493
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v7
    if-nez v7, :label_449a
    goto :label_44a7
    :label_449a
    const-string v8, "image/png"
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-nez v7, :label_44a5
    goto :label_44a7
    :label_44a5
    const-string v6, "ffffff"
    :label_44a7
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->d3:F
    const/16 v20, 0x0
    cmpl-float v7, v7, v20
    if-eqz v7, :label_44b0
    goto :label_44b4
    :label_44b0
    move/from16 v7, v63
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->d3:F
    :label_44b4
    const/high16 v7, -0x1000000
    if-nez v6, :label_4572
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    move-result-object v5
    if-nez v5, :label_44c0
    goto/16 :label_4203
    :label_44c0
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    const/4 v8, 0x6
    if-ge v6, v8, :label_44c9
    goto/16 :label_4203
    :label_44c9
    const/4 v6, 0x0
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    const/16 v6, 0x10
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v16
    or-int v6, v16, v7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->c3:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    const/16 v3, 0xd
    if-ge v6, v3, :label_44e1
    goto :label_44fa
    :label_44e1
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C
    move-result v6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v6
    if-nez v6, :label_44ec
    goto :label_44fa
    :label_44ec
    const/4 v6, 0x7
    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v8
    const/16 v3, 0x10
    invoke-static {v8, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v6
    or-int/2addr v6, v7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->e3:I
    :label_44fa
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    move/from16 v8, v77
    if-ge v6, v8, :label_4505
    :label_4502
    const/16 v6, 0xe
    goto :label_4522
    :label_4505
    const/16 v6, 0xd
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
    move-result v16
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v6
    if-nez v6, :label_4512
    goto :label_4502
    :label_4512
    const/16 v6, 0xe
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    const/16 v8, 0x10
    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v16
    or-int v8, v16, v7
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->f3:I
    :label_4522
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v8
    const/16 v3, 0x1b
    if-eq v8, v3, :label_452b
    goto :label_4547
    :label_452b
    const/16 v8, 0x14
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C
    move-result v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v3
    if-nez v3, :label_4538
    goto :label_4547
    :label_4538
    const/16 v3, 0x15
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v3
    const/16 v8, 0x10
    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v3
    or-int/2addr v3, v7
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->g3:I
    :label_4547
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const-string v5, "s"
    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    const/high16 v5, 0x43340000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V
    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;
    move/from16 v25, v4
    move v5, v6
    :label_456e
    const/16 v4, 0x9
    goto/16 :label_4209
    :label_4572
    move/from16 v25, v7
    const/4 v3, 0x0
    const/16 v5, 0xe
    const/4 v8, 0x6
    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v7
    const/16 v3, 0x10
    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v7
    or-int v7, v7, v25
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->c3:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v3
    const/16 v5, 0xd
    if-ge v3, v5, :label_458f
    goto :label_45af
    :label_458f
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C
    move-result v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v3
    if-nez v3, :label_459a
    goto :label_45af
    :label_459a
    const/4 v3, 0x7
    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v7
    const/16 v3, 0x10
    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v5
    or-int v5, v5, v25
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->e3:I
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->c3:I
    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I
    move-result v7
    :label_45af
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v5
    const/16 v8, 0x14
    if-ge v5, v8, :label_45b8
    goto :label_45d5
    :label_45b8
    const/16 v5, 0xd
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C
    move-result v16
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v5
    if-nez v5, :label_45c5
    goto :label_45d5
    :label_45c5
    const/16 v5, 0xe
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    const/16 v8, 0x10
    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v5
    or-int v5, v5, v25
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->f3:I
    :label_45d5
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v5
    const/16 v8, 0x1b
    if-eq v5, v8, :label_45de
    goto :label_45fb
    :label_45de
    const/16 v8, 0x14
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C
    move-result v5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z
    move-result v5
    if-nez v5, :label_45eb
    goto :label_45fb
    :label_45eb
    const/16 v5, 0x15
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v5
    const/16 v3, 0x10
    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    move-result v3
    or-int v3, v3, v25
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->g3:I
    :label_45fb
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->d3:F
    const/16 v20, 0x0
    cmpg-float v3, v3, v20
    if-ltz v3, :label_460a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getPatternSideColor(I)I
    move-result v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    goto :label_460f
    :label_460a
    const v3, -0xeeeeef
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    :label_460f
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I
    move-result v5
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->d3:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F
    move-result v3
    const/high16 v5, 0x42c80000
    div-float/2addr v3, v5
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V
    :label_4629
    goto/16 :label_4203
    :label_462b
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v5, 0x0
    :label_4632
    if-lt v5, v3, :label_4636
    goto/16 :label_4203
    :label_4636
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;
    if-eqz v7, :label_4683
    const/4 v8, 0x1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v5, 0x11
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-nez v3, :label_4657
    const/4 v5, 0x0
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto :label_4671
    :label_4657
    const/4 v5, 0x0
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    iput v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v6
    iput-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J
    instance-of v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;
    if-nez v6, :label_466b
    goto :label_4671
    :label_466b
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    :label_4671
    move/from16 v25, v4
    const/16 v4, 0x9
    const/16 v5, 0xe
    :label_4677
    const/16 v6, 0x12
    :label_4679
    const-wide/16 v7, 0x0
    :label_467b
    const/16 v16, 0x0
    const/16 v28, 0x0
    :label_467f
    const/16 v29, 0x0
    goto/16 :label_444a
    :label_4683
    add-int/lit8 v5, v5, 0x1
    goto :label_4632
    :label_4686
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v5, 0x0
    const/4 v6, 0x0
    :label_4696
    if-lt v5, v3, :label_46ad
    move/from16 v25, v4
    move-object/from16 v32, v6
    :label_469c
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    const-wide/16 v7, 0x0
    const/16 v16, 0x0
    :label_46a7
    const/16 v28, 0x0
    const/16 v29, 0x0
    goto/16 :label_487c
    :label_46ad
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;
    if-eqz v8, :label_4713
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;
    move/from16 v16, v3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v3
    move/from16 v25, v4
    const/4 v4, 0x0
    :label_46ce
    if-lt v4, v3, :label_46d5
    move-object/from16 v32, v6
    const/4 v3, 0x1
    const/4 v6, 0x7
    goto :label_46f8
    :label_46d5
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v28
    move/from16 v29, v3
    move-object/from16 v3, v28
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;
    move/from16 v28, v4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    move-object/from16 v32, v3
    const-string v3, "application/x-tgtheme-android"
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_46f2
    add-int/lit8 v4, v28, 0x1
    move/from16 v3, v29
    goto :label_46ce
    :label_46f2
    const/4 v3, 0x1
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/4 v6, 0x7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    :label_46f8
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-nez v4, :label_469c
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->settings:Lorg/telegram/tgnet/TLRPC$ThemeSettings;
    if-nez v4, :label_4703
    move-object/from16 v6, v32
    goto :label_4718
    :label_4703
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v16, v4
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    const-wide/16 v7, 0x0
    goto :label_46a7
    :label_4713
    move/from16 v16, v3
    move/from16 v25, v4
    const/4 v3, 0x1
    :label_4718
    add-int/lit8 v5, v5, 0x1
    move/from16 v3, v16
    move/from16 v4, v25
    goto/16 :label_4696
    :label_4720
    move/from16 v25, v4
    const/4 v3, 0x1
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v4, 0xf
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4205
    :label_472b
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v5, 0xe
    iput v5, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_4733
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/4 v4, 0x3
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_473a
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/4 v7, 0x2
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_4746
    move/from16 v25, v4
    const/16 v5, 0xe
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0x0
    :label_4751
    if-lt v4, v3, :label_4755
    :label_4753
    goto/16 :label_456e
    :label_4755
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeUniqueStarGift;
    if-eqz v7, :label_477e
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeUniqueStarGift;
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeUniqueStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    if-nez v4, :label_476a
    goto :label_4753
    :label_476a
    const/4 v8, 0x1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v4, 0x1a
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v28, v3
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/16 v6, 0x12
    const-wide/16 v7, 0x0
    const/16 v16, 0x0
    goto/16 :label_467f
    :label_477e
    const/4 v8, 0x1
    add-int/lit8 v4, v4, 0x1
    goto :label_4751
    :label_4782
    move/from16 v25, v4
    const/16 v5, 0xe
    const/4 v8, 0x1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v3, 0x55
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;
    const-class v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeAiComposeTone;
    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->find(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeAiComposeTone;
    if-nez v3, :label_479e
    const/4 v3, 0x0
    const/16 v4, 0x9
    goto/16 :label_4677
    :label_479e
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeAiComposeTone;->emoji_id:J
    move-wide v7, v3
    const/4 v3, 0x0
    const/16 v4, 0x9
    const/16 v6, 0x12
    goto/16 :label_467b
    :label_47a8
    move/from16 v25, v4
    const/16 v5, 0xe
    if-nez v13, :label_47af
    goto :label_47c4
    :label_47af
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;
    if-nez v3, :label_47b4
    goto :label_47c4
    :label_47b4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3
    if-nez v3, :label_47bb
    goto :label_47c4
    :label_47bb
    const-string v4, "profile"
    const/4 v6, 0x0
    invoke-virtual {v3, v4, v6}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z
    move-result v3
    if-nez v3, :label_47c7
    :label_47c4
    const/4 v8, 0x0
    :label_47c5
    const/4 v3, 0x1
    goto :label_47c9
    :label_47c7
    const/4 v8, 0x1
    goto :label_47c5
    :label_47c9
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-nez v8, :label_47d3
    const/16 v6, 0xd
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_47d3
    const/16 v4, 0x20
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_47d9
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v4, 0x1d
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_47e6
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_47f1
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v4, 0x19
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_456e
    :label_47fe
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v4, 0x9
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4209
    :label_480b
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v6, 0xb
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4209
    :label_481a
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v8, 0x14
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4209
    :label_4829
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v6, 0x16
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto/16 :label_4209
    :label_4838
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v6, 0x12
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto :label_4879
    :label_4846
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v8, 0x13
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto :label_4879
    :label_4856
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->sponsoredButtonText:Ljava/lang/String;
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->b3:Ljava/lang/CharSequence;
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    goto :label_4879
    :label_486a
    move/from16 v25, v4
    const/4 v3, 0x1
    const/16 v4, 0x9
    const/16 v5, 0xe
    const/16 v6, 0x12
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    const/16 v3, 0x15
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    :label_4879
    const/4 v3, 0x0
    goto/16 :label_4679
    :label_487c
    move-wide/from16 v99, v7
    move-object/from16 v7, v16
    move-object/from16 v101, v28
    move-object/from16 v102, v29
    const/4 v5, 0x0
    const/4 v8, 0x0
    :label_4886
    iget-boolean v6, v10, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v6, :label_488b
    goto :label_488e
    :label_488b
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    :label_488e
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v6, :label_4895
    goto :label_489a
    :label_4895
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v6, :label_489a
    goto :label_48dd
    :label_489a
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v6, :label_489f
    goto :label_48dd
    :label_489f
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v6, :label_48a4
    goto :label_48dd
    :label_48a4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getLastLineWidth()I
    move-result v6
    sub-int v6, v2, v6
    if-lt v6, v12, :label_48dd
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getLastLineWidth()I
    move-result v16
    sub-int v6, v6, v16
    if-gez v6, :label_48b7
    goto :label_48b9
    :label_48b7
    if-le v6, v12, :label_48d1
    :label_48b9
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getLastLineWidth()I
    move-result v16
    add-int v4, v16, v12
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_48cc
    move/from16 v16, v8
    move/from16 v8, v34
    goto :label_48fa
    :label_48d1
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    add-int/2addr v4, v12
    sub-int/2addr v4, v6
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_48cc
    :label_48dd
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getLastLineWidth()I
    move-result v6
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    move/from16 v16, v8
    move/from16 v8, v34
    invoke-static {v8, v4, v6}, Lorg/telegram/messenger/h4;->b(FII)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_48fa
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v4, v6
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v4
    if-nez v4, :label_490c
    move-object/from16 v83, v9
    goto :label_4939
    :label_490c
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    move-object/from16 v83, v9
    int-to-double v8, v4
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->N2:Landroid/text/TextPaint;
    const-string v6, "00:00"
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v4
    move-wide/from16 v28, v8
    float-to-double v8, v4
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v8
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_492f
    const/high16 v4, 0x42800000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    :label_492c
    move-wide/from16 v35, v8
    goto :label_4931
    :label_492f
    const/4 v4, 0x0
    goto :label_492c
    :label_4931
    int-to-double v8, v4
    add-double v8, v35, v8
    sub-double v8, v28, v8
    double-to-int v4, v8
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->C8:I
    :label_4939
    invoke-direct/range {v109 .. v110}, Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->fb:I
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->N:Lsf/a;
    invoke-virtual {v8, v10, v4, v6}, Lsf/a;->d(Lorg/telegram/messenger/MessageObject;II)V
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->fb:I
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->O:Lsf/c;
    invoke-virtual {v6, v10, v4}, Lsf/c;->d(Lorg/telegram/messenger/MessageObject;I)V
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0x24
    if-eq v4, v6, :label_49ae
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v4
    if-nez v4, :label_497c
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->textWidth:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v6
    const/16 v82, 0x2
    mul-int/lit8 v6, v6, 0x2
    add-int/2addr v6, v4
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v4, :label_496d
    goto :label_4973
    :label_496d
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v4, :label_4973
    const/4 v9, 0x0
    goto :label_4977
    :label_4973
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    :label_4977
    add-int/2addr v6, v9
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto/16 :label_49ed
    :label_497c
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v4
    if-nez v4, :label_4998
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v4
    const/high16 v63, 0x42480000
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v4, v6
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_49ed
    :label_4998
    const/high16 v63, 0x42480000
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v4
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v4, v6
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    goto :label_49ed
    :label_49ae
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v4, :label_49b3
    goto :label_49bb
    :label_49b3
    new-instance v4, Lorg/telegram/messenger/RichMessageLayout;
    const/4 v9, 0x0
    invoke-direct {v4, v10, v2, v9}, Lorg/telegram/messenger/RichMessageLayout;-><init>(Lorg/telegram/messenger/MessageObject;ILorg/telegram/messenger/RichMessageLayout;)V
    iput-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    :label_49bb
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->d3()Z
    move-result v4
    if-nez v4, :label_49c2
    goto :label_49c7
    :label_49c2
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    invoke-virtual {v4, v14}, Lorg/telegram/messenger/RichMessageLayout;->attach(Landroid/view/View;)V
    :label_49c7
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->he:Lorg/telegram/ui/xj0;
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/RichMessageLayout;->setTypingAnimator(Lorg/telegram/ui/xj0;)V
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->he:Lorg/telegram/ui/xj0;
    if-nez v4, :label_49d3
    goto :label_49dc
    :label_49d3
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    invoke-virtual {v6}, Lorg/telegram/messenger/RichMessageLayout;->getAnimatorBlocks()Ljava/util/List;
    move-result-object v6
    invoke-virtual {v4, v6}, Lorg/telegram/ui/xj0;->l(Ljava/util/List;)V
    :label_49dc
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    invoke-virtual {v4}, Lorg/telegram/messenger/RichMessageLayout;->getMinWidth()I
    move-result v4
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v6
    const/16 v82, 0x2
    mul-int/lit8 v6, v6, 0x2
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_49ed
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v4
    if-nez v4, :label_4a1f
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0x24
    if-eq v4, v6, :label_4a0c
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->textHeight()I
    move-result v4
    const/high16 v6, 0x419c0000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_4a09
    move-object/from16 v9, v83
    goto :label_4a28
    :label_4a0c
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    invoke-virtual {v4}, Lorg/telegram/messenger/RichMessageLayout;->getHeight()I
    move-result v4
    const/high16 v6, 0x419c0000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_4a09
    :label_4a1f
    const/high16 v4, 0x41b40000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_4a09
    :label_4a28
    iget-boolean v4, v9, Lvf/q0;->b:Z
    if-eqz v4, :label_4a2d
    goto :label_4a65
    :label_4a2d
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z
    move-result v4
    if-nez v4, :label_4a41
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z
    move-result v4
    if-nez v4, :label_4a3c
    move v4, v2
    :label_4a3a
    const/4 v6, 0x3
    goto :label_4a46
    :label_4a3c
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->O:Lsf/c;
    iget v4, v4, Lsf/c;->m:I
    goto :label_4a3a
    :label_4a41
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->N:Lsf/a;
    iget v4, v4, Lsf/a;->l:I
    goto :label_4a3a
    :label_4a46
    invoke-virtual {v9, v4, v6}, Lvf/q0;->p(II)V
    iget-boolean v4, v9, Lvf/q0;->s:Z
    if-eqz v4, :label_4a4e
    goto :label_4a65
    :label_4a4e
    iget v4, v9, Lvf/q0;->o:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iput v6, v9, Lvf/q0;->p:I
    iget v4, v9, Lvf/q0;->q:I
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    if-gt v4, v8, :label_4a5e
    goto :label_4a60
    :label_4a5e
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_4a60
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v4, v6
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_4a65
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v4, :label_4a6a
    goto :label_4a73
    :label_4a6a
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v4, v6
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_4a73
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v4, :label_4a78
    goto :label_4a8b
    :label_4a78
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->hasCodeAtTop:Z
    if-nez v4, :label_4a7d
    goto :label_4a8b
    :label_4a7d
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    if-gtz v4, :label_4a82
    goto :label_4a8b
    :label_4a82
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_4a8b
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    const/4 v6, 0x0
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->I9:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->db:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->ga:Z
    if-nez v6, :label_4aaf
    goto :label_4ad6
    :label_4aaf
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    if-nez v6, :label_4ab4
    goto :label_4ad6
    :label_4ab4
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->la:Lorg/telegram/ui/Components/d21;
    if-nez v6, :label_4ab9
    goto :label_4ad6
    :label_4ab9
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v8}, Lorg/telegram/ui/Components/d21;->l()F
    move-result v8
    move/from16 v28, v6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->la:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v6}, Lorg/telegram/ui/Components/d21;->l()F
    move-result v6
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F
    move-result v6
    float-to-int v6, v6
    add-int v6, v28, v6
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    :label_4ad6
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->K9:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    if-nez v6, :label_4ae1
    goto :label_4aed
    :label_4ae1
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->ta:I
    const/4 v8, 0x3
    if-ne v6, v8, :label_4ae7
    goto :label_4aed
    :label_4ae7
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->g9:I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
    move-result v4
    :label_4aed
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v6, :label_4af2
    goto :label_4b2d
    :label_4af2
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v6, :label_4af7
    goto :label_4b2d
    :label_4af7
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v6, :label_4b2d
    const/4 v8, 0x0
    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    invoke-virtual {v14, v2, v12, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    invoke-static {v11}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isUnsupported()Z
    move-result v0
    if-nez v0, :label_4b0c
    goto :label_4b0f
    :label_4b0c
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->o1()V
    :label_4b0f
    move-object/from16 v103, v9
    move-object v9, v10
    move-object v5, v11
    move v6, v12
    move/from16 v3, v22
    move/from16 v22, v31
    move/from16 v8, v39
    move/from16 v12, v66
    move-object/from16 v13, v76
    move-object/from16 v11, v84
    const/4 v0, 0x1
    const/high16 v51, 0x41f80000
    const/16 v53, 0xa
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    goto/16 :label_694d
    :label_4b2d
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v8, v6, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v8, :label_4b70
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v6
    if-nez v6, :label_4b55
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v6
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v8, :label_4b48
    if-nez v26, :label_4b45
    const/4 v8, 0x0
    goto :label_4b4a
    :label_4b45
    move/from16 v8, v50
    goto :label_4b4a
    :label_4b48
    const/16 v8, 0x44
    :label_4b4a
    const/16 v28, 0x50
    add-int v8, v28, v8
    int-to-float v8, v8
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    :label_4b53
    sub-int/2addr v6, v8
    goto :label_4b74
    :label_4b55
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v6
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v8, :label_4b64
    if-nez v26, :label_4b61
    const/4 v8, 0x0
    goto :label_4b66
    :label_4b61
    move/from16 v8, v50
    goto :label_4b66
    :label_4b64
    const/16 v8, 0x44
    :label_4b66
    const/16 v28, 0x50
    add-int v8, v28, v8
    int-to-float v8, v8
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    goto :label_4b53
    :label_4b70
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I
    move-result v6
    :label_4b74
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->ta:I
    if-nez v8, :label_4b79
    goto :label_4b93
    :label_4b79
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    move/from16 v28, v6
    iget-boolean v6, v8, Lorg/telegram/messenger/MessageObject;->isSaved:Z
    if-nez v6, :label_4b82
    goto :label_4b88
    :label_4b82
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v6
    if-nez v6, :label_4b8b
    :label_4b88
    move/from16 v6, v45
    goto :label_4b8d
    :label_4b8b
    const/high16 v6, 0x41c80000
    :label_4b8d
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int v6, v28, v6
    :label_4b93
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v28
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v29
    if-nez v29, :label_4ef8
    move/from16 v29, v6
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move/from16 v33, v8
    const/16 v8, 0x13
    if-eq v6, v8, :label_4ecf
    const/16 v8, 0x11
    if-eq v6, v8, :label_4e0c
    iget-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v8, :label_4c47
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v6, :label_4bff
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_4bcb
    const/4 v7, 0x0
    goto :label_4bcd
    :label_4bcb
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;
    :label_4bcd
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;
    move-object/from16 v16, v6
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    const-string v6, "game"
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object v5, v6
    move-object/from16 v38, v7
    move-object/from16 v83, v9
    move-object/from16 v53, v11
    move-object/from16 v32, v13
    move/from16 v58, v15
    move-object/from16 v15, v16
    move/from16 v37, v29
    move-wide/from16 v35, v99
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v16, 0x0
    const/16 v29, 0x0
    const/16 v52, 0x0
    const/16 v88, 0x0
    move-object v13, v8
    const/4 v8, 0x0
    goto/16 :label_4fad
    :label_4bff
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->webPhoto:Lorg/telegram/tgnet/TLRPC$WebDocument;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-nez v7, :label_4c18
    const/4 v6, 0x0
    :label_4c16
    const/4 v7, 0x0
    goto :label_4c1d
    :label_4c18
    invoke-static {v6}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;
    move-result-object v6
    goto :label_4c16
    :label_4c1d
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    const-string v7, "invoice"
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object v5, v7
    move-object/from16 v83, v9
    move-object/from16 v53, v11
    move-object/from16 v32, v13
    move/from16 v58, v15
    move/from16 v37, v29
    move-wide/from16 v35, v99
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v11, 0x0
    const/4 v13, 0x0
    const/4 v15, 0x0
    const/16 v16, 0x0
    const/16 v29, 0x0
    const/16 v38, 0x0
    const/16 v52, 0x0
    const/16 v88, 0x0
    move-object v9, v6
    :label_4c44
    const/4 v6, 0x0
    goto/16 :label_4fad
    :label_4c47
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_webPage;
    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;
    move-object/from16 v35, v8
    const/4 v8, 0x6
    if-ne v6, v8, :label_4c51
    goto :label_4c54
    :label_4c51
    const/4 v8, 0x7
    if-ne v6, v8, :label_4c56
    :label_4c54
    const/4 v6, 0x0
    goto :label_4c58
    :label_4c56
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;
    :label_4c58
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->De:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    if-nez v8, :label_4c5d
    goto :label_4c76
    :label_4c5d
    iget v6, v8, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction_start_date:I
    invoke-static {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v8
    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v8
    if-gt v6, v8, :label_4c70
    sget v6, Lorg/telegram/messenger/R$string;->Gift2LinkGiftAuction:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    goto :label_4c76
    :label_4c70
    sget v6, Lorg/telegram/messenger/R$string;->Gift2LinkUpcomingAuction:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    :label_4c76
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v36, v6
    const/4 v6, 0x6
    if-ne v8, v6, :label_4c7f
    const/4 v6, 0x7
    goto :label_4c82
    :label_4c7f
    const/4 v6, 0x7
    if-ne v8, v6, :label_4c86
    :label_4c82
    const/16 v37, 0x0
    :label_4c84
    const/4 v6, 0x6
    goto :label_4c8b
    :label_4c86
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->author:Ljava/lang/String;
    move-object/from16 v37, v6
    goto :label_4c84
    :label_4c8b
    if-ne v8, v6, :label_4c8f
    const/4 v6, 0x7
    goto :label_4c92
    :label_4c8f
    const/4 v6, 0x7
    if-ne v8, v6, :label_4c95
    :label_4c92
    const/16 v38, 0x0
    goto :label_4c99
    :label_4c95
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;
    move-object/from16 v38, v6
    :label_4c99
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    move-object/from16 v52, v6
    const/4 v6, 0x7
    if-eq v8, v6, :label_4ca3
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;
    goto :label_4cad
    :label_4ca3
    if-nez v7, :label_4ca8
    move-object/from16 v6, v32
    goto :label_4cad
    :label_4ca8
    new-instance v6, Lorg/telegram/messenger/DocumentObject$ThemeDocument;
    invoke-direct {v6, v7}, Lorg/telegram/messenger/DocumentObject$ThemeDocument;-><init>(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)V
    :label_4cad
    if-nez v52, :label_4cb0
    goto :label_4cb7
    :label_4cb0
    if-nez v6, :label_4cb3
    goto :label_4cb7
    :label_4cb3
    iget-boolean v7, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->video_cover_photo:Z
    if-nez v7, :label_4cb9
    :label_4cb7
    const/4 v7, 0x0
    goto :label_4cbd
    :label_4cb9
    move-object/from16 v7, v52
    const/16 v52, 0x0
    :label_4cbd
    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;
    iget v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->duration:I
    if-nez v35, :label_4cc8
    :label_4cc3
    move-object/from16 v53, v6
    move-object/from16 v32, v7
    goto :label_4cdf
    :label_4cc8
    if-nez v52, :label_4ccb
    goto :label_4cc3
    :label_4ccb
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toString()Ljava/lang/String;
    move-result-object v32
    move-object/from16 v53, v6
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v6
    move-object/from16 v32, v7
    const-string v7, "instagram"
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :label_4ce2
    :label_4cdf
    move/from16 v6, v29
    goto :label_4cf2
    :label_4ce2
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v6, v6, Landroid/graphics/Point;->y:I
    const/16 v21, 0x3
    div-int/lit8 v6, v6, 0x3
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v7, v7, Lorg/telegram/messenger/MessageObject;->textWidth:I
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
    move-result v6
    :label_4cf2
    invoke-static {v8}, Lorg/telegram/ui/Cells/u1;->r3(Ljava/lang/String;)Z
    move-result v7
    if-eqz v16, :label_4cfc
    move/from16 v16, v6
    goto/16 :label_4d49
    :label_4cfc
    move/from16 v16, v6
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-nez v6, :label_4d05
    move/from16 v29, v7
    goto :label_4d43
    :label_4d05
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move/from16 v29, v7
    const/4 v7, 0x1
    if-ne v6, v7, :label_4d0d
    goto :label_4d43
    :label_4d0d
    const/16 v7, 0x1d
    if-ne v6, v7, :label_4d12
    goto :label_4d43
    :label_4d12
    const/4 v7, 0x2
    if-ne v6, v7, :label_4d16
    goto :label_4d43
    :label_4d16
    const/16 v7, 0x9
    if-ne v6, v7, :label_4d1b
    goto :label_4d43
    :label_4d1b
    const/16 v7, 0xb
    if-ne v6, v7, :label_4d20
    goto :label_4d43
    :label_4d20
    const/16 v7, 0x19
    if-ne v6, v7, :label_4d25
    goto :label_4d43
    :label_4d25
    const/16 v7, 0xd
    if-ne v6, v7, :label_4d2a
    goto :label_4d43
    :label_4d2a
    const/16 v7, 0x12
    if-ne v6, v7, :label_4d2f
    goto :label_4d43
    :label_4d2f
    const/16 v7, 0x14
    if-ne v6, v7, :label_4d34
    goto :label_4d43
    :label_4d34
    const/16 v7, 0x16
    if-ne v6, v7, :label_4d39
    goto :label_4d43
    :label_4d39
    const/16 v7, 0x20
    if-ne v6, v7, :label_4d3e
    goto :label_4d43
    :label_4d3e
    const/16 v7, 0x55
    if-eq v6, v7, :label_4d43
    goto :label_4d49
    :label_4d43
    if-eqz v53, :label_4d46
    goto :label_4d49
    :label_4d46
    if-eqz v29, :label_4d49
    goto :label_4d65
    :label_4d49
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v7, 0x17
    if-ne v6, v7, :label_4d50
    goto :label_4d5a
    :label_4d50
    const/16 v7, 0x18
    if-ne v6, v7, :label_4d55
    goto :label_4d5a
    :label_4d55
    const/16 v7, 0x1c
    if-eq v6, v7, :label_4d5a
    goto :label_4d63
    :label_4d5a
    if-nez v5, :label_4d5d
    goto :label_4d63
    :label_4d5d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-eqz v6, :label_4d65
    :label_4d63
    const/4 v6, 0x0
    goto :label_4d66
    :label_4d65
    const/4 v6, 0x1
    :label_4d66
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v7
    if-nez v7, :label_4d73
    move/from16 v29, v6
    move-object/from16 v58, v8
    goto :label_4d8c
    :label_4d73
    move/from16 v29, v6
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v58, v8
    const/16 v8, 0x17
    if-ne v6, v8, :label_4d7e
    goto :label_4d8c
    :label_4d7e
    const/16 v8, 0x18
    if-ne v6, v8, :label_4d83
    goto :label_4d8c
    :label_4d83
    const/16 v8, 0x1c
    if-ne v6, v8, :label_4d88
    goto :label_4d8c
    :label_4d88
    const/16 v8, 0x19
    if-ne v6, v8, :label_4d8f
    :label_4d8c
    move/from16 v8, v29
    goto :label_4d9d
    :label_4d8f
    iget-boolean v6, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z
    if-nez v6, :label_4d96
    move/from16 v8, v29
    goto :label_4d97
    :label_4d96
    const/4 v8, 0x0
    :label_4d97
    iget-boolean v6, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z
    if-nez v6, :label_4d9c
    goto :label_4d9d
    :label_4d9c
    const/4 v8, 0x1
    :label_4d9d
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v7, :label_4da4
    goto :label_4da8
    :label_4da4
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    if-nez v7, :label_4daa
    :label_4da8
    const/4 v7, 0x0
    goto :label_4dab
    :label_4daa
    const/4 v7, 0x1
    :label_4dab
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v8, :label_4db0
    goto :label_4dba
    :label_4db0
    if-nez v58, :label_4db3
    goto :label_4dba
    :label_4db3
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    if-eqz v6, :label_4dba
    :label_4db7
    move-wide/from16 v6, v99
    goto :label_4de1
    :label_4dba
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v7, 0x17
    if-ne v6, v7, :label_4dc1
    goto :label_4dcf
    :label_4dc1
    const/16 v7, 0x18
    if-ne v6, v7, :label_4dc6
    goto :label_4dcf
    :label_4dc6
    const/16 v7, 0x1c
    if-eq v6, v7, :label_4dcf
    :label_4dca
    move-wide/from16 v6, v99
    const-wide/16 v17, 0x0
    goto :label_4dd9
    :label_4dcf
    if-nez v5, :label_4dd2
    goto :label_4dca
    :label_4dd2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-nez v6, :label_4dca
    goto :label_4db7
    :label_4dd9
    cmp-long v29, v6, v17
    if-nez v29, :label_4de1
    move/from16 v29, v8
    const/4 v8, 0x0
    goto :label_4de4
    :label_4de1
    move/from16 v29, v8
    const/4 v8, 0x1
    :label_4de4
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object/from16 v83, v9
    move-object/from16 v8, v36
    move-object/from16 v5, v58
    const/4 v9, 0x0
    const/16 v88, 0x0
    move/from16 v58, v15
    move-object/from16 v15, v53
    move-object/from16 v53, v11
    move-object/from16 v11, v32
    move-object/from16 v32, v35
    move-wide/from16 v35, v6
    move-object/from16 v6, v37
    const/4 v7, 0x0
    move/from16 v37, v16
    move/from16 v16, v13
    move-object/from16 v13, v52
    const/16 v52, 0x0
    goto/16 :label_4fad
    :label_4e0c
    move-wide/from16 v6, v99
    if-eqz v3, :label_4e21
    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v8
    move-wide/from16 v35, v6
    iget-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v6
    goto :label_4e24
    :label_4e21
    move-wide/from16 v35, v6
    const/4 v6, 0x0
    :label_4e24
    instance-of v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;
    if-nez v7, :label_4e38
    if-nez v6, :label_4e33
    if-eqz v13, :label_4e31
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;
    :label_4e2e
    const/16 v16, 0x0
    goto :label_4e47
    :label_4e31
    const/4 v6, 0x0
    goto :label_4e2e
    :label_4e33
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v6
    goto :label_4e2e
    :label_4e38
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sget v7, Lorg/telegram/messenger/R$string;->ExpiredStory:I
    move/from16 v16, v6
    const/4 v8, 0x0
    new-array v6, v8, [Ljava/lang/Object;
    invoke-static {v7, v8, v6}, Lxg/f6;->e(IZ[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    move-result-object v6
    :label_4e47
    if-nez v3, :label_4e50
    if-eqz v13, :label_4e4e
    iget-object v7, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;
    goto :label_4e52
    :label_4e4e
    const/4 v7, 0x0
    goto :label_4e52
    :label_4e50
    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;
    :label_4e52
    if-nez v3, :label_4e55
    goto :label_4e5e
    :label_4e55
    iget-object v8, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v8, :label_4e5a
    goto :label_4e5e
    :label_4e5a
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v8, :label_4e64
    :label_4e5e
    if-eqz v13, :label_4e63
    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;
    goto :label_4e64
    :label_4e63
    const/4 v8, 0x0
    :label_4e64
    if-nez v3, :label_4e69
    move-object/from16 v32, v6
    goto :label_4e74
    :label_4e69
    move-object/from16 v32, v6
    iget-object v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v6, :label_4e70
    goto :label_4e74
    :label_4e70
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-nez v6, :label_4e7a
    :label_4e74
    if-eqz v13, :label_4e79
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    goto :label_4e7a
    :label_4e79
    const/4 v6, 0x0
    :label_4e7a
    if-eqz v13, :label_4e7f
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;
    goto :label_4e80
    :label_4e7f
    const/4 v13, 0x0
    :label_4e80
    if-nez v3, :label_4e85
    move-object/from16 v37, v6
    goto :label_4e90
    :label_4e85
    move-object/from16 v37, v6
    iget-object v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v6, :label_4e8c
    goto :label_4e90
    :label_4e8c
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v6, :label_4e95
    :label_4e90
    move-object/from16 v38, v7
    const/4 v6, 0x0
    :label_4e93
    const/4 v7, 0x0
    goto :label_4e9d
    :label_4e95
    move-object/from16 v38, v7
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D
    move-result-wide v6
    double-to-int v6, v6
    goto :label_4e93
    :label_4e9d
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v7, :label_4ea6
    goto :label_4eaa
    :label_4ea6
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    if-nez v7, :label_4eac
    :label_4eaa
    const/4 v7, 0x0
    goto :label_4ead
    :label_4eac
    const/4 v7, 0x1
    :label_4ead
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object/from16 v83, v9
    move-object/from16 v53, v11
    move-object v5, v13
    move/from16 v58, v15
    move/from16 v7, v16
    move-object/from16 v13, v37
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/16 v52, 0x0
    const/16 v88, 0x0
    move/from16 v16, v6
    move-object v15, v8
    move/from16 v37, v29
    const/4 v6, 0x0
    const/4 v8, 0x0
    const/16 v29, 0x0
    goto/16 :label_4fad
    :label_4ecf
    move-wide/from16 v35, v99
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object/from16 v83, v9
    move-object/from16 v53, v11
    move/from16 v58, v15
    move/from16 v37, v29
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/4 v13, 0x0
    const/4 v15, 0x0
    const/16 v16, 0x0
    const/16 v29, 0x0
    const/16 v32, 0x0
    const/16 v38, 0x0
    const/16 v52, 0x0
    const/16 v88, 0x0
    goto/16 :label_4fad
    :label_4ef8
    move/from16 v29, v6
    move/from16 v33, v8
    move-wide/from16 v35, v99
    iget-boolean v6, v10, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-nez v6, :label_4f16
    iget-boolean v6, v10, Lorg/telegram/messenger/MessageObject;->sponsoredRecommended:Z
    if-nez v6, :label_4f0f
    sget v6, Lorg/telegram/messenger/R$string;->SponsoredMessage2:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    :label_4f0c
    move-object v13, v6
    const/4 v6, 0x0
    goto :label_4f27
    :label_4f0f
    sget v6, Lorg/telegram/messenger/R$string;->SponsoredMessage2Recommended:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    goto :label_4f0c
    :label_4f16
    sget v6, Lorg/telegram/messenger/R$string;->SponsoredMessageAd:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    sget v7, Lorg/telegram/messenger/R$string;->SponsoredMessageAdWhatIsThis:I
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v13
    move-object/from16 v107, v13
    move-object v13, v6
    move-object/from16 v6, v107
    :label_4f27
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->customName:Ljava/lang/String;
    if-nez v7, :label_4f2f
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getAuthorName()Ljava/lang/String;
    move-result-object v7
    :label_4f2f
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    if-nez v8, :label_4f38
    const/16 v16, 0x0
    :label_4f35
    move-object/from16 v32, v6
    goto :label_4f3d
    :label_4f38
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v16
    goto :label_4f35
    :label_4f3d
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->sponsoredPhoto:Lorg/telegram/tgnet/TLRPC$Photo;
    move-object/from16 v37, v6
    if-eqz v6, :label_4f45
    const/4 v6, 0x1
    goto :label_4f46
    :label_4f45
    const/4 v6, 0x0
    :label_4f46
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v6, :label_4f57
    move-object/from16 v38, v7
    move-object/from16 v52, v37
    const/4 v6, 0x1
    const/4 v7, 0x0
    const/16 v37, 0x0
    const/16 v53, 0x0
    goto :label_4f87
    :label_4f57
    move-object/from16 v38, v7
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    if-nez v7, :label_4f6e
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    if-nez v7, :label_4f69
    move-object/from16 v6, v37
    :label_4f63
    const/4 v7, 0x0
    const/16 v23, 0x0
    const/16 v52, 0x0
    goto :label_4f7e
    :label_4f69
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    goto :label_4f63
    :label_4f6e
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    move-object/from16 v52, v6
    invoke-static/range {v52 .. v52}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D
    move-result-wide v6
    double-to-int v6, v6
    move/from16 v23, v6
    move-object/from16 v6, v37
    const/4 v7, 0x0
    :label_4f7e
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    move/from16 v37, v23
    move-object/from16 v53, v52
    move-object/from16 v52, v6
    move v6, v7
    :label_4f87
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    move-object/from16 v61, v3
    move-object/from16 v60, v5
    move-object/from16 v83, v9
    move/from16 v58, v15
    move-object/from16 v88, v32
    move-object/from16 v15, v53
    const/4 v5, 0x0
    const/4 v7, 0x0
    const/4 v9, 0x0
    move-object/from16 v53, v11
    move-object/from16 v32, v13
    move-object/from16 v13, v52
    const/4 v11, 0x0
    move-object/from16 v52, v8
    move-object/from16 v8, v38
    move-object/from16 v38, v16
    move/from16 v16, v37
    move/from16 v37, v29
    move/from16 v29, v6
    goto/16 :label_4c44
    :label_4fad
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v68, v11
    const/16 v11, 0x12
    if-eq v3, v11, :label_500b
    const/16 v11, 0x16
    if-eq v3, v11, :label_5002
    const/16 v11, 0xb
    if-eq v3, v11, :label_4ff9
    const/16 v11, 0x19
    if-eq v3, v11, :label_4ff0
    const/16 v11, 0x9
    if-eq v3, v11, :label_4fe7
    const/4 v11, 0x6
    if-eq v3, v11, :label_4fde
    const-string v3, "telegram_theme"
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_4fd5
    :label_4fd0
    move-object/from16 v89, v32
    move-object/from16 v3, v101
    goto :label_5014
    :label_4fd5
    sget v0, Lorg/telegram/messenger/R$string;->ColorTheme:I
    const-string v3, "ColorTheme"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_4fde
    sget v0, Lorg/telegram/messenger/R$string;->ChatBackground:I
    const-string v3, "ChatBackground"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_4fe7
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoChat:I
    const-string v3, "VoipGroupVideoChat"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_4ff0
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVoiceChat:I
    const-string v3, "VoipGroupVoiceChat"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_4ff9
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I
    const-string v3, "VoipChannelVoiceChat"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_5002
    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I
    const-string v3, "BoostGroup"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_500b
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I
    const-string v3, "BoostChannel"
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v32
    goto :label_4fd0
    :label_5014
    if-nez v3, :label_5017
    goto :label_5019
    :label_5017
    const/16 v38, 0x0
    :label_5019
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget-boolean v11, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v11, :label_5022
    goto :label_5023
    :label_5022
    const/4 v0, 0x0
    :label_5023
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    move-object/from16 v32, v3
    const/16 v3, 0x11
    if-eq v11, v3, :label_502d
    :label_502b
    move v3, v0
    goto :label_5033
    :label_502d
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    goto :label_502b
    :label_5033
    sub-int v92, v37, v3
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    if-eqz v11, :label_503c
    goto :label_5043
    :label_503c
    if-nez v13, :label_503f
    goto :label_5043
    :label_503f
    const/4 v11, 0x1
    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V
    :label_5043
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->N:Lsf/a;
    move/from16 v37, v0
    iget v0, v11, Lsf/a;->k:I
    move/from16 v59, v0
    add-int v0, v59, v37
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    move/from16 v37, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int v0, v59, v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    move/from16 v59, v0
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->O:Lsf/c;
    iget v0, v0, Lsf/c;->l:I
    move/from16 v70, v0
    add-int v0, v70, v37
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int v0, v70, v59
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v11, Lsf/a;->l:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->O:Lsf/c;
    iget v4, v4, Lsf/c;->m:I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    const/16 v93, 0x3
    if-nez v89, :label_508c
    move-object/from16 v59, v1
    move/from16 v74, v3
    move/from16 v80, v12
    move-object/from16 v70, v13
    move-object/from16 v37, v89
    move/from16 v7, v92
    :label_5087
    move/from16 v3, v93
    const/4 v1, 0x0
    goto/16 :label_526d
    :label_508c
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-interface/range {v89 .. v89}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    :label_5096
    add-float v0, v0, v39
    int-to-float v7, v7
    add-float/2addr v0, v7
    move-object v11, v1
    float-to-double v0, v0
    :label_509c
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v0
    double-to-int v0, v0
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    :label_50a3
    if-eqz v1, :label_50dd
    :label_50a5
    sget-object v90, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    :label_50a7
    sub-int v0, v92, v33
    sub-int v0, v0, v28
    const/16 v94, 0x1
    move/from16 v91, v92
    move/from16 v92, v0
    :label_50b1
    invoke-static/range {v89 .. v94}, Lorg/telegram/ui/Cells/u1;->u2(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;
    move-result-object v0
    :label_50b5
    move/from16 v7, v91
    move/from16 v1, v93
    :label_50b9
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    :label_50bf
    rsub-int/lit8 v93, v0, 0x3
    move-object/from16 v37, v89
    goto :label_50ff
    :label_50c4
    move-exception v0
    move/from16 v93, v1
    :label_50c7
    move/from16 v74, v3
    move-object/from16 v59, v11
    move/from16 v80, v12
    move-object/from16 v70, v13
    move-object/from16 v37, v89
    goto/16 :label_5268
    :label_50d3
    move-exception v0
    move/from16 v7, v91
    :label_50d6
    move/from16 v1, v93
    goto :label_50c7
    :label_50d9
    move-exception v0
    move/from16 v7, v92
    goto :label_50d6
    :label_50dd
    move-object/from16 v90, v89
    move/from16 v7, v92
    move/from16 v1, v93
    :label_50e3
    new-instance v89, Landroid/text/StaticLayout;
    sget-object v91, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I
    move-result v92
    sget-object v93, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v95, 0x0
    const/16 v96, 0x0
    const/high16 v94, 0x3f800000
    invoke-direct/range {v89 .. v96}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :label_50f6
    move-object/from16 v0, v89
    move-object/from16 v37, v90
    :label_50fa
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    :label_50fc
    move/from16 v93, v1
    const/4 v1, 0x0
    :label_50ff
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I
    move-result v0
    int-to-float v0, v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    :label_5108
    move-object/from16 v59, v11
    const/4 v11, 0x0
    :label_510b
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    const/4 v0, 0x0
    :label_510e
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v11
    if-lt v0, v11, :label_51d9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v11
    const/16 v86, 0x1
    add-int/lit8 v11, v11, -0x1
    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v0
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_512e
    move-object/from16 v70, v13
    const/4 v0, 0x0
    const/4 v11, 0x0
    :label_5132
    iget-object v13, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v13
    :label_5138
    if-lt v0, v13, :label_5156
    :label_513a
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->z2:I
    add-int/2addr v11, v3
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I
    move-result v4
    const/4 v1, 0x0
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I
    move-result v0
    :label_5146
    move v1, v0
    move/from16 v74, v3
    move/from16 v80, v12
    move/from16 v3, v93
    goto/16 :label_526d
    :label_514f
    move-exception v0
    move/from16 v74, v3
    :label_5152
    move/from16 v80, v12
    goto/16 :label_5268
    :label_5156
    iget-object v13, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v13, v0}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v13
    :label_515c
    move/from16 v71, v4
    const/4 v4, 0x0
    :label_515f
    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F
    move-result v13
    float-to-int v4, v13
    if-nez v4, :label_519e
    if-ge v0, v1, :label_5169
    goto :label_5176
    :label_5169
    if-nez v4, :label_516c
    goto :label_5170
    :label_516c
    iget-boolean v13, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    :label_516e
    if-nez v13, :label_5176
    :label_5170
    move v13, v7
    :label_5171
    move/from16 v74, v3
    move/from16 v79, v4
    goto :label_517d
    :label_5176
    add-int v13, v33, v28
    sub-int v92, v7, v13
    move/from16 v13, v92
    goto :label_5171
    :label_517d
    int-to-double v3, v13
    :label_517e
    iget-object v13, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v13, v0}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v13
    :label_5184
    move/from16 v80, v12
    float-to-double v12, v13
    :label_5187
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v12
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(DD)D
    move-result-wide v3
    double-to-int v3, v3
    goto :label_51ac
    :label_5191
    move-exception v0
    :label_5192
    move/from16 v4, v71
    goto/16 :label_5268
    :label_5196
    move-exception v0
    :label_5197
    move/from16 v80, v12
    goto :label_5192
    :label_519a
    move-exception v0
    move/from16 v74, v3
    goto :label_5197
    :label_519e
    move/from16 v74, v3
    move/from16 v79, v4
    move/from16 v80, v12
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I
    move-result v3
    sub-int v3, v3, v79
    :label_51ac
    if-ge v0, v1, :label_51af
    goto :label_51b7
    :label_51af
    if-nez v79, :label_51b2
    goto :label_51ba
    :label_51b2
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v4, :label_51b7
    goto :label_51ba
    :label_51b7
    add-int v4, v33, v28
    add-int/2addr v3, v4
    :label_51ba
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I
    move-result v11
    add-int/lit8 v0, v0, 0x1
    move/from16 v4, v71
    move/from16 v3, v74
    move/from16 v12, v80
    goto/16 :label_5132
    :label_51c8
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    goto :label_5152
    :label_51ce
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    :label_51d3
    move/from16 v80, v12
    move-object/from16 v70, v13
    goto/16 :label_5268
    :label_51d9
    move/from16 v74, v3
    move/from16 v71, v4
    move/from16 v80, v12
    move-object/from16 v70, v13
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v3
    float-to-int v3, v3
    if-gtz v0, :label_51eb
    goto :label_5207
    :label_51eb
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    const/16 v20, 0x0
    cmpl-float v4, v4, v20
    if-eqz v4, :label_51f5
    const/4 v4, 0x0
    goto :label_51f6
    :label_51f5
    const/4 v4, 0x1
    :label_51f6
    if-eqz v3, :label_51fa
    const/4 v11, 0x0
    goto :label_51fb
    :label_51fa
    const/4 v11, 0x1
    :label_51fb
    if-ne v4, v11, :label_51fe
    goto :label_5207
    :label_51fe
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I
    move-result v4
    int-to-float v4, v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    :label_5207
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    int-to-float v3, v3
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F
    move-result v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v4
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
    move-result v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    :label_521e
    add-int/lit8 v0, v0, 0x1
    move-object/from16 v13, v70
    move/from16 v4, v71
    move/from16 v3, v74
    move/from16 v12, v80
    goto/16 :label_510e
    :label_522a
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    move-object/from16 v59, v11
    goto :label_51d3
    :label_5232
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    move-object/from16 v59, v11
    move/from16 v80, v12
    move-object/from16 v70, v13
    :label_523d
    move/from16 v93, v1
    goto :label_5268
    :label_5240
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    move-object/from16 v59, v11
    move/from16 v80, v12
    move-object/from16 v70, v13
    move-object/from16 v37, v90
    goto :label_523d
    :label_524e
    move-exception v0
    move/from16 v74, v3
    move/from16 v71, v4
    move-object/from16 v59, v11
    :label_5255
    move/from16 v80, v12
    move-object/from16 v70, v13
    move-object/from16 v37, v89
    move/from16 v7, v92
    move/from16 v1, v93
    goto :label_5268
    :label_5260
    move-exception v0
    move-object/from16 v59, v1
    move/from16 v74, v3
    move/from16 v71, v4
    goto :label_5255
    :label_5268
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto/16 :label_5087
    :label_526d
    if-nez v88, :label_5270
    goto :label_52be
    :label_5270
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->c3:Landroid/text/TextPaint;
    invoke-virtual/range {v88 .. v88}, Ljava/lang/String;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    float-to-double v11, v0
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v11
    double-to-int v0, v11
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->c3:Landroid/text/TextPaint;
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I
    move-result v90
    sget-object v91, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v93, 0x0
    const/16 v94, 0x0
    const/high16 v92, 0x3f800000
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v11, v87
    iput-object v11, v14, Lorg/telegram/ui/Cells/u1;->B2:Landroid/text/StaticLayout;
    const/4 v12, 0x0
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v11
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->C2:F
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->B2:Landroid/text/StaticLayout;
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v11
    int-to-float v11, v11
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->D2:F
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->z2:I
    add-int/2addr v11, v0
    add-int v11, v11, v74
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->z2:I
    add-int/2addr v11, v0
    add-int v11, v11, v74
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I
    move-result v1
    :label_52b9
    goto :label_52be
    :label_52ba
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_52be
    if-nez v8, :label_52c5
    move/from16 v92, v7
    const/4 v7, 0x0
    goto/16 :label_53b6
    :label_52c5
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v0, :label_52ca
    goto :label_52da
    :label_52ca
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v0, v11
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v0, v11
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_52da
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    const/4 v12, 0x0
    invoke-static {v8, v0, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v0
    :label_52e5
    move-object/from16 v90, v0
    goto :label_52ea
    :label_52e8
    move-object/from16 v90, v8
    :label_52ea
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_52f3
    move/from16 v95, v22
    goto :label_52f5
    :label_52f3
    const/16 v95, 0x1
    :label_52f5
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-eqz v0, :label_531e
    sget-object v91, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    :label_52fb
    sub-int v92, v7, v33
    sub-int v93, v92, v28
    move/from16 v94, v3
    move/from16 v92, v7
    :label_5303
    invoke-static/range {v90 .. v95}, Lorg/telegram/ui/Cells/u1;->u2(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;
    move-result-object v0
    :label_5307
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    sub-int v0, v3, v0
    move v7, v3
    move v3, v0
    move v0, v7
    :label_5312
    const/4 v7, 0x0
    goto :label_5337
    :label_5314
    move-exception v0
    move/from16 v3, v94
    goto/16 :label_53b2
    :label_5319
    move-exception v0
    move/from16 v92, v7
    goto/16 :label_53b2
    :label_531e
    move/from16 v92, v7
    sget-object v91, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    move/from16 v94, v92
    move/from16 v93, v0
    invoke-static/range {v90 .. v95}, Lorg/telegram/ui/Components/ay0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFII)Landroid/text/StaticLayout;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    const/4 v0, 0x0
    goto :label_5312
    :label_5337
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->v2:I
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I
    move-result v7
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->w2:I
    const/4 v7, 0x0
    :label_5342
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v11
    if-lt v7, v11, :label_537e
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->v2:I
    add-int v0, v0, v74
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->v2:I
    add-int v0, v0, v74
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    move-result v1
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->w2:I
    :label_535c
    if-nez v0, :label_5360
    const/4 v7, 0x0
    goto :label_5361
    :label_5360
    const/4 v7, 0x1
    :label_5361
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v11
    const/16 v86, 0x1
    add-int/lit8 v11, v11, -0x1
    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v0
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_5379
    goto :label_53b6
    :label_537a
    move-exception v0
    goto :label_53b3
    :label_537c
    move-exception v0
    goto :label_53b2
    :label_537e
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->w2:I
    int-to-float v11, v11
    iget-object v12, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v12
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F
    move-result v11
    float-to-int v11, v11
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->w2:I
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v11
    if-ge v7, v0, :label_5397
    goto :label_53a1
    :label_5397
    iget v12, v14, Lorg/telegram/ui/Cells/u1;->w2:I
    if-nez v12, :label_539c
    goto :label_53a5
    :label_539c
    iget-boolean v12, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v12, :label_53a1
    goto :label_53a5
    :label_53a1
    add-int v12, v33, v28
    int-to-float v12, v12
    add-float/2addr v11, v12
    :label_53a5
    iget v12, v14, Lorg/telegram/ui/Cells/u1;->v2:I
    int-to-float v12, v12
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F
    move-result v11
    float-to-int v11, v11
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->v2:I
    :label_53af
    add-int/lit8 v7, v7, 0x1
    goto :label_5342
    :label_53b2
    const/4 v7, 0x0
    :label_53b3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_53b6
    if-nez v7, :label_53b9
    goto :label_53bd
    :label_53b9
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v0, :label_53c0
    :label_53bd
    move/from16 v95, v92
    goto :label_53c7
    :label_53c0
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int v92, v92, v0
    goto :label_53bd
    :label_53c7
    if-nez v6, :label_53cb
    goto/16 :label_54b1
    :label_53cb
    if-eqz v8, :label_53cf
    goto/16 :label_54b1
    :label_53cf
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v0, :label_53d4
    goto :label_53e4
    :label_53d4
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v0, v7
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v0, v7
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_53e4
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    const/4 v7, 0x0
    invoke-static {v6, v0, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v6
    :label_53ef
    move-object/from16 v93, v6
    const/4 v12, 0x3
    if-eq v3, v12, :label_53f5
    goto :label_53fe
    :label_53f5
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v0, :label_53fc
    :label_53f9
    move-object/from16 v94, v93
    goto :label_541c
    :label_53fc
    if-eqz v38, :label_53f9
    :label_53fe
    sget-object v94, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    :label_5400
    sub-int v0, v95, v33
    sub-int v96, v0, v28
    const/16 v98, 0x1
    move/from16 v97, v3
    :label_5408
    invoke-static/range {v93 .. v98}, Lorg/telegram/ui/Cells/u1;->u2(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;
    move-result-object v0
    :label_540c
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    sub-int/2addr v3, v0
    goto :label_5433
    :label_5414
    move-exception v0
    goto/16 :label_54ae
    :label_5417
    move-exception v0
    move/from16 v3, v97
    goto/16 :label_54ae
    :label_541c
    new-instance v93, Landroid/text/StaticLayout;
    :label_541e
    move/from16 v96, v95
    :label_5420
    sget-object v95, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    sget-object v97, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v99, 0x0
    const/16 v100, 0x0
    const/high16 v98, 0x3f800000
    invoke-direct/range {v93 .. v100}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :label_542d
    move-object/from16 v0, v93
    move/from16 v95, v96
    :label_5431
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    :label_5433
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->u2:I
    const/4 v6, 0x0
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    const/4 v0, 0x0
    :label_543f
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v6
    if-lt v0, v6, :label_546f
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v6
    const/16 v86, 0x1
    add-int/lit8 v6, v6, -0x1
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v0
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v6, v0
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v6, v0
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    add-int v0, v0, v74
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    add-int v0, v0, v74
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    goto :label_54b1
    :label_546f
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v6
    float-to-int v6, v6
    if-gtz v0, :label_5479
    goto :label_5490
    :label_5479
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->u2:I
    if-eqz v7, :label_547f
    const/4 v8, 0x0
    goto :label_5480
    :label_547f
    const/4 v8, 0x1
    :label_5480
    if-eqz v6, :label_5484
    const/4 v7, 0x0
    goto :label_5485
    :label_5484
    const/4 v7, 0x1
    :label_5485
    if-ne v8, v7, :label_5488
    goto :label_5490
    :label_5488
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I
    move-result v7
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    :label_5490
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->u2:I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I
    move-result v6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->u2:I
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    int-to-float v6, v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v7
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F
    move-result v6
    float-to-int v6, v6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->t2:I
    :label_54a8
    add-int/lit8 v0, v0, 0x1
    goto :label_543f
    :label_54ab
    move-exception v0
    move/from16 v95, v96
    :label_54ae
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_54b1
    if-nez v38, :label_54b5
    goto/16 :label_55c6
    :label_54b5
    const/4 v6, 0x0
    :label_54b6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v0, :label_54c2
    goto :label_54d2
    :label_54c2
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v0, v1
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v0, v1
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_54d2
    if-nez v37, :label_54d5
    goto :label_54e5
    :label_54d5
    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v1, "twitter"
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_54e7
    :label_54e5
    const/4 v8, 0x0
    goto :label_54e8
    :label_54e7
    const/4 v8, 0x1
    :label_54e8
    if-nez v52, :label_54f2
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;
    move-object/from16 v87, v0
    goto :label_54f4
    :label_54ef
    move-exception v0
    goto/16 :label_55c3
    :label_54f2
    move-object/from16 v87, v52
    :label_54f4
    invoke-static/range {v87 .. v87}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v8, :label_5507
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    const/4 v12, 0x3
    if-nez v1, :label_5504
    const/16 v92, 0x6
    goto :label_550c
    :label_5504
    const/16 v92, 0x3
    goto :label_550c
    :label_5507
    const/16 v1, 0x64
    move/from16 v92, v1
    const/4 v12, 0x3
    :label_550c
    if-eq v3, v12, :label_550f
    goto :label_5513
    :label_550f
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-eqz v1, :label_5530
    :label_5513
    sget-object v88, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    if-nez v0, :label_5519
    const/4 v0, 0x0
    goto :label_551d
    :label_5519
    mul-int/lit8 v0, v28, 0x2
    add-int v0, v0, v33
    :label_551d
    sub-int v89, v95, v0
    sub-int v0, v95, v33
    mul-int/lit8 v1, v28, 0x2
    sub-int v90, v0, v1
    move/from16 v91, v3
    invoke-static/range {v87 .. v92}, Lorg/telegram/ui/Cells/u1;->u2(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    move/from16 v0, v91
    goto :label_554a
    :label_5530
    sget-object v94, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    move/from16 v97, v95
    move/from16 v96, v0
    move-object/from16 v93, v87
    move/from16 v98, v92
    invoke-static/range {v93 .. v98}, Lorg/telegram/ui/Components/ay0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFII)Landroid/text/StaticLayout;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    const/4 v0, 0x0
    :label_554a
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->qc:Lorg/telegram/ui/Components/x5;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    const/4 v8, 0x1
    new-array v6, v8, [Landroid/text/Layout;
    const/4 v7, 0x0
    aput-object v3, v6, v7
    invoke-static {v7, v14, v7, v1, v6}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/x5;[Landroid/text/Layout;)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->qc:Lorg/telegram/ui/Components/x5;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/16 v86, 0x1
    add-int/lit8 v3, v3, -0x1
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v1
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v3, v1
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v3, v1
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/4 v6, 0x0
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r2:I
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I
    move-result v1
    const/4 v3, 0x0
    const/4 v6, 0x0
    :label_557d
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v7
    if-lt v3, v7, :label_5595
    sub-int/2addr v6, v1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r2:I
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->s2:I
    add-int v0, v0, v74
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v4
    goto :label_55c6
    :label_5595
    int-to-float v1, v1
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v7
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F
    move-result v1
    float-to-int v1, v1
    if-ge v3, v0, :label_55a4
    goto :label_55b0
    :label_55a4
    if-nez v0, :label_55a7
    goto :label_55ae
    :label_55a7
    if-nez v1, :label_55aa
    goto :label_55ae
    :label_55aa
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v7, :label_55b0
    :label_55ae
    const/4 v7, 0x0
    goto :label_55b2
    :label_55b0
    add-int v7, v33, v28
    :label_55b2
    int-to-float v6, v6
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineRight(I)F
    move-result v8
    int-to-float v7, v7
    add-float/2addr v8, v7
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F
    move-result v6
    :label_55bf
    float-to-int v6, v6
    add-int/lit8 v3, v3, 0x1
    goto :label_557d
    :label_55c3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_55c6
    if-nez v29, :label_55c9
    goto :label_55d8
    :label_55c9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    if-eqz v0, :label_55ce
    goto :label_55d8
    :label_55ce
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    if-eqz v0, :label_55d3
    goto :label_55d8
    :label_55d3
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    const/16 v29, 0x0
    :label_55d8
    if-nez v29, :label_55dd
    move/from16 v8, v95
    goto :label_55df
    :label_55dd
    move/from16 v8, v33
    :label_55df
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v3, 0x11
    if-eq v0, v3, :label_5c2a
    if-nez v15, :label_5667
    if-nez v70, :label_561d
    if-nez v9, :label_55fb
    :label_55eb
    move/from16 v28, v2
    move-object/from16 v7, v59
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    goto/16 :label_5c41
    :label_55fb
    iget-object v0, v9, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;
    const-string v1, "image/"
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :label_5608
    move-object v13, v9
    :label_5606
    const/4 v6, 0x0
    goto :label_560a
    :label_5608
    const/4 v13, 0x0
    goto :label_5606
    :label_560a
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->v1:Z
    move/from16 v90, v2
    move-object v9, v13
    move-object/from16 v7, v59
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    goto/16 :label_5cee
    :label_561d
    if-nez v5, :label_5620
    goto :label_5628
    :label_5620
    const-string v0, "photo"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_562a
    :label_5628
    const/4 v0, 0x0
    goto :label_562b
    :label_562a
    const/4 v0, 0x1
    :label_562b
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    if-eqz v0, :label_5630
    goto :label_5636
    :label_5630
    if-eqz v29, :label_5636
    move v3, v8
    :label_5633
    const/16 v86, 0x1
    goto :label_563b
    :label_5636
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v3
    goto :label_5633
    :label_563b
    xor-int/lit8 v0, v0, 0x1
    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->I4:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :label_5652
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    goto :label_565c
    :label_5652
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    const/16 v6, 0x28
    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_565c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eq v0, v1, :label_5663
    goto :label_55eb
    :label_5663
    const/4 v7, 0x0
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :label_55eb
    :label_5667
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_5c04
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z
    move-result v0
    invoke-static {v15, v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v0
    if-nez v0, :label_5b5b
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_5a4c
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-eqz v0, :label_568d
    :label_5683
    move-object/from16 v7, v59
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    goto/16 :label_59f2
    :label_568d
    const/4 v3, 0x1
    invoke-static {v15, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v0
    if-nez v0, :label_5683
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/4 v11, 0x6
    if-eq v0, v11, :label_5962
    const/4 v6, 0x7
    if-eq v0, v6, :label_58e1
    move/from16 v12, v80
    invoke-virtual {v14, v2, v12, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v2
    if-lt v0, v1, :label_56ab
    goto :label_56b2
    :label_56ab
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_56b2
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_5821
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_577e
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v1, 0x43280000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual {v14, v10, v0}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    const/4 v3, 0x1
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->v1:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v0, :label_5751
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v0, :label_56de
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v13, v84
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v0
    goto :label_56e1
    :label_56de
    move-object/from16 v13, v84
    const/4 v0, 0x0
    :label_56e1
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v0, v1
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    int-to-float v0, v0
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    int-to-float v1, v1
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    move-object/from16 v7, v59
    const/4 v11, 0x0
    invoke-virtual {v7, v11, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v1, :label_570e
    const/4 v1, 0x0
    goto :label_570f
    :label_570e
    const/4 v1, -0x4
    :label_570f
    add-int/lit8 v1, v1, 0x40
    int-to-float v1, v1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    const/high16 v63, 0x42480000
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    if-nez v0, :label_5732
    :label_5728
    move/from16 v28, v2
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    goto/16 :label_5c41
    :label_5732
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    const/4 v3, 0x1
    if-gt v0, v3, :label_573a
    goto :label_5728
    :label_573a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->S3:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    sub-int/2addr v0, v3
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    mul-int/2addr v1, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v0, v1
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v0, v1
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    goto :label_5728
    :label_5751
    move-object/from16 v7, v59
    move-object/from16 v13, v84
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v1, 0x42c80000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v0, v1
    int-to-float v0, v0
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    int-to-float v1, v1
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    const/4 v11, 0x0
    invoke-virtual {v7, v11, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    goto :label_5728
    :label_577e
    move-object/from16 v7, v59
    move-object/from16 v13, v84
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual {v14, v10, v0}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    move-result v0
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v1, :label_5798
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v13}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v1
    goto :label_5799
    :label_5798
    const/4 v1, 0x0
    :label_5799
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v1
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v3, v1
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v3, :label_57ab
    const/4 v3, 0x0
    goto :label_57ac
    :label_57ab
    const/4 v3, -0x4
    :label_57ac
    add-int/lit8 v3, v3, 0x38
    int-to-float v3, v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v1
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    const/high16 v3, 0x42700000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v1
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v2, v1
    add-int v0, v0, v74
    const/high16 v1, 0x42bc0000
    invoke-static {v1, v0, v4}, Lorg/telegram/messenger/h4;->b(FII)I
    move-result v0
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->S5:Landroid/text/StaticLayout;
    if-nez v1, :label_57d3
    goto :label_57d9
    :label_57d3
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v1
    if-gtz v1, :label_57dc
    :label_57d9
    move/from16 v3, v74
    goto :label_57f3
    :label_57dc
    int-to-float v0, v0
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->S5:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v1
    move/from16 v3, v74
    int-to-float v4, v3
    add-float/2addr v1, v4
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    add-float/2addr v1, v4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
    move-result v0
    float-to-int v0, v0
    :label_57f3
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->U5:Landroid/text/StaticLayout;
    if-nez v1, :label_57f8
    goto :label_57fe
    :label_57f8
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v1
    if-gtz v1, :label_5800
    :label_57fe
    move v4, v0
    goto :label_5816
    :label_5800
    int-to-float v0, v0
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->U5:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v1
    int-to-float v4, v3
    add-float/2addr v1, v4
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    add-float/2addr v1, v4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
    move-result v0
    float-to-int v0, v0
    goto :label_57fe
    :label_5816
    invoke-virtual {v14, v2, v12, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    :label_5819
    move/from16 v90, v2
    move-object/from16 v6, v68
    :label_581d
    move-object/from16 v1, v70
    goto/16 :label_5cee
    :label_5821
    move-object/from16 v7, v59
    move/from16 v3, v74
    move-object/from16 v13, v84
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual {v14, v10, v0}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v0, :label_583c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v0
    goto :label_583d
    :label_583c
    const/4 v0, 0x0
    :label_583d
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->m2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v1, :label_5855
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-nez v1, :label_5853
    const/4 v1, 0x0
    goto :label_5857
    :label_5853
    const/4 v1, -0x4
    goto :label_5857
    :label_5855
    move/from16 v1, v22
    :label_5857
    const/16 v6, 0x2c
    add-int/2addr v6, v1
    int-to-float v1, v6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v1, :label_586a
    const/4 v1, 0x0
    goto :label_586c
    :label_586a
    move/from16 v1, v22
    :label_586c
    add-int/lit8 v1, v1, 0x2c
    int-to-float v1, v1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v2, v0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_58af
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v1, :label_5890
    if-nez v26, :label_588d
    const/4 v1, 0x0
    goto :label_5892
    :label_588d
    const/high16 v1, 0x42500000
    goto :label_5892
    :label_5890
    const/high16 v1, 0x428e0000
    :label_5892
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    const/high16 v1, 0x435c0000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    move-result v0
    const/high16 v1, 0x41f00000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    add-int/2addr v0, v3
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    :label_58ad
    move v4, v0
    goto :label_58dc
    :label_58af
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v1, :label_58be
    if-nez v26, :label_58bb
    const/4 v1, 0x0
    goto :label_58c0
    :label_58bb
    const/high16 v1, 0x42500000
    goto :label_58c0
    :label_58be
    const/high16 v1, 0x428e0000
    :label_58c0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    const/high16 v1, 0x435c0000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    move-result v0
    const/high16 v1, 0x41f00000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    add-int/2addr v0, v3
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :label_58ad
    :label_58dc
    invoke-virtual {v14, v2, v12, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    goto/16 :label_5819
    :label_58e1
    move-object/from16 v7, v59
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v1, 0x2bc
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :label_58fc
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    goto :label_5906
    :label_58fc
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v6, 0x28
    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_5906
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_590e
    :label_590c
    const/4 v6, 0x0
    goto :label_5950
    :label_590e
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_5913
    goto :label_5918
    :label_5913
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v0, :label_5918
    goto :label_590c
    :label_5918
    const/4 v0, 0x0
    :label_5919
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lt v0, v1, :label_5922
    goto :label_593b
    :label_5922
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v6, :label_5931
    add-int/lit8 v0, v0, 0x1
    goto :label_5919
    :label_5931
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_593b
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_5942
    goto :label_5947
    :label_5942
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v1, :label_5947
    goto :label_590c
    :label_5947
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    goto :label_590c
    :label_5950
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/16 v11, 0x9
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    :label_5958
    move/from16 v90, v2
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    :label_595e
    const/16 v29, 0x0
    goto/16 :label_5cee
    :label_5962
    move-object/from16 v7, v59
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v1, 0x140
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    if-nez v0, :label_5979
    goto :label_59ba
    :label_5979
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_597e
    goto :label_5983
    :label_597e
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v0, :label_5983
    goto :label_59ba
    :label_5983
    const/4 v0, 0x0
    :label_5984
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lt v0, v1, :label_598d
    goto :label_59a6
    :label_598d
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v6, :label_599c
    add-int/lit8 v0, v0, 0x1
    goto :label_5984
    :label_599c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_59a6
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_59ad
    goto :label_59b2
    :label_59ad
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v1, :label_59b2
    goto :label_59ba
    :label_59b2
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    :label_59ba
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    move/from16 v1, v19
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;
    move-result-object v0
    sget-object v1, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v1
    move-object/from16 v88, v0
    float-to-double v0, v1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v0
    double-to-int v0, v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    sget-object v91, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v93, 0x0
    const/16 v94, 0x0
    const/high16 v92, 0x3f800000
    move/from16 v90, v0
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v87
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    goto/16 :label_5958
    :label_59f2
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v1, 0x5a
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    if-nez v0, :label_5a01
    goto :label_5a42
    :label_5a01
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_5a06
    goto :label_5a0b
    :label_5a06
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v0, :label_5a0b
    goto :label_5a42
    :label_5a0b
    const/4 v0, 0x0
    :label_5a0c
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lt v0, v1, :label_5a15
    goto :label_5a2e
    :label_5a15
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v6, :label_5a24
    add-int/lit8 v0, v0, 0x1
    goto :label_5a0c
    :label_5a24
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_5a2e
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v1, :label_5a35
    goto :label_5a3a
    :label_5a35
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v1, :label_5a3a
    goto :label_5a42
    :label_5a3a
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    :label_5a42
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    const/4 v11, 0x6
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    goto/16 :label_5958
    :label_5a4c
    move-object/from16 v7, v59
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    if-nez v68, :label_5a7f
    if-nez v70, :label_5a5f
    move/from16 v28, v2
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    goto :label_5a9e
    :label_5a5f
    move-object/from16 v1, v70
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v6
    const/4 v11, 0x1
    invoke-static {v0, v6, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v6, 0x28
    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    move/from16 v28, v2
    move-object/from16 v6, v68
    goto :label_5a9e
    :label_5a7f
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    const/4 v11, 0x1
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    move/from16 v28, v2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v2
    invoke-static {v0, v2, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v2, 0x28
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v6, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    :label_5a9e
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :label_5aa3
    goto :label_5ab9
    :label_5aa3
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v2, 0x140
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v2, 0x28
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    :label_5ab9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eq v0, v2, :label_5ac1
    const/4 v2, 0x0
    goto :label_5ac4
    :label_5ac1
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_5ac4
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v11, :label_5acb
    goto :label_5acf
    :label_5acb
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v11, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    :label_5acf
    if-eqz v0, :label_5ad2
    goto :label_5ae4
    :label_5ad2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const-string v2, "s"
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;
    :label_5ae4
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_5aeb
    :label_5ae8
    const/4 v2, 0x0
    goto/16 :label_5b56
    :label_5aeb
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v2, :label_5af0
    goto :label_5afa
    :label_5af0
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-nez v2, :label_5af5
    goto :label_5afa
    :label_5af5
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-nez v0, :label_5afa
    goto :label_5ae8
    :label_5afa
    const/4 v0, 0x0
    :label_5afb
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-lt v0, v2, :label_5b04
    goto :label_5b41
    :label_5b04
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-nez v11, :label_5b13
    add-int/lit8 v0, v0, 0x1
    goto :label_5afb
    :label_5b13
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-nez v11, :label_5b22
    iget v11, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    goto :label_5b41
    :label_5b22
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    int-to-float v0, v0
    const/high16 v63, 0x42480000
    div-float v0, v0, v63
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move/from16 v33, v0
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    int-to-float v0, v0
    div-float v0, v0, v33
    float-to-int v0, v0
    iput v0, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    int-to-float v0, v0
    div-float v0, v0, v33
    float-to-int v0, v0
    iput v0, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_5b41
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v2, :label_5b48
    goto :label_5b4d
    :label_5b48
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v2, :label_5b4d
    goto :label_5ae8
    :label_5b4d
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    goto :label_5ae8
    :label_5b56
    invoke-virtual {v14, v10, v2}, Lorg/telegram/ui/Cells/u1;->m1(Lorg/telegram/messenger/MessageObject;I)I
    goto/16 :label_5c41
    :label_5b5b
    move/from16 v28, v2
    move-object/from16 v7, v59
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGame()Z
    move-result v0
    if-eqz v0, :label_5b72
    :label_5b6f
    move/from16 v2, v39
    goto :label_5b82
    :label_5b72
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z
    move-result v0
    if-nez v0, :label_5b7b
    :label_5b78
    move/from16 v2, v39
    goto :label_5b80
    :label_5b7b
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_5b78
    goto :label_5b6f
    :label_5b80
    iput v2, v10, Lorg/telegram/messenger/MessageObject;->gifState:F
    :label_5b82
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->gifState:F
    cmpl-float v0, v0, v2
    if-nez v0, :label_5b8a
    const/4 v0, 0x0
    goto :label_5b8b
    :label_5b8a
    const/4 v0, 0x1
    :label_5b8b
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v11, 0x5a
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_5baa
    if-nez v1, :label_5b9d
    goto :label_5bac
    :label_5b9d
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v11, 0x5a
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    goto :label_5bac
    :label_5baa
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    :label_5bac
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_5bb1
    goto :label_5bfe
    :label_5bb1
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-eqz v11, :label_5bb6
    goto :label_5bc0
    :label_5bb6
    iget v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v11, :label_5bbb
    goto :label_5bc0
    :label_5bbb
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v0, :label_5bc0
    goto :label_5bfe
    :label_5bc0
    const/4 v0, 0x0
    :label_5bc1
    iget-object v11, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v11
    if-lt v0, v11, :label_5bca
    goto :label_5bea
    :label_5bca
    iget-object v11, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-eqz v2, :label_5bd7
    goto :label_5be0
    :label_5bd7
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-nez v2, :label_5be0
    add-int/lit8 v0, v0, 0x1
    const/high16 v2, 0x3f800000
    goto :label_5bc1
    :label_5be0
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_5bea
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v2, :label_5bf1
    goto :label_5bf6
    :label_5bf1
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v2, :label_5bf6
    goto :label_5bfe
    :label_5bf6
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    :label_5bfe
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v2, 0x2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    goto :label_5c41
    :label_5c04
    move/from16 v28, v2
    move-object/from16 v7, v59
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v2, 0x5a
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    iput-object v15, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v2, 0x0
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    const/4 v2, 0x7
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    move/from16 v90, v28
    goto/16 :label_595e
    :label_5c2a
    move/from16 v28, v2
    move-object/from16 v7, v59
    move-object/from16 v6, v68
    move-object/from16 v1, v70
    move/from16 v3, v74
    move/from16 v12, v80
    move-object/from16 v13, v84
    if-nez v61, :label_5c3b
    goto :label_5c41
    :label_5c3b
    move-object/from16 v2, v61
    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-nez v0, :label_5c45
    :label_5c41
    move/from16 v90, v28
    goto/16 :label_5cee
    :label_5c45
    int-to-float v11, v8
    mul-float v11, v11, v31
    div-float v11, v11, v46
    float-to-int v11, v11
    move-object/from16 v70, v1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v1, :label_5c76
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-nez v0, :label_5c57
    goto/16 :label_5ce4
    :label_5c57
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    invoke-static {v1, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :label_5c68
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    goto :label_5c72
    :label_5c68
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v11, 0x28
    invoke-static {v1, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_5c72
    move-object/from16 v70, v0
    goto/16 :label_5ce4
    :label_5c76
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :label_5c87
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    goto :label_5c91
    :label_5c87
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v11, 0x28
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_5c91
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_5c96
    goto :label_5ce1
    :label_5c96
    iget v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v11, :label_5c9b
    goto :label_5ca0
    :label_5c9b
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v0, :label_5ca0
    goto :label_5ce1
    :label_5ca0
    const/4 v0, 0x0
    :label_5ca1
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v11
    if-lt v0, v11, :label_5caa
    goto :label_5cc3
    :label_5caa
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v15, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v15, :label_5cb9
    add-int/lit8 v0, v0, 0x1
    goto :label_5ca1
    :label_5cb9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v15, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_5cc3
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v11, :label_5cca
    goto :label_5ccf
    :label_5cca
    iget v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    if-eqz v11, :label_5ccf
    goto :label_5ce1
    :label_5ccf
    invoke-static/range {v55 .. v55}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    int-to-float v11, v11
    div-float v11, v11, v46
    mul-float v11, v11, v31
    float-to-int v11, v11
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    :label_5ce1
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    move-object v15, v1
    :label_5ce4
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    const/16 v1, 0xa
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    move/from16 v90, v28
    goto/16 :label_581d
    :label_5cee
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v2, 0x5
    if-ne v0, v2, :label_5cf4
    goto :label_5cfb
    :label_5cf4
    const/4 v11, 0x3
    if-ne v0, v11, :label_5cf8
    goto :label_5cfb
    :label_5cf8
    const/4 v11, 0x1
    if-ne v0, v11, :label_5d1e
    :label_5cfb
    move-object v1, v7
    move-object v9, v10
    move v6, v12
    move-object v11, v13
    move/from16 v3, v22
    move/from16 v22, v31
    move-object/from16 v5, v53
    move/from16 v15, v58
    move/from16 v12, v66
    move-object/from16 v13, v76
    move-object/from16 v103, v83
    move/from16 v2, v90
    const/4 v0, 0x1
    const/high16 v8, 0x3f800000
    const/high16 v51, 0x41f80000
    const/16 v53, 0xa
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    goto/16 :label_68dc
    :label_5d1e
    if-nez v32, :label_672b
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :label_5d26
    goto/16 :label_5d8e
    :label_5d26
    if-eqz v9, :label_5d2a
    goto/16 :label_5d8e
    :label_5d2a
    const/16 v11, 0x8
    if-ne v0, v11, :label_5d30
    goto/16 :label_5d8e
    :label_5d30
    const/16 v11, 0x9
    if-ne v0, v11, :label_5d35
    goto :label_5d8e
    :label_5d35
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v11, 0x17
    if-ne v0, v11, :label_5d3c
    goto :label_5d48
    :label_5d3c
    const/16 v11, 0x18
    if-ne v0, v11, :label_5d41
    goto :label_5d48
    :label_5d41
    const/16 v11, 0x1c
    if-eq v0, v11, :label_5d48
    :label_5d45
    const-wide/16 v17, 0x0
    goto :label_5d52
    :label_5d48
    if-nez v60, :label_5d4b
    goto :label_5d45
    :label_5d4b
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_5d45
    goto :label_5d8e
    :label_5d52
    cmp-long v0, v35, v17
    if-nez v0, :label_5d8e
    const/4 v11, 0x0
    invoke-virtual {v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    invoke-static/range {v53 .. v53}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    sub-int/2addr v0, v1
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    move-object v1, v7
    move-object v9, v10
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v5, v53
    move/from16 v15, v58
    move/from16 v6, v62
    move-object/from16 v13, v76
    move-object/from16 v103, v83
    const/4 v0, 0x1
    const/high16 v8, 0x3f800000
    const/16 v11, 0xa
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    goto/16 :label_67bb
    :label_5d8e
    if-nez v1, :label_5d91
    goto :label_5d94
    :label_5d91
    if-nez v29, :label_5d94
    goto :label_5dc5
    :label_5d94
    if-nez v5, :label_5d97
    goto :label_5dc3
    :label_5d97
    const-string v0, "photo"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_5da0
    goto :label_5dc5
    :label_5da0
    const-string v0, "document"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_5da9
    goto :label_5daf
    :label_5da9
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v11, 0x6
    if-eq v0, v11, :label_5daf
    goto :label_5dc5
    :label_5daf
    const-string v0, "gif"
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_5db8
    goto :label_5dc5
    :label_5db8
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    move/from16 v11, v22
    if-ne v0, v11, :label_5dbf
    goto :label_5dc5
    :label_5dbf
    const/16 v11, 0x8
    if-eq v0, v11, :label_5dc5
    :label_5dc3
    const/4 v0, 0x0
    goto :label_5dc6
    :label_5dc5
    const/4 v0, 0x1
    :label_5dc6
    iput-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->v1:Z
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v0, :label_5dcd
    goto :label_5dd0
    :label_5dcd
    const/4 v11, 0x0
    iput-boolean v11, v14, Lorg/telegram/ui/Cells/u1;->v1:Z
    :label_5dd0
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v0, :label_5dd7
    :label_5dd4
    const-wide/16 v17, 0x0
    goto :label_5de8
    :label_5dd7
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v11, v0
    iput v11, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_5dd4
    :label_5de8
    cmp-long v0, v35, v17
    if-nez v0, :label_5e3a
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    if-nez v11, :label_5e33
    iget-object v11, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;
    if-nez v2, :label_5df7
    goto :label_5dfb
    :label_5df7
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    if-nez v2, :label_5e31
    :label_5dfb
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v11, 0x6
    if-ne v2, v11, :label_5e01
    goto :label_5e1c
    :label_5e01
    const/16 v11, 0x8
    if-ne v2, v11, :label_5e06
    goto :label_5e1c
    :label_5e06
    const/16 v11, 0x9
    if-eq v2, v11, :label_5e1c
    const/4 v11, 0x7
    if-eq v2, v11, :label_5e15
    const/16 v11, 0xa
    if-eq v2, v11, :label_5e12
    goto :label_5e40
    :label_5e12
    div-int/lit8 v8, v8, 0x2
    goto :label_5e40
    :label_5e15
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I
    const/4 v2, 0x1
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V
    goto :label_5e40
    :label_5e1c
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v2
    if-nez v2, :label_5e2c
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v2
    :label_5e26
    int-to-float v2, v2
    const/high16 v8, 0x3f000000
    mul-float/2addr v2, v8
    float-to-int v8, v2
    goto :label_5e40
    :label_5e2c
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v2
    goto :label_5e26
    :label_5e31
    move v8, v2
    goto :label_5e40
    :label_5e33
    const/high16 v2, 0x43500000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    goto :label_5e40
    :label_5e3a
    const/high16 v2, 0x42340000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    :label_5e40
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v2, :label_5e45
    goto :label_5e51
    :label_5e45
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->textWidth:I
    if-lt v8, v2, :label_5e4a
    goto :label_5e51
    :label_5e4a
    const/high16 v8, 0x41b00000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    add-int/2addr v8, v2
    :label_5e51
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v2, :label_5e57
    const/4 v2, 0x0
    goto :label_5e5b
    :label_5e57
    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_5e5b
    sub-int v2, v8, v2
    add-int/2addr v2, v3
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I
    move-result v38
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_5e6e
    if-nez v9, :label_5e6a
    const/4 v3, -0x1
    goto :label_5e78
    :label_5e6a
    const/4 v3, -0x1
    iput v3, v9, Lorg/telegram/messenger/WebFile;->size:I
    goto :label_5e78
    :label_5e6e
    const/4 v3, -0x1
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_5e76
    goto :label_5e78
    :label_5e76
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    :label_5e78
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    if-nez v2, :label_5e7d
    goto :label_5e87
    :label_5e7d
    const/high16 v2, 0x41500000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v2, v38, v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->l3:I
    :label_5e87
    if-eqz v29, :label_5e8c
    :label_5e89
    const/4 v3, 0x1
    goto/16 :label_5f52
    :label_5e8c
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v11, 0x7
    if-eq v2, v11, :label_5e89
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v2, :label_5e97
    goto/16 :label_5f1a
    :label_5e97
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v2, :label_5f1a
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    if-eq v2, v11, :label_5eae
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_5ea9
    const/16 v2, 0x1e
    move v4, v2
    move/from16 v2, v47
    goto :label_5eb7
    :label_5ea9
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    goto :label_5eb7
    :label_5eae
    const/16 v2, 0x230
    const/16 v4, 0x2a6
    move/from16 v107, v4
    move v4, v2
    move/from16 v2, v107
    :label_5eb7
    int-to-float v4, v4
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    sub-int/2addr v8, v11
    int-to-float v8, v8
    div-float v8, v4, v8
    div-float/2addr v4, v8
    float-to-int v4, v4
    int-to-float v2, v2
    div-float/2addr v2, v8
    float-to-int v2, v2
    if-nez v37, :label_5ec8
    goto :label_5eea
    :label_5ec8
    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v8
    const-string v11, "instagram"
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :label_5ed9
    goto :label_5edd
    :label_5ed9
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    if-eqz v8, :label_5eea
    :label_5edd
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v8, v8, Landroid/graphics/Point;->y:I
    const/16 v82, 0x2
    div-int/lit8 v8, v8, 0x2
    if-gt v2, v8, :label_5ee8
    goto :label_5ef4
    :label_5ee8
    move v2, v8
    goto :label_5ef4
    :label_5eea
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v8, v8, Landroid/graphics/Point;->y:I
    const/16 v21, 0x3
    div-int/lit8 v8, v8, 0x3
    if-gt v2, v8, :label_5ee8
    :label_5ef4
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    if-nez v8, :label_5efa
    :label_5ef8
    move v8, v2
    goto :label_5f0a
    :label_5efa
    int-to-float v2, v2
    const/high16 v8, 0x43200000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    int-to-float v8, v8
    div-float v8, v2, v8
    int-to-float v4, v4
    div-float/2addr v4, v8
    float-to-int v4, v4
    div-float/2addr v2, v8
    float-to-int v2, v2
    goto :label_5ef8
    :label_5f0a
    const/high16 v2, 0x42700000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    if-lt v8, v2, :label_5f13
    goto :label_5f56
    :label_5f13
    const/high16 v2, 0x42700000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    goto :label_5f56
    :label_5f1a
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v2, :label_5f23
    :label_5f1e
    const/16 v2, 0x280
    const/16 v4, 0x168
    goto :label_5f41
    :label_5f23
    iget-object v2, v9, Lorg/telegram/messenger/WebFile;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v4, 0x0
    :label_5f2a
    if-lt v4, v2, :label_5f2d
    goto :label_5f1e
    :label_5f2d
    iget-object v11, v9, Lorg/telegram/messenger/WebFile;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    if-nez v3, :label_5f3d
    add-int/lit8 v4, v4, 0x1
    const/4 v3, -0x1
    goto :label_5f2a
    :label_5f3d
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    :label_5f41
    int-to-float v2, v2
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v8, v3
    int-to-float v3, v8
    div-float v3, v2, v3
    div-float/2addr v2, v3
    float-to-int v8, v2
    int-to-float v2, v4
    div-float/2addr v2, v3
    float-to-int v2, v2
    move v4, v8
    move v8, v2
    goto :label_5f56
    :label_5f52
    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V
    move v4, v8
    :label_5f56
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-nez v2, :label_5f6c
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    move/from16 v3, v62
    invoke-static {v3, v8, v2}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v2, v8
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    move/from16 v3, v69
    goto :label_5f9b
    :label_5f6c
    move/from16 v3, v62
    const/high16 v63, 0x42480000
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v11, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-gt v2, v11, :label_5f7b
    move/from16 v3, v69
    goto :label_5f92
    :label_5f7b
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    sub-int/2addr v11, v3
    move/from16 v3, v69
    invoke-static {v3, v11, v2}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    :label_5f92
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    sub-int/2addr v2, v11
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    :label_5f9b
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/16 v11, 0x8
    if-eq v2, v11, :label_5fa2
    goto :label_5fa6
    :label_5fa2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->k3:I
    if-eqz v2, :label_5fad
    :label_5fa6
    int-to-float v2, v4
    int-to-float v11, v8
    const/4 v3, 0x0
    invoke-virtual {v7, v3, v3, v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    goto :label_5fbf
    :label_5fad
    const/4 v3, 0x0
    const/high16 v2, 0x41500000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int v2, v38, v2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I
    move-result v2
    int-to-float v2, v2
    int-to-float v11, v8
    invoke-virtual {v7, v3, v3, v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_5fbf
    int-to-float v2, v4
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v2, v3
    float-to-int v2, v2
    int-to-float v4, v8
    div-float/2addr v4, v3
    float-to-int v3, v4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    move-object/from16 v4, v76
    invoke-static {v2, v3, v4}, Lu8/a;->d(IILjava/lang/String;)Ljava/lang/String;
    move-result-object v8
    iput-object v8, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, "_b"
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    iput-object v8, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    if-nez v0, :label_6611
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v11, 0x17
    if-ne v0, v11, :label_5ff3
    goto :label_5ffd
    :label_5ff3
    const/16 v11, 0x18
    if-ne v0, v11, :label_5ff8
    goto :label_5ffd
    :label_5ff8
    const/16 v8, 0x1c
    if-eq v0, v8, :label_5ffd
    goto :label_6006
    :label_5ffd
    if-nez v60, :label_6000
    goto :label_6006
    :label_6000
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_65b2
    :label_6006
    if-nez v9, :label_6589
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/16 v11, 0x8
    if-eq v0, v11, :label_653e
    const/16 v11, 0x9
    if-eq v0, v11, :label_64f0
    const/16 v8, 0xa
    if-eq v0, v8, :label_6436
    const/4 v9, 0x6
    if-eq v0, v9, :label_639a
    const/4 v1, 0x4
    if-eq v0, v1, :label_6287
    const/4 v1, 0x2
    if-ne v0, v1, :label_603a
    move-object/from16 v76, v4
    move-object v6, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/4 v5, 0x1
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v79, -0x1
    const/high16 v80, 0x3f800000
    goto/16 :label_615a
    :label_603a
    const/4 v6, 0x7
    if-eq v0, v6, :label_6141
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    move-result-object v1
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v6, :label_6064
    :label_6049
    move-object/from16 v76, v4
    move-object v15, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/4 v4, 0x0
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v79, -0x1
    const/high16 v80, 0x3f800000
    goto/16 :label_611e
    :label_6064
    if-eqz v0, :label_6067
    goto :label_6049
    :label_6067
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-eqz v0, :label_6074
    goto :label_6049
    :label_6074
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :label_607f
    goto :label_6049
    :label_607f
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-nez v0, :label_6105
    const/4 v15, 0x1
    iput-boolean v15, v14, Lorg/telegram/ui/Cells/u1;->Z4:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :label_608f
    goto :label_60b1
    :label_608f
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :label_60b1
    const/4 v1, 0x0
    invoke-virtual {v7, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    move-object v11, v5
    move-object v1, v7
    move/from16 v78, v9
    move-object v9, v10
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move/from16 v15, v58
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    move-object v13, v4
    goto/16 :label_6634
    :label_60b1
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "_b"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    move/from16 v78, v9
    const/4 v9, 0x0
    move/from16 v75, v11
    const/4 v11, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    move-object/from16 v28, v7
    move/from16 v74, v8
    const-wide/16 v7, 0x0
    move-object/from16 v76, v4
    move-object v15, v5
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v79, -0x1
    const/high16 v80, 0x3f800000
    move-object v4, v0
    move-object v5, v1
    move-object/from16 v1, v28
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    move-object/from16 v9, v110
    :label_60fc
    move-object/from16 v104, v13
    move-object v11, v15
    move/from16 v15, v58
    move-object/from16 v13, v76
    goto/16 :label_6634
    :label_6105
    move-object/from16 v76, v4
    move-object v15, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v79, -0x1
    const/high16 v80, 0x3f800000
    const/4 v4, 0x0
    :label_611e
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->Z4:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v9, 0x0
    const/4 v11, 0x0
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    move-object v9, v10
    goto :label_60fc
    :label_6141
    move-object/from16 v76, v4
    move-object v6, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v79, -0x1
    const/high16 v80, 0x3f800000
    const/4 v5, 0x1
    :label_615a
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_617c
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z
    move-result v0
    invoke-static {v15, v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v0
    if-nez v0, :label_6170
    const/4 v0, 0x1
    const/4 v9, 0x0
    goto :label_6190
    :label_6170
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v9
    const/4 v0, 0x1
    goto :label_6190
    :label_617c
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I
    const/16 v82, 0x2
    div-int/lit8 v0, v0, 0x2
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v9
    const/4 v0, 0x0
    :label_6190
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isHiddenSensitive()Z
    move-result v2
    if-nez v2, :label_6199
    goto :label_619a
    :label_6199
    const/4 v9, 0x0
    :label_619a
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-eqz v3, :label_61a1
    goto :label_61b0
    :label_61a1
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    const-string v3, "s"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :label_61b0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    :label_61ad
    move-object/from16 v32, v2
    goto :label_61b3
    :label_61b0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    goto :label_61ad
    :label_61b3
    iget-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-eqz v2, :label_61b8
    goto :label_61bb
    :label_61b8
    if-nez v9, :label_61bb
    goto :label_61c1
    :label_61bb
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v2, :label_61e5
    :label_61c1
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v31
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const/16 v35, 0x0
    const/16 v37, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    const-wide/16 v33, 0x0
    move-object/from16 v28, v1
    move-object/from16 v36, v2
    invoke-virtual/range {v28 .. v37}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    move-object v15, v6
    move/from16 v80, v12
    move-object/from16 v104, v13
    move-object/from16 v105, v76
    goto/16 :label_627b
    :label_61e5
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->m7:Z
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;
    move-result-object v2
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-eqz v3, :label_61f1
    goto :label_6203
    :label_61f1
    if-nez v2, :label_61f4
    goto :label_6203
    :label_61f4
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :label_61ff
    :label_61f8
    move/from16 v80, v12
    move-object/from16 v104, v13
    move-object/from16 v105, v76
    goto :label_623e
    :label_61ff
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v3, :label_61f8
    :label_6203
    invoke-static {v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-wide v3, v15, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const-wide/32 v7, 0x8000
    cmp-long v3, v3, v7
    if-ltz v3, :label_6213
    const-string v3, "g"
    goto :label_6214
    :label_6213
    const/4 v3, 0x0
    :label_6214
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v5, v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v5
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v15, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const/4 v11, 0x0
    move-object/from16 v84, v13
    const/4 v13, 0x0
    move-object v15, v6
    move/from16 v80, v12
    move-object/from16 v105, v76
    move-object/from16 v104, v84
    move-object/from16 v12, v110
    move-object v6, v5
    move-object/from16 v5, v32
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_627b
    :label_623e
    invoke-static {v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v3
    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const-wide/32 v7, 0x8000
    cmp-long v4, v4, v7
    if-ltz v4, :label_624e
    const-string v13, "g"
    goto :label_624f
    :label_624e
    const/4 v13, 0x0
    :label_624f
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_625b
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :label_625b
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v5, :label_6269
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    move-object v7, v5
    goto :label_626b
    :label_6269
    move-object/from16 v7, v32
    :label_626b
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-wide v9, v15, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const/4 v11, 0x0
    move-object v15, v6
    move-object v6, v2
    move-object v2, v3
    move-object v3, v13
    const/4 v13, 0x0
    const/4 v5, 0x0
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_627b
    move-object/from16 v9, v110
    move v8, v0
    move-object v11, v15
    move/from16 v15, v58
    move/from16 v12, v80
    move-object/from16 v13, v105
    goto/16 :label_6635
    :label_6287
    move-object/from16 v105, v4
    move-object v15, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v80, v12
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/4 v5, 0x1
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-eqz v0, :label_62ab
    goto :label_6302
    :label_62ab
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isHiddenSensitive()Z
    move-result v0
    if-eqz v0, :label_62b4
    goto :label_6302
    :label_62b4
    if-nez v6, :label_62b7
    goto :label_62c0
    :label_62b7
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v0
    if-nez v0, :label_62c0
    goto :label_6302
    :label_62c0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z
    move-result v0
    if-nez v0, :label_62c7
    goto :label_6302
    :label_62c7
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v2, :label_62ce
    goto :label_6302
    :label_62ce
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v0
    if-nez v0, :label_62d5
    goto :label_62e1
    :label_62d5
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-eqz v2, :label_62dc
    goto :label_62e1
    :label_62dc
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->revealingMediaSpoilers:Z
    if-nez v0, :label_62e1
    goto :label_6302
    :label_62e1
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-eqz v2, :label_62ea
    :label_62e7
    const/4 v5, 0x1
    goto/16 :label_6363
    :label_62ea
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    if-eqz v0, :label_62ef
    goto :label_62e7
    :label_62ef
    invoke-virtual/range {v110 .. v110}, Lorg/telegram/messenger/MessageObject;->canStreamVideo()Z
    move-result v0
    if-nez v0, :label_62f6
    goto :label_6302
    :label_62f6
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_62e7
    :label_6302
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :label_6307
    goto :label_6343
    :label_6307
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :label_6343
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;
    if-eqz v2, :label_631a
    goto :label_6328
    :label_631a
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    const-string v2, "s"
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_6328
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    :label_6326
    move-object v5, v0
    goto :label_632b
    :label_6328
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    goto :label_6326
    :label_632b
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v9, 0x0
    const/4 v11, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_6338
    move-object/from16 v9, v110
    :label_633a
    move-object v11, v15
    move/from16 v15, v58
    move/from16 v12, v80
    move-object/from16 v13, v105
    goto/16 :label_6634
    :label_6343
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v9, 0x0
    const/4 v11, 0x0
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_6338
    :label_6363
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->c5:Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    iget-object v8, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const/4 v11, 0x0
    const/4 v13, 0x0
    const-string v3, "g"
    move-object/from16 v12, v110
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->m7:Z
    move-object v9, v12
    goto :label_633a
    :label_639a
    move-object/from16 v105, v4
    move-object v15, v5
    move-object v1, v7
    move/from16 v78, v9
    move/from16 v80, v12
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/4 v5, 0x1
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    move-object v12, v10
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSticker()Z
    move-result v0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z
    move-result v4
    if-eqz v4, :label_63bf
    goto :label_63c8
    :label_63bf
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z
    move-result v4
    if-nez v4, :label_63c6
    goto :label_63c8
    :label_63c6
    iput v5, v1, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I
    :label_63c8
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z
    move-result v4
    if-eqz v4, :label_63d2
    :label_63ce
    move-object/from16 v13, v105
    const/4 v5, 0x1
    goto :label_640d
    :label_63d2
    if-nez v0, :label_63d5
    goto :label_63db
    :label_63d5
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z
    move-result v0
    if-eqz v0, :label_63ce
    :label_63db
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->stableId:I
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-object/from16 v13, v105
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "_nr_messageId="
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-nez v0, :label_6400
    goto :label_6406
    :label_6400
    invoke-interface {v0, v12}, Lorg/telegram/ui/Cells/l1;->p0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_6408
    :label_6406
    const/4 v10, 0x3
    goto :label_6409
    :label_6408
    const/4 v10, 0x2
    :label_6409
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    goto :label_6410
    :label_640d
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :label_6410
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const-string v8, "webp"
    const/4 v10, 0x1
    const-string v5, "b1"
    move-object v9, v12
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    move-object/from16 v9, v110
    move-object v11, v15
    move/from16 v15, v58
    move/from16 v12, v80
    goto/16 :label_6634
    :label_6436
    move-object v6, v5
    move-object/from16 v28, v7
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    if-nez v15, :label_6474
    if-nez v1, :label_6454
    move-object v15, v6
    move-object/from16 v1, v28
    goto :label_6493
    :label_6454
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    move-object v15, v6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-string v9, "jpg"
    const/4 v11, 0x1
    const-string v5, "b1"
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    move-object/from16 v1, v28
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_6493
    :label_6474
    move-object/from16 v1, v28
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    move-object v15, v6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-string v9, "jpg"
    const/4 v11, 0x1
    const-string v5, "b1"
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_6493
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v0, :label_6498
    goto :label_64a1
    :label_6498
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientTopColor:I
    if-nez v2, :label_649d
    goto :label_64a1
    :label_649d
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientBottomColor:I
    if-nez v0, :label_64dc
    :label_64a1
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :label_64ac
    :label_64a5
    move-object/from16 v9, v110
    move-object v11, v15
    :label_64a8
    move/from16 v15, v58
    goto/16 :label_6634
    :label_64ac
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    if-nez v0, :label_64b3
    goto :label_64a5
    :label_64b3
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    invoke-static {}, Lorg/telegram/ui/ActionBar/n6;->f1()Z
    move-result v2
    invoke-static {v0, v2}, Lzg/i0;->b(Landroid/graphics/Bitmap;Z)[I
    move-result-object v0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->W0:Landroid/graphics/drawable/GradientDrawable;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :label_64cf
    goto :label_64a5
    :label_64cf
    const/16 v23, 0x0
    aget v3, v0, v23
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientTopColor:I
    const/16 v86, 0x1
    aget v0, v0, v86
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientBottomColor:I
    goto :label_64a5
    :label_64dc
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientTopColor:I
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->gradientBottomColor:I
    filled-new-array {v4, v3}, [I
    move-result-object v3
    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->W0:Landroid/graphics/drawable/GradientDrawable;
    goto :label_64a5
    :label_64f0
    move-object v6, v5
    move-object v1, v7
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    instance-of v0, v15, Lorg/telegram/messenger/DocumentObject$ThemeDocument;
    if-nez v0, :label_6528
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    move-object v15, v6
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->f5:Landroid/graphics/drawable/BitmapDrawable;
    const-string v9, "jpg"
    const/4 v11, 0x1
    const-string v5, "b1"
    const-wide/16 v7, 0x0
    move-object/from16 v10, v110
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_64a5
    :label_6528
    move-object v11, v6
    invoke-static {v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    const-string v8, "jpg"
    const/4 v10, 0x1
    const/4 v4, 0x0
    const-string v5, "b1"
    const-wide/16 v6, 0x0
    move-object/from16 v9, v110
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_64a8
    :label_653e
    move-object v11, v5
    move-object v1, v7
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-nez v0, :label_656d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    const-string v8, "jpg"
    const/4 v10, 0x1
    const/4 v2, 0x0
    const/4 v3, 0x0
    const-string v5, "b1"
    const-wide/16 v6, 0x0
    move-object/from16 v9, v110
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_64a8
    :label_656d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v0, v15}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v4
    const-string v8, "jpg"
    const/4 v10, 0x1
    const-string v5, "b1"
    const-wide/16 v6, 0x0
    move-object/from16 v9, v110
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_64a8
    :label_6589
    move-object v11, v5
    move-object v1, v7
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    iget v0, v9, Lorg/telegram/messenger/WebFile;->size:I
    int-to-long v6, v0
    const/4 v8, 0x0
    const/4 v10, 0x1
    const/4 v4, 0x0
    const/4 v5, 0x0
    move-object/from16 v9, v110
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_64a8
    :label_65b2
    move-object v11, v5
    move-object v1, v7
    move-object v9, v10
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    move-object/from16 v3, v60
    if-nez v0, :label_65cf
    goto :label_65d8
    :label_65cf
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/sy0;->c(Ljava/util/ArrayList;)Z
    move-result v0
    if-eqz v0, :label_65d8
    move/from16 v15, v58
    goto :label_6603
    :label_65d8
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    if-nez v0, :label_65dd
    goto :label_65e0
    :label_65dd
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/sy0;->a(Lorg/telegram/ui/Cells/u1;)V
    :label_65e0
    new-instance v0, Lorg/telegram/ui/Components/sy0;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    move/from16 v15, v58
    invoke-direct {v0, v15, v3, v2}, Lorg/telegram/ui/Components/sy0;-><init>(ILjava/util/ArrayList;Z)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-nez v2, :label_65f4
    goto :label_6603
    :label_65f4
    const/4 v2, 0x0
    :label_65f5
    iget v3, v0, Lorg/telegram/ui/Components/sy0;->b:I
    if-ge v2, v3, :label_6603
    iget-object v3, v0, Lorg/telegram/ui/Components/sy0;->c:[Lorg/telegram/ui/Components/s5;
    aget-object v3, v3, v2
    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/s5;->a(Landroid/view/View;)V
    add-int/lit8 v2, v2, 0x1
    goto :label_65f5
    :label_6603
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    if-nez v0, :label_6608
    goto :label_660b
    :label_6608
    invoke-virtual {v0}, Lorg/telegram/ui/Components/sy0;->d()V
    :label_660b
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    goto :label_6634
    :label_6611
    move-object v11, v5
    move-object v1, v7
    move-object v9, v10
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v39, v53
    move/from16 v15, v58
    move-object/from16 v103, v83
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/high16 v69, 0x41000000
    const/16 v73, 0xe
    const/16 v78, 0x6
    move-object v13, v4
    new-instance v0, Lorg/telegram/ui/Components/s5;
    move-wide/from16 v6, v35
    const/4 v5, 0x1
    invoke-direct {v0, v5, v15, v6, v7}, Lorg/telegram/ui/Components/s5;-><init>(IIJ)V
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    :label_6634
    const/4 v8, 0x1
    :label_6635
    invoke-static/range {v39 .. v39}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    if-nez v0, :label_6642
    :label_663e
    move-object/from16 v5, v39
    :label_6640
    const/4 v3, 0x1
    goto :label_6677
    :label_6642
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v0
    if-eqz v0, :label_664d
    goto :label_663e
    :label_664d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v0
    if-nez v0, :label_6656
    goto :label_663e
    :label_6656
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-nez v0, :label_663e
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v2
    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    move-result-object v0
    move-object/from16 v5, v39
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getFancyBlurFilter()Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v0
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :label_6640
    :label_6677
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v11, :label_667c
    goto :label_6687
    :label_667c
    const-string v0, "video"
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_6687
    const/16 v11, 0xa
    goto :label_668e
    :label_6687
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/16 v11, 0xa
    if-eq v0, v11, :label_668e
    goto :label_6690
    :label_668e
    if-nez v16, :label_66f7
    :label_6690
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-nez v0, :label_6696
    goto/16 :label_6722
    :label_6696
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    const-wide/16 v17, 0x0
    cmp-long v4, v2, v17
    if-nez v4, :label_66a4
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    :label_66a4
    cmp-long v0, v2, v17
    if-nez v0, :label_66a9
    goto :label_66c5
    :label_66a9
    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-nez v0, :label_66b8
    goto :label_66c5
    :label_66b8
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;
    if-nez v0, :label_66bd
    goto :label_66c5
    :label_66bd
    const-string v2, "donate"
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    :label_66c3
    if-nez v0, :label_6722
    :label_66c5
    sget v0, Lorg/telegram/messenger/R$string;->AttachGame:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v0
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->K2:Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    new-instance v28, Landroid/text/StaticLayout;
    sget-object v30, Lorg/telegram/ui/ActionBar/n6;->K2:Landroid/text/TextPaint;
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    sget-object v32, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v34, 0x0
    const/16 v35, 0x0
    const/high16 v33, 0x3f800000
    move-object/from16 v29, v0
    move/from16 v31, v2
    invoke-direct/range {v28 .. v35}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v28
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    goto :label_6722
    :label_66f7
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    new-instance v28, Landroid/text/StaticLayout;
    sget-object v30, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    sget-object v32, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v34, 0x0
    const/16 v35, 0x0
    const/high16 v33, 0x3f800000
    move-object/from16 v29, v0
    move/from16 v31, v2
    invoke-direct/range {v28 .. v35}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v28
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    :label_6722
    move v0, v8
    move/from16 v4, v38
    const/high16 v6, 0x41400000
    const/high16 v8, 0x3f800000
    goto/16 :label_67bb
    :label_672b
    move-object v1, v7
    move-object v9, v10
    move-object/from16 v104, v13
    move/from16 v22, v31
    move-object/from16 v5, v53
    move/from16 v15, v58
    move-object/from16 v13, v76
    move-object/from16 v103, v83
    const/16 v11, 0xa
    const/high16 v51, 0x41f80000
    const/16 v54, 0x12
    const/16 v73, 0xe
    const/16 v78, 0x6
    const/high16 v0, 0x435c0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    const/4 v6, 0x0
    iput-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->v1:Z
    const/4 v8, 0x1
    iput-boolean v8, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v2, :label_6754
    goto :label_6764
    :label_6754
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v2
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v2
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6764
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v6, 0x41400000
    invoke-static {v6, v0, v2}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v2
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v3, v0
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I
    move-result v4
    int-to-float v0, v0
    const/4 v3, 0x0
    invoke-virtual {v1, v3, v3, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    const-string v0, "220_220"
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->g5:Ljava/lang/String;
    const-string v0, "220_220_b"
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->h5:Ljava/lang/String;
    new-instance v0, Lvg/p3;
    const/16 v2, 0xdc
    move-object/from16 v3, v32
    const/high16 v8, 0x3f800000
    invoke-direct {v0, v14, v3, v2, v8}, Lvg/p3;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$StarGift;IF)V
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-virtual {v0, v2}, Lvg/p3;->g(I)V
    invoke-virtual {v0}, Lvg/p3;->f()V
    move-object/from16 v2, v102
    if-nez v2, :label_679f
    goto :label_67b4
    :label_679f
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->center_color:I
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->edge_color:I
    invoke-virtual {v0, v3, v7}, Lvg/p3;->e(II)V
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->text_color:I
    invoke-virtual {v0, v3}, Lvg/p3;->c(I)V
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction_start_date:I
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;->end_date:I
    invoke-virtual {v0, v3, v2}, Lvg/p3;->d(II)V
    :label_67b4
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v5}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    const/4 v0, 0x1
    :label_67bb
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v2, :label_67c8
    :label_67bf
    move/from16 v53, v11
    move/from16 v80, v12
    move/from16 v2, v90
    const/4 v3, 0x4
    goto/16 :label_68a9
    :label_67c8
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->k2:Z
    if-nez v2, :label_67cd
    goto :label_67bf
    :label_67cd
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    const/4 v3, 0x4
    and-int/2addr v2, v3
    if-nez v2, :label_67f1
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->test:Z
    if-nez v2, :label_67e6
    sget v2, Lorg/telegram/messenger/R$string;->PaymentInvoice:I
    goto :label_67e8
    :label_67e6
    sget v2, Lorg/telegram/messenger/R$string;->PaymentTestInvoice:I
    :label_67e8
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v2
    goto :label_67fb
    :label_67f1
    sget v2, Lorg/telegram/messenger/R$string;->PaymentReceipt:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v2
    :label_67fb
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v7
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v10
    move/from16 v53, v11
    move/from16 v80, v12
    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->total_amount:J
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v10
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->currency:Ljava/lang/String;
    invoke-virtual {v7, v11, v12, v10}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    move-result-object v7
    new-instance v10, Landroid/text/SpannableStringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, " "
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {v10, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    invoke-static {v10}, Lvg/d8;->R0(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v2
    new-instance v10, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v11
    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    move-result v7
    const/16 v11, 0x21
    const/4 v12, 0x0
    invoke-virtual {v2, v10, v12, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    new-instance v87, Landroid/text/StaticLayout;
    sget-object v89, Lorg/telegram/ui/ActionBar/n6;->L2:Landroid/text/TextPaint;
    sget-object v91, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v93, 0x0
    const/16 v94, 0x0
    const/high16 v92, 0x3f800000
    move-object/from16 v88, v2
    invoke-direct/range {v87 .. v94}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v7, v87
    move/from16 v2, v90
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v7
    if-gtz v7, :label_6866
    const/4 v10, 0x0
    goto :label_686d
    :label_6866
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    const/4 v12, 0x0
    invoke-virtual {v7, v12}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v10
    :label_686d
    float-to-int v7, v10
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-eqz v7, :label_6875
    goto :label_68a9
    :label_6875
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v10
    if-nez v10, :label_6888
    const/4 v10, 0x0
    goto :label_688a
    :label_6888
    const/16 v10, 0x14
    :label_688a
    add-int/lit8 v10, v10, 0xe
    int-to-float v10, v10
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->o2:I
    add-int/2addr v10, v7
    if-gt v10, v2, :label_689c
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    goto :label_68a9
    :label_689c
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_68a9
    iget-boolean v6, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-nez v6, :label_68b4
    move/from16 v12, v66
    move/from16 v6, v80
    move-object/from16 v11, v104
    goto :label_68d9
    :label_68b4
    move-object/from16 v11, v104
    invoke-virtual {v9, v11}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v6
    if-nez v6, :label_68c1
    move/from16 v12, v66
    :label_68be
    move/from16 v6, v80
    goto :label_68d9
    :label_68c1
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-virtual {v9, v11}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v7
    move/from16 v12, v66
    invoke-static {v12, v7, v6}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v6
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_68be
    :label_68d9
    invoke-virtual {v14, v2, v6, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    :label_68dc
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v7, :label_68e1
    goto :label_68fc
    :label_68e1
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v7
    if-eqz v7, :label_68ea
    goto :label_68fc
    :label_68ea
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_68fc
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v7, :label_6901
    goto :label_6934
    :label_6901
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v7
    if-eqz v7, :label_690a
    goto :label_6934
    :label_690a
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->d5:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :label_690f
    goto :label_6914
    :label_690f
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    if-eq v7, v3, :label_6914
    goto :label_6934
    :label_6914
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->M2:Landroid/text/StaticLayout;
    if-eqz v7, :label_6919
    goto :label_6928
    :label_6919
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    if-eqz v7, :label_691e
    goto :label_6928
    :label_691e
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    if-eqz v7, :label_6923
    goto :label_6928
    :label_6923
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    if-nez v7, :label_6928
    goto :label_6934
    :label_6928
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    const v10, 0x402a3d71
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    :label_6934
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v10, v14, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-eqz v10, :label_693e
    const/4 v10, 0x0
    :label_693b
    const/16 v82, 0x2
    goto :label_6940
    :label_693e
    move v10, v3
    goto :label_693b
    :label_6940
    add-int/lit8 v10, v10, 0x2
    int-to-float v10, v10
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->o1()V
    :label_694d
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v10, 0x41f00000
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    sub-int v10, v2, v10
    invoke-virtual {v14, v10}, Lorg/telegram/ui/Cells/u1;->t3(I)I
    move-result v10
    add-int/2addr v10, v7
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v7, :label_6964
    goto/16 :label_6a3b
    :label_6964
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->f2:I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-virtual {v14, v2, v6, v4}, Lorg/telegram/ui/Cells/u1;->r0(III)V
    goto/16 :label_6a3b
    :label_696f
    move-object v3, v14
    move-object v14, v1
    move-object v1, v11
    move-object v11, v13
    move-object v13, v3
    move/from16 v15, v112
    move/from16 v73, v4
    move-object/from16 v103, v8
    move-object v9, v12
    move/from16 v22, v31
    move-object/from16 v5, v32
    move/from16 v69, v38
    const/4 v3, 0x4
    const/high16 v6, 0x41400000
    const/high16 v8, 0x3f800000
    const/high16 v12, 0x40c00000
    const/high16 v51, 0x41f80000
    const/16 v53, 0xa
    const/16 v54, 0x12
    const/high16 v57, 0x40a00000
    const/high16 v67, 0x41600000
    const/16 v78, 0x6
    if-eqz v25, :label_6998
    :label_6996
    const/4 v2, 0x1
    goto :label_699c
    :label_6998
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->requestLayout()V
    goto :label_6996
    :label_699c
    iput-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->p8:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    if-eqz v0, :label_69a3
    goto :label_69aa
    :label_69a3
    new-instance v0, Lorg/telegram/ui/Cells/m3;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/m3;-><init>()V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    :label_69aa
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/m3;->a:Z
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/m3;->a(Lorg/telegram/ui/Cells/u1;)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    iget v0, v0, Lorg/telegram/ui/Cells/m3;->e:I
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->r:Lorg/telegram/ui/Cells/m3;
    iget v0, v0, Lorg/telegram/ui/Cells/m3;->d:I
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-static {v6, v2, v0}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/4 v4, 0x0
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->x9:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->y9:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->z9:Z
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->ga:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    aput-object v2, v0, v4
    const/4 v7, 0x1
    aput-object v2, v0, v7
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    goto :label_6a3a
    :label_69eb
    move-object v2, v14
    move-object v14, v1
    move-object v1, v11
    move-object v11, v13
    move-object v13, v2
    move/from16 v15, v112
    move/from16 v73, v4
    move-object/from16 v103, v8
    move-object v9, v12
    move/from16 v22, v31
    move-object/from16 v5, v32
    move/from16 v69, v38
    const/4 v2, 0x0
    const/4 v3, 0x4
    const/4 v4, 0x0
    const/4 v7, 0x1
    const/high16 v8, 0x3f800000
    const/high16 v12, 0x40c00000
    const/high16 v51, 0x41f80000
    const/16 v53, 0xa
    const/16 v54, 0x12
    const/high16 v57, 0x40a00000
    const/high16 v67, 0x41600000
    const/16 v78, 0x6
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->p8:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->gb:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->x9:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->y9:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->z9:Z
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->ga:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    aput-object v2, v0, v4
    aput-object v2, v0, v7
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->Xa:Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->v:Lorg/telegram/ui/Cells/q0;
    if-eqz v0, :label_6a2e
    goto :label_6a35
    :label_6a2e
    new-instance v0, Lorg/telegram/ui/Cells/q0;
    invoke-direct {v0, v14}, Lorg/telegram/ui/Cells/q0;-><init>(Lorg/telegram/ui/Cells/u1;)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->v:Lorg/telegram/ui/Cells/q0;
    :label_6a35
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->v:Lorg/telegram/ui/Cells/q0;
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/q0;->e(Lorg/telegram/messenger/MessageObject;)V
    :label_6a3a
    const/4 v0, 0x1
    :label_6a3b
    move/from16 v16, v0
    const/16 v52, 0x0
    :label_6a3f
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_6a44
    goto :label_6a5d
    :label_6a44
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v0
    if-eqz v0, :label_6a4d
    goto :label_6a5d
    :label_6a4d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v4, 0x1d
    if-ne v2, v4, :label_6a56
    goto :label_6a5d
    :label_6a56
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v0
    if-nez v0, :label_6a5d
    goto :label_6a7d
    :label_6a5d
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-eqz v0, :label_6a64
    goto :label_6a7d
    :label_6a64
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-eqz v0, :label_6a6b
    goto :label_6a7d
    :label_6a6b
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->s4:I
    if-eqz v0, :label_6a70
    goto :label_6a7d
    :label_6a70
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v0
    if-eqz v0, :label_6a77
    goto :label_6a7d
    :label_6a77
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isUnsupported()Z
    move-result v0
    if-eqz v0, :label_6a89
    :label_6a7d
    move/from16 v33, v8
    move/from16 v35, v12
    move-object/from16 v12, v103
    const/4 v4, 0x5
    const/4 v8, -0x1
    :label_6a85
    move/from16 v2, v52
    goto/16 :label_6d55
    :label_6a89
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v7, 0x2
    if-ne v2, v7, :label_6a93
    goto :label_6a98
    :label_6a93
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v2, :label_6a98
    goto :label_6adf
    :label_6a98
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v2
    if-nez v2, :label_6a9f
    goto :label_6adf
    :label_6a9f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getFactCheck()Lorg/telegram/tgnet/TLRPC$TL_factCheck;
    move-result-object v2
    if-eqz v2, :label_6aa6
    goto :label_6adf
    :label_6aa6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v0
    if-nez v0, :label_6ac6
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_6abb
    if-nez v26, :label_6ab8
    const/4 v2, 0x0
    goto :label_6abd
    :label_6ab8
    move/from16 v2, v50
    goto :label_6abd
    :label_6abb
    move/from16 v2, v49
    :label_6abd
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_6ac4
    sub-int/2addr v0, v2
    goto :label_6adf
    :label_6ac6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v0
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v2, :label_6ad5
    if-nez v26, :label_6ad2
    const/4 v2, 0x0
    goto :label_6ad7
    :label_6ad2
    move/from16 v2, v50
    goto :label_6ad7
    :label_6ad5
    move/from16 v2, v49
    :label_6ad7
    add-int v2, v47, v2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_6ac4
    :label_6adf
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->ta:I
    if-nez v2, :label_6ae4
    goto :label_6aee
    :label_6ae4
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-nez v2, :label_6ae9
    goto :label_6aee
    :label_6ae9
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    :label_6aee
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v4, 0x5
    if-ne v2, v4, :label_6af7
    const/16 v73, 0x0
    :label_6af7
    add-int/lit8 v2, v73, 0x1f
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v2
    const/16 v82, 0x2
    mul-int/lit8 v2, v2, 0x2
    sub-int v2, v0, v2
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z
    if-eqz v0, :label_6b11
    :label_6b0d
    move/from16 v33, v8
    goto/16 :label_6bb4
    :label_6b11
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v0, :label_6b16
    goto :label_6b0d
    :label_6b16
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    if-eqz v0, :label_6b1b
    goto :label_6b22
    :label_6b1b
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    if-nez v0, :label_6b22
    goto :label_6b0d
    :label_6b22
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    if-nez v0, :label_6b2b
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    goto :label_6b2f
    :label_6b2b
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;
    move-result-object v0
    :label_6b2f
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    if-nez v0, :label_6b36
    :label_6b33
    move/from16 v33, v8
    goto :label_6b96
    :label_6b36
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :label_6b41
    goto :label_6b33
    :label_6b41
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    if-nez v0, :label_6b4a
    goto :label_6b33
    :label_6b4a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z
    if-eqz v0, :label_6b53
    goto :label_6b33
    :label_6b53
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, " "
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    instance-of v0, v0, Landroid/text/Spannable;
    if-eqz v0, :label_6b6d
    goto :label_6b76
    :label_6b6d
    new-instance v0, Landroid/text/SpannableString;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    :label_6b76
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    check-cast v0, Landroid/text/SpannableString;
    new-instance v6, Lorg/telegram/ui/Cells/x6;
    invoke-direct {v6}, Lorg/telegram/ui/Cells/x6;-><init>()V
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I
    move-result v7
    const/16 v86, 0x1
    add-int/lit8 v7, v7, -0x1
    iget-object v10, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I
    move-result v10
    move/from16 v33, v8
    const/16 v8, 0x21
    invoke-virtual {v0, v6, v7, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :label_6b96
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->a4:I
    new-instance v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v6
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->e4:Ljava/lang/CharSequence;
    sget-object v8, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    invoke-direct {v0, v6, v7, v8, v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->bounceFrom(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->v4()V
    :label_6baf
    goto :label_6bb4
    :label_6bb0
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_6bb4
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->Y3:I
    if-gez v0, :label_6bba
    :label_6bb8
    const/4 v8, -0x1
    goto :label_6bc7
    :label_6bba
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v6, :label_6bbf
    goto :label_6bb8
    :label_6bbf
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->Z3:I
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v14, v0, v7, v6}, Lorg/telegram/ui/Cells/u1;->Y2(IILjava/util/ArrayList;)V
    goto :label_6bb8
    :label_6bc7
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->Z3:I
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->Y3:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v7, 0x9
    if-ne v0, v7, :label_6bd4
    goto :label_6bd8
    :label_6bd4
    const/4 v7, 0x2
    if-eq v0, v7, :label_6bd8
    goto :label_6bfe
    :label_6bd8
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_6bdd
    goto :label_6bfe
    :label_6bdd
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-virtual {v14, v2}, Lorg/telegram/ui/Cells/u1;->t3(I)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v0, :label_6beb
    goto :label_6bfe
    :label_6beb
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v0, :label_6bf2
    const/16 v0, 0x8
    goto :label_6bf4
    :label_6bf2
    move/from16 v0, v54
    :label_6bf4
    add-int/lit8 v0, v0, 0x6
    int-to-float v0, v0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6bfe
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v0, :label_6c03
    goto :label_6c13
    :label_6c03
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v7, 0x2
    if-ne v0, v7, :label_6c0b
    goto :label_6c13
    :label_6c0b
    if-eq v0, v4, :label_6c13
    :label_6c0d
    move/from16 v35, v12
    :label_6c0f
    move-object/from16 v12, v103
    goto/16 :label_6d2e
    :label_6c13
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v0
    if-nez v0, :label_6c1a
    goto :label_6c46
    :label_6c1a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_6c1f
    goto :label_6c46
    :label_6c1f
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTextX()I
    move-result v2
    const/16 v82, 0x2
    mul-int/lit8 v2, v2, 0x2
    sub-int/2addr v0, v2
    int-to-float v0, v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    int-to-float v2, v2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    int-to-float v6, v6
    sub-float/2addr v2, v0
    add-float/2addr v2, v6
    float-to-int v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    :label_6c46
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v2, :label_6c6d
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v7, 0x2
    if-eq v2, v7, :label_6c5a
    const/4 v2, 0x0
    goto :label_6c74
    :label_6c5a
    const/high16 v2, 0x42800000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    goto :label_6c74
    :label_6c66
    move-exception v0
    move/from16 v35, v12
    :label_6c69
    move-object/from16 v12, v103
    goto/16 :label_6d2b
    :label_6c6d
    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I
    int-to-float v2, v2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    :label_6c74
    if-nez v2, :label_6c77
    goto :label_6c0d
    :label_6c77
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v6, :label_6c7c
    goto :label_6c84
    :label_6c7c
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r4:I
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight()I
    move-result v6
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    :label_6c84
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v7, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    iget-object v10, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v10, v10, Lorg/telegram/messenger/MessageObject;->type:I
    :label_6c8c
    move/from16 v35, v12
    const/16 v12, 0x11
    if-ne v10, v12, :label_6c94
    const/4 v10, 0x0
    goto :label_6c98
    :label_6c94
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    :label_6c98
    add-int/2addr v7, v10
    add-int/2addr v7, v6
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v6, :label_6ca1
    goto :label_6cbd
    :label_6ca1
    iget-boolean v7, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z
    if-eqz v7, :label_6ca6
    goto :label_6cab
    :label_6ca6
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z
    if-nez v6, :label_6cab
    goto :label_6cbd
    :label_6cab
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v6, v7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v6, v7
    iput v6, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6cbd
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I
    :label_6cc1
    const/16 v12, 0x11
    if-ne v6, v12, :label_6cc7
    goto/16 :label_6c0f
    :label_6cc7
    move-object/from16 v12, v103
    :label_6cc9
    iget-boolean v6, v12, Lvf/q0;->s:Z
    if-eqz v6, :label_6cce
    goto :label_6cd3
    :label_6cce
    iget-boolean v6, v12, Lvf/q0;->b:Z
    if-nez v6, :label_6cd3
    goto :label_6d2e
    :label_6cd3
    iget-object v6, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v6, :label_6cd8
    goto :label_6ce2
    :label_6cd8
    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->t0()I
    move-result v7
    and-int/2addr v6, v7
    if-nez v6, :label_6ce2
    goto :label_6d2e
    :label_6ce2
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->ob:I
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v7
    if-nez v7, :label_6cec
    const/4 v7, 0x0
    goto :label_6cf0
    :label_6cec
    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    :label_6cf0
    add-int/2addr v6, v7
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v7
    add-int/2addr v6, v7
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int/2addr v0, v7
    int-to-float v0, v0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    move-result v2
    sub-float/2addr v0, v2
    int-to-float v2, v6
    cmpg-float v0, v0, v2
    if-gez v0, :label_6d07
    goto :label_6d0c
    :label_6d07
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v0, :label_6d0c
    goto :label_6d2e
    :label_6d0c
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_6d1a
    goto :label_6d2e
    :label_6d1a
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    :label_6d23
    const/16 v52, 0x2
    goto :label_6d2e
    :label_6d26
    move-exception v0
    goto :label_6d2b
    :label_6d28
    move-exception v0
    goto/16 :label_6c69
    :label_6d2b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_6d2e
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v0, :label_6d33
    goto :label_6d53
    :label_6d33
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v7, 0x11
    if-eq v0, v7, :label_6d3c
    goto :label_6d53
    :label_6d3c
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->X5:Ljava/util/ArrayList;
    if-nez v2, :label_6d47
    goto :label_6d53
    :label_6d47
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-nez v0, :label_6d4c
    goto :label_6d53
    :label_6d4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v6, 0x0
    :label_6d51
    if-lt v6, v0, :label_7be2
    :label_6d53
    goto/16 :label_6a85
    :label_6d55
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-wide v6, v0, Lorg/telegram/messenger/MessageObject;->eventId:J
    const-wide/16 v17, 0x0
    cmp-long v6, v6, v17
    if-nez v6, :label_6d63
    :label_6d5f
    move/from16 v81, v3
    goto/16 :label_6eb7
    :label_6d63
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z
    move-result v0
    if-eqz v0, :label_6d6a
    goto :label_6d5f
    :label_6d6a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    if-nez v0, :label_6d77
    goto :label_6d5f
    :label_6d77
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v6, 0x42240000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int v6, v0, v6
    const/4 v7, 0x1
    iput-boolean v7, v14, Lorg/telegram/ui/Cells/u1;->h2:Z
    const/4 v7, 0x0
    iput v7, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v0
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    :label_6d91
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    :label_6d99
    add-float v0, v0, v33
    move/from16 v81, v3
    float-to-double v3, v0
    :label_6d9e
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v0, v3
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->z2:I
    new-instance v58, Landroid/text/StaticLayout;
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;
    sget-object v60, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I
    move-result v61
    sget-object v62, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v64, 0x0
    const/16 v65, 0x0
    const/high16 v63, 0x3f800000
    move-object/from16 v59, v3
    invoke-direct/range {v58 .. v65}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v58
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    const/4 v3, 0x0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    const/4 v0, 0x0
    :label_6dc6
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    if-lt v0, v3, :label_6dea
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/16 v86, 0x1
    add-int/lit8 v3, v3, -0x1
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v0
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6de6
    const/4 v4, 0x0
    goto :label_6e04
    :label_6de8
    move-exception v0
    goto :label_6e00
    :label_6dea
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->x2:F
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->A2:Landroid/text/StaticLayout;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->y2:F
    :label_6dfa
    add-int/lit8 v0, v0, 0x1
    goto :label_6dc6
    :label_6dfd
    move-exception v0
    move/from16 v81, v3
    :label_6e00
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto :label_6de6
    :label_6e04
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    if-nez v0, :label_6e0b
    goto :label_6e14
    :label_6e0b
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6e14
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;
    sget-object v59, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    const/16 v63, 0x6
    move/from16 v62, v6
    move-object/from16 v58, v0
    move/from16 v61, v3
    move/from16 v60, v6
    invoke-static/range {v58 .. v63}, Lorg/telegram/ui/Components/ay0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFII)Landroid/text/StaticLayout;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/16 v86, 0x1
    add-int/lit8 v3, v3, -0x1
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I
    move-result v0
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/4 v0, 0x0
    const/4 v3, 0x0
    :label_6e49
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v4
    if-lt v3, v4, :label_6e5a
    if-nez v0, :label_6e54
    goto :label_6e7f
    :label_6e54
    const/4 v4, 0x0
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    goto :label_6e7f
    :label_6e58
    move-exception v0
    goto :label_6e7c
    :label_6e5a
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->J2:Landroid/text/StaticLayout;
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v4
    float-to-double v6, v4
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v4, v6
    if-nez v4, :label_6e6a
    const/4 v0, 0x1
    goto :label_6e79
    :label_6e6a
    iget v6, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    if-eqz v6, :label_6e76
    neg-int v4, v4
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    goto :label_6e79
    :label_6e76
    neg-int v4, v4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q2:I
    :label_6e79
    add-int/lit8 v3, v3, 0x1
    goto :label_6e49
    :label_6e7c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_6e7f
    iget v0, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v3, 0x1
    if-ne v0, v3, :label_6e85
    goto :label_6e8e
    :label_6e85
    const/4 v4, 0x3
    if-ne v0, v4, :label_6e89
    goto :label_6e8e
    :label_6e89
    const/16 v4, 0x14
    if-eq v0, v4, :label_6e8e
    goto :label_6e97
    :label_6e8e
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_6e97
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    if-nez v2, :label_6ea3
    goto :label_6eb7
    :label_6ea3
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v3, v0
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/4 v7, 0x2
    if-eq v2, v7, :label_6eae
    goto :label_6eb7
    :label_6eae
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    invoke-static/range {v67 .. v67}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    :label_6eb7
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v7
    const/4 v0, 0x0
    :label_6ebe
    if-lt v0, v7, :label_7ba6
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    if-nez v25, :label_6ec9
    :label_6ec7
    const/4 v4, 0x0
    goto :label_6ed7
    :label_6ec9
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->o7:Ljava/util/HashMap;
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->p7:Ljava/util/HashMap;
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->q7:Ljava/lang/String;
    goto :label_6ec7
    :label_6ed7
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->s7:Z
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->t7:Z
    if-nez v115, :label_6ede
    goto :label_6ef1
    :label_6ede
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->D8:Z
    if-nez v0, :label_6ee3
    goto :label_6ef1
    :label_6ee3
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->N7:Z
    if-nez v0, :label_6ee8
    goto :label_6ef1
    :label_6ee8
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->c8:Z
    if-eqz v0, :label_6eed
    goto :label_6ef1
    :label_6eed
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->Lc:I
    if-eqz v0, :label_6ef7
    :label_6ef1
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInlineBotButtons()Lorg/telegram/messenger/BotInlineKeyboard$Source;
    move-result-object v0
    :label_6ef5
    move-object v2, v0
    goto :label_6f23
    :label_6ef7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getTopicId()J
    move-result-wide v2
    const-wide/16 v17, 0x0
    cmp-long v0, v2, v17
    if-gtz v0, :label_6f07
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInlineBotButtons()Lorg/telegram/messenger/BotInlineKeyboard$Source;
    move-result-object v0
    const/4 v3, 0x1
    goto :label_6f20
    :label_6f07
    new-instance v0, Lorg/telegram/messenger/BotInlineKeyboard$Builder;
    invoke-direct {v0}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;-><init>()V
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInlineBotButtons()Lorg/telegram/messenger/BotInlineKeyboard$Source;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->addKeyboardSource(Lorg/telegram/messenger/BotInlineKeyboard$Source;)V
    invoke-virtual {v0}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->addSeparator()V
    invoke-virtual {v0}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->addContinueThreadKeyboard()V
    invoke-virtual {v0}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->build()Lorg/telegram/messenger/BotInlineKeyboard$Source;
    move-result-object v0
    const/4 v3, 0x1
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->t7:Z
    :label_6f20
    iput-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->s7:Z
    goto :label_6ef5
    :label_6f23
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z
    if-eqz v0, :label_6f2d
    :label_6f2b
    const/4 v4, 0x0
    goto :label_6f50
    :label_6f2d
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v0, :label_6f32
    goto :label_6f2b
    :label_6f32
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_6f37
    goto :label_6f46
    :label_6f37
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v3, :label_6f3c
    goto :label_6f2b
    :label_6f3c
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z
    if-nez v3, :label_6f41
    goto :label_6f2b
    :label_6f41
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z
    if-nez v0, :label_6f46
    goto :label_6f2b
    :label_6f46
    if-nez v2, :label_6f49
    goto :label_6f2b
    :label_6f49
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->hasExtendedMedia()Z
    move-result v0
    if-eqz v0, :label_6f56
    goto :label_6f2b
    :label_6f50
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->q8:I
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->t0:I
    goto/16 :label_7005
    :label_6f56
    invoke-interface {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getRowsCount()I
    move-result v6
    const/4 v0, 0x0
    const/4 v3, 0x0
    :label_6f5c
    if-lt v0, v6, :label_7b65
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    mul-int/2addr v0, v6
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v0
    mul-int/2addr v3, v4
    add-int/2addr v3, v7
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->t0:I
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->q8:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-nez v3, :label_6f77
    move/from16 v10, v46
    goto :label_6f78
    :label_6f77
    const/4 v10, 0x0
    :label_6f78
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    iget v3, v9, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I
    if-gt v3, v0, :label_6f86
    move/from16 v10, v57
    goto :label_6fc7
    :label_6f86
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v0, :label_6f91
    if-nez v26, :label_6f8f
    const/16 v49, 0x0
    goto :label_6f91
    :label_6f8f
    move/from16 v49, v50
    :label_6f91
    add-int v7, v53, v49
    int-to-float v0, v7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    neg-int v0, v0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v3
    if-nez v3, :label_6fb2
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getParentWidth()I
    move-result v3
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v7, v7, Landroid/graphics/Point;->y:I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I
    move-result v3
    move/from16 v10, v57
    invoke-static {v10, v3, v0}, Lorg/telegram/ui/b;->C(FII)I
    move-result v0
    goto :label_6fb9
    :label_6fb2
    move/from16 v10, v57
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I
    move-result v3
    add-int/2addr v0, v3
    :label_6fb9
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->I8:I
    iget v7, v9, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I
    move-result v0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    :label_6fc7
    new-instance v7, Ljava/util/HashMap;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->o7:Ljava/util/HashMap;
    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;
    if-nez v0, :label_6fd3
    goto :label_6fe2
    :label_6fd3
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->q7:Ljava/lang/String;
    if-nez v3, :label_6fd8
    goto :label_6fe2
    :label_6fd8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_6fef
    :label_6fe2
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;
    if-nez v0, :label_6fe7
    goto :label_6fed
    :label_6fe7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->q7:Ljava/lang/String;
    :label_6fed
    const/4 v0, 0x0
    goto :label_6ff6
    :label_6fef
    new-instance v0, Ljava/util/HashMap;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->p7:Ljava/util/HashMap;
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :label_6ff6
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->o7:Ljava/util/HashMap;
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    move/from16 v57, v10
    const/4 v3, 0x0
    const/4 v10, 0x0
    const/16 v106, 0x0
    :label_7001
    if-lt v3, v6, :label_77b2
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    :label_7005
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->i9:Z
    if-nez v0, :label_700a
    goto :label_7023
    :label_700a
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v2
    if-nez v2, :label_7015
    const/high16 v2, 0x422c0000
    goto :label_7018
    :label_7015
    const v2, 0x42253333
    :label_7018
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/4 v3, 0x1
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->s1(I)V
    :label_7023
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v0, :label_7028
    goto :label_7044
    :label_7028
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_702d
    goto :label_7044
    :label_702d
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    iget-boolean v2, v12, Lvf/q0;->s:Z
    if-nez v2, :label_7035
    const/16 v54, 0x0
    :label_7035
    const/16 v82, 0x2
    add-int/lit8 v2, v54, 0x2
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->e2:I
    add-int/2addr v2, v3
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_7044
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->I:Z
    if-nez v0, :label_7049
    goto :label_704d
    :label_7049
    iget-boolean v2, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v2, :label_7077
    :label_704d
    if-nez v0, :label_706d
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v0, :label_7054
    goto :label_7080
    :label_7054
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->E:Z
    if-nez v0, :label_7059
    goto :label_7080
    :label_7059
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_705e
    goto :label_7080
    :label_705e
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F
    if-eqz v0, :label_7063
    goto :label_7080
    :label_7063
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_7080
    :label_706d
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_7080
    :label_7077
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_7080
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v0, :label_7085
    goto :label_70af
    :label_7085
    iget v0, v9, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v0, :label_708a
    goto :label_7093
    :label_708a
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_7093
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->I:Z
    if-nez v0, :label_7098
    goto :label_70a1
    :label_7098
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_70a1
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v0, :label_70a6
    goto :label_70af
    :label_70a6
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_70af
    iget v0, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x13
    if-ne v0, v2, :label_70b6
    goto :label_70ec
    :label_70b6
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_70bd
    goto :label_70c7
    :label_70bd
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    const/high16 v2, 0x428c0000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    if-lt v0, v2, :label_70de
    :label_70c7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v0
    if-nez v0, :label_70ce
    goto :label_70ec
    :label_70ce
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->s0:I
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    goto :label_70ec
    :label_70de
    const/high16 v0, 0x428c0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    sub-int/2addr v0, v2
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->s0:I
    add-int/2addr v2, v0
    iput v2, v14, Lorg/telegram/ui/Cells/u1;->r0:I
    :label_70ec
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-eqz v0, :label_70f2
    const/4 v2, 0x0
    goto :label_70f9
    :label_70f2
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v5}, Lorg/telegram/ui/Cells/u1;->f1(Lorg/telegram/messenger/ImageReceiver;)V
    :label_70f9
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v5, 0x5
    if-eq v0, v5, :label_7104
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    invoke-virtual {v0, v2, v2, v2}, Lorg/telegram/ui/Components/RadialProgress2;->i(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V
    goto :label_7148
    :label_7104
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isDocumentHasThumb(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v0
    if-nez v0, :label_7123
    const/4 v5, 0x1
    invoke-virtual {v9, v5}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_711d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    invoke-virtual {v0, v2, v2, v2}, Lorg/telegram/ui/Components/RadialProgress2;->i(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V
    goto :label_7148
    :label_711d
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RadialProgress2;->h(Ljava/lang/String;)V
    goto :label_7148
    :label_7123
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/high16 v3, 0x41b00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    const/4 v4, 0x0
    const/4 v5, 0x1
    invoke-static {v0, v3, v5, v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/high16 v3, 0x42300000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    invoke-static {v2, v3, v5, v0, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-virtual {v3, v2, v0, v4, v9}, Lorg/telegram/ui/Components/RadialProgress2;->j(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    :label_7148
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->s0()V
    if-nez v16, :label_714f
    goto/16 :label_7268
    :label_714f
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I
    const/4 v7, 0x2
    if-gt v2, v7, :label_715e
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_7164
    :label_715e
    sub-int/2addr v2, v7
    int-to-float v2, v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_7164
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I
    move-result v3
    if-gt v0, v2, :label_716f
    goto :label_7170
    :label_716f
    move v0, v2
    :label_7170
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v4, :label_7175
    goto :label_717f
    :label_7175
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v4, :label_717a
    goto :label_717f
    :label_717a
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v4, :label_717f
    goto :label_7180
    :label_717f
    move v2, v0
    :label_7180
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    const/16 v23, 0x0
    aget-object v4, v4, v23
    if-eqz v4, :label_7189
    goto :label_7194
    :label_7189
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    if-eqz v4, :label_718e
    goto :label_7194
    :label_718e
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->Ya:Z
    if-nez v4, :label_7194
    move v4, v2
    goto :label_7195
    :label_7194
    move v4, v0
    :label_7195
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->i9:Z
    if-eqz v5, :label_719a
    goto :label_71ab
    :label_719a
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    if-nez v5, :label_719f
    goto :label_71a6
    :label_719f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v5
    if-nez v5, :label_71a6
    goto :label_71ab
    :label_71a6
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-nez v5, :label_71ab
    goto :label_71ac
    :label_71ab
    move v2, v0
    :label_71ac
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v5, :label_71b1
    goto :label_71c1
    :label_71b1
    iget-boolean v5, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-nez v5, :label_71b6
    goto :label_71be
    :label_71b6
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v5
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v5, :label_71c0
    :label_71be
    move v2, v0
    goto :label_71c1
    :label_71c0
    move v4, v0
    :label_71c1
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v7, 0x1
    if-eq v5, v7, :label_71c9
    move v6, v2
    move v5, v4
    goto :label_71cb
    :label_71c9
    move v5, v0
    move v6, v5
    :label_71cb
    iget-object v7, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v7, :label_71d0
    goto :label_71d4
    :label_71d0
    iget-object v10, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v10, :label_71d6
    :label_71d4
    move v0, v4
    goto :label_71f3
    :label_71d6
    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v10, v7, 0x2
    if-eqz v10, :label_71dd
    goto :label_71df
    :label_71dd
    move v5, v0
    move v6, v5
    :label_71df
    and-int/lit8 v10, v7, 0x1
    if-eqz v10, :label_71e4
    goto :label_71e6
    :label_71e4
    move v2, v0
    move v4, v2
    :label_71e6
    and-int/lit8 v10, v7, 0x8
    if-eqz v10, :label_71eb
    goto :label_71ed
    :label_71eb
    move v2, v0
    move v6, v2
    :label_71ed
    and-int/lit8 v7, v7, 0x4
    if-eqz v7, :label_71f2
    goto :label_71d4
    :label_71f2
    move v5, v0
    :label_71f3
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->D:Z
    if-nez v4, :label_71f8
    goto :label_720d
    :label_71f8
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v4, :label_71fd
    goto :label_7202
    :label_71fd
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v4, :label_7202
    goto :label_720d
    :label_7202
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_720c
    move v0, v3
    goto :label_720d
    :label_720c
    move v5, v3
    :label_720d
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->E:Z
    if-nez v4, :label_7212
    goto :label_7227
    :label_7212
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v4, :label_7217
    goto :label_721c
    :label_7217
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-nez v4, :label_721c
    goto :label_7227
    :label_721c
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_7226
    move v2, v3
    goto :label_7227
    :label_7226
    move v6, v3
    :label_7227
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v4, :label_722c
    goto :label_7236
    :label_722c
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-eqz v4, :label_7235
    goto :label_7236
    :label_7235
    move v2, v3
    :label_7236
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v7, v4, Lorg/telegram/messenger/MessageObject;->type:I
    move/from16 v10, v81
    if-eq v7, v10, :label_723f
    goto :label_7257
    :label_723f
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v4
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    if-eqz v4, :label_7248
    goto :label_7259
    :label_7248
    iget-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->V3:Z
    if-eqz v4, :label_724d
    goto :label_7257
    :label_724d
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v4
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;
    if-nez v4, :label_7259
    :label_7257
    move v3, v6
    goto :label_725a
    :label_7259
    move v2, v3
    :label_725a
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    move/from16 v6, v53
    if-eq v4, v6, :label_7261
    goto :label_7265
    :label_7261
    const/4 v0, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v5, 0x0
    :label_7265
    invoke-virtual {v1, v0, v5, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V
    :label_7268
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->l4()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    if-nez v0, :label_7271
    :label_726f
    const/4 v2, 0x0
    goto :label_7280
    :label_7271
    invoke-virtual {v0}, Lorg/telegram/ui/Components/sy0;->b()Z
    move-result v0
    if-nez v0, :label_7278
    goto :label_726f
    :label_7278
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/sy0;->a(Lorg/telegram/ui/Cells/u1;)V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->d1:Lorg/telegram/ui/Components/sy0;
    :label_7280
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->c4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_7287
    goto :label_7290
    :label_7287
    iget-boolean v1, v14, Lorg/telegram/ui/Cells/u1;->P:Z
    if-eqz v1, :label_7290
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStakedDiceWinAmount()J
    move-result-wide v0
    goto :label_7292
    :label_7290
    const-wide/16 v0, 0x0
    :label_7292
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v2, :label_7297
    goto :label_72a1
    :label_7297
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v2
    const-wide/16 v17, 0x0
    cmp-long v2, v2, v17
    if-ltz v2, :label_72e2
    :label_72a1
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v2, :label_72b5
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v2, :label_72aa
    goto :label_72b2
    :label_72aa
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_72b2
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J
    :label_72b0
    const/4 v6, 0x1
    goto :label_72e5
    :label_72b2
    const-wide/16 v2, 0x0
    goto :label_72b0
    :label_72b5
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v3
    const-wide/16 v4, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    :label_72bf
    if-lt v7, v3, :label_72c3
    move-wide v2, v4
    goto :label_72e5
    :label_72c3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    add-int/lit8 v7, v7, 0x1
    check-cast v10, Lorg/telegram/messenger/MessageObject;
    if-nez v10, :label_72ce
    goto :label_72d5
    :label_72ce
    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v10, :label_72d5
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J
    goto :label_72d7
    :label_72d5
    const-wide/16 v12, 0x0
    :label_72d7
    add-long/2addr v4, v12
    const-wide/16 v17, 0x0
    cmp-long v10, v12, v17
    if-gtz v10, :label_72df
    goto :label_72bf
    :label_72df
    add-int/lit8 v6, v6, 0x1
    goto :label_72bf
    :label_72e2
    const-wide/16 v2, 0x0
    const/4 v6, 0x0
    :label_72e5
    iget-wide v4, v14, Lorg/telegram/ui/Cells/u1;->Q:J
    cmp-long v4, v4, v2
    if-nez v4, :label_72ef
    :label_72eb
    move/from16 v5, v67
    goto/16 :label_740d
    :label_72ef
    iput-wide v2, v14, Lorg/telegram/ui/Cells/u1;->Q:J
    const-wide/16 v17, 0x0
    cmp-long v4, v2, v17
    if-gtz v4, :label_72f9
    :label_72f7
    const/4 v2, 0x0
    goto :label_7307
    :label_72f9
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v4, :label_72fe
    goto :label_730d
    :label_72fe
    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v81, 0x4
    and-int/lit8 v4, v4, 0x4
    if-nez v4, :label_730d
    goto :label_72f7
    :label_7307
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    const/4 v4, 0x0
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->U:I
    goto :label_72eb
    :label_730d
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-nez v4, :label_7369
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getForwardedFromPeerObject()Lorg/telegram/tgnet/TLObject;
    move-result-object v4
    if-eqz v4, :label_731e
    goto :label_7324
    :label_731e
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;
    move-result-object v4
    :label_7324
    iget-object v5, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    const-wide/16 v17, 0x0
    cmp-long v5, v12, v17
    if-gtz v5, :label_735b
    const/4 v5, 0x1
    if-gt v6, v5, :label_734d
    long-to-int v2, v2
    const-string v3, "PaidMessageActionMessages"
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    new-array v6, v5, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v3, v6, v23
    const-string v3, "PaidMessageActionMany"
    invoke-static {v3, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    const-string v3, "un1"
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    move-result-object v2
    goto :label_7387
    :label_734d
    long-to-int v2, v2
    const-string v3, "PaidMessageAction"
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    const-string v3, "un1"
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    move-result-object v2
    goto :label_7387
    :label_735b
    long-to-int v2, v2
    const-string v3, "PaidMessageActionIn"
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    const-string v3, "un1"
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    move-result-object v2
    goto :label_7387
    :label_7369
    const/4 v5, 0x1
    if-gt v6, v5, :label_7374
    long-to-int v2, v2
    const-string v3, "PaidMessageActionOut"
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    goto :label_7387
    :label_7374
    long-to-int v2, v2
    const-string v3, "PaidMessageActionMessages"
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    new-array v4, v5, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v3, v4, v23
    const-string v3, "PaidMessageActionOutMany"
    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    :label_7387
    new-instance v3, Lorg/telegram/ui/Components/d21;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v4
    move/from16 v5, v67
    invoke-direct {v3, v2, v5, v4}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V
    const/4 v4, 0x3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/d21;->n(I)V
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/d21;->q(F)V
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/d21;->a()V
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/d21;->m(F)V
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    if-eqz v3, :label_73b7
    invoke-virtual {v3}, Lorg/telegram/ui/Components/or;->rewind()V
    goto :label_73cd
    :label_73b7
    new-instance v3, Lorg/telegram/ui/Components/ka0;
    invoke-direct {v3}, Lorg/telegram/ui/Components/ka0;-><init>()V
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    const/4 v7, 0x1
    iput-boolean v7, v3, Lorg/telegram/ui/Components/or;->c:Z
    new-instance v3, Landroid/graphics/CornerPathEffect;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V
    iput-object v3, v14, Lorg/telegram/ui/Cells/u1;->T:Landroid/graphics/CornerPathEffect;
    :label_73cd
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    const v6, 0x402a3d71
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    iput v4, v3, Lorg/telegram/ui/Components/or;->e:I
    iput v6, v3, Lorg/telegram/ui/Components/or;->f:I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/d21;->j()F
    move-result v3
    const v4, 0x417a8f5c
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    add-float/2addr v3, v4
    float-to-int v3, v3
    iput v3, v14, Lorg/telegram/ui/Cells/u1;->U:I
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    iget-object v4, v4, Lorg/telegram/ui/Components/d21;->b:Landroid/text/StaticLayout;
    const/4 v6, 0x0
    const/4 v7, 0x0
    invoke-virtual {v3, v4, v7, v6}, Lorg/telegram/ui/Components/ka0;->d(Landroid/text/Layout;IF)V
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    iget-object v3, v3, Lorg/telegram/ui/Components/d21;->b:Landroid/text/StaticLayout;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v2
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    invoke-virtual {v3, v7, v2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->S:Lorg/telegram/ui/Components/ka0;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/or;->a()V
    :label_740d
    iget-wide v2, v14, Lorg/telegram/ui/Cells/u1;->V:J
    cmp-long v2, v2, v0
    if-nez v2, :label_7417
    const/4 v2, 0x0
    const/4 v4, 0x0
    goto/16 :label_753a
    :label_7417
    iput-wide v0, v14, Lorg/telegram/ui/Cells/u1;->V:J
    const-wide/16 v17, 0x0
    cmp-long v2, v0, v17
    if-nez v2, :label_7428
    const/4 v7, 0x0
    iput-object v7, v14, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    const/4 v4, 0x0
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->c0:I
    :label_7425
    const/4 v2, 0x0
    goto/16 :label_753a
    :label_7428
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-nez v3, :label_7431
    goto :label_7439
    :label_7431
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v3
    if-eqz v3, :label_7480
    :label_7439
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;
    move-result-object v3
    if-gtz v2, :label_7461
    sget v2, Lorg/telegram/messenger/R$string;->StakeDiceActionLost:I
    neg-long v0, v0
    invoke-static {v0, v1}, Lvg/d8;->N0(J)Ljava/lang/String;
    move-result-object v0
    const/4 v7, 0x1
    new-array v1, v7, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v0, v1, v23
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "un1"
    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    move-result-object v0
    const v1, 0x3f533333
    invoke-static {v0, v1}, Lvg/d8;->P0(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    goto :label_74b4
    :label_7461
    const/4 v7, 0x1
    const/16 v23, 0x0
    sget v2, Lorg/telegram/messenger/R$string;->StakeDiceActionWon:I
    invoke-static {v0, v1}, Lvg/d8;->N0(J)Ljava/lang/String;
    move-result-object v0
    new-array v1, v7, [Ljava/lang/Object;
    aput-object v0, v1, v23
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "un1"
    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    move-result-object v0
    const v1, 0x3f533333
    invoke-static {v0, v1}, Lvg/d8;->P0(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    goto :label_74b4
    :label_7480
    if-gtz v2, :label_749c
    sget v2, Lorg/telegram/messenger/R$string;->StakeDiceActionYouLost:I
    neg-long v0, v0
    invoke-static {v0, v1}, Lvg/d8;->N0(J)Ljava/lang/String;
    move-result-object v0
    const/4 v3, 0x1
    new-array v1, v3, [Ljava/lang/Object;
    const/16 v23, 0x0
    aput-object v0, v1, v23
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const v1, 0x3f533333
    invoke-static {v0, v1}, Lvg/d8;->P0(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    goto :label_74b4
    :label_749c
    const/4 v3, 0x1
    const/16 v23, 0x0
    sget v2, Lorg/telegram/messenger/R$string;->StakeDiceActionYouWon:I
    invoke-static {v0, v1}, Lvg/d8;->N0(J)Ljava/lang/String;
    move-result-object v0
    new-array v1, v3, [Ljava/lang/Object;
    aput-object v0, v1, v23
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const v1, 0x3f533333
    invoke-static {v0, v1}, Lvg/d8;->P0(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    :label_74b4
    new-instance v1, Lorg/telegram/ui/Components/d21;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v2
    invoke-direct {v1, v0, v5, v2}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V
    const/4 v4, 0x3
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/d21;->n(I)V
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/d21;->q(F)V
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/d21;->a()V
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/d21;->m(F)V
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    if-eqz v1, :label_74e2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/or;->rewind()V
    goto :label_74f8
    :label_74e2
    new-instance v1, Lorg/telegram/ui/Components/ka0;
    invoke-direct {v1}, Lorg/telegram/ui/Components/ka0;-><init>()V
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    const/4 v5, 0x1
    iput-boolean v5, v1, Lorg/telegram/ui/Components/or;->c:Z
    new-instance v1, Landroid/graphics/CornerPathEffect;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->b0:Landroid/graphics/CornerPathEffect;
    :label_74f8
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    const v3, 0x402a3d71
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    iput v2, v1, Lorg/telegram/ui/Components/or;->e:I
    iput v3, v1, Lorg/telegram/ui/Components/or;->f:I
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/d21;->j()F
    move-result v1
    const v2, 0x40d51eb8
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    add-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->c0:I
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    iget-object v2, v2, Lorg/telegram/ui/Components/d21;->b:Landroid/text/StaticLayout;
    const/4 v3, 0x0
    const/4 v4, 0x0
    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Components/ka0;->d(Landroid/text/Layout;IF)V
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    iget-object v1, v1, Lorg/telegram/ui/Components/d21;->b:Landroid/text/StaticLayout;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    invoke-virtual {v1, v4, v0, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->a0:Lorg/telegram/ui/Components/ka0;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/or;->a()V
    goto/16 :label_7425
    :label_753a
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->f0:Lorg/telegram/ui/Components/h01;
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->g0:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_7543
    goto :label_7576
    :label_7543
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v0, :label_7548
    goto :label_7576
    :label_7548
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    if-nez v0, :label_754d
    goto :label_7576
    :label_754d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_7552
    goto :label_755b
    :label_7552
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v22, 0x4
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_755b
    goto :label_7576
    :label_755b
    new-instance v0, Lorg/telegram/ui/Components/h01;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/h01;-><init>(Lorg/telegram/ui/ActionBar/j6;)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->f0:Lorg/telegram/ui/Components/h01;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/h01;->b(Lorg/telegram/messenger/MessageObject;)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->f0:Lorg/telegram/ui/Components/h01;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/h01;->a()I
    move-result v0
    invoke-static/range {v69 .. v69}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->g0:I
    :label_7576
    if-nez v114, :label_7579
    goto :label_759a
    :label_7579
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->D8:Z
    if-nez v0, :label_757e
    goto :label_759a
    :label_757e
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-nez v0, :label_7583
    goto :label_759a
    :label_7583
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->S7:Z
    if-eqz v0, :label_7588
    goto :label_758d
    :label_7588
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-nez v0, :label_758d
    goto :label_759a
    :label_758d
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-nez v0, :label_7592
    goto :label_75aa
    :label_7592
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    const/16 v22, 0x4
    and-int/lit8 v0, v0, 0x4
    if-nez v0, :label_75aa
    :label_759a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    if-nez v0, :label_75a0
    :label_759e
    const/4 v4, 0x0
    goto :label_75a7
    :label_75a0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/x31;->b()V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    goto :label_759e
    :label_75a7
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->e0:I
    goto :label_75e8
    :label_75aa
    const/high16 v0, 0x42040000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iput v0, v14, Lorg/telegram/ui/Cells/u1;->e0:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    if-eqz v0, :label_75b7
    goto :label_75c8
    :label_75b7
    new-instance v0, Lorg/telegram/ui/Components/x31;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    const/4 v5, 0x1
    invoke-direct {v0, v15, v14, v1, v5}, Lorg/telegram/ui/Components/x31;-><init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/j6;Z)V
    iput-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    new-instance v1, Lorg/telegram/ui/Cells/c1;
    invoke-direct {v1, v5, v14}, Lorg/telegram/ui/Cells/c1;-><init>(ILorg/telegram/ui/Cells/u1;)V
    iput-object v1, v0, Lorg/telegram/ui/Components/x31;->r:Ljava/lang/Runnable;
    :label_75c8
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/x31;->e(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-eqz v0, :label_75dd
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-nez v0, :label_75d7
    goto :label_75e8
    :label_75d7
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/x31;->a()V
    goto :label_75e8
    :label_75dd
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/x31;->b()V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->d0:Lorg/telegram/ui/Components/x31;
    const/4 v4, 0x0
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->e0:I
    :label_75e8
    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I
    move-result v0
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->U:I
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->e0:I
    add-int/2addr v1, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->g0:I
    add-int/2addr v1, v2
    if-eq v0, v1, :label_75f7
    goto :label_75fe
    :label_75f7
    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I
    move-result v0
    if-nez v0, :label_75fe
    goto :label_760a
    :label_75fe
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->U:I
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->e0:I
    add-int/2addr v0, v1
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->g0:I
    add-int/2addr v0, v1
    const/4 v4, 0x0
    invoke-virtual {v14, v4, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V
    :label_760a
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->W5:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->zb:Lrg/g;
    if-nez v0, :label_7615
    :label_7613
    const/4 v2, 0x0
    goto :label_7634
    :label_7615
    iget-boolean v0, v14, Lorg/telegram/ui/Cells/u1;->O9:Z
    if-nez v0, :label_761b
    :label_7619
    const/4 v2, 0x0
    goto :label_7632
    :label_761b
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v0, :label_7620
    goto :label_7619
    :label_7620
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z
    move-result v0
    if-nez v0, :label_7627
    goto :label_7619
    :label_7627
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v0
    if-eqz v0, :label_7619
    goto :label_7613
    :label_7632
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->zb:Lrg/g;
    :label_7634
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Ob:Lrg/g;
    if-nez v0, :label_7639
    goto :label_7640
    :label_7639
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Lb:Landroid/text/StaticLayout;
    if-eqz v0, :label_763e
    goto :label_7640
    :label_763e
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->Ob:Lrg/g;
    :label_7640
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->H3()V
    :label_7643
    if-nez v25, :label_7647
    goto/16 :label_76f4
    :label_7647
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->D4:Ljava/lang/String;
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->E4:Lorg/telegram/messenger/WebFile;
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->x4:Landroid/text/StaticLayout;
    const/4 v1, 0x0
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->A3:F
    const-wide/16 v12, 0x0
    iput-wide v12, v14, Lorg/telegram/ui/Cells/u1;->x1:J
    iput v1, v14, Lorg/telegram/ui/Cells/u1;->Pc:F
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->kd:Landroid/animation/ValueAnimator;
    if-nez v0, :label_765b
    goto :label_7663
    :label_765b
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->kd:Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :label_7663
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->oa:Lorg/telegram/ui/Components/g6;
    if-nez v0, :label_7668
    goto :label_766c
    :label_7668
    const/4 v5, 0x1
    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/g6;->d(FZ)F
    :label_766c
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->pa:Lorg/telegram/ui/Components/ka0;
    if-nez v0, :label_7672
    const/4 v2, 0x0
    goto :label_7678
    :label_7672
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ka0;->reset()V
    const/4 v2, 0x0
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->pa:Lorg/telegram/ui/Components/ka0;
    :label_7678
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->qa:Lorg/telegram/ui/Components/ua0;
    if-nez v0, :label_767d
    goto :label_7683
    :label_767d
    const-wide/16 v3, -0x1
    iput-wide v3, v0, Lorg/telegram/ui/Components/ua0;->b:J
    iput-object v2, v14, Lorg/telegram/ui/Cells/u1;->qa:Lorg/telegram/ui/Components/ua0;
    :label_7683
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->S6:Lorg/telegram/ui/Components/g6;
    if-nez v0, :label_7688
    goto :label_76b4
    :label_7688
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v2, :label_768d
    goto :label_76ac
    :label_768d
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v2
    if-nez v2, :label_7694
    goto :label_76ac
    :label_7694
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v2, :label_769b
    goto :label_76ac
    :label_769b
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I
    if-nez v2, :label_76a0
    goto :label_76ac
    :label_76a0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;
    move-result-object v2
    iget-object v3, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    move-result v2
    if-nez v2, :label_76af
    :label_76ac
    const/4 v2, 0x0
    :label_76ad
    const/4 v5, 0x1
    goto :label_76b1
    :label_76af
    const/4 v2, 0x1
    goto :label_76ad
    :label_76b1
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/g6;->f(ZZ)F
    :label_76b4
    iput v8, v11, Lorg/telegram/ui/Cells/t1;->a2:I
    const/4 v4, 0x0
    iput-boolean v4, v14, Lorg/telegram/ui/Cells/u1;->jd:Z
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v5, 0x5
    if-eq v0, v5, :label_76bf
    goto :label_76d1
    :label_76bf
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;
    move-result-object v0
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_76cd
    move v10, v1
    goto :label_76cf
    :label_76cd
    move/from16 v10, v33
    :label_76cf
    iput v10, v14, Lorg/telegram/ui/Cells/u1;->md:F
    :label_76d1
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->F5:Lorg/telegram/ui/Cells/f1;
    if-nez v0, :label_76d6
    goto :label_76db
    :label_76d6
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/pp0;->k(Lorg/telegram/messenger/MessageObject;)V
    :label_76db
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->G5:Lorg/telegram/ui/Components/wp0;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/wp0;->f()V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->ec:Lorg/telegram/ui/Components/q5;
    if-nez v0, :label_76e5
    goto :label_76e8
    :label_76e5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/q5;->f()V
    :label_76e8
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    if-nez v0, :label_76ee
    :label_76ec
    const/4 v1, 0x0
    goto :label_76f2
    :label_76ee
    invoke-virtual {v0}, Lorg/telegram/ui/Components/in0;->k()V
    goto :label_76ec
    :label_76f2
    iput-object v1, v14, Lorg/telegram/ui/Cells/u1;->d4:Lorg/telegram/ui/Components/fk0;
    :label_76f4
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->L5:Lorg/telegram/ui/Cells/j1;
    if-nez v0, :label_76f9
    goto :label_772e
    :label_76f9
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v2, :label_7700
    goto :label_7710
    :label_7700
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z
    if-nez v3, :label_7705
    goto :label_7710
    :label_7705
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z
    if-nez v2, :label_770a
    goto :label_7710
    :label_770a
    invoke-static {v1}, Lorg/telegram/ui/Components/z41;->l(Lorg/telegram/messenger/MessageObject;)Z
    move-result v1
    if-nez v1, :label_7712
    :label_7710
    const/4 v1, 0x0
    goto :label_7713
    :label_7712
    const/4 v1, 0x1
    :label_7713
    xor-int/lit8 v2, v25, 0x1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/z41;->t(ZZ)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->L5:Lorg/telegram/ui/Cells/j1;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/z41;->k(Lorg/telegram/messenger/MessageObject;)Z
    move-result v1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/z41;->r(ZZ)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->L5:Lorg/telegram/ui/Cells/j1;
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/z41;->v(Lorg/telegram/messenger/MessageObject;)Z
    move-result v1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/z41;->s(ZZ)V
    :label_772e
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->z4()V
    if-eqz v25, :label_7734
    goto :label_7738
    :label_7734
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->cancelEditing:Z
    if-eqz v0, :label_773c
    :label_7738
    const/4 v0, 0x0
    :label_7739
    const/4 v4, 0x0
    const/4 v5, 0x1
    goto :label_773e
    :label_773c
    const/4 v0, 0x1
    goto :label_7739
    :label_773e
    invoke-virtual {v14, v4, v0, v5}, Lorg/telegram/ui/Cells/u1;->m4(ZZZ)V
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->loadingCancelled:Z
    if-eqz v0, :label_7748
    goto :label_7782
    :label_7748
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->N4:I
    const/4 v7, 0x2
    if-eq v0, v7, :label_774e
    goto :label_7782
    :label_774e
    iget v0, v14, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v4, 0x3
    if-eq v0, v4, :label_7754
    goto :label_7782
    :label_7754
    invoke-static {v15}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    invoke-virtual {v0, v9}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_775f
    goto :label_7782
    :label_775f
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    iget-object v1, v14, Lorg/telegram/ui/Cells/u1;->K1:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z
    move-result v3
    if-nez v3, :label_7770
    const/4 v3, 0x0
    :label_776e
    const/4 v5, 0x1
    goto :label_7772
    :label_7770
    const/4 v3, 0x2
    goto :label_776e
    :label_7772
    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    const/4 v4, 0x4
    iput v4, v14, Lorg/telegram/ui/Cells/u1;->N4:I
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    invoke-direct {v14}, Lorg/telegram/ui/Cells/u1;->getIconForCurrentState()I
    move-result v1
    const/4 v4, 0x0
    invoke-virtual {v0, v1, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V
    :label_7782
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-nez v0, :label_7787
    goto :label_77a2
    :label_7787
    invoke-interface {v0}, Lorg/telegram/ui/Cells/l1;->Y1()Lorg/telegram/ui/Cells/p9;
    move-result-object v0
    if-nez v0, :label_778e
    goto :label_77a2
    :label_778e
    if-eqz v25, :label_7791
    goto :label_77a2
    :label_7791
    if-nez v24, :label_7794
    goto :label_77a2
    :label_7794
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->preview:Z
    if-eqz v0, :label_7799
    goto :label_77a2
    :label_7799
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    invoke-interface {v0}, Lorg/telegram/ui/Cells/l1;->Y1()Lorg/telegram/ui/Cells/p9;
    move-result-object v0
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/p9;->W(Lorg/telegram/messenger/MessageObject;)V
    :label_77a2
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->od:Landroid/util/SparseArray;
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    const/4 v5, 0x1
    iput-boolean v5, v11, Lorg/telegram/ui/Cells/t1;->o:Z
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->Z3:I
    iput v8, v14, Lorg/telegram/ui/Cells/u1;->Y3:I
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->p4()V
    return-void
    :label_77b2
    move/from16 v74, v53
    move/from16 v58, v67
    const/16 v20, 0x0
    const/16 v72, 0x13
    const/16 v85, 0x0
    invoke-interface {v2, v3}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getColumnsCount(I)I
    move-result v8
    if-eqz v8, :label_7b2f
    move-object/from16 v28, v1
    iget v1, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v26
    move/from16 v29, v1
    add-int/lit8 v1, v8, -0x1
    mul-int v26, v26, v1
    move/from16 v111, v4
    sub-int v4, v29, v26
    move-object/from16 v32, v5
    move/from16 v5, v41
    invoke-static {v5, v4, v8}, Lorg/telegram/ui/b;->x(FII)I
    move-result v4
    move v5, v10
    const/4 v10, 0x0
    :label_77de
    if-lt v10, v8, :label_783e
    invoke-interface {v2, v3}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->hasSeparator(I)Z
    move-result v1
    if-nez v1, :label_77fe
    :label_77e6
    move-object/from16 v26, v0
    move-object/from16 v29, v2
    move v8, v3
    move v10, v5
    move/from16 v113, v6
    move-object/from16 v35, v7
    move-object v2, v9
    move-object/from16 v66, v11
    move-object/from16 v83, v12
    :label_77f5
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v19, 0x8
    const/16 v82, 0x2
    goto/16 :label_7b47
    :label_77fe
    new-instance v1, Lorg/telegram/ui/Cells/g0;
    new-instance v4, Lorg/telegram/ui/Cells/c1;
    const/4 v8, 0x0
    invoke-direct {v4, v8, v14}, Lorg/telegram/ui/Cells/c1;-><init>(ILorg/telegram/ui/Cells/u1;)V
    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/g0;-><init>(Ljava/lang/Runnable;)V
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/g0;->b:Z
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    mul-int/2addr v4, v3
    const/high16 v8, 0x40200000
    move/from16 v10, v106
    invoke-static {v8, v4, v10}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v4
    const/high16 v8, 0x42440000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    add-int/2addr v8, v4
    iput v8, v1, Lorg/telegram/ui/Cells/g0;->d:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    iput v4, v1, Lorg/telegram/ui/Cells/g0;->f:I
    iget v4, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    sub-int/2addr v4, v8
    int-to-float v4, v4
    iget v8, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    int-to-float v8, v8
    div-float/2addr v4, v8
    iput v4, v1, Lorg/telegram/ui/Cells/g0;->e:F
    iget-object v4, v14, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int v106, v10, v111
    goto :label_77e6
    :label_783e
    move/from16 v113, v6
    move/from16 v115, v8
    move/from16 v6, v106
    invoke-interface {v2, v3, v10}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getButton(II)Lorg/telegram/messenger/BotInlineKeyboard$Button;
    move-result-object v8
    move-object/from16 v66, v11
    new-instance v11, Lorg/telegram/ui/Cells/g0;
    move-object/from16 v83, v12
    new-instance v12, Lorg/telegram/ui/Cells/c1;
    move-object/from16 v29, v2
    const/16 v2, 0xa
    invoke-direct {v12, v2, v14}, Lorg/telegram/ui/Cells/c1;-><init>(ILorg/telegram/ui/Cells/u1;)V
    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/g0;-><init>(Ljava/lang/Runnable;)V
    iput-object v8, v11, Lorg/telegram/ui/Cells/g0;->k:Lorg/telegram/messenger/BotInlineKeyboard$Button;
    instance-of v2, v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;
    if-nez v2, :label_789f
    instance-of v2, v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    if-nez v2, :label_7868
    :label_7864
    move-object v12, v8
    const/4 v9, 0x3
    :label_7866
    move v8, v3
    goto :label_78aa
    :label_7868
    move-object v2, v8
    check-cast v2, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    iput-object v2, v11, Lorg/telegram/ui/Cells/g0;->j:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v2, :label_7872
    goto :label_7864
    :label_7872
    move-object v12, v8
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v8
    invoke-static {v15, v8, v9}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z
    move-result v2
    if-nez v2, :label_7880
    :label_787d
    move v8, v3
    const/4 v9, 0x3
    goto :label_78aa
    :label_7880
    iget-object v2, v14, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v8
    const/4 v2, 0x5
    invoke-static {v15, v8, v9, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoChannelDirectAdminAction(IJI)Z
    move-result v8
    if-eqz v8, :label_788e
    goto :label_787d
    :label_788e
    iget-object v8, v11, Lorg/telegram/ui/Cells/g0;->j:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    iget v8, v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->id:I
    const/4 v9, 0x2
    if-ne v8, v9, :label_7898
    const/4 v9, 0x3
    :label_7896
    const/4 v8, 0x1
    goto :label_789c
    :label_7898
    const/4 v9, 0x3
    if-eq v8, v9, :label_7896
    goto :label_7866
    :label_789c
    iput-boolean v8, v11, Lorg/telegram/ui/Cells/g0;->m:Z
    goto :label_7866
    :label_789f
    move-object v12, v8
    const/4 v2, 0x5
    const/4 v9, 0x3
    move-object v8, v12
    check-cast v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;
    iget-object v8, v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    iput-object v8, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    goto :label_7866
    :label_78aa
    invoke-virtual {v12}, Lorg/telegram/messenger/BotInlineKeyboard$Button;->getIconEmoji()J
    move-result-wide v2
    invoke-virtual {v12}, Lorg/telegram/messenger/BotInlineKeyboard$Button;->getIconRes()I
    move-result v9
    const-wide/16 v17, 0x0
    cmp-long v26, v2, v17
    if-nez v26, :label_78d6
    if-nez v9, :label_78be
    move/from16 v26, v8
    :label_78bc
    const/4 v9, -0x1
    goto :label_78f5
    :label_78be
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    iput-object v2, v11, Lorg/telegram/ui/Cells/g0;->t:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    move/from16 v26, v8
    const/4 v8, -0x1
    invoke-direct {v3, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :label_78bc
    :label_78d6
    move/from16 v26, v8
    new-instance v8, Lorg/telegram/ui/Components/s5;
    const/4 v9, 0x0
    invoke-direct {v8, v9, v15, v2, v3}, Lorg/telegram/ui/Components/s5;-><init>(IIJ)V
    iput-object v8, v11, Lorg/telegram/ui/Cells/g0;->u:Lorg/telegram/ui/Components/s5;
    new-instance v2, Lorg/telegram/ui/Cells/b1;
    invoke-direct {v2, v14}, Lorg/telegram/ui/Cells/b1;-><init>(Lorg/telegram/ui/Cells/u1;)V
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/s5;->b(Lorg/telegram/ui/Components/y5;)V
    iget-object v2, v11, Lorg/telegram/ui/Cells/g0;->u:Lorg/telegram/ui/Components/s5;
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    const/4 v9, -0x1
    invoke-direct {v3, v9, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/s5;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :label_78f5
    iget-object v2, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    if-nez v2, :label_78fe
    const-string v2, ""
    :label_78fb
    move/from16 v8, v26
    goto :label_7907
    :label_78fe
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;->getData()[B
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;
    move-result-object v2
    goto :label_78fb
    :label_7907
    invoke-static {v8, v10, v13}, Lu8/a;->d(IILjava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-nez v0, :label_7916
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v26
    check-cast v26, Lorg/telegram/ui/Cells/g0;
    :label_7913
    move-object/from16 v9, v26
    goto :label_791d
    :label_7916
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v26
    check-cast v26, Lorg/telegram/ui/Cells/g0;
    goto :label_7913
    :label_791d
    if-nez v9, :label_7922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :label_7922
    move-object/from16 v26, v0
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->o7:Ljava/util/HashMap;
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->p7:Ljava/util/HashMap;
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    int-to-float v0, v10
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v4
    int-to-float v2, v2
    mul-float/2addr v0, v2
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    int-to-float v2, v2
    div-float/2addr v0, v2
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->c:F
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    mul-int/2addr v0, v8
    const/high16 v2, 0x40200000
    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v0
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->d:I
    int-to-float v0, v4
    iget v2, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    int-to-float v2, v2
    div-float/2addr v0, v2
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->e:F
    const/high16 v0, 0x42300000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->f:I
    if-eqz v10, :label_795b
    goto :label_7963
    :label_795b
    iget v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    const/16 v86, 0x1
    or-int/lit8 v0, v0, 0x1
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    :label_7963
    if-eq v10, v1, :label_7968
    const/16 v82, 0x2
    goto :label_7970
    :label_7968
    iget v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    const/16 v82, 0x2
    or-int/lit8 v0, v0, 0x2
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    :label_7970
    if-eqz v8, :label_7973
    goto :label_797b
    :label_7973
    iget v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    const/16 v81, 0x4
    or-int/lit8 v0, v0, 0x4
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    :label_797b
    add-int/lit8 v0, v113, -0x1
    if-eq v8, v0, :label_7982
    const/16 v19, 0x8
    goto :label_798a
    :label_7982
    iget v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    const/16 v19, 0x8
    or-int/lit8 v0, v0, 0x8
    iput v0, v11, Lorg/telegram/ui/Cells/g0;->g:I
    :label_798a
    const-string v0, "paintChatBotButton"
    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/u1;->M2(Ljava/lang/String;)Landroid/graphics/Paint;
    move-result-object v0
    check-cast v0, Landroid/text/TextPaint;
    iget-object v2, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    const-class v3, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeBuy;
    invoke-static {v2, v3}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v2
    if-nez v2, :label_799f
    move-object/from16 v2, v110
    goto :label_79af
    :label_799f
    move-object/from16 v2, v110
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    const/16 v81, 0x4
    and-int/lit8 v3, v3, 0x4
    if-nez v3, :label_79b6
    :label_79af
    invoke-virtual {v12}, Lorg/telegram/messenger/BotInlineKeyboard$Button;->getText()Ljava/lang/String;
    move-result-object v3
    :label_79b3
    move/from16 v31, v4
    goto :label_79bd
    :label_79b6
    sget v3, Lorg/telegram/messenger/R$string;->PaymentReceipt:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    goto :label_79b3
    :label_79bd
    instance-of v4, v12, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    if-nez v4, :label_79c3
    const/4 v12, 0x4
    goto :label_79cb
    :label_79c3
    move-object v4, v12
    check-cast v4, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    iget v4, v4, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->id:I
    const/4 v12, 0x4
    if-eq v4, v12, :label_79d0
    :label_79cb
    move/from16 v34, v6
    move-object/from16 v35, v7
    goto :label_7a06
    :label_79d0
    new-instance v4, Landroid/text/SpannableStringBuilder;
    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    const-string v3, ">"
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/Components/ir;
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_inputarrow:I
    invoke-direct {v4, v12}, Lorg/telegram/ui/Components/ir;-><init>(I)V
    const v12, 0x3f4ccccd
    move/from16 v34, v6
    const v6, 0x3f4ccccd
    invoke-virtual {v4, v12, v6}, Lorg/telegram/ui/Components/ir;->setScale(FF)Lorg/telegram/ui/Components/ir;
    const v6, 0x3f19999a
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ir;->setAlpha(F)V
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v6
    const/16 v86, 0x1
    add-int/lit8 v6, v6, -0x1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v12
    move-object/from16 v35, v7
    const/16 v7, 0x21
    invoke-virtual {v3, v4, v6, v12, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_7a06
    iget-object v4, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    const-class v6, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeBuy;
    invoke-static {v4, v6}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v4
    if-nez v4, :label_7a11
    goto :label_7a20
    :label_7a11
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v4
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    if-nez v4, :label_7a1c
    goto :label_7a20
    :label_7a1c
    invoke-static {v3}, Lvg/d8;->R0(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    :label_7a20
    iget-object v4, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    const-class v6, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeCopy;
    invoke-static {v4, v6}, Lue/c;->c(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Z
    move-result v4
    if-nez v4, :label_7a2d
    const/4 v7, 0x0
    const/4 v12, 0x1
    goto :label_7a4f
    :label_7a2d
    new-instance v4, Landroid/text/SpannableStringBuilder;
    const-string v6, "c "
    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/Components/ir;
    sget v6, Lorg/telegram/messenger/R$drawable;->menu_copy_s:I
    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/ir;-><init>(I)V
    const v6, 0x3f666666
    const v7, 0x3f666666
    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/ir;->setScale(FF)Lorg/telegram/ui/Components/ir;
    const/16 v6, 0x21
    const/4 v7, 0x0
    const/4 v12, 0x1
    invoke-virtual {v3, v4, v7, v12, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_7a4f
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v4
    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v3
    if-nez v9, :label_7a5a
    goto :label_7a69
    :label_7a5a
    iget-object v4, v9, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    if-nez v4, :label_7a5f
    goto :label_7a69
    :label_7a5f
    invoke-virtual {v4}, Lorg/telegram/ui/Components/d21;->k()Ljava/lang/CharSequence;
    move-result-object v4
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :label_7a71
    :label_7a69
    new-instance v4, Lorg/telegram/ui/Components/d21;
    invoke-direct {v4, v3, v0}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    iput-object v4, v11, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    goto :label_7a75
    :label_7a71
    iget-object v0, v9, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    iput-object v0, v11, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    :label_7a75
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-eq v10, v1, :label_7a7d
    goto :label_7a8e
    :label_7a7d
    iget v0, v11, Lorg/telegram/ui/Cells/g0;->c:F
    iget v3, v14, Lorg/telegram/ui/Cells/u1;->r7:I
    int-to-float v3, v3
    mul-float/2addr v0, v3
    float-to-int v0, v0
    iget v4, v11, Lorg/telegram/ui/Cells/g0;->e:F
    mul-float/2addr v4, v3
    float-to-int v3, v4
    add-int/2addr v0, v3
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    move v5, v0
    :label_7a8e
    iget-object v0, v11, Lorg/telegram/ui/Cells/g0;->i:Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardInlineButton;
    const-class v3, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;
    invoke-static {v0, v3}, Lue/c;->a(Lorg/telegram/tgnet/tl/TL_keyboard$KeyboardButtonProto;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_keyboard$ButtonTypeProto;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z
    move-result v3
    if-nez v3, :label_7aa0
    goto/16 :label_7b17
    :label_7aa0
    if-nez v0, :label_7aa4
    goto/16 :label_7b17
    :label_7aa4
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;->url:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v4
    const-string v6, "startgroup"
    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-nez v6, :label_7abb
    goto :label_7b12
    :label_7abb
    const-string v6, "http"
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :label_7ac8
    goto :label_7ad5
    :label_7ac8
    const-string v6, "https"
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :label_7ad5
    goto :label_7af0
    :label_7ad5
    const-string v6, "t.me"
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :label_7ade
    goto :label_7b14
    :label_7ade
    const-string v6, "telegram.me"
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :label_7ae7
    goto :label_7b14
    :label_7ae7
    const-string v6, "telegram.dog"
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :label_7af0
    goto :label_7b14
    :label_7af0
    const-string v4, "tg"
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_7afd
    goto :label_7b12
    :label_7afd
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;->url:Ljava/lang/String;
    const-string v4, "tg:resolve"
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :label_7b08
    goto :label_7b14
    :label_7b08
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_keyboard$TL_inlineButtonTypeUrl;->url:Ljava/lang/String;
    const-string v3, "tg://resolve"
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :label_7b14
    :label_7b12
    const/4 v0, 0x0
    goto :label_7b15
    :label_7b14
    move v0, v12
    :label_7b15
    iput-boolean v0, v11, Lorg/telegram/ui/Cells/g0;->l:Z
    :label_7b17
    add-int/lit8 v10, v10, 0x1
    move/from16 v6, v113
    move-object v9, v2
    move v3, v8
    move-object/from16 v0, v26
    move-object/from16 v2, v29
    move/from16 v4, v31
    move/from16 v106, v34
    move-object/from16 v7, v35
    move-object/from16 v11, v66
    move-object/from16 v12, v83
    move/from16 v8, v115
    goto/16 :label_77de
    :label_7b2f
    move-object/from16 v26, v0
    move-object/from16 v28, v1
    move-object/from16 v29, v2
    move v8, v3
    move/from16 v111, v4
    move-object/from16 v32, v5
    move/from16 v113, v6
    move-object/from16 v35, v7
    move-object v2, v9
    move-object/from16 v66, v11
    move-object/from16 v83, v12
    move/from16 v34, v106
    goto/16 :label_77f5
    :label_7b47
    add-int/lit8 v3, v8, 0x1
    move/from16 v4, v111
    move/from16 v6, v113
    move-object v9, v2
    move-object/from16 v0, v26
    move-object/from16 v1, v28
    move-object/from16 v2, v29
    move-object/from16 v5, v32
    move-object/from16 v7, v35
    move/from16 v67, v58
    move-object/from16 v11, v66
    move/from16 v53, v74
    move-object/from16 v12, v83
    const/4 v8, -0x1
    const/16 v81, 0x4
    goto/16 :label_7001
    :label_7b65
    move-object/from16 v28, v1
    move-object v1, v2
    move/from16 v111, v4
    move-object/from16 v32, v5
    move/from16 v113, v6
    move-object v2, v9
    move-object/from16 v66, v11
    move-object/from16 v83, v12
    move/from16 v74, v53
    move/from16 v58, v67
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v19, 0x8
    const/16 v20, 0x0
    const/16 v72, 0x13
    const/16 v82, 0x2
    const/16 v85, 0x0
    invoke-interface {v1, v0}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->hasSeparator(I)Z
    move-result v4
    if-nez v4, :label_7b8b
    goto :label_7b8d
    :label_7b8b
    add-int/lit8 v3, v3, 0x1
    :label_7b8d
    add-int/lit8 v0, v0, 0x1
    move/from16 v4, v111
    move/from16 v6, v113
    move-object v9, v2
    move-object/from16 v5, v32
    move/from16 v67, v58
    move-object/from16 v11, v66
    move/from16 v53, v74
    move-object/from16 v12, v83
    const/4 v8, -0x1
    const/16 v81, 0x4
    move-object v2, v1
    move-object/from16 v1, v28
    goto/16 :label_6f5c
    :label_7ba6
    move-object/from16 v28, v1
    move-object/from16 v32, v5
    move-object v2, v9
    move-object/from16 v66, v11
    move-object/from16 v83, v12
    move/from16 v74, v53
    move/from16 v58, v67
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v19, 0x8
    const/16 v20, 0x0
    const/16 v72, 0x13
    const/16 v82, 0x2
    const/16 v85, 0x0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    add-int/lit8 v0, v0, 0x1
    check-cast v1, Lorg/telegram/ui/Cells/g0;
    iget-object v1, v1, Lorg/telegram/ui/Cells/g0;->u:Lorg/telegram/ui/Components/s5;
    if-nez v1, :label_7bde
    :label_7bcc
    move-object v9, v2
    move-object/from16 v1, v28
    move-object/from16 v5, v32
    move/from16 v67, v58
    move-object/from16 v11, v66
    move/from16 v53, v74
    move-object/from16 v12, v83
    const/4 v8, -0x1
    const/16 v81, 0x4
    goto/16 :label_6ebe
    :label_7bde
    invoke-virtual {v1}, Lorg/telegram/ui/Components/s5;->d()V
    goto :label_7bcc
    :label_7be2
    move-object/from16 v28, v1
    move/from16 v30, v4
    move-object/from16 v32, v5
    move-object/from16 v66, v11
    move-object/from16 v83, v12
    move/from16 v74, v53
    move/from16 v58, v67
    const/16 v4, 0x14
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v19, 0x8
    const/16 v20, 0x0
    const/16 v72, 0x13
    const/16 v82, 0x2
    const/16 v85, 0x0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    add-int/lit8 v6, v6, 0x1
    check-cast v1, Lorg/telegram/ui/Cells/s1;
    iget v3, v1, Lorg/telegram/ui/Cells/s1;->b:I
    iget v5, v14, Lorg/telegram/ui/Cells/u1;->q4:I
    add-int/2addr v3, v5
    iput v3, v1, Lorg/telegram/ui/Cells/s1;->b:I
    move-object/from16 v9, v110
    move-object/from16 v1, v28
    move/from16 v4, v30
    move-object/from16 v5, v32
    move-object/from16 v12, v83
    const/4 v3, 0x4
    const/4 v8, -0x1
    goto/16 :label_6d51
    :label_7c1c
    move-object v14, v1
    move/from16 v33, v9
    move-object/from16 v28, v11
    move-object/from16 v66, v13
    move/from16 v15, v27
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v20, 0x0
    const/16 v30, 0x5
    const/16 v81, 0x4
    const/16 v82, 0x2
    const/16 v85, 0x0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    add-int/lit8 v2, v2, 0x1
    check-cast v1, Lorg/telegram/ui/Cells/s1;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/s1;->r()V
    iget-object v4, v1, Lorg/telegram/ui/Cells/s1;->E:Lorg/telegram/ui/Cells/u1;
    iget-object v5, v1, Lorg/telegram/ui/Cells/s1;->r:Lorg/telegram/ui/Components/x5;
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/b6;->release(Landroid/view/View;Lorg/telegram/ui/Components/x5;)V
    const/4 v5, 0x0
    iput-object v5, v1, Lorg/telegram/ui/Cells/s1;->r:Lorg/telegram/ui/Components/x5;
    iget-object v8, v1, Lorg/telegram/ui/Cells/s1;->B:Lorg/telegram/ui/Components/x5;
    invoke-static {v4, v8}, Lorg/telegram/ui/Components/b6;->release(Landroid/view/View;Lorg/telegram/ui/Components/x5;)V
    iput-object v5, v1, Lorg/telegram/ui/Cells/s1;->B:Lorg/telegram/ui/Components/x5;
    move-object/from16 v12, v110
    move-object v1, v14
    move/from16 v14, v114
    move/from16 v15, v115
    goto/16 :label_079d
    :label_7c57
    move-object v14, v1
    move-object/from16 v28, v3
    move/from16 v82, v7
    move/from16 v30, v11
    move-object/from16 v66, v13
    move/from16 v15, v27
    const/4 v12, 0x1
    const-wide/16 v17, 0x0
    const/16 v20, 0x0
    const/high16 v33, 0x3f800000
    const/16 v81, 0x4
    const/16 v85, 0x0
    move v7, v0
    aget-object v0, v4, v2
    if-nez v0, :label_7c74
    const/4 v4, 0x0
    goto :label_7c81
    :label_7c74
    const/4 v4, 0x0
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    iget-object v0, v14, Lorg/telegram/ui/Cells/u1;->u3:[Landroid/graphics/drawable/Drawable;
    aget-object v0, v0, v2
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
    :label_7c81
    add-int/lit8 v2, v2, 0x1
    move-object/from16 v12, v110
    move v0, v7
    move-object v1, v14
    move/from16 v27, v15
    move-object/from16 v3, v28
    move/from16 v11, v30
    move-object/from16 v13, v66
    move/from16 v7, v82
    move/from16 v14, v114
    move/from16 v15, v115
    goto/16 :label_0613
    .catch Ljava/lang/Exception; {:label_12df .. :label_12f2} :label_13a1
    .catch Ljava/lang/Exception; {:label_12f4 .. :label_135a} :label_1305
    .catch Ljava/lang/Exception; {:label_135a .. :label_139d} :label_139f
    .catch Ljava/lang/Exception; {:label_2dfb .. :label_2e14} :label_2e15
    .catch Ljava/lang/Exception; {:label_33df .. :label_346d} :label_3469
    .catch Ljava/lang/Exception; {:label_346d .. :label_34b0} :label_34b2
    .catch Ljava/lang/Exception; {:label_4454 .. :label_4629} :label_4203
    .catch Ljava/lang/Exception; {:label_508c .. :label_5096} :label_5260
    .catch Ljava/lang/Exception; {:label_509c .. :label_50a3} :label_524e
    .catch Ljava/lang/Exception; {:label_50a5 .. :label_50a7} :label_50d9
    .catch Ljava/lang/Exception; {:label_50b1 .. :label_50b5} :label_50d3
    .catch Ljava/lang/Exception; {:label_50b9 .. :label_50bf} :label_50c4
    .catch Ljava/lang/Exception; {:label_50e3 .. :label_50f6} :label_5240
    .catch Ljava/lang/Exception; {:label_50fa .. :label_50fc} :label_5232
    .catch Ljava/lang/Exception; {:label_50ff .. :label_5108} :label_522a
    .catch Ljava/lang/Exception; {:label_510b .. :label_512e} :label_51ce
    .catch Ljava/lang/Exception; {:label_5132 .. :label_5138} :label_51c8
    .catch Ljava/lang/Exception; {:label_513a .. :label_5146} :label_514f
    .catch Ljava/lang/Exception; {:label_5156 .. :label_515c} :label_51c8
    .catch Ljava/lang/Exception; {:label_515f .. :label_516e} :label_519a
    .catch Ljava/lang/Exception; {:label_517e .. :label_5184} :label_5196
    .catch Ljava/lang/Exception; {:label_5187 .. :label_521e} :label_5191
    .catch Ljava/lang/Exception; {:label_5270 .. :label_52b9} :label_52ba
    .catch Ljava/lang/Exception; {:label_52c5 .. :label_52da} :label_5319
    .catch Ljava/lang/Exception; {:label_52da .. :label_52e5} :label_52e8
    .catch Ljava/lang/Exception; {:label_52ea .. :label_52fb} :label_5319
    .catch Ljava/lang/Exception; {:label_5303 .. :label_5307} :label_5314
    .catch Ljava/lang/Exception; {:label_5307 .. :label_535c} :label_537c
    .catch Ljava/lang/Exception; {:label_5361 .. :label_5379} :label_537a
    .catch Ljava/lang/Exception; {:label_537e .. :label_53af} :label_537c
    .catch Ljava/lang/Exception; {:label_53cf .. :label_53e4} :label_5414
    .catch Ljava/lang/Exception; {:label_53e4 .. :label_53ef} :label_53ef
    .catch Ljava/lang/Exception; {:label_53f5 .. :label_5400} :label_5414
    .catch Ljava/lang/Exception; {:label_5408 .. :label_540c} :label_5417
    .catch Ljava/lang/Exception; {:label_540c .. :label_541e} :label_5414
    .catch Ljava/lang/Exception; {:label_5420 .. :label_542d} :label_54ab
    .catch Ljava/lang/Exception; {:label_5431 .. :label_54a8} :label_5414
    .catch Ljava/lang/Exception; {:label_54b6 .. :label_55bf} :label_54ef
    .catch Ljava/lang/Exception; {:label_6696 .. :label_66c3} :label_66c5
    .catch Ljava/lang/Exception; {:label_6b96 .. :label_6baf} :label_6bb0
    .catch Ljava/lang/Exception; {:label_6c13 .. :label_6c8c} :label_6c66
    .catch Ljava/lang/Exception; {:label_6c94 .. :label_6cc1} :label_6d28
    .catch Ljava/lang/Exception; {:label_6cc9 .. :label_6d23} :label_6d26
    .catch Ljava/lang/Exception; {:label_6d91 .. :label_6d99} :label_6dfd
    .catch Ljava/lang/Exception; {:label_6d9e .. :label_6dfa} :label_6de8
    .catch Ljava/lang/Exception; {:label_6e04 .. :label_6e79} :label_6e58
    .catch Ljava/lang/Exception; {:label_7aa4 .. :label_7b17} :label_7b17
.end method
