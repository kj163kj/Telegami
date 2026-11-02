# file_id=3 method_idx=20276 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes4.dex" descriptor="Lxg/e3;->d()Z"
.method public final d()Z
    .registers 5

    iget-object v0, v4, Lxg/e3;->b:Lxg/n5;
    if-eqz v0, :label_0009
    iget-object v0, v0, Lxg/n5;->c:Lzg/q6;
    iget-boolean v0, v0, Lzg/q6;->H0:Z
    return v0
    :label_0009
    iget-object v0, v4, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-eqz v0, :label_0031
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z
    const/4 v2, 0x0
    if-eqz v1, :label_0013
    return v2
    :label_0013
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z
    if-eqz v1, :label_0031
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J
    iget-object v3, v4, Lxg/e3;->k:Lxg/f3;
    iget v3, v3, Lxg/f3;->B2:I
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    neg-long v0, v0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    if-eqz v0, :label_0031
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z
    if-eqz v0, :label_0031
    return v2
    :label_0031
    const/4 v0, 0x1
    return v0
.end method
