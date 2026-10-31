# file_id=2 method_idx=49335 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->Fa(I)V"
.method public final Fa(I)V
    .registers 34

    move-object/from16 v1, v32
    move/from16 v0, v33
    const-string v2, "tel:"
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_1089
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    if-nez v3, :label_0012
    goto/16 :label_1089
    :label_0012
    const/16 v3, 0x64
    const/4 v11, 0x0
    if-eq v0, v3, :label_1021
    const/4 v14, 0x1
    const-string v5, "canSelectTopics"
    const-string v6, "messagesCount"
    const-string v7, "dialogsType"
    const-string v8, "onlySelect"
    const/4 v9, 0x0
    const-wide/16 v16, 0x3e8
    const/16 v18, 0x1
    const-wide/16 v12, 0x1f4
    const/16 v15, 0x1c
    move-object/from16 v21, v7
    const/4 v7, 0x3
    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"
    move-object/from16 v24, v8
    const/4 v8, 0x2
    const-wide/16 v3, 0x0
    packed-switch v0, :payload_108a_0033
    packed-switch v0, :payload_10c8_0036
    packed-switch v0, :payload_10d6_0039
    packed-switch v0, :payload_10e0_003c
    :label_003f
    move v8, v11
    move/from16 v2, v18
    :label_0042
    const/4 v3, 0x0
    goto/16 :label_107d
    :label_0045
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGramTransfer;
    if-nez v2, :label_0051
    goto/16 :label_1089
    :label_0051
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGramTransfer;
    iget-object v2, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v2
    if-eqz v2, :label_006e
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGramTransfer;->peer_address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :label_003f
    new-instance v2, Lorg/telegram/ui/Wallet/l9;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGramTransfer;->peer_address:Ljava/lang/String;
    invoke-direct {v2, v0}, Lorg/telegram/ui/Wallet/l9;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto :label_003f
    :label_006e
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-eqz v0, :label_003f
    new-instance v2, Lorg/telegram/ui/Wallet/l9;
    invoke-direct {v2, v0}, Lorg/telegram/ui/Wallet/l9;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V
    invoke-virtual {v2}, Lorg/telegram/ui/Wallet/l9;->r0()V
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto :label_003f
    :label_008e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->revertWelcomeEphemeralMessage(Lorg/telegram/messenger/MessageObject;)V
    goto :label_003f
    :label_0098
    new-instance v0, Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v7, v3}, Lorg/telegram/ui/ActionBar/f2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    new-array v2, v14, [Lorg/telegram/ui/ActionBar/f2;
    aput-object v0, v2, v9
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    new-instance v6, Lbh/e1;
    invoke-direct {v6, v15, v1, v2}, Lbh/e1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, v3, v4, v5, v6}, Lpg/h;->Q(IJILbh/e1;)I
    move-result v0
    if-eqz v0, :label_003f
    new-instance v3, Lorg/telegram/ui/bh;
    invoke-direct {v3, v1, v2, v0, v9}, Lorg/telegram/ui/bh;-><init>(Lorg/telegram/ui/ko;[Lorg/telegram/ui/ActionBar/f2;II)V
    invoke-static {v3, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    goto/16 :label_003f
    :label_00ca
    move v8, v11
    move/from16 v7, v18
    goto/16 :label_0742
    :label_00cf
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_00d8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    goto :label_00da
    :label_00d8
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_00da
    if-eqz v0, :label_00e3
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_00e3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    goto :label_00e4
    :label_00e3
    const/4 v2, 0x0
    :label_00e4
    new-instance v3, Lorg/telegram/ui/s1;
    const/16 v4, 0x13
    invoke-direct {v3, v1, v2, v0, v4}, Lorg/telegram/ui/s1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    if-eqz v2, :label_00f0
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    goto :label_00f1
    :label_00f0
    const/4 v0, 0x0
    :label_00f1
    invoke-static {v0}, Lue/a;->l(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lue/a;
    move-result-object v0
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v4
    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z
    move-result v2
    xor-int/lit8 v2, v2, 0x1
    invoke-virtual {v1, v3, v0, v2}, Lorg/telegram/ui/ko;->j7(Ljava/lang/Runnable;Lue/a;Z)V
    goto/16 :label_003f
    :label_0106
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_010f
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    goto :label_0111
    :label_010f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_0111
    if-eqz v0, :label_011a
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_011a
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;
    goto :label_011b
    :label_011a
    const/4 v2, 0x0
    :label_011b
    new-instance v3, Lvg/f0;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v4
    move-object v5, v2
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    move-object v6, v3
    move-object v7, v4
    iget-wide v3, v1, Lorg/telegram/ui/ko;->S5:J
    invoke-static {v5}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/tgnet/TLRPC$SuggestedPost;)Lorg/telegram/messenger/MessageSuggestionParams;
    move-result-object v5
    move-object v8, v7
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v7
    new-instance v9, Lbh/e1;
    const/16 v10, 0x1d
    invoke-direct {v9, v10, v1, v0}, Lbh/e1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    move-object v1, v8
    const/4 v8, 0x1
    move-object v0, v6
    move-object/from16 v6, v32
    invoke-direct/range {v0 .. v9}, Lvg/f0;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/MessageSuggestionParams;Lorg/telegram/ui/ko;Lorg/telegram/ui/ActionBar/j6;ILorg/telegram/messenger/Utilities$Callback;)V
    move-object v1, v6
    invoke-virtual {v0}, Lvg/f0;->show()V
    goto/16 :label_003f
    :label_0146
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v2
    if-nez v2, :label_015c
    new-instance v0, Lnf/f1;
    const/16 v2, 0x27
    invoke-direct {v0, v1, v2, v11}, Lnf/f1;-><init>(Lorg/telegram/ui/ActionBar/r2;IZ)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_003f
    :label_015c
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    const/16 v3, 0x6e
    if-ne v0, v3, :label_0165
    move/from16 v0, v18
    goto :label_0166
    :label_0165
    move v0, v11
    :label_0166
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    if-eqz v3, :label_017d
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    goto :label_017e
    :label_017d
    move v3, v11
    :label_017e
    new-instance v4, Lorg/telegram/ui/gw0;
    invoke-direct {v4, v1}, Lorg/telegram/ui/gw0;-><init>(Lorg/telegram/ui/ko;)V
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v5
    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/gw0;->o0(Lorg/telegram/tgnet/TLRPC$MessageMedia;Z)V
    new-instance v5, Lorg/telegram/ui/dh;
    invoke-direct {v5, v1, v0, v2, v3}, Lorg/telegram/ui/dh;-><init>(Lorg/telegram/ui/ko;ZLorg/telegram/messenger/MessageObject;I)V
    invoke-virtual {v4, v5}, Lorg/telegram/ui/gw0;->n0(Lorg/telegram/ui/dh;)V
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_003f
    :label_0197
    new-instance v19, Ltg/q1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v20
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v22
    const/16 v24, 0x0
    const/16 v25, 0x0
    move/from16 v21, v0
    invoke-direct/range {v19 .. v25}, Ltg/q1;-><init>(Landroid/content/Context;IJLjava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V
    move-object/from16 v0, v19
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_003f
    :label_01b3
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v12
    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J
    new-instance v2, Lbh/v;
    invoke-direct {v2, v7, v1, v0}, Lbh/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v15, 0x0
    move-object/from16 v17, v0
    move-object/from16 v16, v2
    invoke-static/range {v12 .. v17}, Lvg/d8;->h1(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v2, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v2, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    move-object v3, v2
    move v8, v11
    move/from16 v2, v18
    goto/16 :label_107d
    :label_01dd
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_01e6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    goto :label_01e8
    :label_01e6
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_01e8
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/messenger/FactCheckController;->getInstance(I)Lorg/telegram/messenger/FactCheckController;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v4
    invoke-virtual {v2, v3, v4, v0, v11}, Lorg/telegram/messenger/FactCheckController;->openFactCheckEditor(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;Lorg/telegram/messenger/MessageObject;Z)V
    goto/16 :label_003f
    :label_01fb
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v2, v5, v3
    if-eqz v2, :label_0208
    goto :label_0211
    :label_0208
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v2, v5, v3
    if-eqz v2, :label_020f
    goto :label_0211
    :label_020f
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    :label_0211
    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/ko;->sa(J)V
    goto/16 :label_003f
    :label_0216
    new-instance v0, Lnf/f1;
    move/from16 v7, v18
    invoke-direct {v0, v1, v8, v7}, Lnf/f1;-><init>(Lorg/telegram/ui/ActionBar/r2;IZ)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :label_0220
    move v8, v11
    const/4 v2, 0x1
    goto/16 :label_0042
    :label_0224
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    iget-wide v4, v1, Lorg/telegram/ui/ko;->S5:J
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    int-to-long v7, v7
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->schedule_repeat_period:I
    new-instance v10, Lorg/telegram/ui/e7;
    const/4 v9, 0x4
    invoke-direct {v10, v1, v2, v0, v9}, Lorg/telegram/ui/e7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    iget-object v13, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    sget-object v0, Lorg/telegram/ui/Components/g5;->a:Ljava/util/regex/Pattern;
    new-instance v12, Lorg/telegram/ui/Components/e5;
    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/e5;-><init>(Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v9, 0x0
    const/4 v11, 0x0
    move-wide/from16 v30, v7
    move v8, v6
    move-wide/from16 v6, v30
    invoke-static/range {v3 .. v13}, Lorg/telegram/ui/Components/g5;->J(Landroid/content/Context;JJIZLorg/telegram/ui/Components/f5;Ljava/lang/Runnable;Lorg/telegram/ui/Components/e5;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/ActionBar/f3;
    move-result-object v0
    new-instance v2, Lorg/telegram/ui/ze;
    const/4 v3, 0x5
    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/ze;-><init>(Lorg/telegram/ui/ko;I)V
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/f3;->a:Lorg/telegram/ui/ActionBar/k3;
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/k3;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/f3;->d()V
    :label_025d
    const/4 v2, 0x1
    const/4 v3, 0x0
    const/4 v11, 0x1
    goto/16 :label_107e
    :label_0262
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->i9()V
    goto :label_0220
    :label_0266
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/w31;->O(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/j6;)V
    goto :label_0220
    :label_026e
    iget-object v0, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/r2;->resourceProvider:Lorg/telegram/ui/ActionBar/j6;
    invoke-static {v0, v2, v1}, Lorg/telegram/ui/b41;->V(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;Lorg/telegram/ui/ko;)V
    goto :label_0220
    :label_027a
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v7, 0x1
    invoke-static {v0, v2, v7}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J
    move-result-wide v5
    cmp-long v0, v5, v3
    if-eqz v0, :label_0220
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-virtual {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    move-result-object v0
    if-eqz v0, :label_0220
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    invoke-static {v1, v2, v3, v0, v4}, Ljf/d;->m(Lorg/telegram/ui/ActionBar/r2;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V
    goto/16 :label_0220
    :label_02aa
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->i9()V
    goto/16 :label_0220
    :label_02af
    new-instance v0, Lorg/telegram/ui/nj0;
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-direct {v0, v2}, Lorg/telegram/ui/nj0;-><init>(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_0220
    :label_02bb
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_02c4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    goto :label_02c6
    :label_02c4
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_02c6
    if-eqz v0, :label_0220
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v5
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/4 v4, 0x0
    const-wide/16 v6, 0x0
    const/4 v8, -0x1
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/ko;->fa(JLorg/telegram/messenger/MessageObject;IJIILorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0220
    :label_02db
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-boolean v9, v3, Lorg/telegram/ui/ActionBar/f2;->O0:Z
    new-instance v4, Lorg/telegram/ui/ze;
    const/4 v9, 0x4
    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/ze;-><init>(Lorg/telegram/ui/ko;I)V
    iput-object v4, v3, Lorg/telegram/ui/ActionBar/f2;->M:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isQuiz()Z
    move-result v3
    if-eqz v3, :label_030d
    sget v3, Lorg/telegram/messenger/R$string;->StopQuizAlertTitle:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->StopQuizAlertText:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    goto :label_031f
    :label_030d
    sget v3, Lorg/telegram/messenger/R$string;->StopPollAlertTitle:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->StopPollAlertText:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    :label_031f
    sget v3, Lorg/telegram/messenger/R$string;->Stop:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/ig;
    invoke-direct {v4, v1, v0, v8}, Lorg/telegram/ui/ig;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;I)V
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v3, 0x0
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a()Lorg/telegram/ui/ActionBar/f2;
    move-result-object v0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_025d
    :label_0340
    new-instance v0, Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v7, v3}, Lorg/telegram/ui/ActionBar/f2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    new-array v2, v14, [Lorg/telegram/ui/ActionBar/f2;
    aput-object v0, v2, v9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v0
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    new-instance v4, Lorg/telegram/ui/ch;
    invoke-direct {v4, v2, v9}, Lorg/telegram/ui/ch;-><init>([Lorg/telegram/ui/ActionBar/f2;I)V
    const/4 v5, 0x0
    invoke-virtual {v0, v3, v5, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendVote(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    move-result v0
    if-eqz v0, :label_0220
    new-instance v3, Lorg/telegram/ui/bh;
    invoke-direct {v3, v1, v2, v0, v14}, Lorg/telegram/ui/bh;-><init>(Lorg/telegram/ui/ko;[Lorg/telegram/ui/ActionBar/f2;II)V
    invoke-static {v3, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    goto/16 :label_0220
    :label_036b
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v0
    if-nez v0, :label_03aa
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v0
    if-eqz v0, :label_0380
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-nez v0, :label_0380
    goto :label_03aa
    :label_0380
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v0
    if-eqz v0, :label_0220
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0220
    move v0, v11
    :label_038d
    iget-object v2, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v0, v2, :label_0220
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v2
    new-instance v3, Ljava/util/ArrayList;
    iget-object v4, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Ljava/util/ArrayList;)V
    add-int/lit8 v0, v0, 0x1
    goto :label_038d
    :label_03aa
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0220
    :label_03b5
    iget-object v0, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v0
    if-eqz v0, :label_03d9
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v0, :label_0220
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    new-instance v6, Lorg/telegram/ui/zg;
    const/16 v0, 0x9
    invoke-direct {v6, v1, v0}, Lorg/telegram/ui/zg;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/g5;->j0(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;JLorg/telegram/ui/ActionBar/j6;Lorg/telegram/ui/zg;)V
    goto/16 :label_025d
    :label_03d9
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1, v0}, Lorg/telegram/ui/w31;->N(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0220
    :label_03e0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v1, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-ne v2, v3, :label_03fc
    iget-boolean v3, v1, Lorg/telegram/ui/ko;->f4:Z
    if-eqz v3, :label_03fc
    iget v2, v1, Lorg/telegram/ui/ko;->d4:I
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I
    iget-object v2, v1, Lorg/telegram/ui/ko;->e4:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    move-result-object v2
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;
    goto :label_041c
    :label_03fc
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v2
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    move-result-object v2
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W3:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0413
    iget-boolean v2, v1, Lorg/telegram/ui/ko;->f4:Z
    if-eqz v2, :label_0413
    goto :label_0417
    :label_0413
    iget-boolean v2, v1, Lorg/telegram/ui/ko;->g4:Z
    if-eqz v2, :label_0419
    :label_0417
    const/4 v2, 0x1
    goto :label_041a
    :label_0419
    move v2, v11
    :label_041a
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->thread:Z
    :label_041c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v3, Lorg/telegram/ui/ye;
    invoke-direct {v3, v1, v8}, Lorg/telegram/ui/ye;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    goto/16 :label_0220
    :label_042a
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v12
    iget-object v14, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    div-long v2, v2, v16
    long-to-int v0, v2
    const/16 v17, 0x1
    const/4 v13, 0x2
    move/from16 v16, v0
    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V
    goto/16 :label_0220
    :label_0445
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v2
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    div-long v6, v6, v16
    long-to-int v6, v6
    const/4 v7, 0x0
    const/4 v3, 0x2
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V
    goto/16 :label_0220
    :label_045d
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/voip/c2;->j(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;)V
    goto/16 :label_0220
    :label_046e
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :label_0220
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideoCall()Z
    move-result v4
    iget-object v0, v1, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v0, :label_0482
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z
    if-eqz v0, :label_0482
    const/4 v5, 0x1
    goto :label_0483
    :label_0482
    move v5, v11
    :label_0483
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v7
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v8
    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/voip/c2;->m(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V
    goto/16 :label_0220
    :label_049c
    new-instance v0, Landroid/content/Intent;
    const-string v3, "android.intent.action.DIAL"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v2
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    const/high16 v2, 0x10000000
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    const/16 v3, 0x1f4
    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :label_04c9
    goto/16 :label_0220
    :label_04cb
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto/16 :label_0220
    :label_04d1
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto/16 :label_0220
    :label_04de
    new-instance v0, Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J
    const-string v4, "user_id"
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;
    const-string v3, "phone"
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    const-string v2, "addContact"
    const/4 v7, 0x1
    invoke-virtual {v0, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    new-instance v2, Lorg/telegram/ui/zs;
    invoke-direct {v2, v0}, Lorg/telegram/ui/zs;-><init>(Landroid/os/Bundle;)V
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_0220
    :label_050d
    iget-object v0, v1, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0522
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    goto :label_053b
    :label_0522
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0539
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0539
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    goto :label_053b
    :label_0539
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    :label_053b
    iget v2, v1, Lorg/telegram/ui/ko;->Q3:I
    if-ne v2, v8, :label_0551
    iget-object v2, v1, Lorg/telegram/ui/ko;->t6:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ne v2, v8, :label_0551
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->finishFragment()V
    iget-object v0, v1, Lorg/telegram/ui/ko;->U8:Lorg/telegram/ui/wm;
    invoke-interface {v0, v11, v11}, Lorg/telegram/ui/wm;->S(ZZ)V
    goto/16 :label_0220
    :label_0551
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->gc(Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0220
    :label_0556
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0571
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0571
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v0
    goto :label_0577
    :label_0571
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v0
    :label_0577
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    sget v3, Lorg/telegram/messenger/R$string;->PinMessageAlertTitle:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->e()V
    new-instance v3, Lorg/telegram/ui/ze;
    const/4 v10, 0x7
    invoke-direct {v3, v1, v10}, Lorg/telegram/ui/ze;-><init>(Lorg/telegram/ui/ko;I)V
    iget-object v12, v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-object v3, v12, Lorg/telegram/ui/ActionBar/f2;->M:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    const/16 v13, 0x33
    const/16 v15, 0x30
    const/high16 v16, 0x41000000
    const/high16 v17, 0x41800000
    if-eqz v3, :label_063a
    iget v3, v1, Lorg/telegram/ui/ko;->K4:I
    if-eqz v3, :label_05b4
    if-ge v0, v3, :label_05b4
    sget v3, Lorg/telegram/messenger/R$string;->PinOldMessageAlert:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    goto :label_05bd
    :label_05b4
    sget v3, Lorg/telegram/messenger/R$string;->PinMessageAlertChat:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    :label_05bd
    new-array v3, v8, [Z
    aput-boolean v11, v3, v11
    const/4 v7, 0x1
    aput-boolean v11, v3, v7
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0637
    new-instance v4, Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    move-object v5, v4
    new-instance v4, Lorg/telegram/ui/Cells/a2;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    iget-object v8, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v4, v6, v7, v8}, Lorg/telegram/ui/Cells/a2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/n6;->L0(Z)Lorg/telegram/ui/Cells/b0;
    move-result-object v6
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    sget v6, Lorg/telegram/messenger/R$string;->PinAlsoFor:I
    iget-object v7, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v7
    new-array v8, v14, [Ljava/lang/Object;
    aput-object v7, v8, v9
    const-string v7, "PinAlsoFor"
    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    move-object v7, v5
    move-object v5, v6
    const-string v6, ""
    const/4 v9, 0x0
    move v8, v11
    move v10, v11
    move-object v11, v7
    move v7, v10
    const/4 v10, -0x1
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/a2;->e(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v5, :label_060e
    move/from16 v5, v17
    goto :label_0610
    :label_060e
    move/from16 v5, v16
    :label_0610
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v6, :label_0619
    goto :label_061b
    :label_0619
    move/from16 v16, v17
    :label_061b
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V
    invoke-static {v10, v15, v13}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v11, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lorg/telegram/ui/p8;
    invoke-direct {v5, v14, v3}, Lorg/telegram/ui/p8;-><init>(I[Z)V
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v4, 0x6
    iput v4, v12, Lorg/telegram/ui/ActionBar/f2;->F:I
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->n(Landroid/view/View;)V
    :label_0637
    const/4 v7, 0x1
    goto/16 :label_071d
    :label_063a
    move v7, v11
    const/4 v10, -0x1
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_064a
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-nez v3, :label_0654
    :label_064a
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :label_06fb
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-nez v3, :label_06fb
    :label_0654
    iget-object v3, v1, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-nez v3, :label_067c
    iget-object v3, v1, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    if-ge v0, v3, :label_067c
    sget v3, Lorg/telegram/messenger/R$string;->PinOldMessageAlert:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    new-array v3, v8, [Z
    aput-boolean v7, v3, v7
    const/16 v18, 0x1
    aput-boolean v18, v3, v18
    goto :label_0637
    :label_067c
    iget-boolean v3, v1, Lorg/telegram/ui/ko;->g4:Z
    if-eqz v3, :label_068a
    sget v3, Lorg/telegram/messenger/R$string;->PinMessageInTopicAlert:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    goto :label_0693
    :label_068a
    sget v3, Lorg/telegram/messenger/R$string;->PinMessageAlert:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    :label_0693
    new-array v3, v8, [Z
    const/4 v4, 0x1
    aput-boolean v4, v3, v7
    aput-boolean v4, v3, v4
    new-instance v11, Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    invoke-direct {v11, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    new-instance v5, Lorg/telegram/ui/Cells/a2;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    iget-object v9, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v5, v6, v4, v9}, Lorg/telegram/ui/Cells/a2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/n6;->L0(Z)Lorg/telegram/ui/Cells/b0;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    sget v6, Lorg/telegram/messenger/R$string;->PinNotify:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    move/from16 v18, v4
    move-object v4, v5
    move-object v5, v6
    const-string v6, ""
    const/4 v9, 0x0
    move v14, v8
    move v8, v7
    move/from16 v7, v18
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/a2;->e(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v5, :label_06d0
    move/from16 v5, v17
    goto :label_06d2
    :label_06d0
    move/from16 v5, v16
    :label_06d2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v6, :label_06db
    goto :label_06dd
    :label_06db
    move/from16 v16, v17
    :label_06dd
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V
    invoke-static {v10, v15, v13}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v11, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lorg/telegram/ui/p8;
    invoke-direct {v5, v14, v3}, Lorg/telegram/ui/p8;-><init>(I[Z)V
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/16 v4, 0x9
    iput v4, v12, Lorg/telegram/ui/ActionBar/f2;->F:I
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->n(Landroid/view/View;)V
    goto :label_071d
    :label_06fb
    move v14, v8
    move v8, v7
    const/4 v7, 0x1
    iget v3, v1, Lorg/telegram/ui/ko;->K4:I
    if-eqz v3, :label_070e
    if-ge v0, v3, :label_070e
    sget v3, Lorg/telegram/messenger/R$string;->PinOldMessageAlert:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    goto :label_0717
    :label_070e
    sget v3, Lorg/telegram/messenger/R$string;->PinMessageAlertChannel:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    :label_0717
    new-array v3, v14, [Z
    aput-boolean v8, v3, v8
    aput-boolean v7, v3, v7
    :label_071d
    sget v4, Lorg/telegram/messenger/R$string;->PinMessage:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Lbf/b3;
    const/4 v6, 0x7
    invoke-direct {v5, v1, v0, v3, v6}, Lbf/b3;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v3, 0x0
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a()Lorg/telegram/ui/ActionBar/f2;
    move-result-object v0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :label_073d
    move v2, v7
    :label_073e
    move v11, v2
    :label_073f
    const/4 v3, 0x0
    goto/16 :label_107e
    :label_0742
    iget-object v2, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    const/16 v3, 0x71
    if-eqz v2, :label_0752
    if-ne v0, v3, :label_074c
    move v11, v7
    goto :label_074d
    :label_074c
    move v11, v8
    :label_074d
    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ko;->bc(Lorg/telegram/messenger/MessageObject;Z)V
    :label_0750
    const/4 v3, 0x0
    goto :label_075d
    :label_0752
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-ne v0, v3, :label_0758
    move v11, v7
    goto :label_0759
    :label_0758
    move v11, v8
    :label_0759
    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ko;->bc(Lorg/telegram/messenger/MessageObject;Z)V
    goto :label_0750
    :label_075d
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    move v2, v7
    goto/16 :label_107d
    :label_0766
    move v8, v11
    move/from16 v7, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->Lb()Z
    move-result v2
    if-nez v2, :label_0793
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    if-eqz v2, :label_0793
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v2
    sget-object v3, Lorg/telegram/ui/Components/wc;->y:Lorg/telegram/ui/Components/wc;
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/xc;->o(Lorg/telegram/ui/Components/wc;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    :label_0793
    iget-object v2, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->l(Lorg/telegram/tgnet/TLRPC$Document;)V
    :label_0798
    move v2, v7
    goto/16 :label_0042
    :label_079b
    move v8, v11
    move/from16 v7, v18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-le v0, v15, :label_07a6
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    if-eqz v0, :label_07c4
    :label_07a6
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    invoke-virtual {v0, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :label_07c4
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    filled-new-array {v10}, [Ljava/lang/String;
    move-result-object v2
    const/4 v9, 0x4
    invoke-virtual {v0, v2, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    const/4 v3, 0x0
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    return-void
    :label_07c4
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isDocument()Z
    move-result v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPoll()Z
    move-result v3
    if-eqz v3, :label_0859
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    const/4 v5, -0x2
    invoke-static {v3, v5}, Lmg/g;->f(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;I)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v6
    const/4 v10, -0x3
    invoke-static {v3, v10}, Lmg/g;->f(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;I)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    if-eqz v6, :label_0818
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v11, :label_0818
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v11
    if-nez v11, :label_0818
    invoke-static {v2}, Lorg/telegram/ui/ko;->F7(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$TL_message;
    move-result-object v11
    iput-object v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-static {v2, v5}, Lmg/g;->c(Lorg/telegram/tgnet/TLRPC$Message;I)Ljava/lang/String;
    move-result-object v5
    iput-object v5, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    new-instance v5, Lorg/telegram/messenger/MessageObject;
    iget v12, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-direct {v5, v12, v11, v8, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v5
    or-int/2addr v0, v5
    :label_0818
    iget-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->expandedExplanation:Z
    if-eqz v5, :label_0847
    if-eqz v3, :label_0847
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :label_0847
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v5
    if-nez v5, :label_0847
    invoke-static {v2}, Lorg/telegram/ui/ko;->F7(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$TL_message;
    move-result-object v5
    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-static {v2, v10}, Lmg/g;->c(Lorg/telegram/tgnet/TLRPC$Message;I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/MessageObject;
    iget v6, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-direct {v2, v6, v5, v8, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v2
    or-int/2addr v0, v2
    :label_0847
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v3
    new-instance v5, Lorg/telegram/ui/fh;
    invoke-direct {v5, v1, v0, v9}, Lorg/telegram/ui/fh;-><init>(Lorg/telegram/ui/ko;ZI)V
    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    goto/16 :label_0798
    :label_0859
    if-nez v0, :label_095d
    if-eqz v2, :label_085f
    goto/16 :label_095d
    :label_085f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v0
    if-eqz v0, :label_0883
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/hh;
    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/hh;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-static {v2, v3, v0, v4}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    goto/16 :label_0798
    :label_0883
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z
    move-result v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :label_08ab
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;
    move-result-object v4
    :label_08ab
    move-object v12, v4
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v4, :label_08c6
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    move-result v5
    if-lez v5, :label_08c6
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v5
    if-nez v5, :label_08c6
    const/4 v4, 0x0
    :label_08c6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :label_08e6
    iget v5, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v5
    iget-object v6, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v5
    if-eqz v5, :label_08e6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v6
    if-eqz v6, :label_08e6
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v4
    :label_08e6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :label_0911
    iget-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    if-eqz v5, :label_0911
    invoke-virtual {v5}, Lorg/telegram/ui/Components/b91;->b()Z
    move-result v5
    if-eqz v5, :label_0911
    new-instance v5, Ljava/io/File;
    iget-object v6, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    iget-object v6, v6, Lorg/telegram/ui/Components/b91;->d:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v6
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v6
    if-eqz v6, :label_0911
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v4
    :label_0911
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :label_0938
    iget-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :label_0938
    iget v5, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v5
    iget-object v6, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v9, 0x0
    invoke-virtual {v5, v6, v9, v8, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;
    move-result-object v5
    if-eqz v5, :label_0938
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v6
    if-eqz v6, :label_0938
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v4
    :label_0938
    move-object v9, v4
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v10
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    if-eqz v4, :label_094f
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    :label_094d
    move-object v13, v4
    goto :label_0952
    :label_094f
    const-string v4, ""
    goto :label_094d
    :label_0952
    new-instance v14, Lorg/telegram/ui/ih;
    invoke-direct {v14, v1, v2, v0, v3}, Lorg/telegram/ui/ih;-><init>(Lorg/telegram/ui/ko;ZZZ)V
    const/4 v11, 0x2
    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    goto/16 :label_0798
    :label_095d
    iget-object v2, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v2, :label_096b
    new-instance v2, Ljava/util/ArrayList;
    iget-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    goto :label_0975
    :label_096b
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0975
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v4
    new-instance v5, Lorg/telegram/ui/fh;
    invoke-direct {v5, v1, v0, v14}, Lorg/telegram/ui/fh;-><init>(Lorg/telegram/ui/ko;ZI)V
    invoke-static {v3, v4, v2, v5}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    goto/16 :label_0798
    :label_0987
    move v8, v11
    move/from16 v7, v18
    new-instance v0, Lorg/telegram/ui/Components/oz0;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->N0:Lorg/telegram/ui/al;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
    move-result v4
    if-eqz v4, :label_09ac
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_09a8
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_09ac
    :label_09a8
    iget-object v4, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    move-object v5, v4
    goto :label_09ad
    :label_09ac
    const/4 v5, 0x0
    :label_09ad
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v4, 0x0
    move-object/from16 v30, v2
    move-object v2, v1
    move-object/from16 v1, v30
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/oz0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/lz0;Lorg/telegram/ui/ActionBar/j6;)V
    move-object v1, v2
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->C9()Z
    move-result v2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/k3;->setCalcMandatoryInsets(Z)V
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/k3;->setDimBehind(Z)Lorg/telegram/ui/ActionBar/k3;
    new-instance v2, Lorg/telegram/ui/zg;
    const/16 v3, 0xb
    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/zg;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/oz0;->setOnDismissListener(Ljava/lang/Runnable;)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_073d
    :label_09d2
    move v8, v11
    move/from16 v2, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_09e3
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v9, :label_09e3
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-eqz v9, :label_09e3
    goto/16 :label_1089
    :label_09e3
    if-eqz v0, :label_0a80
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :label_0a80
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_09fd
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-nez v0, :label_09fd
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->K9()Z
    move-result v0
    if-eqz v0, :label_0a1b
    :label_09fd
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_0a13
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-nez v0, :label_0a13
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v0, :label_0a1b
    :label_0a13
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-nez v0, :label_0a80
    :label_0a1b
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v9
    cmp-long v9, v9, v3
    if-eqz v9, :label_0a31
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J
    move-result-wide v9
    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ko;->D8(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-result-object v9
    if-eqz v9, :label_0a31
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;
    :label_0a31
    iput-object v0, v1, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v21
    move-object/from16 v9, v24
    invoke-static {v7, v9, v0, v2}, Lorg/telegram/messenger/h4;->e(ILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    move-result-object v0
    const-string v7, "quote"
    invoke-virtual {v0, v7, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v7, "reply_to"
    invoke-virtual {v0, v7, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    iget-object v7, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getFromPeer()Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v7
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v9
    cmp-long v3, v9, v3
    if-eqz v3, :label_0a6e
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v11
    cmp-long v4, v9, v11
    if-eqz v4, :label_0a6e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v11
    cmp-long v4, v9, v11
    if-eqz v4, :label_0a6e
    if-lez v3, :label_0a6e
    const-string v3, "reply_to_author"
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :label_0a6e
    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    new-instance v3, Lorg/telegram/ui/bz;
    invoke-direct {v3, v0}, Lorg/telegram/ui/bz;-><init>(Landroid/os/Bundle;)V
    iput-object v1, v3, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_0042
    :label_0a80
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->Fb(Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0042
    :label_0a87
    move v8, v11
    move/from16 v2, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v0, :label_0aa4
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :label_0aa4
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v3
    if-nez v3, :label_0aa4
    const/4 v0, 0x0
    :label_0aa4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_0ac4
    iget v3, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v3
    if-eqz v3, :label_0ac4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0ac4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    :label_0ac4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_0ae4
    iget v3, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v3, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;ZZ)Ljava/io/File;
    move-result-object v3
    if-eqz v3, :label_0ae4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0ae4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    :label_0ae4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_0b0f
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    if-eqz v3, :label_0b0f
    invoke-virtual {v3}, Lorg/telegram/ui/Components/b91;->b()Z
    move-result v3
    if-eqz v3, :label_0b0f
    new-instance v3, Ljava/io/File;
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    iget-object v4, v4, Lorg/telegram/ui/Components/b91;->d:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v4
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0b0f
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    :label_0b0f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_0b36
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :label_0b36
    iget v3, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v5, 0x0
    invoke-virtual {v3, v4, v5, v8, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;
    move-result-object v3
    if-eqz v3, :label_0b36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0b36
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    :label_0b36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-le v3, v15, :label_0b3e
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    if-eqz v3, :label_0b5c
    :label_0b3e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-virtual {v3, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    move-result v3
    if-eqz v3, :label_0b5c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    filled-new-array {v10}, [Ljava/lang/String;
    move-result-object v2
    const/4 v9, 0x4
    invoke-virtual {v0, v2, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    const/4 v3, 0x0
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    return-void
    :label_0b5c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :label_0b64
    goto/16 :label_1089
    :label_0b64
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v3
    if-eqz v3, :label_0bce
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    if-eqz v3, :label_0b81
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    goto :label_0b82
    :label_0b81
    const/4 v3, 0x0
    :label_0b82
    if-eqz v3, :label_0bad
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v4
    invoke-virtual {v4, v3, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    move-result-object v4
    if-eqz v4, :label_0b96
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v5
    if-nez v5, :label_0ba0
    :label_0b96
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v4
    invoke-virtual {v4, v3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    move-result-object v4
    :label_0ba0
    if-eqz v4, :label_0bad
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :label_0bad
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
    goto :label_0bae
    :label_0bad
    const/4 v3, 0x0
    :label_0bae
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :label_0bce
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    const/4 v5, 0x0
    invoke-static {v0, v3, v4, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v3
    sget-object v4, Lorg/telegram/ui/Components/wc;->r:Lorg/telegram/ui/Components/wc;
    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/xc;->o(Lorg/telegram/ui/Components/wc;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    move-object v3, v5
    goto/16 :label_107d
    :label_0bce
    const/4 v5, 0x0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-static {v0, v3, v8, v5, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v0
    if-eqz v0, :label_0be8
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v0
    if-nez v0, :label_0be8
    move v11, v2
    goto :label_0be9
    :label_0be8
    move v11, v8
    :label_0be9
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v0
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v4
    if-eqz v0, :label_0bfa
    sget-object v0, Lorg/telegram/ui/Components/wc;->r:Lorg/telegram/ui/Components/wc;
    goto :label_0c01
    :label_0bfa
    if-eqz v11, :label_0bff
    sget-object v0, Lorg/telegram/ui/Components/wc;->h:Lorg/telegram/ui/Components/wc;
    goto :label_0c01
    :label_0bff
    sget-object v0, Lorg/telegram/ui/Components/wc;->e:Lorg/telegram/ui/Components/wc;
    :label_0c01
    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/xc;->o(Lorg/telegram/ui/Components/wc;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    goto/16 :label_0042
    :label_0c0a
    move v8, v11
    move/from16 v2, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v0, :label_0c27
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :label_0c27
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v3
    if-nez v3, :label_0c27
    const/4 v0, 0x0
    :label_0c27
    if-eqz v0, :label_0c2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v3
    if-nez v3, :label_0c3f
    :label_0c2f
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
    move-result-object v0
    :label_0c3f
    new-instance v3, Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v5, 0x18
    const-string v6, "android.intent.extra.STREAM"
    if-lt v0, v5, :label_0c8a
    :label_0c5e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v7, ".provider"
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5, v4}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :label_0c81
    goto :label_0c91
    :label_0c82
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    goto :label_0c91
    :label_0c8a
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :label_0c91
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    move-result-object v3
    const/16 v4, 0x1f4
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :label_0ca4
    goto/16 :label_0042
    :label_0ca6
    move v8, v11
    move/from16 v2, v18
    const/4 v10, -0x1
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_0cc8
    new-instance v0, Ljava/io/File;
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :label_0cc8
    goto :label_0cc9
    :label_0cc8
    const/4 v0, 0x0
    :label_0cc9
    if-nez v0, :label_0cde
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0cde
    move-object v0, v3
    :label_0cde
    if-eqz v0, :label_0042
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v3
    const-string v4, "attheme"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :label_0d52
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;
    move-result-object v3
    const/4 v5, 0x0
    invoke-static {v0, v3, v5, v2}, Lorg/telegram/ui/ActionBar/n6;->u(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/m6;
    move-result-object v0
    if-eqz v0, :label_0d08
    new-instance v3, Lorg/telegram/ui/ie1;
    invoke-direct {v3, v0}, Lorg/telegram/ui/ie1;-><init>(Lorg/telegram/ui/ActionBar/m6;)V
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    move v11, v8
    goto/16 :label_073f
    :label_0d08
    iput v10, v1, Lorg/telegram/ui/ko;->w4:I
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0d17
    iput-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v5, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v5, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    return-void
    :label_0d17
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    sget v3, Lorg/telegram/messenger/R$string;->AppName:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->IncorrectTheme:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->OK:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/4 v5, 0x0
    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-boolean v9, v3, Lorg/telegram/ui/ActionBar/f2;->O0:Z
    new-instance v4, Lorg/telegram/ui/ze;
    invoke-direct {v4, v1, v7}, Lorg/telegram/ui/ze;-><init>(Lorg/telegram/ui/ko;I)V
    iput-object v4, v3, Lorg/telegram/ui/ActionBar/f2;->M:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a()Lorg/telegram/ui/ActionBar/f2;
    move-result-object v0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_073e
    :label_0d52
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v3
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;I)Z
    move-result v0
    if-eqz v0, :label_0d68
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity;
    invoke-direct {v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_0042
    :label_0d68
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0d76
    const/4 v3, 0x0
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    return-void
    :label_0d76
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    sget v3, Lorg/telegram/messenger/R$string;->AppName:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->IncorrectLocalization:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->OK:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/4 v5, 0x0
    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-boolean v9, v3, Lorg/telegram/ui/ActionBar/f2;->O0:Z
    new-instance v4, Lorg/telegram/ui/ze;
    const/4 v5, 0x6
    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/ze;-><init>(Lorg/telegram/ui/ko;I)V
    iput-object v4, v3, Lorg/telegram/ui/ActionBar/f2;->M:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a()Lorg/telegram/ui/ActionBar/f2;
    move-result-object v0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    goto/16 :label_073e
    :label_0db2
    move v8, v11
    move/from16 v2, v18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-le v0, v15, :label_0dbd
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    if-eqz v0, :label_0ddb
    :label_0dbd
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    invoke-virtual {v0, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :label_0ddb
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    filled-new-array {v10}, [Ljava/lang/String;
    move-result-object v2
    const/4 v9, 0x4
    invoke-virtual {v0, v2, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    const/4 v3, 0x0
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    return-void
    :label_0ddb
    iget-object v0, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0e1f
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    move v3, v2
    move v13, v3
    move v11, v8
    :label_0de8
    if-ge v11, v0, :label_0e04
    iget-object v4, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ko;->Va(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z
    move-result v5
    and-int/2addr v13, v5
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v4
    and-int/2addr v3, v4
    add-int/lit8 v11, v11, 0x1
    goto :label_0de8
    :label_0e04
    if-eqz v13, :label_0e09
    sget-object v3, Lorg/telegram/ui/Components/wc;->f:Lorg/telegram/ui/Components/wc;
    goto :label_0e10
    :label_0e09
    if-eqz v3, :label_0e0e
    sget-object v3, Lorg/telegram/ui/Components/wc;->n:Lorg/telegram/ui/Components/wc;
    goto :label_0e10
    :label_0e0e
    sget-object v3, Lorg/telegram/ui/Components/wc;->v:Lorg/telegram/ui/Components/wc;
    :label_0e10
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v4, v3, v0, v5}, Lorg/telegram/ui/Components/xc;->n(Lorg/telegram/ui/Components/wc;ILorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    goto/16 :label_0042
    :label_0e1f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->Va(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-eqz v0, :label_0042
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLivePhoto()Z
    move-result v3
    if-eqz v3, :label_0e39
    sget-object v3, Lorg/telegram/ui/Components/wc;->r:Lorg/telegram/ui/Components/wc;
    goto :label_0e46
    :label_0e39
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v3
    if-eqz v3, :label_0e44
    sget-object v3, Lorg/telegram/ui/Components/wc;->h:Lorg/telegram/ui/Components/wc;
    goto :label_0e46
    :label_0e44
    sget-object v3, Lorg/telegram/ui/Components/wc;->e:Lorg/telegram/ui/Components/wc;
    :label_0e46
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/xc;->o(Lorg/telegram/ui/Components/wc;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    goto/16 :label_0042
    :label_0e51
    move v8, v11
    move/from16 v2, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v5, :label_0e5d
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    goto :label_0e5e
    :label_0e5d
    const/4 v5, 0x0
    :label_0e5e
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v0
    if-eqz v0, :label_0e6f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto/16 :label_0f49
    :label_0e6f
    if-eqz v5, :label_0eef
    :label_0e71
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    invoke-static {v5, v0}, Lfh/b4;->Y2(Lorg/telegram/tgnet/tl/TL_iv$RichMessage;Ljava/util/HashMap;)Ljava/util/ArrayList;
    move-result-object v19
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-nez v6, :label_0ec1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
    move-result v6
    add-int/lit8 v21, v6, -0x1
    new-instance v18, Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    new-instance v6, Lda/c;
    const/16 v7, 0x13
    invoke-direct {v6, v7}, Lda/c;-><init>(I)V
    const/16 v22, 0x0
    filled-new-array/range {v22 .. v22}, [I
    move-result-object v20
    const/16 v27, 0x0
    const/16 v28, 0x0
    const/16 v24, 0x0
    const v25, 0x7fffffff
    move/from16 v23, v21
    move-object/from16 v29, v0
    move-object/from16 v26, v6
    invoke-static/range {v18 .. v29}, Lfh/i4;->F(Ljava/lang/StringBuilder;Ljava/util/List;[IIIIIILda/c;ZILjava/util/Map;)V
    move-object/from16 v0, v18
    invoke-virtual {v6, v0}, Lda/c;->b0(Ljava/lang/StringBuilder;)V
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    :label_0eb3
    iget-object v0, v5, Lorg/telegram/tgnet/tl/TL_iv$RichMessage;->photos:Ljava/util/ArrayList;
    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_iv$RichMessage;->documents:Ljava/util/ArrayList;
    invoke-static {v0, v5}, Lfh/a5;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :label_0eba
    goto :label_0ec6
    :label_0ebb
    move-exception v0
    goto :label_0ec3
    :label_0ebd
    const/4 v6, 0x0
    goto :label_0ec3
    :label_0ebf
    move-exception v0
    goto :label_0ebd
    :label_0ec1
    const/4 v6, 0x0
    goto :label_0ec6
    :label_0ec3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_0ec6
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v0, :label_0edb
    iget-object v0, v0, Lorg/telegram/messenger/RichMessageLayout;->joinedText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_0edb
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    iget-object v0, v0, Lorg/telegram/messenger/RichMessageLayout;->joinedText:Ljava/lang/CharSequence;
    goto :label_0ee1
    :label_0edb
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0, v8, v3, v4}, Lorg/telegram/ui/ko;->I8(Lorg/telegram/messenger/MessageObject;ZJ)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    :label_0ee1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :label_0eeb
    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    goto :label_0f49
    :label_0eeb
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto :label_0f49
    :label_0eef
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v0, :label_0f07
    iget-object v0, v0, Lorg/telegram/messenger/RichMessageLayout;->joinedText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_0f07
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    iget-object v0, v0, Lorg/telegram/messenger/RichMessageLayout;->joinedText:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto :label_0f49
    :label_0f07
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;
    if-eqz v6, :label_0f33
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    if-eqz v5, :label_0f33
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v6
    invoke-static {v0, v6, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v0
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->o2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v6
    invoke-static {v0, v5, v6, v8}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto :label_0f49
    :label_0f33
    iget-object v5, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    const/4 v9, 0x0
    invoke-static {v0, v5, v9}, Lorg/telegram/ui/ko;->G8(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v0
    if-eqz v0, :label_0f40
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    goto :label_0f49
    :label_0f40
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0, v8, v3, v4}, Lorg/telegram/ui/ko;->I8(Lorg/telegram/messenger/MessageObject;ZJ)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    :label_0f49
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->T7()V
    iget-object v0, v1, Lorg/telegram/ui/ko;->x3:Lorg/telegram/ui/Components/UndoView;
    if-nez v0, :label_0f52
    goto/16 :label_1089
    :label_0f52
    const/16 v5, 0x34
    const/4 v10, 0x0
    invoke-virtual {v0, v5, v3, v4, v10}, Lorg/telegram/ui/Components/UndoView;->j(IJLjava/lang/Runnable;)V
    move-object v3, v10
    goto/16 :label_107d
    :label_0f5b
    move v14, v8
    move v8, v11
    move/from16 v2, v18
    move-object/from16 v0, v21
    move-object/from16 v9, v24
    const/4 v10, 0x0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v11
    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z
    move-result v11
    if-eqz v11, :label_0f7a
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/ui/c;->b(I)V
    iput-object v10, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v10, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    iput-object v10, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    return-void
    :label_0f7a
    iget-object v10, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v10, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    iget-object v10, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v10, v1, Lorg/telegram/ui/ko;->h5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    invoke-static {v7, v9, v0, v2}, Lorg/telegram/messenger/h4;->e(ILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    move-result-object v0
    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    iget-object v6, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isTodo()Z
    move-result v6
    if-eqz v6, :label_0f93
    move v11, v7
    goto :label_0fa8
    :label_0f93
    iget-object v6, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPoll()Z
    move-result v6
    if-eqz v6, :label_0fa7
    iget-object v6, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z
    move-result v6
    if-eqz v6, :label_0fa5
    move v11, v14
    goto :label_0fa8
    :label_0fa5
    move v11, v2
    goto :label_0fa8
    :label_0fa7
    move v11, v8
    :label_0fa8
    const-string v6, "hasPoll"
    invoke-virtual {v0, v6, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    iget-object v6, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_0fcd
    iget v6, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v7, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6, v7}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    if-eqz v6, :label_0fcd
    iget-object v6, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J
    cmp-long v3, v6, v3
    if-eqz v3, :label_0fcd
    const-string v3, "forward_into_channel"
    neg-long v6, v6
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :label_0fcd
    iget-object v3, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z
    move-result v3
    const-string v4, "hasInvoice"
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    new-instance v3, Lorg/telegram/ui/bz;
    invoke-direct {v3, v0}, Lorg/telegram/ui/bz;-><init>(Landroid/os/Bundle;)V
    iput-object v1, v3, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    goto/16 :label_0042
    :label_0fe7
    move/from16 v2, v18
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0ff7
    const/4 v3, 0x0
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    return-void
    :label_0ff7
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/ui/ko;->I7(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Z)V
    goto/16 :label_073e
    :label_1000
    move v8, v11
    move/from16 v2, v18
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v5
    if-eqz v3, :label_1016
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v13
    goto :label_1017
    :label_1016
    move v13, v2
    :label_1017
    new-instance v9, Lorg/telegram/ui/z;
    invoke-direct {v9, v1, v3, v0, v7}, Lorg/telegram/ui/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    invoke-static {v4, v13, v5, v6, v9}, Lorg/telegram/ui/Components/g5;->Z(IIJLorg/telegram/messenger/Utilities$Callback;)V
    goto/16 :label_0042
    :label_1021
    move v8, v11
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ko;->D7(Z)V
    new-instance v0, Lorg/telegram/ui/zg;
    const/16 v3, 0xa
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/zg;-><init>(Lorg/telegram/ui/ko;I)V
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_1079
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :label_1079
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->video_processing_pending:Z
    if-eqz v3, :label_1079
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v4
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    sget v3, Lorg/telegram/messenger/R$string;->VideoConversionNowTitle:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->l(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->VideoConversionNowText:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->g(Ljava/lang/CharSequence;)V
    sget v3, Lorg/telegram/messenger/R$string;->VideoConversionNowSend:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/a1;
    const/16 v5, 0xf
    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/a1;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v3, 0x0
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->o()Lorg/telegram/ui/ActionBar/f2;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/ko;->t1:Lorg/telegram/ui/ActionBar/f2;
    return-void
    :label_1079
    const/4 v3, 0x0
    invoke-virtual {v0}, Lorg/telegram/ui/zg;->run()V
    :label_107d
    move v11, v8
    :label_107e
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    xor-int/lit8 v0, v11, 0x1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->D7(Z)V
    :label_1089
    return-void
    :payload_108a_0033
    .packed-switch 0x0
        :label_1000
        :label_0fe7
        :label_0f5b
        :label_0e51
        :label_0db2
        :label_0ca6
        :label_0c0a
        :label_0a87
        :label_09d2
        :label_0987
        :label_079b
        :label_0766
        :label_00ca
        :label_0556
        :label_050d
        :label_04de
        :label_04d1
        :label_049c
        :label_046e
        :label_045d
        :label_0445
        :label_042a
        :label_03e0
        :label_03b5
        :label_036b
        :label_0340
        :label_02db
        :label_02bb
        :label_02af
    .end packed-switch
    :payload_10c8_0036
    .packed-switch 0x1f
        :label_02aa
        :label_027a
        :label_026e
        :label_0266
        :label_0262
    .end packed-switch
    :payload_10d6_0039
    .packed-switch 0x66
        :label_0224
        :label_0216
        :label_01fb
    .end packed-switch
    :payload_10e0_003c
    .packed-switch 0x6a
        :label_01dd
        :label_01b3
        :label_0197
        :label_0146
        :label_0146
        :label_0106
        :label_00cf
        :label_00ca
        :label_0106
        :label_0098
        :label_008e
        :label_0045
    .end packed-switch
    .catch Ljava/lang/Exception; {:label_049c .. :label_04c9} :label_04cb
    .catch Ljava/lang/Exception; {:label_0c5e .. :label_0c81} :label_0c82
    .catchall {:label_0c91 .. :label_0ca4} :label_0042
    .catch Ljava/lang/Exception; {:label_0e71 .. :label_0eb3} :label_0ebf
    .catch Ljava/lang/Exception; {:label_0eb3 .. :label_0eba} :label_0ebb
.end method
