# file_id=2 method_idx=27305 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->z3()Z"
.method public final z3()Z
    .registers 5

    iget-boolean v0, v4, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-eqz v0, :label_0022
    iget-boolean v0, v4, Lorg/telegram/ui/Cells/u1;->P7:Z
    if-nez v0, :label_0022
    iget-boolean v0, v4, Lorg/telegram/ui/Cells/u1;->o8:Z
    if-eqz v0, :label_0010
    iget-boolean v0, v4, Lorg/telegram/ui/Cells/u1;->S7:Z
    if-eqz v0, :label_0022
    :label_0010
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0022
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-nez v0, :label_0022
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawAvatar()Z
    move-result v0
    if-nez v0, :label_0041
    :label_0022
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0031
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v0
    const-wide/32 v2, 0x77628
    cmp-long v0, v0, v2
    if-eqz v0, :label_0041
    :label_0031
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_0039
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z
    if-nez v1, :label_0041
    :label_0039
    if-eqz v0, :label_0043
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_0043
    :label_0041
    const/4 v0, 0x1
    return v0
    :label_0043
    const/4 v0, 0x0
    return v0
.end method
