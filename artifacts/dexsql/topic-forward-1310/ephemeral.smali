# file_id=0 method_idx=40463 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessageObject;->isEphemeral(Lorg/telegram/tgnet/TLRPC$Message;)Z"
.method public static isEphemeral(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 5

    if-eqz v4, :label_0014
    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isEphemeralMessageId(I)Z
    move-result v0
    if-nez v0, :label_0012
    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->ephemeralReceiverBotId:J
    const-wide/16 v2, 0x0
    cmp-long v4, v0, v2
    if-eqz v4, :label_0014
    :label_0012
    const/4 v4, 0x1
    return v4
    :label_0014
    const/4 v4, 0x0
    return v4
.end method
