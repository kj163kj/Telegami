# file_id=0 method_idx=41540 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z"
.method public isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .registers 4

    if-nez v3, :label_0004
    const/4 v3, 0x0
    return v3
    :label_0004
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;
    if-eqz v0, :label_0017
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    if-eqz v0, :label_0017
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z
    return v3
    :label_0017
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z
    return v3
.end method
