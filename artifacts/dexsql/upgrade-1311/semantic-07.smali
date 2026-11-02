# file_id=2 method_idx=49645 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->bd(Z)V"
.method public final bd(Z)V
    .registers 23

    move-object/from16 v0, v21
    iget-object v1, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    if-nez v1, :label_0008
    goto/16 :label_0235
    :label_0008
    iget-boolean v2, v0, Lorg/telegram/ui/ko;->C4:Z
    const/4 v4, 0x0
    if-nez v2, :label_0048
    iget-object v2, v0, Lorg/telegram/ui/ko;->I7:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0048
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    move v2, v4
    :label_0016
    if-ge v2, v1, :label_0048
    iget-object v5, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
    instance-of v6, v5, Lorg/telegram/ui/Cells/u1;
    if-eqz v6, :label_0045
    move-object v6, v5
    check-cast v6, Lorg/telegram/ui/Cells/u1;
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v6
    iget-object v7, v0, Lorg/telegram/ui/ko;->I7:Lorg/telegram/messenger/MessageObject;
    if-ne v6, v7, :label_0045
    iget-object v1, v0, Lorg/telegram/ui/ko;->t6:Ljava/util/ArrayList;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v2
    if-ltz v2, :label_0048
    iget-object v2, v0, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    iget v2, v2, Lorg/telegram/ui/vm;->I:I
    iget-object v6, v0, Lorg/telegram/ui/ko;->I7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v1
    add-int/2addr v1, v2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ko;->Q8(Landroid/view/View;)I
    move-result v2
    goto :label_004a
    :label_0045
    add-int/lit8 v2, v2, 0x1
    goto :label_0016
    :label_0048
    move v2, v4
    const/4 v1, -0x1
    :label_004a
    iget-object v5, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v5
    iget-object v6, v0, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/xk;
    if-eqz v6, :label_0057
    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    :label_0057
    iget-object v6, v0, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    const-wide/16 v7, 0x0
    if-eqz v6, :label_0060
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J
    goto :label_0061
    :label_0060
    move-wide v9, v7
    :label_0061
    move v6, v4
    :label_0062
    if-ge v6, v5, :label_022d
    iget-object v11, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v11
    instance-of v12, v11, Lorg/telegram/ui/Cells/u1;
    const/4 v13, 0x1
    if-eqz v12, :label_0208
    move-object v14, v11
    check-cast v14, Lorg/telegram/ui/Cells/u1;
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v15
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/l;->t()Z
    move-result v11
    const/4 v12, 0x0
    if-nez v11, :label_0092
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->F9()Z
    move-result v11
    if-eqz v11, :label_0086
    goto :label_0092
    :label_0086
    invoke-virtual {v14, v4}, Lorg/telegram/ui/Cells/u1;->setDrawSelectionBackground(Z)V
    invoke-virtual {v14, v4, v13}, Lorg/telegram/ui/Cells/u1;->J3(ZZ)V
    invoke-virtual {v14, v4, v4, v13}, Lorg/telegram/ui/Cells/u1;->L3(ZZZ)V
    move v7, v4
    move v8, v7
    goto :label_00dc
    :label_0092
    iput-boolean v4, v0, Lorg/telegram/ui/ko;->M7:Z
    iput-wide v7, v0, Lorg/telegram/ui/ko;->N7:J
    iput-object v12, v0, Lorg/telegram/ui/ko;->O7:Ljava/lang/String;
    iput-object v12, v0, Lorg/telegram/ui/ko;->P7:Ljava/lang/Integer;
    iput-object v12, v0, Lorg/telegram/ui/ko;->Q7:[B
    iget-object v11, v0, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v11, :label_00ab
    if-eqz v15, :label_00ab
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v11
    if-nez v11, :label_00a9
    goto :label_00ab
    :label_00a9
    move v11, v4
    goto :label_00ac
    :label_00ab
    move v11, v13
    :label_00ac
    invoke-virtual {v14, v11, v13}, Lorg/telegram/ui/Cells/u1;->J3(ZZ)V
    if-eqz v15, :label_00be
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v16
    iget-wide v7, v0, Lorg/telegram/ui/ko;->S5:J
    cmp-long v7, v16, v7
    if-nez v7, :label_00bc
    goto :label_00be
    :label_00bc
    move v7, v13
    goto :label_00bf
    :label_00be
    move v7, v4
    :label_00bf
    if-eqz v15, :label_00d4
    iget-object v8, v0, Lorg/telegram/ui/ko;->V5:[Landroid/util/SparseArray;
    aget-object v8, v8, v7
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v11
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->indexOfKey(I)I
    move-result v8
    if-ltz v8, :label_00d4
    invoke-virtual {v0, v15, v14, v7, v13}, Lorg/telegram/ui/ko;->mb(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/u1;IZ)V
    move v7, v13
    goto :label_00db
    :label_00d4
    invoke-virtual {v14, v4}, Lorg/telegram/ui/Cells/u1;->setDrawSelectionBackground(Z)V
    invoke-virtual {v14, v4, v4, v13}, Lorg/telegram/ui/Cells/u1;->L3(ZZZ)V
    move v7, v4
    :label_00db
    move v8, v13
    :label_00dc
    if-eqz v15, :label_0113
    iget-boolean v11, v15, Lorg/telegram/messenger/MessageObject;->deleted:Z
    if-eqz v11, :label_00e8
    iget-wide v3, v14, Lorg/telegram/ui/Cells/u1;->a8:J
    cmp-long v3, v3, v9
    if-eqz v3, :label_0113
    :label_00e8
    if-nez v22, :label_0113
    invoke-virtual {v14, v13}, Lorg/telegram/ui/Cells/u1;->setIsUpdating(Z)V
    iget-object v3, v0, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v3, :label_00f4
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J
    goto :label_00f6
    :label_00f4
    const-wide/16 v3, 0x0
    :label_00f6
    iput-wide v3, v14, Lorg/telegram/ui/Cells/u1;->a8:J
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-result-object v16
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->m3()Z
    move-result v17
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->n3()Z
    move-result v18
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->h3()Z
    move-result v19
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/u1;->j3()Z
    move-result v20
    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Cells/u1;->X3(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V
    const/4 v3, 0x0
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->setIsUpdating(Z)V
    :label_0113
    iget-object v3, v0, Lorg/telegram/ui/ko;->I8:Landroid/view/View;
    if-eq v14, v3, :label_0123
    xor-int/lit8 v3, v8, 0x1
    if-eqz v8, :label_011f
    if-eqz v7, :label_011f
    move v4, v13
    goto :label_0120
    :label_011f
    const/4 v4, 0x0
    :label_0120
    invoke-virtual {v14, v3, v4}, Lorg/telegram/ui/Cells/u1;->K3(ZZ)V
    :label_0123
    iget v3, v0, Lorg/telegram/ui/ko;->K7:I
    const v4, 0x7fffffff
    if-eq v3, v4, :label_0136
    if-eqz v15, :label_0136
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    iget v7, v0, Lorg/telegram/ui/ko;->K7:I
    if-ne v3, v7, :label_0136
    move v3, v13
    goto :label_0137
    :label_0136
    const/4 v3, 0x0
    :label_0137
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->setHighlighted(Z)V
    iget v3, v0, Lorg/telegram/ui/ko;->K7:I
    if-eq v3, v4, :label_0141
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->ec()V
    :label_0141
    iget-boolean v3, v14, Lorg/telegram/ui/Cells/u1;->e8:Z
    if-eqz v3, :label_0190
    iget-object v4, v0, Lorg/telegram/ui/ko;->O7:Ljava/lang/String;
    if-eqz v4, :label_0190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v3
    iget-object v7, v0, Lorg/telegram/ui/ko;->O7:Ljava/lang/String;
    iget v8, v0, Lorg/telegram/ui/ko;->R7:I
    iget-boolean v11, v0, Lorg/telegram/ui/ko;->M7:Z
    if-nez v11, :label_0162
    iget-wide v11, v0, Lorg/telegram/ui/ko;->N7:J
    sub-long v11, v3, v11
    const-wide/16 v15, 0xc8
    cmp-long v11, v11, v15
    if-gez v11, :label_0160
    goto :label_0162
    :label_0160
    const/4 v11, 0x0
    goto :label_0163
    :label_0162
    move v11, v13
    :label_0163
    invoke-virtual {v14, v7, v13, v11, v8}, Lorg/telegram/ui/Cells/u1;->T3(Ljava/lang/String;ZZI)Z
    move-result v7
    if-nez v7, :label_0182
    iget-boolean v7, v0, Lorg/telegram/ui/ko;->L7:Z
    if-eqz v7, :label_0182
    invoke-static {v0}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v7
    sget v8, Lorg/telegram/messenger/R$raw;->error:I
    sget v11, Lorg/telegram/messenger/R$string;->QuoteNotFound:I
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v11
    const/16 v12, 0x24
    invoke-virtual {v7, v8, v12, v11}, Lorg/telegram/ui/Components/xc;->Q(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/qc;
    move-result-object v7
    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/qc;->k(Z)V
    :label_0182
    iget-boolean v7, v0, Lorg/telegram/ui/ko;->M7:Z
    if-eqz v7, :label_0188
    iput-wide v3, v0, Lorg/telegram/ui/ko;->N7:J
    :label_0188
    const/4 v4, 0x0
    iput-boolean v4, v0, Lorg/telegram/ui/ko;->M7:Z
    iput-boolean v4, v0, Lorg/telegram/ui/ko;->L7:Z
    :label_018d
    move v8, v5
    goto/16 :label_01fa
    :label_0190
    const/4 v4, 0x0
    if-eqz v3, :label_019f
    iget-object v7, v0, Lorg/telegram/ui/ko;->P7:Ljava/lang/Integer;
    if-eqz v7, :label_019f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    move-result v3
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->R3(I)V
    goto :label_018d
    :label_019f
    if-eqz v3, :label_01a9
    iget-object v3, v0, Lorg/telegram/ui/ko;->Q7:[B
    if-eqz v3, :label_01a9
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->P3([B)V
    goto :label_018d
    :label_01a9
    iget v3, v0, Lorg/telegram/ui/ko;->Q3:I
    const/4 v7, 0x7
    if-ne v3, v7, :label_01ba
    iget-object v3, v0, Lorg/telegram/ui/ko;->t3:Ljava/lang/String;
    if-eqz v3, :label_01ba
    iget-object v3, v0, Lorg/telegram/ui/ko;->s3:Ljava/lang/String;
    if-eqz v3, :label_01ba
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->S3(Ljava/lang/String;)V
    goto :label_018d
    :label_01ba
    iget-object v3, v0, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    if-eqz v3, :label_01f6
    iget-boolean v3, v0, Lorg/telegram/ui/ko;->n0:Z
    if-eqz v3, :label_01f6
    if-eqz v15, :label_01f6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v3
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v7
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v15
    move v8, v5
    iget-wide v4, v0, Lorg/telegram/ui/ko;->K6:J
    cmp-long v4, v15, v4
    if-nez v4, :label_01d9
    move v4, v13
    goto :label_01da
    :label_01d9
    const/4 v4, 0x0
    :label_01da
    invoke-virtual {v3, v7, v4}, Lorg/telegram/messenger/MediaDataController;->isMessageFound(IZ)Z
    move-result v3
    if-eqz v3, :label_01f7
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :label_01f7
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/u1;->S3(Ljava/lang/String;)V
    goto :label_01fa
    :label_01f6
    move v8, v5
    :label_01f7
    invoke-virtual {v14, v12}, Lorg/telegram/ui/Cells/u1;->S3(Ljava/lang/String;)V
    :label_01fa
    iget-object v3, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I
    move-result v3
    if-eqz v3, :label_0203
    goto :label_0204
    :label_0203
    const/4 v13, 0x0
    :label_0204
    invoke-virtual {v14, v13}, Lorg/telegram/ui/Cells/u1;->setSpoilersSuppressed(Z)V
    goto :label_0225
    :label_0208
    move v8, v5
    instance-of v3, v11, Lorg/telegram/ui/Cells/x0;
    if-eqz v3, :label_0225
    check-cast v11, Lorg/telegram/ui/Cells/x0;
    if-nez v22, :label_0218
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/x0;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v3
    invoke-virtual {v11, v3}, Lorg/telegram/ui/Cells/x0;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    :label_0218
    iget-object v3, v0, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I
    move-result v3
    if-eqz v3, :label_0221
    goto :label_0222
    :label_0221
    const/4 v13, 0x0
    :label_0222
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Cells/x0;->setSpoilersSuppressed(Z)V
    :label_0225
    add-int/lit8 v6, v6, 0x1
    move v5, v8
    const/4 v4, 0x0
    const-wide/16 v7, 0x0
    goto/16 :label_0062
    :label_022d
    const/4 v3, -0x1
    if-eq v1, v3, :label_0235
    iget-object v3, v0, Lorg/telegram/ui/ko;->y0:Lorg/telegram/ui/ik;
    invoke-virtual {v3, v1, v2}, Ln4/h0;->h1(II)V
    :label_0235
    return-void
.end method
