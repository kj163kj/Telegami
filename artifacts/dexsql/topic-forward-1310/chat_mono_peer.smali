# file_id=2 method_idx=49506 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->S8()J"
.method public final S8()J
    .registers 6

    iget-object v0, v5, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    const-wide/16 v1, 0x0
    if-eqz v0, :label_003b
    iget v0, v5, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v3, v5, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_003b
    iget-wide v3, v5, Lorg/telegram/ui/ko;->c4:J
    cmp-long v0, v3, v1
    if-nez v0, :label_0029
    iget-object v1, v5, Lorg/telegram/ui/ko;->o5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_0029
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v1, :label_0029
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v0
    return-wide v0
    :label_0029
    if-nez v0, :label_003a
    iget-object v0, v5, Lorg/telegram/ui/ko;->m5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_003a
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_003a
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v0
    return-wide v0
    :label_003a
    return-wide v3
    :label_003b
    return-wide v1
.end method
