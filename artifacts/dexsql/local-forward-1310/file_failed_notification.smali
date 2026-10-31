# file_id=0 method_idx=37569 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/ImageLoader$5;->lambda$fileDidFailedLoad$6(Ljava/lang/String;II)V"
.method private synthetic lambda$fileDidFailedLoad$6(Ljava/lang/String;II)V
    .registers 7

    iget-object v0, v3, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/ImageLoader;->access$4100(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v6
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    const/4 v1, 0x2
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0x0
    aput-object v4, v1, v2
    const/4 v4, 0x1
    aput-object v5, v1, v4
    invoke-virtual {v6, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    return-void
.end method
