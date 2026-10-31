# file_id=2 method_idx=51020 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/mx;->F(Ljava/lang/CharSequence;ZIIJ)V"
.method public final F(Ljava/lang/CharSequence;ZIIJ)V
    .registers 16

    iget-object v14, v9, Lorg/telegram/ui/mx;->a:Lorg/telegram/ui/bz;
    iget-object v15, v14, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    if-eqz v15, :label_0042
    iget-object v15, v14, Lorg/telegram/ui/bz;->H2:Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v15
    if-eqz v15, :label_000f
    goto :label_0042
    :label_000f
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    const/4 v15, 0x0
    :label_0015
    iget-object v0, v14, Lorg/telegram/ui/bz;->H2:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v15, v0, :label_0035
    iget-object v0, v14, Lorg/telegram/ui/bz;->H2:Ljava/util/ArrayList;
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    move-result-wide v0
    const-wide/16 v3, 0x0
    invoke-static {v0, v1, v3, v4}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v15, v15, 0x1
    goto :label_0015
    :label_0035
    iget-object v1, v9, Lorg/telegram/ui/mx;->a:Lorg/telegram/ui/bz;
    iget-object v0, v1, Lorg/telegram/ui/bz;->B2:Lorg/telegram/ui/vy;
    const/4 v4, 0x0
    const/4 v8, 0x0
    move-object v3, v10
    move v5, v11
    move v6, v12
    move v7, v13
    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/vy;->v(Lorg/telegram/ui/bz;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/og1;)Z
    :label_0042
    return-void
.end method
