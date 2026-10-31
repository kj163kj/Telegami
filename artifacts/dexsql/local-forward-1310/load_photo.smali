# file_id=0 method_idx=36681 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V"
.method public loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 18

    if-nez v13, :label_0003
    return-void
    :label_0003
    if-nez v17, :label_001c
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z
    move-result v0
    if-nez v0, :label_0019
    iget-object v0, v13, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :label_001c
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageLocation;->getSize()J
    move-result-wide v0
    const-wide/16 v2, 0x0
    cmp-long v0, v0, v2
    if-nez v0, :label_001c
    :label_0019
    const/4 v0, 0x1
    move v11, v0
    goto :label_001e
    :label_001c
    move/from16 v11, v17
    :label_001e
    iget-object v1, v13, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v13, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;
    iget-object v3, v13, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;
    iget-object v4, v13, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageLocation;->getSize()J
    move-result-wide v8
    move-object v0, v12
    move-object v5, v13
    move-object v6, v14
    move-object v7, v15
    move/from16 v10, v16
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    return-void
.end method
