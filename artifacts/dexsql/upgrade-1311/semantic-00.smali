# file_id=2 method_idx=37989 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Components/s51;->N()V"
.method public final N()V
    .registers 8

    iget-object v0, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    const/4 v1, 0x1
    if-eqz v0, :label_0017
    iget v0, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    iget-object v2, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V
    const/4 v0, 0x0
    iput-object v0, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    :label_0017
    iget v0, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->translationsManualEnabled:Ljava/lang/String;
    const-string v2, "alternative"
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :label_002b
    invoke-virtual {v7}, Lorg/telegram/ui/Components/s51;->O()V
    return-void
    :label_002b
    iget-object v0, v7, Lorg/telegram/ui/Components/s51;->v:Ljava/lang/String;
    if-eqz v0, :label_0038
    const-string v2, "_"
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    const/4 v2, 0x0
    aget-object v0, v0, v2
    :label_0038
    const-string v2, "nb"
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :label_0042
    const-string v0, "no"
    :label_0042
    iget-object v2, v7, Lorg/telegram/ui/Components/s51;->h:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    iget v3, v7, Lorg/telegram/ui/Components/s51;->e:I
    iget-object v4, v7, Lorg/telegram/ui/Components/s51;->d:Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v2, :label_007f
    if-eqz v4, :label_007f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;-><init>()V
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;->flags:I
    or-int/2addr v1, v5
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;->flags:I
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;->id:Ljava/util/ArrayList;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateRichMessage;->to_lang:Ljava/lang/String;
    iget v0, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    new-instance v1, Lorg/telegram/ui/Components/a2;
    const/16 v3, 0x10
    invoke-direct {v1, v7, v3}, Lorg/telegram/ui/Components/a2;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    iput-object v0, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    return-void
    :label_007f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V
    iget-object v5, v7, Lorg/telegram/ui/Components/s51;->c:Ljava/lang/CharSequence;
    if-nez v5, :label_008b
    const-string v5, ""
    goto :label_008f
    :label_008b
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v5
    :label_008f
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    iget-boolean v5, v7, Lorg/telegram/ui/Components/s51;->f:Z
    if-eqz v5, :label_00c8
    if-eqz v4, :label_00c8
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;-><init>()V
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I
    or-int/2addr v1, v6
    iput v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->id:I
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->to_lang:Ljava/lang/String;
    iget v0, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    new-instance v1, Lorg/telegram/messenger/a;
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    new-instance v3, Lbh/v;
    const/16 v4, 0xb
    invoke-direct {v3, v4, v7, v2}, Lbh/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v0, v5, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    iput-object v0, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    return-void
    :label_00c8
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V
    if-eqz v4, :label_00e0
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    or-int/2addr v1, v6
    iput v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_00eb
    :label_00e0
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    or-int/lit8 v1, v1, 0x2
    iput v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_00eb
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;
    iget v0, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    new-instance v1, Lorg/telegram/ui/Components/cq;
    const/16 v3, 0xa
    invoke-direct {v1, v3, v7, v2}, Lorg/telegram/ui/Components/cq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v0, v5, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    iput-object v0, v7, Lorg/telegram/ui/Components/s51;->b:Ljava/lang/Integer;
    return-void
.end method
