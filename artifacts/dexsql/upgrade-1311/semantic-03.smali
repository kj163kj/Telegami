# file_id=3 method_idx=20927 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes4.dex" descriptor="Lxg/o5;->V(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z"
.method public final V(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z
    .registers 11

    const/4 v0, 0x0
    if-eqz v9, :label_0065
    if-nez v8, :label_0006
    goto :label_0065
    :label_0006
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v1
    iget-boolean v3, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z
    if-eqz v3, :label_0012
    iput-boolean v0, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z
    :label_0012
    iget-object v3, v7, Lxg/o5;->f:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I
    move-result v3
    iget v4, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
    move-result v5
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v5, v7, Lxg/o5;->a:I
    invoke-static {v5}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;
    move-result-object v6
    invoke-virtual {v6, v1, v2, v4}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V
    iput v4, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I
    iget-object v8, v7, Lxg/o5;->f:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v8, v1, v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    if-le v4, v3, :label_0065
    if-nez v10, :label_003d
    iget-object v8, v7, Lxg/o5;->k:Lxg/a6;
    invoke-virtual {v8, v4, v1, v2}, Lxg/a6;->i(IJ)V
    :label_003d
    new-instance v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;
    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;-><init>()V
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v10
    invoke-virtual {v10, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v10
    iput-object v10, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I
    iput v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;->max_id:I
    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v9
    const/4 v10, 0x0
    invoke-virtual {v9, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v8
    sget v9, Lorg/telegram/messenger/NotificationCenter;->storiesReadUpdated:I
    new-array v10, v0, [Ljava/lang/Object;
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    const/4 v8, 0x1
    return v8
    :label_0065
    return v0
.end method
