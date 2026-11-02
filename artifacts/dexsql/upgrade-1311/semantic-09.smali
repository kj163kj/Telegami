# file_id=2 method_idx=49469 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->P4(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;)Lbh/f4;"
.method public static P4(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;)Lbh/f4;
    .registers 12

    if-eqz v11, :label_004f
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v0
    if-nez v0, :label_004f
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z
    move-result v0
    if-eqz v0, :label_004f
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    const v1, 0x7fffffff
    if-eq v0, v1, :label_0018
    goto :label_004f
    :label_0018
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-wide v1, v10, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->createDeleteShowOnceTask(JI)J
    move-result-wide v6
    const/4 v0, 0x1
    iput-boolean v0, v11, Lorg/telegram/messenger/MessageObject;->forceExpired:Z
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-nez v1, :label_003b
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z
    move-result v1
    if-nez v1, :label_0046
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z
    move-result v1
    if-nez v1, :label_0046
    :label_003b
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v10, v1, v0}, Lorg/telegram/ui/ko;->yc(Ljava/util/ArrayList;Z)V
    :label_0046
    new-instance v4, Lbh/f4;
    const/4 v9, 0x7
    move-object v5, v10
    move-object v8, v11
    invoke-direct/range {v4 .. v9}, Lbh/f4;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V
    return-object v4
    :label_004f
    const/4 v10, 0x0
    return-object v10
.end method
