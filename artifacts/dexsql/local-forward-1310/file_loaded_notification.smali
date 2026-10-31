# file_id=0 method_idx=37572 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/ImageLoader$5;->lambda$fileDidLoaded$5(Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;I)V"
.method private synthetic lambda$fileDidLoaded$5(Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;I)V
    .registers 13

    const/4 v0, 0x2
    const/4 v1, 0x1
    if-eqz v8, :label_004f
    const-string v2, ".mp4"
    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :label_0014
    const-string v2, ".jpg"
    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :label_004f
    :label_0014
    invoke-static {v10, v11}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;
    move-result-object v2
    if-eqz v2, :label_004f
    instance-of v3, v11, Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_0021
    check-cast v11, Lorg/telegram/messenger/MessageObject;
    goto :label_0022
    :label_0021
    const/4 v11, 0x0
    :label_0022
    iget-wide v3, v2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J
    const-wide/16 v5, 0x0
    cmp-long v5, v3, v5
    if-ltz v5, :label_002c
    move v3, v1
    goto :label_0042
    :label_002c
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    neg-long v3, v3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_0041
    const/4 v3, 0x4
    goto :label_0042
    :label_0041
    move v3, v0
    :label_0042
    invoke-static {v3, v2, v11, v10}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->needSave(ILorg/telegram/messenger/FilePathDatabase$FileMeta;Lorg/telegram/messenger/MessageObject;I)Z
    move-result v11
    if-eqz v11, :label_004f
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V
    :label_004f
    invoke-static {v10}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v10
    sget v11, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v2, 0x0
    aput-object v9, v0, v2
    aput-object v8, v0, v1
    invoke-virtual {v10, v11, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    iget-object v10, v7, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;
    invoke-static {v10, v9, v8, v12}, Lorg/telegram/messenger/ImageLoader;->access$800(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    return-void
.end method
