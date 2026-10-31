# file_id=0 method_idx=45444 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;"
.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .registers 5

    const/4 v0, 0x0
    const/4 v1, 0x0
    invoke-virtual {v2, v0, v3, v4, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;Landroid/net/Uri;Z)Lorg/telegram/tgnet/TLRPC$TL_photo;
    move-result-object v3
    return-object v3
.end method
