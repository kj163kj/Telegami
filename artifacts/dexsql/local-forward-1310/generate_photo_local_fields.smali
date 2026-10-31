# file_id=0 method_idx=45445 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;Landroid/net/Uri;Z)Lorg/telegram/tgnet/TLRPC$TL_photo;"
.method public generatePhotoSizes(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;Landroid/net/Uri;Z)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .registers 21

    move-object/from16 v0, v18
    move-object/from16 v1, v19
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v2
    int-to-float v2, v2
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v3
    int-to-float v3, v3
    const/4 v4, 0x1
    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    move-result-object v2
    if-nez v2, :label_001b
    const/high16 v2, 0x44480000
    invoke-static {v0, v1, v2, v2, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    move-result-object v2
    :label_001b
    move-object v5, v2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    const/16 v1, 0x37
    const/high16 v2, 0x42b40000
    invoke-static {v5, v2, v2, v1, v4}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    if-eqz v1, :label_002e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_002e
    if-eqz v20, :label_004c
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v1
    int-to-float v9, v1
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v1
    int-to-float v10, v1
    const/16 v14, 0x65
    const/4 v15, 0x0
    move-object v6, v5
    const/4 v5, 0x0
    const/4 v8, 0x1
    const/16 v11, 0x63
    const/4 v12, 0x0
    const/16 v13, 0x65
    invoke-static/range {v5 .. v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    goto :label_0065
    :label_004c
    move-object v6, v5
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v1
    int-to-float v1, v1
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I
    move-result v2
    int-to-float v7, v2
    const/16 v11, 0x65
    const/16 v12, 0x65
    const/4 v8, 0x1
    const/16 v9, 0x50
    const/4 v10, 0x0
    move v6, v1
    invoke-static/range {v5 .. v12}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFZIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v1
    move-object v6, v5
    :label_0065
    if-eqz v1, :label_006a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_006a
    if-eqz v6, :label_006f
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :label_006f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :label_0077
    const/4 v0, 0x0
    return-object v0
    :label_0077
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    if-nez v17, :label_0087
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V
    goto :label_0089
    :label_0087
    move-object/from16 v1, v17
    :label_0089
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v3
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->date:I
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    new-array v0, v2, [B
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B
    return-object v1
.end method
