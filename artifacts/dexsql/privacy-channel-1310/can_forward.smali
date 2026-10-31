# file_id=0 method_idx=40183 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessageObject;->canForwardMessage()Z"
.method public canForwardMessage()Z
    .registers 4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    const/4 v1, 0x0
    if-eqz v0, :label_0008
    return v1
    :label_0008
    iget v0, v3, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x1e
    if-eq v0, v2, :label_0049
    const/16 v2, 0x1f
    if-eq v0, v2, :label_0049
    const/16 v2, 0x20
    if-eq v0, v2, :label_0049
    const/16 v2, 0x21
    if-eq v0, v2, :label_0049
    const/16 v2, 0x23
    if-eq v0, v2, :label_0049
    const/16 v2, 0x25
    if-ne v0, v2, :label_0023
    goto :label_0049
    :label_0023
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;
    if-nez v0, :label_0049
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v0
    if-nez v0, :label_0049
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z
    move-result v0
    if-nez v0, :label_0049
    iget v0, v3, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x10
    if-eq v0, v2, :label_0049
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-nez v0, :label_0049
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-nez v0, :label_0049
    const/4 v0, 0x1
    return v0
    :label_0049
    return v1
.end method
