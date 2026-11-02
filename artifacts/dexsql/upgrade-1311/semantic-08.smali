# file_id=2 method_idx=49968 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->w6()V"
.method public final w6()V
    .registers 9

    iget-boolean v0, v8, Lorg/telegram/ui/ko;->Jb:Z
    if-nez v0, :label_0100
    iget v0, v8, Lorg/telegram/ui/ko;->Q3:I
    if-nez v0, :label_0100
    iget-object v0, v8, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-nez v0, :label_0018
    iget-object v0, v8, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v0
    if-eqz v0, :label_0100
    :label_0018
    iget-object v0, v8, Lorg/telegram/ui/ko;->D6:[Z
    const/4 v1, 0x0
    aget-boolean v0, v0, v1
    if-eqz v0, :label_0100
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v0
    if-eqz v0, :label_0033
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isSponsoredDisabled()Z
    move-result v0
    if-nez v0, :label_0100
    :label_0033
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->F9()Z
    move-result v0
    if-eqz v0, :label_003b
    goto/16 :label_0100
    :label_003b
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v2, v8, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getSponsoredMessages(J)Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;
    move-result-object v0
    if-eqz v0, :label_0100
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    if-nez v2, :label_004d
    goto/16 :label_0100
    :label_004d
    move v2, v1
    :label_004e
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0x0
    const/4 v5, 0x1
    if-ge v2, v3, :label_00c4
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetLayout()V
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    if-eqz v6, :label_00c1
    :label_0067
    iget-object v6, v8, Lorg/telegram/ui/ko;->Kb:Ljava/util/regex/Pattern;
    if-nez v6, :label_0076
    const-string v6, "https://t\\.me/(\\w+)(?:/(\\d+))?"
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v6
    iput-object v6, v8, Lorg/telegram/ui/ko;->Kb:Ljava/util/regex/Pattern;
    goto :label_0076
    :label_0074
    move-exception v3
    goto :label_00be
    :label_0076
    iget-object v6, v8, Lorg/telegram/ui/ko;->Kb:Ljava/util/regex/Pattern;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    move-result v6
    if-eqz v6, :label_00c1
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v5
    :label_0088
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I
    move-result v6
    const/4 v7, 0x2
    if-lt v6, v7, :label_0098
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    :label_0097
    goto :label_0099
    :label_0098
    move v3, v1
    :label_0099
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;
    move-result-object v5
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :label_00aa
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J
    goto :label_00b3
    :label_00aa
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :label_00c1
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    neg-long v5, v5
    :label_00b3
    if-gez v3, :label_00b6
    goto :label_00c1
    :label_00b6
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v7
    invoke-virtual {v7, v5, v6, v3, v4}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)Ljava/lang/Runnable;
    :label_00bd
    goto :label_00c1
    :label_00be
    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V
    :label_00c1
    add-int/lit8 v2, v2, 0x1
    goto :label_004e
    :label_00c4
    iput-boolean v5, v8, Lorg/telegram/ui/ko;->Jb:Z
    iget-object v2, v8, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v2
    if-eqz v2, :label_00e8
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    if-eqz v2, :label_00e2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-eqz v2, :label_00d9
    goto :label_00e2
    :label_00d9
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Lorg/telegram/messenger/MessageObject;
    :label_00e2
    iput-object v4, v8, Lorg/telegram/ui/ko;->Lb:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v8, v5}, Lorg/telegram/ui/ko;->Vc(Z)V
    goto :label_0100
    :label_00e8
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->posts_between:Ljava/lang/Integer;
    if-eqz v2, :label_00f1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    goto :label_00f2
    :label_00f1
    move v2, v1
    :label_00f2
    iput v2, v8, Lorg/telegram/ui/ko;->Ib:I
    iget-object v2, v8, Lorg/telegram/ui/ko;->Nb:Ljava/util/ArrayList;
    if-eqz v2, :label_00fb
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :label_00fb
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$SponsoredMessagesInfo;->messages:Ljava/util/ArrayList;
    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ko;->Da(Ljava/util/ArrayList;Z)V
    :label_0100
    return-void
    .catch Ljava/lang/Exception; {:label_0067 .. :label_0088} :label_0074
    .catch Ljava/lang/Exception; {:label_0088 .. :label_0097} :label_0098
    .catch Ljava/lang/Exception; {:label_0099 .. :label_00bd} :label_0074
.end method
