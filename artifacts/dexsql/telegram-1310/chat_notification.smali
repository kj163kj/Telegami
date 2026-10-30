# file_id=2 method_idx=49617 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->a8(I[Ljava/lang/Object;)V"
.method public final varargs a8(I[Ljava/lang/Object;)V
    .registers 35

    move-object/from16 v1, v32
    move/from16 v0, v33
    move-object/from16 v2, v34
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I
    const/4 v4, 0x3
    iget-object v7, v1, Lorg/telegram/ui/ko;->t6:Ljava/util/ArrayList;
    const/4 v8, 0x1
    const/4 v9, 0x0
    if-ne v0, v3, :label_00d6
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v0, v8, :label_0789
    if-ne v0, v4, :label_0017
    goto/16 :label_0789
    :label_0017
    aget-object v0, v2, v9
    check-cast v0, Lorg/telegram/messenger/support/LongSparseIntArray;
    aget-object v2, v2, v8
    check-cast v2, Lorg/telegram/messenger/support/LongSparseIntArray;
    if-eqz v0, :label_0079
    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v3
    move v4, v9
    :label_0026
    if-ge v4, v3, :label_0079
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v5
    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I
    move-result v10
    int-to-long v10, v10
    iget-wide v12, v1, Lorg/telegram/ui/ko;->S5:J
    cmp-long v5, v5, v12
    if-eqz v5, :label_003a
    add-int/lit8 v4, v4, 0x1
    goto :label_0026
    :label_003a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v0
    move v3, v9
    move v4, v3
    :label_0040
    if-ge v3, v0, :label_0075
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v6
    if-nez v6, :label_0072
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v6
    if-lez v6, :label_0072
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v6
    long-to-int v12, v10
    if-gt v6, v12, :label_0072
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z
    move-result v6
    if-nez v6, :label_0062
    goto :label_0075
    :label_0062
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->setIsRead()V
    iget-object v4, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v4, :label_006c
    invoke-virtual {v4, v5}, Lorg/telegram/ui/vm;->M(Lorg/telegram/messenger/MessageObject;)V
    :label_006c
    iget v4, v1, Lorg/telegram/ui/ko;->i6:I
    sub-int/2addr v4, v8
    iput v4, v1, Lorg/telegram/ui/ko;->i6:I
    move v4, v8
    :label_0072
    add-int/lit8 v3, v3, 0x1
    goto :label_0040
    :label_0075
    invoke-virtual {v1, v9}, Lorg/telegram/ui/ko;->Na(Z)V
    goto :label_007a
    :label_0079
    move v4, v9
    :label_007a
    if-eqz v4, :label_0091
    iget v0, v1, Lorg/telegram/ui/ko;->i6:I
    if-gez v0, :label_0082
    iput v9, v1, Lorg/telegram/ui/ko;->i6:I
    :label_0082
    iget-object v0, v1, Lorg/telegram/ui/ko;->i1:Lfg/j;
    if-eqz v0, :label_0091
    iget v3, v1, Lorg/telegram/ui/ko;->j6:I
    iget v4, v1, Lorg/telegram/ui/ko;->i6:I
    if-eq v3, v4, :label_0091
    iput v4, v1, Lorg/telegram/ui/ko;->j6:I
    invoke-virtual {v0, v8, v4, v8}, Lfg/j;->c(IIZ)V
    :label_0091
    if-eqz v2, :label_0789
    invoke-virtual {v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v0
    move v3, v9
    :label_0098
    if-ge v3, v0, :label_0789
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v4
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I
    move-result v6
    iget-wide v10, v1, Lorg/telegram/ui/ko;->S5:J
    cmp-long v4, v4, v10
    if-eqz v4, :label_00ab
    add-int/lit8 v3, v3, 0x1
    goto :label_0098
    :label_00ab
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v0
    :label_00af
    if-ge v9, v0, :label_0789
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v3
    if-eqz v3, :label_00d3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    if-lez v3, :label_00d3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    if-gt v3, v6, :label_00d3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->setIsRead()V
    iget-object v3, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v3, :label_00d3
    invoke-virtual {v3, v2}, Lorg/telegram/ui/vm;->M(Lorg/telegram/messenger/MessageObject;)V
    :label_00d3
    add-int/lit8 v9, v9, 0x1
    goto :label_00af
    :label_00d6
    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyCleared:I
    iget-object v5, v1, Lorg/telegram/ui/ko;->r6:Landroid/util/SparseArray;
    iget-object v6, v1, Lorg/telegram/ui/ko;->q6:Ljava/util/HashMap;
    iget-object v10, v1, Lorg/telegram/ui/ko;->s6:Lz/f;
    iget-object v11, v1, Lorg/telegram/ui/ko;->n6:[Landroid/util/SparseArray;
    const/4 v12, 0x0
    if-ne v0, v3, :label_0243
    aget-object v0, v2, v9
    check-cast v0, Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    move-result-wide v3
    iget-wide v13, v1, Lorg/telegram/ui/ko;->S5:J
    cmp-long v0, v3, v13
    if-eqz v0, :label_00f3
    goto/16 :label_0789
    :label_00f3
    aget-object v0, v2, v8
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_0116
    iget-object v2, v1, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    iget-object v2, v1, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    iput v9, v1, Lorg/telegram/ui/ko;->K4:I
    iput v9, v1, Lorg/telegram/ui/ko;->O4:I
    iput v9, v1, Lorg/telegram/ui/ko;->P4:I
    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/ko;->Cc(IZ)V
    :label_0116
    move v2, v9
    move v3, v2
    :label_0118
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v2, v4, :label_017e
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v13
    if-lez v13, :label_017c
    if-le v13, v0, :label_012d
    goto :label_017c
    :label_012d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v3, v2, -0x1
    aget-object v14, v11, v9
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->remove(I)V
    int-to-long v13, v13
    invoke-virtual {v10, v13, v14}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/messenger/MessageObject;
    if-eqz v15, :label_0150
    invoke-virtual {v10, v13, v14}, Lz/f;->l(J)V
    if-ltz v3, :label_0150
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v13
    if-ge v3, v13, :label_0150
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v3, v2, -0x2
    :label_0150
    iget-object v2, v4, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-eqz v2, :label_017a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-eqz v2, :label_017a
    iget-object v2, v4, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    iget v2, v4, Lorg/telegram/messenger/MessageObject;->dateKeyInt:I
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V
    if-ltz v3, :label_017a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v3, v2, :label_017a
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v3, v3, -0x1
    :label_017a
    move v2, v3
    move v3, v8
    :label_017c
    add-int/2addr v2, v8
    goto :label_0118
    :label_017e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_022e
    iget-object v0, v1, Lorg/telegram/ui/ko;->B6:[Z
    aget-boolean v0, v0, v9
    if-nez v0, :label_020a
    iget-boolean v0, v1, Lorg/telegram/ui/ko;->F6:Z
    if-nez v0, :label_020a
    invoke-virtual {v1, v9}, Lorg/telegram/ui/ko;->Tb(Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    if-eqz v0, :label_0198
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/bn0;->setEmptyView(Landroid/view/View;)V
    :label_0198
    iget-object v0, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v2, v1, Lorg/telegram/ui/ko;->y6:[I
    const v4, 0x7fffffff
    iget-object v5, v1, Lorg/telegram/ui/ko;->x6:[I
    const/high16 v6, -0x80000000
    if-nez v0, :label_01ae
    aput v4, v5, v8
    aput v4, v5, v9
    aput v6, v2, v8
    aput v6, v2, v9
    goto :label_01b6
    :label_01ae
    aput v6, v5, v8
    aput v6, v5, v9
    aput v4, v2, v8
    aput v4, v2, v9
    :label_01b6
    iget-object v0, v1, Lorg/telegram/ui/ko;->z6:[I
    aput v6, v0, v8
    aput v6, v0, v9
    iget-object v0, v1, Lorg/telegram/ui/ko;->A6:[I
    aput v9, v0, v8
    aput v9, v0, v9
    iget v2, v1, Lorg/telegram/ui/ko;->U5:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    iget-object v4, v1, Lorg/telegram/ui/ko;->g6:Ljava/util/ArrayList;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v10
    iget-wide v11, v1, Lorg/telegram/ui/ko;->S5:J
    iget-wide v13, v1, Lorg/telegram/ui/ko;->K6:J
    iget-object v2, v1, Lorg/telegram/ui/ko;->C6:[Z
    aget-boolean v2, v2, v9
    xor-int/lit8 v19, v2, 0x1
    aget v20, v0, v9
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->classGuid:I
    iget v2, v1, Lorg/telegram/ui/ko;->Q3:I
    iget-wide v4, v1, Lorg/telegram/ui/ko;->c4:J
    iget v6, v1, Lorg/telegram/ui/ko;->l4:I
    iget v7, v1, Lorg/telegram/ui/ko;->U5:I
    add-int/lit8 v15, v7, 0x1
    iput v15, v1, Lorg/telegram/ui/ko;->U5:I
    iget-boolean v15, v1, Lorg/telegram/ui/ko;->g4:Z
    move/from16 v29, v15
    const/4 v15, 0x0
    const/16 v16, 0x1e
    const/16 v17, 0x0
    const/16 v18, 0x0
    const/16 v22, 0x0
    const/16 v23, 0x0
    move/from16 v21, v0
    move/from16 v24, v2
    move-wide/from16 v25, v4
    move/from16 v27, v6
    move/from16 v28, v7
    invoke-virtual/range {v10 .. v29}, Lorg/telegram/messenger/MessagesController;->loadMessages(JJZIIIZIIIIIJIIZ)V
    iput-boolean v8, v1, Lorg/telegram/ui/ko;->F6:Z
    goto :label_022e
    :label_020a
    iget-object v0, v1, Lorg/telegram/ui/ko;->k8:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0217
    iput-object v12, v1, Lorg/telegram/ui/ko;->k8:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_0217
    invoke-virtual {v0, v12, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->W0(Lorg/telegram/messenger/MessageObject;ZZ)V
    :label_0217
    iget-object v0, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v0, :label_022e
    iget-object v0, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :label_022e
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-eqz v0, :label_022e
    iget-object v0, v1, Lorg/telegram/ui/ko;->d8:Ljava/lang/String;
    if-nez v0, :label_022e
    const-string v0, ""
    iput-object v0, v1, Lorg/telegram/ui/ko;->d8:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lorg/telegram/ui/ko;->lc(Z)V
    :label_022e
    iput-boolean v9, v1, Lorg/telegram/ui/ko;->f9:Z
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->zc()V
    invoke-virtual {v1, v9}, Lorg/telegram/ui/ko;->Ob(Z)V
    invoke-virtual {v1, v8}, Lorg/telegram/ui/ko;->Na(Z)V
    if-eqz v3, :label_0789
    iget-object v0, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v0, :label_0789
    invoke-virtual {v0, v9}, Lorg/telegram/ui/vm;->O(Z)V
    return-void
    :label_0243
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    const/4 v13, 0x4
    const/4 v14, 0x6
    const/4 v15, 0x2
    move/from16 v16, v9
    const/4 v9, 0x5
    if-ne v0, v3, :label_03f6
    aget-object v0, v2, v15
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    iget v3, v1, Lorg/telegram/ui/ko;->Q3:I
    if-ne v3, v8, :label_025b
    move v3, v8
    goto :label_025d
    :label_025b
    move/from16 v3, v16
    :label_025d
    if-eq v0, v3, :label_0261
    goto/16 :label_0789
    :label_0261
    aget-object v0, v2, v16
    check-cast v0, Ljava/util/ArrayList;
    aget-object v3, v2, v8
    check-cast v3, Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    move-result-wide v5
    array-length v3, v2
    if-le v3, v15, :label_027c
    aget-object v3, v2, v15
    check-cast v3, Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v3
    if-eqz v3, :label_027c
    move v10, v8
    goto :label_027e
    :label_027c
    move/from16 v10, v16
    :label_027e
    array-length v3, v2
    if-le v3, v4, :label_028e
    aget-object v3, v2, v4
    check-cast v3, Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v3
    if-eqz v3, :label_028e
    move-wide v3, v5
    move v5, v8
    goto :label_0291
    :label_028e
    move-wide v3, v5
    move/from16 v5, v16
    :label_0291
    array-length v6, v2
    if-le v6, v9, :label_029e
    aget-object v6, v2, v9
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v6
    move v9, v6
    goto :label_02a0
    :label_029e
    move/from16 v9, v16
    :label_02a0
    array-length v6, v2
    if-le v6, v14, :label_02a9
    aget-object v6, v2, v14
    check-cast v6, Ljava/util/ArrayList;
    move-object v14, v6
    goto :label_02aa
    :label_02a9
    move-object v14, v12
    :label_02aa
    array-length v6, v2
    if-le v6, v13, :label_02b7
    aget-object v2, v2, v13
    check-cast v2, Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    if-nez v2, :label_02bf
    :label_02b7
    if-eqz v14, :label_02c1
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_02c1
    :label_02bf
    move v13, v8
    goto :label_02c3
    :label_02c1
    move/from16 v13, v16
    :label_02c3
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v6
    move-object/from16 v19, v12
    move/from16 v8, v16
    move v15, v8
    move/from16 v17, v15
    :label_02d3
    if-ge v8, v6, :label_0310
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v20
    add-int/lit8 v8, v8, 0x1
    check-cast v20, Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    move-result v12
    move-wide/from16 v22, v3
    aget-object v3, v11, v16
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    move/from16 v33, v5
    int-to-long v4, v12
    move-wide/from16 v24, v4
    iget-wide v4, v1, Lorg/telegram/ui/ko;->c4:J
    cmp-long v4, v24, v4
    if-nez v4, :label_02f8
    const/16 v17, 0x1
    :label_02f8
    if-eqz v3, :label_030a
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v4, :label_0307
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->video_processing_pending:Z
    if-eqz v4, :label_0307
    if-nez v19, :label_0306
    move-object/from16 v19, v3
    :label_0306
    const/4 v15, 0x1
    :label_0307
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_030a
    move/from16 v5, v33
    move-wide/from16 v3, v22
    const/4 v12, 0x0
    goto :label_02d3
    :label_0310
    move-wide/from16 v22, v3
    move/from16 v33, v5
    iget-object v2, v1, Lorg/telegram/ui/ko;->t1:Lorg/telegram/ui/ActionBar/f2;
    if-eqz v2, :label_0332
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0332
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :label_0332
    iget-object v2, v1, Lorg/telegram/ui/ko;->t1:Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/f2;->dismiss()V
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/ko;->t1:Lorg/telegram/ui/ActionBar/f2;
    :label_0332
    xor-int/lit8 v6, v13, 0x1
    move/from16 v5, v33
    move-object v2, v0
    move-wide/from16 v3, v22
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ko;->Aa(Ljava/util/ArrayList;JZZ)V
    if-eqz v13, :label_0351
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v3, 0x1
    if-eq v0, v3, :label_0352
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v4, v1, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v0, v4, v5, v3}, Lorg/telegram/messenger/MessagesController;->forceNoReload(JI)V
    invoke-virtual {v1, v9, v3}, Lorg/telegram/ui/ko;->oa(IZ)V
    goto/16 :label_03d8
    :label_0351
    const/4 v3, 0x1
    :label_0352
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    if-ne v0, v3, :label_03d8
    if-eqz v10, :label_03d8
    if-eqz v15, :label_03d8
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->U()Lorg/telegram/ui/ActionBar/r2;
    move-result-object v0
    if-ne v0, v1, :label_03d8
    iget-boolean v0, v1, Lorg/telegram/ui/ko;->E3:Z
    if-eqz v0, :label_03d8
    if-eqz v14, :label_03d8
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_03d8
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->parentLayout:Lorg/telegram/ui/ActionBar/j5;
    if-eqz v0, :label_03d8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_03b5
    iget v0, v1, Lorg/telegram/ui/ko;->s4:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0383
    goto :label_03b5
    :label_0383
    move/from16 v2, v16
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I
    sget v4, Lorg/telegram/messenger/R$string;->VideoConversionDone:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    sget v5, Lorg/telegram/messenger/R$string;->VideoConversionDoneView:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    new-instance v6, Lorg/telegram/ui/rf;
    const/16 v7, 0x8
    invoke-direct {v6, v1, v0, v7}, Lorg/telegram/ui/rf;-><init>(Lorg/telegram/ui/ko;II)V
    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/xc;->J(ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    const/16 v2, 0xdac
    iput v2, v0, Lorg/telegram/ui/Components/qc;->j:I
    const/4 v3, 0x1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/qc;->k(Z)V
    goto :label_03d8
    :label_03b5
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->finishFragment()V
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->parentLayout:Lorg/telegram/ui/ActionBar/j5;
    if-nez v0, :label_03be
    goto/16 :label_0789
    :label_03be
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/j5;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/r2;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I
    sget v3, Lorg/telegram/messenger/R$string;->VideoConversionDone:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/16 v4, 0x24
    invoke-virtual {v0, v2, v4, v3}, Lorg/telegram/ui/Components/xc;->Q(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    const/4 v3, 0x1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/qc;->k(Z)V
    :label_03d8
    if-eqz v17, :label_0789
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->K9()Z
    move-result v0
    if-eqz v0, :label_0789
    iget-boolean v0, v1, Lorg/telegram/ui/ko;->g4:Z
    if-nez v0, :label_0789
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->parentLayout:Lorg/telegram/ui/ActionBar/j5;
    if-eqz v0, :label_03f2
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/j5;->getLastFragment()Lorg/telegram/ui/ActionBar/r2;
    move-result-object v0
    if-ne v0, v1, :label_03f2
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->finishFragment()V
    return-void
    :label_03f2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->removeSelfFromStack()V
    return-void
    :label_03f6
    sget v3, Lorg/telegram/messenger/NotificationCenter;->quickRepliesDeleted:I
    if-ne v0, v3, :label_0424
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v0, v9, :label_0400
    goto/16 :label_0789
    :label_0400
    const/16 v18, 0x1
    aget-object v0, v2, v18
    check-cast v0, Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    move-result-wide v3
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->M8()I
    move-result v0
    int-to-long v5, v0
    cmp-long v0, v3, v5
    if-eqz v0, :label_0415
    goto/16 :label_0789
    :label_0415
    const/16 v16, 0x0
    aget-object v0, v2, v16
    move-object v2, v0
    check-cast v2, Ljava/util/ArrayList;
    const/4 v5, 0x0
    const/4 v6, 0x1
    const-wide/16 v3, 0x0
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ko;->Aa(Ljava/util/ArrayList;JZZ)V
    return-void
    :label_0424
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I
    const-wide/16 v19, 0x0
    if-ne v0, v3, :label_06f0
    aget-object v0, v2, v14
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    iget v3, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v4, 0x1
    if-ne v3, v4, :label_0439
    const/4 v3, 0x1
    goto :label_043a
    :label_0439
    const/4 v3, 0x0
    :label_043a
    if-eq v0, v3, :label_043e
    goto/16 :label_0789
    :label_043e
    const/16 v16, 0x0
    aget-object v0, v2, v16
    move-object v3, v0
    check-cast v3, Ljava/lang/Integer;
    aget-object v0, v11, v16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v4
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->K9()Z
    move-result v0
    if-eqz v0, :label_0479
    iget-object v0, v1, Lorg/telegram/ui/ko;->n4:Landroid/util/SparseArray;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    move-result v8
    if-lez v8, :label_0479
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v8
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :label_0479
    const/16 v18, 0x1
    aget-object v12, v2, v18
    check-cast v12, Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    move-result v12
    invoke-virtual {v0, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :label_0479
    if-eqz v4, :label_0789
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;
    const-string v8, "NEWCOMER_TICKS"
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0497
    new-instance v0, Lorg/telegram/ui/ve;
    const/16 v8, 0x17
    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/ve;-><init>(Lorg/telegram/ui/ko;I)V
    move v8, v15
    const-wide/16 v14, 0x3e8
    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    goto :label_0498
    :label_0497
    move v8, v15
    :label_0498
    iget-boolean v0, v4, Lorg/telegram/messenger/MessageObject;->shouldRemoveVideoEditedInfo:Z
    if-eqz v0, :label_04a5
    const/4 v14, 0x0
    iput-object v14, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    const/4 v14, 0x0
    iput-boolean v14, v4, Lorg/telegram/messenger/MessageObject;->shouldRemoveVideoEditedInfo:Z
    :label_04a2
    const/16 v18, 0x1
    goto :label_04a7
    :label_04a5
    const/4 v14, 0x0
    goto :label_04a2
    :label_04a7
    aget-object v0, v2, v18
    move-object v15, v0
    check-cast v15, Ljava/lang/Integer;
    invoke-virtual {v15, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_052d
    aget-object v0, v11, v14
    move/from16 v17, v8
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    move-result v8
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->indexOfKey(I)I
    move-result v0
    if-ltz v0, :label_052f
    aget-object v0, v11, v14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    aget-object v2, v11, v14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
    if-eqz v0, :label_0789
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    int-to-long v8, v3
    invoke-virtual {v10, v8, v9}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_04fe
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    int-to-long v8, v3
    invoke-virtual {v10, v8, v9}, Lz/f;->l(J)V
    if-ltz v2, :label_04fe
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v2, v3, :label_04fe
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :label_04fe
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_0524
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    iget v0, v4, Lorg/telegram/messenger/MessageObject;->dateKeyInt:I
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V
    if-ltz v2, :label_0524
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v2, v0, :label_0524
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :label_0524
    iget-object v0, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v0, :label_0789
    const/4 v3, 0x1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/vm;->O(Z)V
    return-void
    :label_052d
    move/from16 v17, v8
    :label_052f
    aget-object v0, v2, v17
    move-object v5, v0
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isQuickReply(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_054b
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    if-ne v0, v9, :label_054b
    iget-wide v6, v1, Lorg/telegram/ui/ko;->c4:J
    cmp-long v0, v6, v19
    if-nez v0, :label_054d
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v0
    int-to-long v6, v0
    iput-wide v6, v1, Lorg/telegram/ui/ko;->c4:J
    :label_054b
    move v8, v9
    goto :label_0559
    :label_054d
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v0
    move v8, v9
    int-to-long v9, v0
    cmp-long v0, v6, v9
    if-eqz v0, :label_0559
    goto/16 :label_0789
    :label_0559
    array-length v0, v2
    if-lt v0, v13, :label_0562
    aget-object v0, v2, v13
    check-cast v0, Ljava/lang/Long;
    :label_0560
    move-object v6, v0
    goto :label_0567
    :label_0562
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    goto :label_0560
    :label_0567
    if-eqz v5, :label_061d
    :label_0569
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v0
    if-eqz v0, :label_0589
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    if-nez v7, :label_057d
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    if-nez v7, :label_0587
    goto :label_057d
    :label_057a
    move-exception v0
    const/4 v7, 0x0
    goto :label_05bb
    :label_057d
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    :label_0585
    if-nez v0, :label_0589
    :label_0587
    const/4 v7, 0x1
    goto :label_058a
    :label_0589
    const/4 v7, 0x0
    :label_058a
    if-nez v7, :label_05b9
    :label_058c
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;
    if-eqz v0, :label_059d
    const-string v9, "query_id"
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :label_05b9
    goto :label_059d
    :label_059b
    move-exception v0
    goto :label_05bb
    :label_059d
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v0, :label_05be
    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v9, :label_05be
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v9
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    :label_05b7
    if-nez v0, :label_05be
    :label_05b9
    const/4 v0, 0x1
    goto :label_05bf
    :label_05bb
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_05be
    const/4 v0, 0x0
    :label_05bf
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v9
    cmp-long v9, v9, v19
    if-eqz v9, :label_05f0
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    cmp-long v9, v9, v19
    if-eqz v9, :label_05f0
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v9
    iget-object v13, v1, Lorg/telegram/ui/ko;->w6:Lz/f;
    invoke-virtual {v13, v9, v10}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-object/from16 v33, v6
    move v10, v7
    if-eqz v9, :label_05e3
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    invoke-virtual {v13, v9, v6, v7}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_05e3
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    iput-wide v13, v4, Lorg/telegram/messenger/MessageObject;->localSentGroupId:J
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J
    move-result-wide v13
    iput-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    goto :label_05f1
    :label_05f0
    move v10, v7
    :label_05f1
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v6, :label_060c
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v7, :label_060c
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_060c
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    const/4 v14, 0x0
    iput-object v14, v4, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;
    :label_060c
    const/4 v6, 0x1
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->setType()V
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;
    if-eqz v5, :label_061f
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->applyNewText()V
    goto :label_061f
    :label_061d
    const/4 v0, 0x0
    const/4 v10, 0x0
    :label_061f
    if-eqz v10, :label_0624
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V
    :label_0624
    const/4 v14, 0x0
    aget-object v5, v11, v14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V
    aget-object v5, v11, v14
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    move-result v6
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iput v14, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    iput-boolean v0, v4, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z
    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/ko;->v6(Lorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V
    array-length v5, v2
    const/4 v12, 0x6
    if-lt v5, v12, :label_0657
    aget-object v2, v2, v8
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessageObject;->applyMediaExistanceFlags(I)V
    :label_0657
    const/4 v14, 0x0
    invoke-virtual {v1, v4, v14}, Lorg/telegram/ui/ko;->x6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v5, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v5, :label_0686
    iget v5, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v5, v8, :label_0686
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v22
    iget-wide v5, v1, Lorg/telegram/ui/ko;->S5:J
    iget v7, v1, Lorg/telegram/ui/ko;->Q3:I
    iget v8, v1, Lorg/telegram/ui/ActionBar/r2;->classGuid:I
    const/16 v31, 0x0
    const-wide/16 v27, 0x0
    const/16 v29, 0x0
    move-object/from16 v23, v2
    move-wide/from16 v24, v5
    move/from16 v26, v7
    move/from16 v30, v8
    invoke-virtual/range {v22 .. v31}, Lorg/telegram/messenger/MediaDataController;->loadReplyMessagesForMessages(Ljava/util/ArrayList;JIJLjava/lang/Runnable;ILorg/telegram/messenger/Timer;)V
    :label_0686
    iget-object v2, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v2, :label_06b8
    const/4 v2, 0x0
    :label_068b
    iget-object v5, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v5
    if-ge v2, v5, :label_06aa
    iget-object v5, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
    instance-of v6, v5, Lorg/telegram/ui/Cells/u1;
    if-eqz v6, :label_06a7
    check-cast v5, Lorg/telegram/ui/Cells/u1;
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v6
    if-ne v6, v4, :label_06a7
    move-object v12, v5
    goto :label_06ab
    :label_06a7
    add-int/lit8 v2, v2, 0x1
    goto :label_068b
    :label_06aa
    const/4 v12, 0x0
    :label_06ab
    iget-object v2, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    iget-object v5, v1, Lorg/telegram/ui/ko;->m6:Ljava/util/ArrayList;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    const/4 v14, 0x0
    invoke-virtual {v2, v4, v5, v14}, Lorg/telegram/ui/vm;->R(Lorg/telegram/messenger/MessageObject;ZZ)Lorg/telegram/ui/Cells/u1;
    goto :label_06b9
    :label_06b8
    const/4 v14, 0x0
    :label_06b9
    iget-object v2, v1, Lorg/telegram/ui/ko;->y0:Lorg/telegram/ui/hk;
    if-eqz v2, :label_06c8
    if-eqz v0, :label_06c8
    invoke-virtual {v2}, Ln4/h0;->L0()I
    move-result v0
    if-nez v0, :label_06c8
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ko;->T9(Z)V
    :label_06c8
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_06d0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z
    if-nez v0, :label_06d7
    :label_06d0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->playOutChatSound()V
    :label_06d7
    iget-object v0, v1, Lorg/telegram/ui/ko;->Pb:Ldg/a;
    if-eqz v0, :label_0789
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    move-result v3
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v4
    iget v6, v0, Ldg/a;->b:I
    if-ne v6, v2, :label_0789
    invoke-virtual {v0, v3, v4, v5}, Ldg/a;->c(IJ)Z
    goto/16 :label_0789
    :label_06f0
    move/from16 v17, v15
    const/4 v6, 0x1
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I
    if-ne v0, v3, :label_0720
    const/4 v14, 0x0
    aget-object v0, v2, v14
    check-cast v0, Ljava/lang/Integer;
    aget-object v2, v11, v14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0789
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iput v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasEntitiesFromServer()Z
    move-result v2
    if-eqz v2, :label_0718
    const/4 v2, 0x0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V
    :label_0718
    iget-object v2, v1, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v2, :label_0789
    invoke-virtual {v2, v0, v14, v14}, Lorg/telegram/ui/vm;->R(Lorg/telegram/messenger/MessageObject;ZZ)Lorg/telegram/ui/Cells/u1;
    return-void
    :label_0720
    const/4 v14, 0x0
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I
    if-ne v0, v3, :label_0741
    aget-object v0, v2, v14
    check-cast v0, Ljava/lang/Integer;
    aget-object v2, v11, v14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0789
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move/from16 v8, v17
    iput v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ko;->ad(Z)V
    return-void
    :label_0741
    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I
    if-ne v0, v3, :label_0789
    aget-object v0, v2, v14
    check-cast v0, Ljava/lang/Long;
    iget-wide v2, v1, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    move-result-wide v4
    neg-long v4, v4
    cmp-long v0, v2, v4
    if-nez v0, :label_0789
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :label_0789
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    const/4 v14, 0x0
    invoke-virtual {v0, v2, v3, v14}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/ko;->V7:Lorg/telegram/messenger/ChatObject$Call;
    iget-object v0, v1, Lorg/telegram/ui/ko;->W1:Lorg/telegram/ui/qk;
    if-eqz v0, :label_0785
    iget-wide v2, v1, Lorg/telegram/ui/ko;->O5:J
    cmp-long v2, v2, v19
    if-eqz v2, :label_0781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    iget-wide v4, v1, Lorg/telegram/ui/ko;->O5:J
    const-wide/16 v7, 0x96
    add-long/2addr v4, v7
    cmp-long v2, v2, v4
    if-gez v2, :label_077f
    goto :label_0781
    :label_077f
    const/4 v8, 0x0
    goto :label_0782
    :label_0781
    move v8, v6
    :label_0782
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->a(Z)V
    :label_0785
    const/4 v14, 0x0
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ko;->R6(Z)V
    :label_0789
    return-void
    .catch Ljava/lang/Exception; {:label_0569 .. :label_0585} :label_057a
    .catch Ljava/lang/Exception; {:label_058c .. :label_05b7} :label_059b
.end method
