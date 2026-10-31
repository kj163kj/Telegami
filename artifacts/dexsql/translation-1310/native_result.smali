# file_id=2 method_idx=17387 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V"
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .registers 3

    const v0, 0x33db32f8
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;
    invoke-static {v2, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    return-void
.end method

