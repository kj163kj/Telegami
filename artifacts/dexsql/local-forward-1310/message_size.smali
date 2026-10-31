# file_id=0 method_idx=40370 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessageObject;->getSize()J"
.method public getSize()J
    .registers 3

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->highestQuality:Lorg/telegram/ui/Components/b91;
    if-eqz v0, :label_0009
    iget-object v0, v0, Lorg/telegram/ui/Components/b91;->g:Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    return-wide v0
    :label_0009
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->thumbQuality:Lorg/telegram/ui/Components/b91;
    if-eqz v0, :label_0012
    iget-object v0, v0, Lorg/telegram/ui/Components/b91;->g:Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    return-wide v0
    :label_0012
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->cachedQuality:Lorg/telegram/ui/Components/b91;
    if-eqz v0, :label_001b
    iget-object v0, v0, Lorg/telegram/ui/Components/b91;->g:Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    return-wide v0
    :label_001b
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMessageSize(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v0
    return-wide v0
.end method
