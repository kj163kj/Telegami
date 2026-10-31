# file_id=2 method_idx=55768 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/wj;->b(I)V"
.method public final b(I)V
    .registers 33

    move-object/from16 v1, v31
    move/from16 v0, v32
    iget-object v2, v1, Lorg/telegram/ui/wj;->b:Lorg/telegram/ui/ko;
    iget-object v3, v2, Lorg/telegram/ui/ko;->X5:[Landroid/util/SparseArray;
    iget-object v4, v2, Lorg/telegram/ui/ko;->W5:[Landroid/util/SparseArray;
    iget-object v5, v2, Lorg/telegram/ui/ko;->V5:[Landroid/util/SparseArray;
    const-wide/16 v6, 0x0
    const/4 v8, 0x1
    const/4 v9, 0x0
    const/4 v10, -0x1
    if-ne v0, v10, :label_0065
    iget-object v0, v2, Lorg/telegram/ui/ko;->wc:Lid/b;
    iget-boolean v0, v0, Lid/b;->f:Z
    if-eqz v0, :label_001d
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->xa()V
    return-void
    :label_001d
    invoke-static {v2}, Lorg/telegram/ui/ko;->B1(Lorg/telegram/ui/ko;)Lorg/telegram/ui/ActionBar/l;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/l;->t()Z
    move-result v0
    if-eqz v0, :label_002b
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->C7(Z)V
    return-void
    :label_002b
    iget v0, v2, Lorg/telegram/ui/ko;->Q3:I
    const/4 v3, 0x5
    if-ne v0, v3, :label_0042
    iget-object v0, v2, Lorg/telegram/ui/ko;->t6:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_003e
    iget-wide v3, v2, Lorg/telegram/ui/ko;->c4:J
    cmp-long v0, v3, v6
    if-nez v0, :label_0042
    :label_003e
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->Ub()V
    return-void
    :label_0042
    iget v0, v2, Lorg/telegram/ui/ko;->Q3:I
    const/4 v3, 0x6
    if-ne v0, v3, :label_0058
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->v()Z
    move-result v0
    if-eqz v0, :label_0058
    new-instance v0, Lorg/telegram/ui/sj;
    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/sj;-><init>(Lorg/telegram/ui/wj;I)V
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ko;->Ab(Ljava/lang/Runnable;)V
    return-void
    :label_0058
    invoke-virtual {v2, v8, v8}, Lorg/telegram/ui/ko;->a7(ZZ)Z
    move-result v0
    if-nez v0, :label_0062
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->finishFragment()V
    return-void
    :label_0062
    move-object v14, v1
    goto/16 :label_07e3
    :label_0065
    const/16 v11, 0x3b
    if-ne v0, v11, :label_0096
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v3
    iget-wide v5, v2, Lorg/telegram/ui/ko;->S5:J
    cmp-long v0, v3, v5
    if-nez v0, :label_0084
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->setSavedViewAs(Z)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->Z0:Lorg/telegram/ui/yj;
    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Components/vo;->e(ZZ)V
    return-void
    :label_0084
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    iget-wide v3, v2, Lorg/telegram/ui/ko;->S5:J
    neg-long v3, v3
    invoke-virtual {v0, v3, v4, v9}, Lorg/telegram/messenger/TopicsController;->toggleViewForumAsMessages(JZ)V
    invoke-static {v2}, Lorg/telegram/ui/og1;->I0(Lorg/telegram/ui/ko;)V
    return-void
    :label_0096
    const/16 v11, 0xa
    const/16 v12, 0x3a
    const/4 v13, 0x0
    if-ne v0, v11, :label_0131
    new-instance v0, Landroid/text/SpannableStringBuilder;
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
    move-wide v10, v6
    move v3, v8
    :label_00a4
    if-ltz v3, :label_011b
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    move v14, v9
    :label_00ac
    aget-object v15, v4, v3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I
    move-result v15
    if-ge v14, v15, :label_00c4
    aget-object v15, v4, v3
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v15
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v14, v14, 0x1
    goto :label_00ac
    :label_00c4
    iget-object v14, v2, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v14, :label_00cc
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    goto :label_00d3
    :label_00cc
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;
    move-result-object v14
    invoke-static {v5, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :label_00d3
    move v14, v9
    :label_00d4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v15
    if-ge v14, v15, :label_0117
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Ljava/lang/Integer;
    aget-object v9, v4, v3
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    move-result v15
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v15
    if-eqz v15, :label_00f7
    const-string v15, "\n\n"
    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :label_00f7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v15
    if-eq v15, v8, :label_0107
    iget-object v15, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v15, :label_0105
    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$User;->self:Z
    if-nez v15, :label_0107
    :label_0105
    move v15, v8
    goto :label_0108
    :label_0107
    const/4 v15, 0x0
    :label_0108
    invoke-static {v9, v15, v10, v11}, Lorg/telegram/ui/ko;->I8(Lorg/telegram/messenger/MessageObject;ZJ)Landroid/text/SpannableStringBuilder;
    move-result-object v10
    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v10
    add-int/lit8 v14, v14, 0x1
    const/4 v9, 0x0
    goto :label_00d4
    :label_0117
    add-int/lit8 v3, v3, -0x1
    const/4 v9, 0x0
    goto :label_00a4
    :label_011b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v3
    if-eqz v3, :label_012c
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->T7()V
    iget-object v0, v2, Lorg/telegram/ui/ko;->x3:Lorg/telegram/ui/Components/UndoView;
    invoke-virtual {v0, v12, v6, v7, v13}, Lorg/telegram/ui/Components/UndoView;->j(IJLjava/lang/Runnable;)V
    :label_012c
    const/4 v9, 0x0
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->C7(Z)V
    return-void
    :label_0131
    const/16 v11, 0xc
    if-ne v0, v11, :label_0141
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_013d
    goto/16 :label_0062
    :label_013d
    invoke-virtual {v2, v13, v13, v9}, Lorg/telegram/ui/ko;->I7(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Z)V
    return-void
    :label_0141
    const/16 v9, 0xb
    if-ne v0, v9, :label_0149
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ko;->ga(Z)V
    return-void
    :label_0149
    const/16 v9, 0x45
    if-ne v0, v9, :label_0151
    invoke-static {v2}, Lorg/telegram/ui/ko;->C1(Lorg/telegram/ui/ko;)V
    return-void
    :label_0151
    const/16 v9, 0x46
    if-ne v0, v9, :label_0166
    iget-object v0, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v0, :label_015b
    goto/16 :label_0062
    :label_015b
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J
    neg-long v3, v3
    invoke-static {v3, v4}, Lorg/telegram/ui/ko;->W9(J)Lorg/telegram/ui/ko;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_0166
    const/16 v9, 0x48
    if-ne v0, v9, :label_0195
    iget-wide v3, v2, Lorg/telegram/ui/ko;->S5:J
    iget-object v0, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_0184
    invoke-static {v2}, Lorg/telegram/ui/ko;->D1(Lorg/telegram/ui/ko;)I
    move-result v0
    iget-object v5, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0, v5}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_0184
    iget-wide v3, v2, Lorg/telegram/ui/ko;->c4:J
    iget-wide v6, v2, Lorg/telegram/ui/ko;->S5:J
    :label_0184
    move-wide v9, v3
    move-wide v11, v6
    invoke-static {v2}, Lorg/telegram/ui/ko;->F1(Lorg/telegram/ui/ko;)I
    move-result v0
    const/4 v2, 0x0
    invoke-static {v0, v2}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v8
    const/4 v13, 0x0
    const/4 v14, 0x0
    invoke-virtual/range {v8 .. v14}, Lvg/b6;->i0(JJZZ)V
    return-void
    :label_0195
    const/16 v9, 0x47
    if-ne v0, v9, :label_01cc
    iget-wide v3, v2, Lorg/telegram/ui/ko;->S5:J
    iget-object v0, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_01b3
    invoke-static {v2}, Lorg/telegram/ui/ko;->G1(Lorg/telegram/ui/ko;)I
    move-result v0
    iget-object v5, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0, v5}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_01b3
    iget-wide v3, v2, Lorg/telegram/ui/ko;->c4:J
    iget-wide v6, v2, Lorg/telegram/ui/ko;->S5:J
    :label_01b3
    move-wide v9, v3
    move-wide v4, v6
    invoke-static {v2}, Lorg/telegram/ui/ko;->H1(Lorg/telegram/ui/ko;)I
    move-result v0
    const/4 v2, 0x0
    invoke-static {v0, v2}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v8
    new-instance v0, Lorg/telegram/ui/kh;
    const/4 v6, 0x1
    move-wide v2, v9
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/kh;-><init>(Ljava/lang/Object;JJI)V
    move-object v13, v0
    move-object v14, v1
    move-wide v11, v4
    invoke-virtual/range {v8 .. v13}, Lvg/b6;->C(JJLorg/telegram/messenger/Utilities$Callback;)V
    return-void
    :label_01cc
    move-object v14, v1
    const/16 v1, 0x1c
    if-ne v0, v1, :label_01dd
    iget-object v0, v2, Lorg/telegram/ui/ko;->ab:Lorg/telegram/ui/ml;
    if-nez v0, :label_01d9
    invoke-static {v2}, Lorg/telegram/ui/ko;->I1(Lorg/telegram/ui/ko;)V
    return-void
    :label_01d9
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->p9()V
    return-void
    :label_01dd
    const/16 v1, 0x19
    if-ne v0, v1, :label_0234
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    move v1, v8
    :label_01e7
    if-ltz v1, :label_0212
    const/4 v6, 0x0
    :label_01ea
    aget-object v7, v5, v1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I
    move-result v7
    if-ge v6, v7, :label_0200
    aget-object v7, v5, v1
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v6, v6, 0x1
    goto :label_01ea
    :label_0200
    aget-object v6, v5, v1
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    aget-object v6, v4, v1
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    aget-object v6, v3, v1
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    add-int/lit8 v1, v1, -0x1
    goto :label_01e7
    :label_0212
    iget v1, v2, Lorg/telegram/ui/ko;->e6:I
    if-lez v1, :label_0218
    move v1, v8
    goto :label_0219
    :label_0218
    const/4 v1, 0x0
    :label_0219
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->h9()V
    const/4 v9, 0x0
    invoke-virtual {v2, v9, v8}, Lorg/telegram/ui/ko;->Cc(IZ)V
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->ad(Z)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v2
    new-instance v4, Lorg/telegram/ui/tj;
    invoke-direct {v4, v9, v14, v1}, Lorg/telegram/ui/tj;-><init>(ILjava/lang/Object;Z)V
    invoke-static {v3, v2, v0, v4}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    return-void
    :label_0234
    const/16 v1, 0xd
    if-ne v0, v1, :label_0252
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0240
    goto/16 :label_07e3
    :label_0240
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v3, v2, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Components/g5;->U(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    return-void
    :label_0252
    const/16 v9, 0x1a
    const/16 v11, 0xf
    if-eq v0, v11, :label_025e
    const/16 v15, 0x10
    if-eq v0, v15, :label_025e
    if-ne v0, v9, :label_0261
    :label_025e
    const/4 v4, 0x0
    goto/16 :label_07a7
    :label_0261
    const/16 v9, 0x11
    if-ne v0, v9, :label_02a7
    iget-object v0, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :label_07e3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0271
    goto/16 :label_07e3
    :label_0271
    iget-object v0, v2, Lorg/telegram/ui/ko;->K1:Landroid/widget/TextView;
    if-eqz v0, :label_028b
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :label_028b
    iget-object v0, v2, Lorg/telegram/ui/ko;->K1:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-virtual {v2, v13, v0}, Lorg/telegram/ui/ko;->vb(Lorg/telegram/messenger/MessageObject;I)V
    return-void
    :label_028b
    new-instance v0, Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    iget-object v1, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J
    const-string v1, "user_id"
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    const-string v1, "addContact"
    invoke-virtual {v0, v1, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    new-instance v1, Lorg/telegram/ui/zs;
    invoke-direct {v1, v0}, Lorg/telegram/ui/zs;-><init>(Landroid/os/Bundle;)V
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_02a7
    const/16 v11, 0x12
    if-ne v0, v11, :label_02b0
    const/4 v11, 0x0
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ko;->fc(Z)V
    return-void
    :label_02b0
    const/16 v11, 0x18
    if-ne v0, v11, :label_02c7
    :label_02b4
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J
    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_USER_OR_CHAT:I
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V
    :label_02c1
    return-void
    :label_02c2
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    return-void
    :label_02c7
    const/16 v11, 0x1d
    if-ne v0, v11, :label_030f
    iget-object v0, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_02fa
    new-instance v0, Lorg/telegram/ui/a6;
    iget-wide v3, v2, Lorg/telegram/ui/ko;->S5:J
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/a6;-><init>(J)V
    iget-object v1, v2, Lorg/telegram/ui/ko;->C1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    iput-object v1, v0, Lorg/telegram/ui/a6;->Q:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    if-nez v1, :label_02e1
    goto :label_02f6
    :label_02e1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;
    move-result-object v1
    iget-object v3, v0, Lorg/telegram/ui/a6;->Q:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    new-instance v4, Lorg/telegram/ui/r5;
    const/4 v9, 0x0
    invoke-direct {v4, v0, v9}, Lorg/telegram/ui/r5;-><init>(Lorg/telegram/ui/a6;I)V
    iget-wide v5, v0, Lorg/telegram/ui/a6;->O:J
    invoke-virtual {v1, v5, v6, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/Utilities$Callback;)V
    :label_02f6
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_02fa
    const/4 v9, 0x0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->openBoostForUsersDialog:I
    iget-wide v2, v2, Lorg/telegram/ui/ko;->S5:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    new-array v3, v8, [Ljava/lang/Object;
    aput-object v2, v3, v9
    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    return-void
    :label_030f
    const/16 v11, 0x15
    if-ne v0, v11, :label_033f
    sget v0, Lorg/telegram/ui/w31;->v:I
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getCurrentAccount()I
    move-result v17
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v18
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v19
    if-nez v18, :label_0325
    goto/16 :label_07e3
    :label_0325
    new-instance v23, Ljava/util/ArrayList;
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    const/4 v9, 0x0
    new-array v0, v9, [B
    const/16 v27, 0x0
    const/16 v28, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x0
    const/16 v24, 0x0
    const/16 v25, 0x0
    move-object/from16 v26, v0
    invoke-static/range {v17 .. v28}, Lorg/telegram/ui/w31;->L(ILandroid/content/Context;JZZLjava/util/ArrayList;Lorg/telegram/ui/Components/xc;Lorg/telegram/ui/ActionBar/j6;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    return-void
    :label_033f
    const/16 v11, 0x16
    if-ne v0, v11, :label_0380
    const/4 v0, 0x0
    :label_0344
    const/4 v1, 0x2
    if-ge v0, v1, :label_037b
    const/4 v1, 0x0
    :label_0348
    aget-object v4, v3, v0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    move-result v4
    if-ge v1, v4, :label_0378
    aget-object v4, v3, v0
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v4
    move-object/from16 v19, v4
    check-cast v19, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v17
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    const-wide/16 v6, 0x3e8
    div-long/2addr v4, v6
    long-to-int v4, v4
    iget-boolean v5, v2, Lorg/telegram/ui/ko;->Y5:Z
    xor-int/lit8 v22, v5, 0x1
    const/16 v18, 0x2
    move/from16 v21, v4
    invoke-virtual/range {v17 .. v22}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V
    add-int/lit8 v1, v1, 0x1
    goto :label_0348
    :label_0378
    add-int/lit8 v0, v0, 0x1
    goto :label_0344
    :label_037b
    const/4 v9, 0x0
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->C7(Z)V
    return-void
    :label_0380
    const/16 v11, 0x17
    if-ne v0, v11, :label_03f6
    move v0, v8
    :label_0385
    if-ltz v0, :label_03d7
    if-nez v13, :label_03c5
    aget-object v1, v5, v0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
    move-result v1
    if-ne v1, v8, :label_03c5
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    const/4 v6, 0x0
    :label_0397
    aget-object v7, v5, v0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I
    move-result v7
    if-ge v6, v7, :label_03af
    aget-object v7, v5, v0
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v6, v6, 0x1
    goto :label_0397
    :label_03af
    iget-object v6, v2, Lorg/telegram/ui/ko;->n6:[Landroid/util/SparseArray;
    aget-object v6, v6, v0
    const/4 v9, 0x0
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/messenger/MessageObject;
    move-object v13, v1
    :label_03c5
    aget-object v1, v5, v0
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    aget-object v1, v4, v0
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    aget-object v1, v3, v0
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    add-int/lit8 v0, v0, -0x1
    goto :label_0385
    :label_03d7
    if-eqz v13, :label_03e8
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isTodo()Z
    move-result v0
    if-eqz v0, :label_03e8
    iput-object v13, v2, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    const/16 v0, 0x6d
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ko;->Fa(I)V
    const/4 v9, 0x0
    goto :label_03ec
    :label_03e8
    const/4 v9, 0x0
    invoke-virtual {v2, v13, v9}, Lorg/telegram/ui/ko;->bc(Lorg/telegram/messenger/MessageObject;Z)V
    :label_03ec
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->h9()V
    invoke-virtual {v2, v9, v8}, Lorg/telegram/ui/ko;->Cc(IZ)V
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->ad(Z)V
    return-void
    :label_03f6
    const/16 v3, 0x40
    if-ne v0, v3, :label_0423
    invoke-static {v2}, Lorg/telegram/ui/ko;->J1(Lorg/telegram/ui/ko;)I
    move-result v0
    invoke-static {v0}, Lcf/s2;->f(I)Lcf/s2;
    move-result-object v0
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->M8()I
    move-result v1
    int-to-long v3, v1
    invoke-virtual {v0, v3, v4}, Lcf/s2;->c(J)Lcf/r2;
    move-result-object v8
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    invoke-static {v2}, Lorg/telegram/ui/ko;->K1(Lorg/telegram/ui/ko;)I
    move-result v6
    iget-object v7, v2, Lorg/telegram/ui/ko;->P3:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v9
    new-instance v10, Lorg/telegram/ui/uj;
    const/4 v2, 0x0
    invoke-direct {v10, v2, v14, v8}, Lorg/telegram/ui/uj;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static/range {v5 .. v10}, Lcf/n2;->d0(Landroid/app/Activity;ILjava/lang/String;Lcf/r2;Lorg/telegram/ui/ActionBar/j6;Lorg/telegram/messenger/Utilities$Callback;)V
    return-void
    :label_0423
    const/16 v3, 0xe
    if-ne v0, v3, :label_045c
    new-instance v17, Lorg/telegram/ui/ActionBar/h1;
    const/16 v22, 0x1
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v20
    const/16 v18, 0x0
    iget-object v0, v14, Lorg/telegram/ui/wj;->a:Landroid/content/Context;
    const/16 v21, 0x1
    move-object/from16 v19, v0
    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/h1;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    move-object/from16 v0, v17
    sget v3, Lorg/telegram/messenger/R$string;->AttachMenu:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    sget v4, Lorg/telegram/messenger/R$drawable;->input_attach:I
    invoke-virtual {v0, v3, v4, v13}, Lorg/telegram/ui/ActionBar/h1;->g(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    new-instance v3, Lorg/telegram/ui/a;
    invoke-direct {v3, v14, v1}, Lorg/telegram/ui/a;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    iget-object v1, v2, Lorg/telegram/ui/ko;->g0:Lorg/telegram/ui/ActionBar/x0;
    iget-object v2, v2, Lorg/telegram/ui/ko;->d0:Lorg/telegram/ui/ActionBar/y;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/y;->a()V
    iget-object v2, v2, Lorg/telegram/ui/ActionBar/y;->m:Lorg/telegram/ui/ActionBar/x0;
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/x0;->M(Landroid/view/View;Lorg/telegram/ui/ActionBar/x0;)V
    return-void
    :label_045c
    const/16 v1, 0x1e
    if-ne v0, v1, :label_048a
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v0
    iget-wide v1, v2, Lorg/telegram/ui/ko;->S5:J
    const/16 v28, 0x0
    const/16 v29, 0x0
    const-string v15, "/help"
    const/16 v18, 0x0
    const/16 v19, 0x0
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/16 v24, 0x0
    const/16 v25, 0x1
    const/16 v26, 0x0
    const/16 v27, 0x0
    move-wide/from16 v16, v1
    invoke-static/range {v15 .. v29}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_048a
    const/16 v1, 0x1f
    if-ne v0, v1, :label_04b8
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v0
    iget-wide v1, v2, Lorg/telegram/ui/ko;->S5:J
    const/16 v28, 0x0
    const/16 v29, 0x0
    const-string v15, "/settings"
    const/16 v18, 0x0
    const/16 v19, 0x0
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/16 v24, 0x0
    const/16 v25, 0x1
    const/16 v26, 0x0
    const/16 v27, 0x0
    move-wide/from16 v16, v1
    invoke-static/range {v15 .. v29}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    move-result-object v1
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    return-void
    :label_04b8
    const/16 v1, 0x28
    if-ne v0, v1, :label_04c8
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->J9()Z
    move-result v0
    if-eqz v0, :label_04c4
    const-string v13, ""
    :label_04c4
    invoke-virtual {v2, v13}, Lorg/telegram/ui/ko;->qa(Ljava/lang/String;)V
    return-void
    :label_04c8
    const/16 v1, 0x3e
    if-ne v0, v1, :label_04f2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;
    move-result-object v0
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v3
    const/4 v9, 0x0
    invoke-virtual {v0, v3, v4, v9, v8}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZZ)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;
    move-result-object v0
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v3
    invoke-virtual {v0, v3, v4, v8}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z
    move-result v0
    if-nez v0, :label_07e3
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ko;->Uc(Z)V
    return-void
    :label_04f2
    const/16 v1, 0x20
    const/16 v3, 0x21
    if-eq v0, v1, :label_04fa
    if-ne v0, v3, :label_04fd
    :label_04fa
    const/4 v4, 0x0
    goto/16 :label_076f
    :label_04fd
    const/16 v1, 0x32
    if-ne v0, v1, :label_0522
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedBold()V
    return-void
    :label_0522
    const/16 v1, 0x33
    if-ne v0, v1, :label_0547
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedItalic()V
    return-void
    :label_0547
    const/16 v1, 0x39
    if-ne v0, v1, :label_056c
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedSpoiler()V
    return-void
    :label_056c
    if-ne v0, v12, :label_058f
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedQuote()V
    return-void
    :label_058f
    const/16 v1, 0x34
    if-ne v0, v1, :label_05b4
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedMono()V
    return-void
    :label_05b4
    const/16 v1, 0x37
    if-ne v0, v1, :label_05d9
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedStrike()V
    return-void
    :label_05d9
    const/16 v1, 0x38
    if-ne v0, v1, :label_05fe
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedUnderline()V
    return-void
    :label_05fe
    const/16 v1, 0x4a
    if-ne v0, v1, :label_0623
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedDate()V
    return-void
    :label_0623
    const/16 v1, 0x35
    if-ne v0, v1, :label_0648
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedUrl()V
    return-void
    :label_0648
    const/16 v1, 0x36
    if-ne v0, v1, :label_066d
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_07e3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    iget v1, v2, Lorg/telegram/ui/ko;->z4:I
    iget v3, v2, Lorg/telegram/ui/ko;->A4:I
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/uu;->setSelectionOverride(II)V
    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/uu;->makeSelectedRegular()V
    return-void
    :label_066d
    const/16 v1, 0x1b
    if-ne v0, v1, :label_0675
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->Bb()V
    return-void
    :label_0675
    const/16 v1, 0x3c
    if-ne v0, v1, :label_069f
    iget-object v0, v2, Lorg/telegram/ui/ko;->b4:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    if-nez v0, :label_067f
    goto/16 :label_07e3
    :label_067f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    iget-object v1, v2, Lorg/telegram/ui/ko;->b4:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z
    invoke-virtual {v0, v3, v4, v5, v8}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->Vc()V
    const/4 v9, 0x0
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->lc(Z)V
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ko;->Uc(Z)V
    return-void
    :label_069f
    const/16 v1, 0x3d
    if-ne v0, v1, :label_06a7
    invoke-static {v2}, Lorg/telegram/ui/og1;->I0(Lorg/telegram/ui/ko;)V
    return-void
    :label_06a7
    const/16 v1, 0x41
    if-ne v0, v1, :label_06c3
    iget-object v0, v2, Lorg/telegram/ui/ko;->O3:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->R()Lorg/telegram/ui/ActionBar/r2;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    const/4 v9, 0x0
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/xc;->k(Z)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    return-void
    :label_06c3
    const/16 v1, 0x42
    if-ne v0, v1, :label_06dc
    new-instance v0, Lorg/telegram/ui/sj;
    invoke-direct {v0, v14, v8}, Lorg/telegram/ui/sj;-><init>(Lorg/telegram/ui/wj;I)V
    iget-object v1, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->v()Z
    move-result v1
    if-eqz v1, :label_06d8
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ko;->Ab(Ljava/lang/Runnable;)V
    return-void
    :label_06d8
    invoke-virtual {v0}, Lorg/telegram/ui/sj;->run()V
    return-void
    :label_06dc
    const/16 v1, 0x43
    if-ne v0, v1, :label_06f2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    invoke-static {v2}, Lorg/telegram/ui/ko;->L1(Lorg/telegram/ui/ko;)I
    move-result v1
    iget-object v3, v2, Lorg/telegram/ui/ko;->O3:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;
    invoke-static {v2}, Lorg/telegram/ui/ko;->M1(Lorg/telegram/ui/ko;)Lorg/telegram/ui/ActionBar/j6;
    move-result-object v2
    invoke-static {v0, v1, v3, v2}, Lcf/y;->b0(Landroid/app/Activity;ILorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/ui/ActionBar/j6;)V
    return-void
    :label_06f2
    const/16 v1, 0x44
    if-ne v0, v1, :label_0742
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v3
    const/4 v4, 0x0
    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    sget v1, Lorg/telegram/messenger/R$string;->BusinessLinksDeleteTitle:I
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v1
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-object v1, v3, Lorg/telegram/ui/ActionBar/f2;->Q:Ljava/lang/CharSequence;
    sget v1, Lorg/telegram/messenger/R$string;->BusinessLinksDeleteMessage:I
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v3, Lorg/telegram/ui/ActionBar/f2;->S:Ljava/lang/CharSequence;
    sget v1, Lorg/telegram/messenger/R$string;->Remove:I
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-instance v4, Lorg/telegram/ui/a1;
    invoke-direct {v4, v14, v9}, Lorg/telegram/ui/a1;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/f2;->d(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    if-eqz v0, :label_07e3
    sget v1, Lorg/telegram/ui/ActionBar/n6;->q7:I
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    return-void
    :label_0742
    const/16 v1, 0x49
    if-ne v0, v1, :label_0753
    iget-wide v0, v2, Lorg/telegram/ui/ko;->S5:J
    neg-long v0, v0
    invoke-static {v0, v1, v6, v7}, Lorg/telegram/ui/lf1;->a0(JJ)Lorg/telegram/ui/lf1;
    move-result-object v0
    iput-object v2, v0, Lorg/telegram/ui/lf1;->y:Lorg/telegram/ui/ko;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_0753
    const/16 v1, 0x378
    if-ne v0, v1, :label_075b
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->dumpCanvas()V
    return-void
    :label_075b
    const/16 v1, 0x379
    if-ne v0, v1, :label_07e3
    sget-object v0, Lorg/telegram/ui/k4;->a1:Ljava/util/HashSet;
    invoke-static {v2}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    const-string v1, "No rich message copied"
    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Components/xc;->t(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    return-void
    :label_076f
    iget-object v1, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :label_07e3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    if-eqz v1, :label_07e3
    iget-object v15, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-ne v0, v3, :label_0780
    move/from16 v16, v8
    goto :label_0782
    :label_0780
    move/from16 v16, v4
    :label_0782
    iget-object v0, v2, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v0, :label_078d
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z
    if-eqz v0, :label_078d
    move/from16 v17, v8
    goto :label_078f
    :label_078d
    move/from16 v17, v4
    :label_078f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v18
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v19
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v20
    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/voip/c2;->m(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V
    return-void
    :label_07a7
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    if-nez v3, :label_07ae
    goto :label_07e3
    :label_07ae
    if-ne v0, v11, :label_07e4
    iget-object v3, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_07e4
    iget-wide v3, v2, Lorg/telegram/ui/ko;->c4:J
    cmp-long v0, v3, v6
    if-eqz v0, :label_07e3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v3, v2, Lorg/telegram/ui/ko;->c4:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-eqz v0, :label_07e3
    iget-object v3, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v5, Lnh/j0;
    invoke-direct {v5, v1, v14, v0}, Lnh/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v6
    const/4 v1, -0x1
    const/4 v4, 0x1
    move-object/from16 v30, v2
    move-object v2, v0
    move-object/from16 v0, v30
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/g5;->q(Lorg/telegram/ui/ActionBar/r2;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/j6;)V
    :label_07e3
    return-void
    :label_07e4
    move-object v1, v2
    iget-object v2, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v2, :label_07ef
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z
    if-eqz v2, :label_07ef
    move v7, v8
    goto :label_07f0
    :label_07ef
    move v7, v4
    :label_07f0
    if-eq v0, v9, :label_080b
    if-ne v0, v11, :label_0817
    iget-object v2, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v2, :label_0817
    iget-object v2, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :label_080e
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v2
    if-nez v2, :label_080e
    iget-object v2, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v2
    if-eqz v2, :label_080b
    goto :label_080e
    :label_080b
    move-object v0, v1
    move v4, v7
    goto :label_0832
    :label_080e
    iget-object v2, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v2, :label_0817
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z
    if-eqz v2, :label_0817
    goto :label_080b
    :label_0817
    if-ne v0, v11, :label_081b
    move v9, v8
    goto :label_081c
    :label_081b
    move v9, v4
    :label_081c
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-object v5, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v5, :label_0825
    move v4, v8
    :label_0825
    new-instance v8, Ld2/r;
    invoke-direct {v8, v14, v0, v7}, Ld2/r;-><init>(Lorg/telegram/ui/wj;IZ)V
    const/4 v5, 0x1
    const/4 v6, 0x0
    move-object v0, v1
    move v1, v9
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/g5;->r(Lorg/telegram/ui/ActionBar/r2;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    return-void
    :label_0832
    iget-object v2, v0, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, v0, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v5, Lorg/telegram/ui/vj;
    invoke-direct {v5, v14, v4}, Lorg/telegram/ui/vj;-><init>(Lorg/telegram/ui/wj;Z)V
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v6
    const/4 v1, -0x1
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/g5;->q(Lorg/telegram/ui/ActionBar/r2;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/j6;)V
    return-void
    .catch Ljava/lang/Exception; {:label_02b4 .. :label_02c1} :label_02c2
.end method

