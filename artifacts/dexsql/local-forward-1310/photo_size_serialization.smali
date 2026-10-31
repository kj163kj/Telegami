# file_id=2 method_idx=17729 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/TLRPC$TL_photoSize;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V"
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .registers 3

    const v0, 0x75c78e60
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    return-void
.end method
