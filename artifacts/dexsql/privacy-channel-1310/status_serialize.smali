# file_id=2 method_idx=19906 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/tl/TL_account$updateStatus;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V"
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .registers 3

    const v0, 0x6628562c
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V
    iget-boolean v0, v1, Lorg/telegram/tgnet/tl/TL_account$updateStatus;->offline:Z
    invoke-interface {v2, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V
    return-void
.end method
