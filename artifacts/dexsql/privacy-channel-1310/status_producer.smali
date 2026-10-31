# file_id=0 method_idx=42441 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->updateTimerProc()V"
.method public updateTimerProc()V
    .registers 24

    move-object/from16 v1, v23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    const/4 v8, 0x0
    invoke-direct {v1, v8}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z
    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;->checkReadTasks()V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z
    move-result v0
    const-wide/16 v9, 0x3e8
    const-wide/16 v11, 0x0
    const/4 v13, 0x1
    if-eqz v0, :label_0157
    iget-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z
    if-nez v0, :label_0090
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J
    move-result-wide v2
    cmp-long v0, v2, v11
    if-nez v0, :label_0090
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z
    if-eqz v0, :label_0090
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z
    if-nez v0, :label_0090
    sget-wide v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J
    cmp-long v0, v2, v11
    if-eqz v0, :label_00d6
    sget-wide v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    sub-long/2addr v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    move-result-wide v2
    cmp-long v0, v2, v9
    if-lez v0, :label_00d6
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    if-eq v0, v13, :label_00d6
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    cmp-long v0, v2, v11
    if-eqz v0, :label_0069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    iget-wide v4, v1, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    sub-long/2addr v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    move-result-wide v2
    const-wide/32 v4, 0xd6d8
    cmp-long v0, v2, v4
    if-gez v0, :label_0069
    iget-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->offlineSent:Z
    if-eqz v0, :label_00d6
    :label_0069
    iput v13, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    if-eqz v0, :label_0078
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    invoke-virtual {v0, v2, v13}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V
    :label_0078
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updateStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updateStatus;-><init>()V
    iput-boolean v8, v0, Lorg/telegram/tgnet/tl/TL_account$updateStatus;->offline:Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v3, Lorg/telegram/messenger/oa;
    const/4 v4, 0x0
    invoke-direct {v3, v1, v4}, Lorg/telegram/messenger/oa;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    move-result v0
    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    goto :label_00d6
    :label_0090
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    const/4 v2, 0x2
    if-eq v0, v2, :label_00d6
    iget-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->offlineSent:Z
    if-nez v0, :label_00d6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v3
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J
    move-result-wide v14
    sub-long/2addr v3, v14
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J
    move-result-wide v3
    const-wide/16 v14, 0x7d0
    cmp-long v0, v3, v14
    if-ltz v0, :label_00d6
    iput v2, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    if-eqz v0, :label_00bf
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    invoke-virtual {v0, v2, v13}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V
    :label_00bf
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updateStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updateStatus;-><init>()V
    iput-boolean v13, v0, Lorg/telegram/tgnet/tl/TL_account$updateStatus;->offline:Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v3, Lorg/telegram/messenger/oa;
    const/4 v4, 0x1
    invoke-direct {v3, v1, v4}, Lorg/telegram/messenger/oa;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    move-result v0
    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I
    :label_00d6
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    const-wide/16 v2, 0x5dc
    if-eqz v0, :label_011f
    move v0, v8
    :label_00e1
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Lz/f;
    invoke-virtual {v4}, Lz/f;->m()I
    move-result v4
    if-ge v0, v4, :label_011f
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Lz/f;
    invoke-virtual {v4, v0}, Lz/f;->j(I)J
    move-result-wide v4
    iget-object v14, v1, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Lorg/telegram/messenger/support/LongSparseLongArray;
    invoke-virtual {v14, v0}, Lorg/telegram/messenger/support/LongSparseLongArray;->valueAt(I)J
    move-result-wide v14
    sub-long v14, v6, v14
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J
    move-result-wide v14
    cmp-long v14, v14, v2
    if-ltz v14, :label_011c
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v14, :label_0119
    new-instance v14, Ljava/lang/StringBuilder;
    const-string v15, "QUEUE CHANNEL "
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v15, " UPDATES WAIT TIMEOUT - CHECK QUEUE"
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_0119
    invoke-direct {v1, v4, v5, v8}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(JI)V
    :label_011c
    add-int/lit8 v0, v0, 0x1
    goto :label_00e1
    :label_011f
    move v0, v8
    :label_0120
    const/4 v4, 0x3
    if-ge v0, v4, :label_0157
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J
    move-result-wide v4
    cmp-long v4, v4, v11
    if-eqz v4, :label_0154
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J
    move-result-wide v4
    sub-long v4, v6, v4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
    move-result-wide v4
    cmp-long v4, v4, v2
    if-ltz v4, :label_0154
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v4, :label_0151
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_0151
    invoke-direct {v1, v0, v8}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    :label_0154
    add-int/lit8 v0, v0, 0x1
    goto :label_0120
    :label_0157
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    iget-wide v4, v1, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J
    sub-long/2addr v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    move-result-wide v2
    const-wide/16 v4, 0x1388
    cmp-long v0, v2, v4
    if-ltz v0, :label_01da
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    iput-wide v2, v1, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    if-eqz v0, :label_01ca
    move v15, v8
    :label_017f
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    if-ge v15, v0, :label_01c2
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Lz/f;
    invoke-virtual {v0, v15}, Lz/f;->j(I)J
    move-result-wide v2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v0
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Lz/f;
    invoke-virtual {v0, v15}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;
    if-nez v15, :label_01a6
    move v0, v13
    goto :label_01a7
    :label_01a6
    move v0, v8
    :label_01a7
    iput-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    move-object v5, v0
    new-instance v0, Lorg/telegram/messenger/nl;
    move-object/from16 v16, v5
    const/4 v5, 0x3
    move-wide/from16 v17, v9
    move-object/from16 v9, v16
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/nl;-><init>(Lorg/telegram/messenger/BaseController;JLjava/lang/Object;I)V
    invoke-virtual {v9, v4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    add-int/lit8 v15, v15, 0x1
    move-wide/from16 v9, v17
    goto :label_017f
    :label_01c2
    move-wide/from16 v17, v9
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Lz/f;
    invoke-virtual {v0}, Lz/f;->b()V
    goto :label_01cc
    :label_01ca
    move-wide/from16 v17, v9
    :label_01cc
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->pollsToCheckSize:I
    if-lez v0, :label_01dc
    new-instance v0, Lorg/telegram/messenger/pa;
    const/4 v2, 0x0
    invoke-direct {v0, v1, v14, v2}, Lorg/telegram/messenger/pa;-><init>(Lorg/telegram/messenger/MessagesController;II)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto :label_01dc
    :label_01da
    move-wide/from16 v17, v9
    :label_01dc
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    move-result v0
    if-nez v0, :label_023a
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v2, 0x0
    :label_01ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :label_021a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    add-int/lit8 v5, v14, -0x1e
    if-ge v4, v5, :label_01ef
    if-nez v2, :label_0210
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :label_0210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Long;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_01ef
    :label_021a
    if-eqz v2, :label_023a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v0
    move v3, v8
    :label_0221
    if-ge v3, v0, :label_0231
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    add-int/lit8 v3, v3, 0x1
    check-cast v4, Ljava/lang/Long;
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :label_0221
    :label_0231
    new-instance v0, Lorg/telegram/messenger/da;
    const/4 v2, 0x3
    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/da;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_023a
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v0
    if-eqz v0, :label_0276
    move v0, v8
    :label_0243
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v2
    if-ge v0, v2, :label_0276
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v2
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v4
    int-to-long v4, v4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v9
    div-long v9, v9, v17
    cmp-long v4, v4, v9
    if-gez v4, :label_0274
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V
    add-int/lit8 v0, v0, -0x1
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Lz/f;
    invoke-virtual {v4, v2, v3}, Lz/f;->h(J)I
    move-result v4
    if-ltz v4, :label_0274
    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(J)V
    :label_0274
    add-int/2addr v0, v13
    goto :label_0243
    :label_0276
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v0
    if-eqz v0, :label_02d2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    div-long v2, v2, v17
    move v0, v8
    :label_0285
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v4
    if-ge v0, v4, :label_02d2
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v4
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v9
    int-to-long v9, v9
    cmp-long v9, v9, v2
    if-gez v9, :label_02d0
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Lz/f;
    invoke-virtual {v9, v4, v5}, Lz/f;->h(J)I
    move-result v9
    if-ltz v9, :label_02b0
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    const-wide/16 v14, 0x12c
    add-long/2addr v14, v2
    long-to-int v10, v14
    invoke-virtual {v9, v4, v5, v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    goto :label_02b7
    :label_02b0
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->shortPollOnlines:Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-virtual {v9, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V
    add-int/lit8 v0, v0, -0x1
    :label_02b7
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getOnlines;
    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getOnlines;-><init>()V
    neg-long v14, v4
    invoke-virtual {v1, v14, v15}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v10
    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getOnlines;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v10
    new-instance v14, Lorg/telegram/messenger/la;
    const/4 v15, 0x4
    invoke-direct {v14, v1, v4, v5, v15}, Lorg/telegram/messenger/la;-><init>(Lorg/telegram/messenger/MessagesController;JI)V
    invoke-virtual {v10, v9, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :label_02d0
    add-int/2addr v0, v13
    goto :label_0285
    :label_02d2
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_02ed
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->size()I
    move-result v2
    if-eq v0, v2, :label_02e5
    goto :label_02ed
    :label_02e5
    move-wide/from16 v21, v6
    move-wide/from16 v16, v11
    move/from16 v19, v13
    goto/16 :label_03c1
    :label_02ed
    new-instance v0, Ljava/util/ArrayList;
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
    move-result-object v2
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    move v2, v8
    move v3, v2
    :label_02fa
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v2, v4, :label_03ad
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Long;
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap;
    if-eqz v5, :label_038a
    new-instance v9, Ljava/util/ArrayList;
    invoke-virtual {v5}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
    move-result-object v10
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    move v10, v8
    :label_031a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v14
    if-ge v10, v14, :label_038a
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Ljava/lang/Integer;
    invoke-virtual {v5, v14}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Ljava/util/ArrayList;
    move-wide/from16 v16, v11
    if-eqz v15, :label_0368
    move v11, v8
    :label_0331
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v12
    if-ge v11, v12, :label_0368
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget-object v8, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;
    if-eqz v8, :label_034a
    const/16 v8, 0x7530
    :label_0345
    move/from16 v19, v13
    move-object/from16 v20, v14
    goto :label_034d
    :label_034a
    const/16 v8, 0x170c
    goto :label_0345
    :label_034d
    iget-wide v13, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J
    move-wide/from16 v21, v6
    int-to-long v6, v8
    add-long/2addr v13, v6
    cmp-long v6, v13, v21
    if-gez v6, :label_035e
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    add-int/lit8 v11, v11, -0x1
    move/from16 v3, v19
    :label_035e
    add-int/lit8 v11, v11, 0x1
    move/from16 v13, v19
    move-object/from16 v14, v20
    move-wide/from16 v6, v21
    const/4 v8, 0x0
    goto :label_0331
    :label_0368
    move-wide/from16 v21, v6
    move/from16 v19, v13
    move-object/from16 v20, v14
    if-eqz v15, :label_0376
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-eqz v6, :label_0380
    :label_0376
    move-object/from16 v14, v20
    invoke-virtual {v5, v14}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v10, v10, -0x1
    :label_0380
    add-int/lit8 v10, v10, 0x1
    move-wide/from16 v11, v16
    move/from16 v13, v19
    move-wide/from16 v6, v21
    const/4 v8, 0x0
    goto :label_031a
    :label_038a
    move-wide/from16 v21, v6
    move-wide/from16 v16, v11
    move/from16 v19, v13
    if-eqz v5, :label_0398
    invoke-virtual {v5}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    move-result v5
    if-eqz v5, :label_03a2
    :label_0398
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1
    :label_03a2
    add-int/lit8 v2, v2, 0x1
    move-wide/from16 v11, v16
    move/from16 v13, v19
    move-wide/from16 v6, v21
    const/4 v8, 0x0
    goto/16 :label_02fa
    :label_03ad
    move-wide/from16 v21, v6
    move-wide/from16 v16, v11
    move/from16 v19, v13
    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V
    if-eqz v3, :label_03c1
    new-instance v0, Lorg/telegram/messenger/da;
    const/4 v2, 0x4
    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/da;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_03c1
    sget v0, Lorg/telegram/ui/ActionBar/n6;->o:I
    const-wide/16 v2, 0x3c
    move/from16 v4, v19
    if-ne v0, v4, :label_03dc
    sget-wide v4, Lorg/telegram/messenger/MessagesController;->lastThemeCheckTime:J
    sub-long v6, v21, v4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J
    move-result-wide v4
    cmp-long v0, v4, v2
    if-ltz v0, :label_03dc
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->themeCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    sput-wide v21, Lorg/telegram/messenger/MessagesController;->lastThemeCheckTime:J
    :label_03dc
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B
    if-eqz v0, :label_03f7
    sget-wide v4, Lorg/telegram/messenger/MessagesController;->lastPasswordCheckTime:J
    sub-long v6, v21, v4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J
    move-result-wide v4
    cmp-long v0, v4, v2
    if-ltz v0, :label_03f7
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->passwordCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    sput-wide v21, Lorg/telegram/messenger/MessagesController;->lastPasswordCheckTime:J
    :label_03f7
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController;->lastPushRegisterSendTime:J
    cmp-long v0, v2, v16
    if-eqz v0, :label_0416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    iget-wide v4, v1, Lorg/telegram/messenger/MessagesController;->lastPushRegisterSendTime:J
    sub-long/2addr v2, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    move-result-wide v2
    const-wide/32 v4, 0xa4cb80
    cmp-long v0, v2, v4
    if-ltz v0, :label_0416
    sget v0, Lorg/telegram/messenger/SharedConfig;->pushType:I
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V
    :label_0416
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getLocationController()Lorg/telegram/messenger/LocationController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->update()V
    const/4 v0, 0x0
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesController;->checkPromoInfoInternal(Z)V
    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;->checkTosUpdate()V
    return-void
.end method
