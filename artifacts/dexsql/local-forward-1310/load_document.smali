# file_id=0 method_idx=36684 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V"
.method public loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    .registers 17

    if-nez v13, :label_0003
    return-void
    :label_0003
    if-nez v16, :label_000c
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$Document;->key:[B
    if-eqz v0, :label_000c
    const/4 v0, 0x1
    move v11, v0
    goto :label_000e
    :label_000c
    move/from16 v11, v16
    :label_000e
    const/4 v7, 0x0
    const-wide/16 v8, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    move-object v0, v12
    move-object v1, v13
    move-object v6, v14
    move v10, v15
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    return-void
.end method
