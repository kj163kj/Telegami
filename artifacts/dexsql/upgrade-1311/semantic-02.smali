# file_id=3 method_idx=20509 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes4.dex" descriptor="Lxg/g5;->r(I)Z"
.method public r(I)Z
    .registers 8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    iget-object v1, v6, Lxg/g5;->m:Ljava/util/HashSet;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v0
    const/4 v2, 0x0
    if-eqz v0, :label_000e
    return v2
    :label_000e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    invoke-virtual {v6}, Lxg/g5;->x()V
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;
    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;-><init>()V
    iget v1, v6, Lxg/g5;->c:I
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-wide v4, v6, Lxg/g5;->d:J
    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v3
    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->id:Ljava/util/ArrayList;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v7
    new-instance v3, Lcf/o2;
    const/4 v4, 0x3
    invoke-direct {v3, v4}, Lcf/o2;-><init>(I)V
    invoke-virtual {v7, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v7
    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesReadUpdated:I
    new-array v1, v2, [Ljava/lang/Object;
    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    const/4 v7, 0x1
    return v7
.end method
