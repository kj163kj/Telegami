# file_id=2 method_idx=44797 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/bz;->M3(JJZLorg/telegram/ui/og1;)V"
.method public final M3(JJZLorg/telegram/ui/og1;)V
    .registers 23

    move-object/from16 v1, v16
    move-wide/from16 v2, v17
    move-wide/from16 v4, v19
    invoke-virtual/range {v16 .. v18}, Lorg/telegram/ui/bz;->n3(J)Z
    move-result v0
    if-nez v0, :label_000e
    goto/16 :label_02d9
    :label_000e
    iget v0, v1, Lorg/telegram/ui/bz;->Q0:I
    const/16 v6, 0xb
    const/4 v9, 0x0
    if-eq v0, v6, :label_001d
    const/16 v6, 0xc
    if-eq v0, v6, :label_001d
    const/16 v6, 0xd
    if-ne v0, v6, :label_0020
    :label_001d
    move-wide v5, v2
    goto/16 :label_0261
    :label_0020
    const/4 v8, 0x0
    const/4 v10, 0x1
    const-wide/16 v11, 0x0
    if-eqz v21, :label_0178
    iget-object v6, v1, Lorg/telegram/ui/bz;->e2:Ljava/lang/String;
    if-eqz v6, :label_002e
    iget-object v6, v1, Lorg/telegram/ui/bz;->f2:Ljava/lang/String;
    if-nez v6, :label_0032
    :label_002e
    iget-object v6, v1, Lorg/telegram/ui/bz;->g2:Ljava/lang/String;
    if-eqz v6, :label_0178
    :label_0032
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_003a
    goto/16 :label_02d9
    :label_003a
    new-instance v7, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    invoke-direct {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v0
    if-eqz v0, :label_007f
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/h4;->n(Lorg/telegram/messenger/MessagesController;J)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-result-object v0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-nez v0, :label_0063
    goto/16 :label_02d9
    :label_0063
    sget v6, Lorg/telegram/messenger/R$string;->SendMessageTitle:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v11, v1, Lorg/telegram/ui/bz;->e2:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v0
    new-array v10, v10, [Ljava/lang/Object;
    aput-object v0, v10, v8
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    sget v8, Lorg/telegram/messenger/R$string;->Send:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    goto/16 :label_0151
    :label_007f
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v0
    if-eqz v0, :label_00df
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v11
    cmp-long v0, v2, v11
    if-nez v0, :label_00af
    sget v0, Lorg/telegram/messenger/R$string;->SendMessageTitle:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v0, v1, Lorg/telegram/ui/bz;->f2:Ljava/lang/String;
    sget v11, Lorg/telegram/messenger/R$string;->SavedMessages:I
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v11
    new-array v10, v10, [Ljava/lang/Object;
    aput-object v11, v10, v8
    invoke-static {v0, v10}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    sget v8, Lorg/telegram/messenger/R$string;->Send:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    goto/16 :label_0151
    :label_00af
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-eqz v0, :label_02d9
    iget-object v6, v1, Lorg/telegram/ui/bz;->e2:Ljava/lang/String;
    if-nez v6, :label_00c3
    goto/16 :label_02d9
    :label_00c3
    sget v6, Lorg/telegram/messenger/R$string;->SendMessageTitle:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v11, v1, Lorg/telegram/ui/bz;->e2:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v0
    new-array v10, v10, [Ljava/lang/Object;
    aput-object v0, v10, v8
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    sget v8, Lorg/telegram/messenger/R$string;->Send:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    goto/16 :label_0151
    :label_00df
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    neg-long v13, v2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    if-nez v0, :label_00f0
    goto/16 :label_02d9
    :label_00f0
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    cmp-long v11, v4, v11
    if-eqz v11, :label_011c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v11
    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v11
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-virtual {v11, v12, v13, v4, v5}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    move-result-object v0
    if-eqz v0, :label_011c
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, " "
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    :label_011c
    iget-object v0, v1, Lorg/telegram/ui/bz;->g2:Ljava/lang/String;
    if-eqz v0, :label_013a
    sget v0, Lorg/telegram/messenger/R$string;->AddToTheGroupAlertTitle:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    iget-object v11, v1, Lorg/telegram/ui/bz;->g2:Ljava/lang/String;
    new-array v10, v10, [Ljava/lang/Object;
    aput-object v6, v10, v8
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    sget v8, Lorg/telegram/messenger/R$string;->Add:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    :label_0136
    move-object v15, v6
    move-object v6, v0
    move-object v0, v15
    goto :label_0151
    :label_013a
    sget v0, Lorg/telegram/messenger/R$string;->SendMessageTitle:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    iget-object v11, v1, Lorg/telegram/ui/bz;->f2:Ljava/lang/String;
    new-array v10, v10, [Ljava/lang/Object;
    aput-object v6, v10, v8
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    sget v8, Lorg/telegram/messenger/R$string;->Send:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    goto :label_0136
    :label_0151
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-object v6, v10, Lorg/telegram/ui/ActionBar/f2;->Q:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    iput-object v0, v10, Lorg/telegram/ui/ActionBar/f2;->S:Ljava/lang/CharSequence;
    new-instance v0, Lorg/telegram/ui/xw;
    move-object/from16 v6, v22
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/xw;-><init>(Lorg/telegram/ui/bz;JJLorg/telegram/ui/og1;)V
    invoke-virtual {v7, v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v7, v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    move-result-object v0
    if-nez v0, :label_02d9
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/f2;->show()V
    return-void
    :label_0178
    const/16 v2, 0xf
    if-ne v0, v2, :label_0231
    new-instance v0, Lf2/u;
    const/16 v7, 0xc
    move-wide/from16 v2, v17
    move-wide/from16 v4, v19
    move-object/from16 v6, v22
    invoke-direct/range {v0 .. v7}, Lf2/u;-><init>(Ljava/lang/Object;JJLjava/lang/Object;I)V
    new-instance v1, Lbh/f4;
    const/16 v5, 0x12
    move-object v4, v0
    move-object v0, v1
    move-object/from16 v1, v16
    invoke-direct/range {v0 .. v5}, Lbh/f4;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V
    cmp-long v4, v2, v11
    if-gez v4, :label_01a9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    neg-long v2, v2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    invoke-virtual {v1, v2, v0, v9}, Lorg/telegram/ui/bz;->O4(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    return-void
    :label_01a9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-wide v4, v1, Lorg/telegram/ui/bz;->G:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureSendChatToBotTitle:I
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v6
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v7
    const/4 v9, 0x2
    new-array v11, v9, [Ljava/lang/Object;
    aput-object v6, v11, v8
    aput-object v7, v11, v10
    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    iput-object v5, v6, Lorg/telegram/ui/ActionBar/f2;->Q:Ljava/lang/CharSequence;
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureSendChatToBotMessage:I
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v3
    new-array v7, v9, [Ljava/lang/Object;
    aput-object v2, v7, v8
    aput-object v3, v7, v10
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v2
    new-array v3, v10, [Ljava/lang/CharSequence;
    aput-object v2, v3, v8
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    iput-object v2, v6, Lorg/telegram/ui/ActionBar/f2;->S:Ljava/lang/CharSequence;
    sget v2, Lorg/telegram/messenger/R$string;->Send:I
    new-array v3, v8, [Ljava/lang/Object;
    const-string v5, "Send"
    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Lorg/telegram/ui/ou;
    invoke-direct {v3, v0, v10}, Lorg/telegram/ui/ou;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->k(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/e2;)V
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I
    new-array v2, v8, [Ljava/lang/Object;
    const-string v3, "Cancel"
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    new-instance v2, Lorg/telegram/ui/Components/me0;
    const/16 v3, 0x1b
    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/me0;-><init>(I)V
    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->h(Ljava/lang/String;Lorg/telegram/ui/ActionBar/e2;)V
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    return-void
    :label_0231
    move-wide/from16 v2, v17
    iget-object v0, v1, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    if-eqz v0, :label_025d
    move-wide v5, v2
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    invoke-static/range {v17 .. v20}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v0, v1, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    iget-boolean v5, v1, Lorg/telegram/ui/bz;->I2:Z
    iget v6, v1, Lorg/telegram/ui/bz;->J2:I
    iget v7, v1, Lorg/telegram/ui/bz;->K2:I
    const/4 v3, 0x0
    const/4 v4, 0x0
    move-object/from16 v8, v22
    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/vy;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z
    move-result v0
    if-eqz v0, :label_02d9
    iget-boolean v0, v1, Lorg/telegram/ui/bz;->h2:Z
    if-eqz v0, :label_02d9
    iput-object v9, v1, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    return-void
    :label_025d
    invoke-virtual {v1}, Lorg/telegram/ui/bz;->finishFragment()V
    return-void
    :label_0261
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z
    move-result v0
    if-eqz v0, :label_0286
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z
    if-nez v2, :label_0283
    invoke-virtual {v1}, Lorg/telegram/ui/bz;->W3()Lorg/telegram/ui/Components/UndoView;
    move-result-object v0
    if-eqz v0, :label_02d9
    const/16 v2, 0x2d
    invoke-virtual {v0, v2, v5, v6, v9}, Lorg/telegram/ui/Components/UndoView;->j(IJLjava/lang/Runnable;)V
    return-void
    :label_0283
    move-object v3, v0
    move-object v4, v9
    goto :label_02a3
    :label_0286
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    neg-long v2, v5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v2
    if-eqz v2, :label_029f
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v2
    if-nez v2, :label_02a1
    :label_029f
    move-wide v2, v5
    goto :label_02ce
    :label_02a1
    move-object v4, v0
    move-object v3, v9
    :label_02a3
    new-instance v2, Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    const/4 v7, 0x3
    invoke-direct {v2, v0, v7, v9}, Lorg/telegram/ui/ActionBar/f2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_checkHistoryImportPeer;
    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkHistoryImportPeer;-><init>()V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v0
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_checkHistoryImportPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v8
    new-instance v0, Lorg/telegram/ui/ww;
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ww;-><init>(Lorg/telegram/ui/bz;Lorg/telegram/ui/ActionBar/f2;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;JLorg/telegram/tgnet/TLRPC$TL_messages_checkHistoryImportPeer;)V
    invoke-virtual {v8, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    const-wide/16 v0, 0x12c
    :label_02ca
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/f2;->r(J)V
    :label_02cd
    return-void
    :label_02ce
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/bz;->W3()Lorg/telegram/ui/Components/UndoView;
    move-result-object v0
    if-eqz v0, :label_02d9
    const/16 v1, 0x2e
    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/telegram/ui/Components/UndoView;->j(IJLjava/lang/Runnable;)V
    :label_02d9
    return-void
    .catch Ljava/lang/Exception; {:label_02ca .. :label_02cd} :label_02cd
.end method
