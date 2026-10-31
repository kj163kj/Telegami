# file_id=2 method_idx=17395 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V"
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .registers 4

    const v0, -0x5a113cbb
    invoke-interface {v3, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    invoke-interface {v3, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z
    move-result v0
    if-eqz v0, :label_001e
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;
    invoke-static {v3, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    :label_001e
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    const/4 v1, 0x2
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z
    move-result v0
    if-eqz v0, :label_002c
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;
    invoke-static {v3, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    :label_002c
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;
    invoke-interface {v3, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I
    const/4 v1, 0x4
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z
    move-result v0
    if-eqz v0, :label_003f
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->tone:Ljava/lang/String;
    invoke-interface {v3, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V
    :label_003f
    return-void
.end method

