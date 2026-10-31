# file_id=0 method_idx=42254 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z"
.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z
    .registers 93

    move-object/from16 v1, v87
    move-object/from16 v7, v89
    move-object/from16 v0, v90
    move/from16 v8, v91
    const/4 v9, 0x0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v10
    invoke-virtual/range {v88 .. v88}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    const/4 v11, 0x1
    if-eqz v2, :label_0026
    if-nez v7, :label_001c
    if-eqz v0, :label_0019
    goto :label_001c
    :label_0019
    move v15, v11
    goto/16 :label_1dc2
    :label_001c
    new-instance v2, Lorg/telegram/messenger/yc;
    const/4 v3, 0x0
    invoke-direct {v2, v1, v7, v0, v3}, Lorg/telegram/messenger/yc;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    return v11
    :label_0026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
    if-eqz v7, :label_004c
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;
    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v3
    move v4, v9
    :label_0036
    if-ge v4, v3, :label_004a
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v2, v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1
    goto :label_0036
    :label_004a
    move-object v3, v2
    goto :label_004f
    :label_004c
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->users:Lj$/util/concurrent/ConcurrentHashMap;
    goto :label_004a
    :label_004f
    if-eqz v0, :label_0072
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;
    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v4
    move v5, v9
    :label_005b
    if-ge v5, v4, :label_006f
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v14
    invoke-virtual {v2, v14, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1
    goto :label_005b
    :label_006f
    move-object/from16 v18, v2
    goto :label_0075
    :label_0072
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->chats:Lj$/util/concurrent/ConcurrentHashMap;
    goto :label_006f
    :label_0075
    if-nez v7, :label_0079
    if-eqz v0, :label_0082
    :label_0079
    new-instance v2, Lorg/telegram/messenger/yc;
    const/4 v4, 0x1
    invoke-direct {v2, v1, v7, v0, v4}, Lorg/telegram/messenger/yc;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0082
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v21
    invoke-virtual/range {v88 .. v88}, Ljava/util/ArrayList;->size()I
    move-result v6
    move v2, v9
    move/from16 v23, v2
    move/from16 v24, v23
    move/from16 v63, v24
    const/4 v0, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x0
    const/4 v11, 0x0
    const/4 v14, 0x0
    const/4 v15, 0x0
    const/16 v26, 0x0
    const/16 v34, 0x0
    const/16 v36, 0x0
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v40, 0x0
    const/16 v41, 0x0
    const/16 v42, 0x0
    const/16 v43, 0x0
    const/16 v44, 0x0
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/16 v50, 0x0
    const/16 v51, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    const/16 v54, 0x0
    const/16 v55, 0x0
    const/16 v56, 0x0
    const/16 v57, 0x0
    const/16 v58, 0x0
    const/16 v60, 0x0
    const/16 v61, 0x0
    const/16 v62, 0x0
    const/16 v64, 0x0
    :label_00d6
    if-ge v2, v6, :label_197c
    move/from16 v25, v6
    move-object/from16 v6, v88
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v16
    move-object/from16 v9, v16
    check-cast v9, Lorg/telegram/tgnet/TLRPC$Update;
    sget-boolean v16, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v16, :label_0101
    if-eqz v9, :label_0101
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v16
    move-object/from16 v27, v0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    move/from16 v28, v2
    const-string/jumbo v2, "process update "
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    goto :label_0105
    :label_0101
    move-object/from16 v27, v0
    move/from16 v28, v2
    :label_0105
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewMessage;
    const/16 v16, 0x2
    const-string v2, " channelId = "
    move-object/from16 v29, v4
    move-object/from16 v30, v5
    if-nez v0, :label_0119
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewChannelMessage;
    if-nez v4, :label_0119
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewScheduledMessage;
    if-eqz v4, :label_0137
    :label_0119
    move-object/from16 v4, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v4
    move-object v4, v1
    move-object/from16 v66, v7
    move-wide/from16 v67, v12
    move-object v7, v14
    move-object v8, v15
    move-object/from16 v14, v18
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v13, v43
    move-object v12, v3
    move-object/from16 v27, v10
    goto/16 :label_1521
    :label_0137
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallMessage;
    if-eqz v0, :label_016d
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallMessage;
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/messenger/voip/GroupCallMessagesController;->getInstance(I)Lorg/telegram/messenger/voip/GroupCallMessagesController;
    move-result-object v0
    invoke-virtual {v0, v9}, Lorg/telegram/messenger/voip/GroupCallMessagesController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallMessage;)V
    new-instance v0, Lorg/telegram/messenger/zc;
    const/4 v2, 0x2
    invoke-direct {v0, v2, v1, v9}, Lorg/telegram/messenger/zc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_014f
    move-object/from16 v4, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v4
    move-object v4, v1
    move-object/from16 v66, v7
    move-wide/from16 v67, v12
    move-object v7, v14
    move-object v8, v15
    move-object/from16 v14, v18
    :label_0160
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v13, v43
    move-object v12, v3
    :label_0169
    move-object/from16 v27, v10
    goto/16 :label_1577
    :label_016d
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteGroupCallMessages;
    if-eqz v0, :label_017d
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteGroupCallMessages;
    new-instance v0, Lorg/telegram/messenger/zc;
    const/4 v2, 0x3
    invoke-direct {v0, v2, v1, v9}, Lorg/telegram/messenger/zc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto :label_014f
    :label_017d
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallEncryptedMessage;
    if-eqz v0, :label_018d
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/messenger/voip/GroupCallMessagesController;->getInstance(I)Lorg/telegram/messenger/voip/GroupCallMessagesController;
    move-result-object v0
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallEncryptedMessage;
    invoke-virtual {v0, v9}, Lorg/telegram/messenger/voip/GroupCallMessagesController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallEncryptedMessage;)V
    goto :label_014f
    :label_018d
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEmojiGameInfo;
    if-eqz v0, :label_0198
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEmojiGameInfo;
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEmojiGameInfo;->info:Lorg/telegram/tgnet/TLRPC$EmojiGameInfo;
    iput-object v0, v1, Lorg/telegram/messenger/MessagesController;->stakeDiceInfo:Lorg/telegram/tgnet/TLRPC$EmojiGameInfo;
    goto :label_014f
    :label_0198
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMessagesContents;
    if-eqz v0, :label_01cd
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMessagesContents;
    iget v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMessagesContents;->date:I
    if-nez v36, :label_01a7
    new-instance v36, Lz/f;
    invoke-direct/range {v36 .. v36}, Lz/f;-><init>()V
    :label_01a7
    move-object/from16 v2, v36
    const-wide/16 v4, 0x0
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v16
    check-cast v16, Ljava/util/ArrayList;
    if-nez v16, :label_01b7
    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v16
    :label_01b7
    move-object/from16 v4, v16
    iget-object v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMessagesContents;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move/from16 v63, v0
    move-object v4, v1
    move-object/from16 v36, v2
    :label_01c3
    move-wide/from16 v67, v12
    move-object/from16 v0, v27
    move-object/from16 v5, v30
    :label_01c9
    move-object/from16 v27, v10
    goto/16 :label_196c
    :label_01cd
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelReadMessagesContents;
    if-eqz v0, :label_01f4
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelReadMessagesContents;
    if-nez v36, :label_01da
    new-instance v36, Lz/f;
    invoke-direct/range {v36 .. v36}, Lz/f;-><init>()V
    :label_01da
    move-object/from16 v0, v36
    iget-wide v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelReadMessagesContents;->channel_id:J
    neg-long v4, v4
    invoke-virtual {v0, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-nez v2, :label_01eb
    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v2
    :label_01eb
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelReadMessagesContents;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object/from16 v36, v0
    move-object v4, v1
    goto :label_01c3
    :label_01f4
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionState;
    if-nez v0, :label_01fc
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionUserState;
    if-eqz v0, :label_0219
    :label_01fc
    move-object/from16 v0, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v0
    move-object v4, v1
    move-object/from16 v66, v7
    move-wide v0, v12
    move-object v7, v14
    move-object v8, v15
    move-object/from16 v14, v18
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v13, v43
    move-object v12, v3
    move-object/from16 v27, v10
    goto/16 :label_1508
    :label_0219
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;
    if-eqz v0, :label_027f
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;
    if-nez v27, :label_0228
    new-instance v2, Ljava/util/HashMap;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    goto :label_022a
    :label_0228
    move-object/from16 v2, v27
    :label_022a
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->channel_id:J
    neg-long v4, v4
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v66, v7
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v6
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v4
    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->channel_id:J
    neg-long v5, v5
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v19, v14
    move-object/from16 v20, v15
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v14
    invoke-static {v5, v6, v14, v15}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v5
    invoke-static {v2, v4, v10}, Lorg/telegram/messenger/Utilities;->getOrDefault(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->read_max_id:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    if-nez v37, :label_0268
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0268
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    move-object v4, v1
    move-object v0, v2
    move-object/from16 v27, v10
    move-wide/from16 v67, v12
    move-object/from16 v14, v19
    move-object/from16 v15, v20
    move-object/from16 v5, v30
    :label_027b
    move-object/from16 v7, v66
    goto/16 :label_196c
    :label_027f
    move-object/from16 v66, v7
    move-object/from16 v19, v14
    move-object/from16 v20, v15
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;
    if-eqz v0, :label_02e1
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;
    if-nez v11, :label_0293
    new-instance v11, Ljava/util/HashMap;
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :label_0293
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->channel_id:J
    neg-long v4, v4
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v6
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v2
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->channel_id:J
    neg-long v4, v4
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v6
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v4
    invoke-static {v11, v2, v10}, Lorg/telegram/messenger/Utilities;->getOrDefault(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->read_max_id:I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    if-nez v37, :label_02cb
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_02cb
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_02d0
    move-object/from16 v37, v0
    :label_02d2
    move-object v4, v1
    :label_02d3
    move-wide/from16 v67, v12
    move-object/from16 v14, v19
    move-object/from16 v15, v20
    :label_02d9
    move-object/from16 v0, v27
    move-object/from16 v5, v30
    :label_02dd
    move-object/from16 v7, v66
    goto/16 :label_01c9
    :label_02e1
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;
    if-eqz v0, :label_0346
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;
    if-nez v47, :label_02ee
    new-instance v47, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v47 .. v47}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_02ee
    move-object/from16 v0, v47
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    const-wide/16 v31, 0x0
    cmp-long v6, v4, v31
    if-eqz v6, :label_0306
    neg-long v4, v4
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->max_id:I
    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    neg-long v4, v4
    goto :label_0311
    :label_0306
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->max_id:I
    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    :label_0311
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    if-nez v2, :label_032c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v6, 0x0
    invoke-virtual {v2, v6, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    :label_032c
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryInbox;->max_id:I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v6, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object/from16 v47, v0
    goto :label_02d2
    :label_0346
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;
    if-eqz v0, :label_03e5
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;
    if-nez v48, :label_0353
    new-instance v48, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v48 .. v48}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_0353
    move-object/from16 v0, v48
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    const-wide/16 v31, 0x0
    cmp-long v6, v4, v31
    if-eqz v6, :label_036b
    neg-long v4, v4
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->max_id:I
    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    neg-long v4, v4
    goto :label_03af
    :label_036b
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->max_id:I
    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_03af
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    if-eqz v2, :label_03af
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    if-gtz v2, :label_03af
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v2
    sub-int v2, v2, v92
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    move-result v2
    const/16 v6, 0x1e
    if-ge v2, v6, :label_03af
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    iget-object v6, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v2, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I
    or-int v23, v23, v2
    :label_03af
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    if-nez v2, :label_03ca
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    const/4 v6, 0x1
    invoke-virtual {v2, v6, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    :label_03ca
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadHistoryOutbox;->max_id:I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v6, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object/from16 v48, v0
    goto/16 :label_02d2
    :label_03e5
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteMessages;
    if-eqz v0, :label_040b
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteMessages;
    if-nez v50, :label_03f2
    new-instance v50, Lz/f;
    invoke-direct/range {v50 .. v50}, Lz/f;-><init>()V
    :label_03f2
    move-object/from16 v0, v50
    const-wide/16 v4, 0x0
    invoke-virtual {v0, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-nez v2, :label_0402
    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v2
    :label_0402
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object/from16 v50, v0
    goto/16 :label_02d2
    :label_040b
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteQuickReplyMessages;
    if-eqz v0, :label_0449
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteQuickReplyMessages;
    if-nez v51, :label_0419
    new-instance v51, Lz/f;
    invoke-direct/range {v51 .. v51}, Lz/f;-><init>()V
    :label_0419
    move-object/from16 v2, v51
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteQuickReplyMessages;->shortcut_id:I
    int-to-long v4, v4
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/ArrayList;
    if-nez v4, :label_0431
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteQuickReplyMessages;->shortcut_id:I
    int-to-long v5, v5
    invoke-virtual {v2, v4, v5, v6}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0431
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteQuickReplyMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    if-nez v37, :label_043d
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_043d
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    move-object v4, v1
    move-object/from16 v51, v2
    goto/16 :label_02d3
    :label_0449
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;
    if-eqz v0, :label_0497
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;
    if-nez v52, :label_0456
    new-instance v52, Lz/f;
    invoke-direct/range {v52 .. v52}, Lz/f;-><init>()V
    :label_0456
    move-object/from16 v0, v52
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    invoke-virtual {v0, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-nez v2, :label_046a
    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v2
    :label_046a
    iget-object v6, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;->sent_messages:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_0493
    if-nez v53, :label_047e
    new-instance v53, Lz/f;
    invoke-direct/range {v53 .. v53}, Lz/f;-><init>()V
    :label_047e
    move-object/from16 v2, v53
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    if-nez v6, :label_048c
    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v6
    :label_048c
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteScheduledMessages;->sent_messages:Ljava/util/ArrayList;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object/from16 v53, v2
    :label_0493
    move-object/from16 v52, v0
    goto/16 :label_02d2
    :label_0497
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserTyping;
    if-nez v0, :label_04a3
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatUserTyping;
    if-nez v4, :label_04a3
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;
    if-eqz v4, :label_04be
    :label_04a3
    move-object/from16 v7, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v7
    move-wide/from16 v67, v12
    move-object/from16 v14, v18
    move-object/from16 v7, v19
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v13, v43
    move-object v12, v3
    goto/16 :label_1307
    :label_04be
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipants;
    if-eqz v0, :label_04da
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipants;
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_MEMBERS:I
    or-int v23, v23, v0
    if-nez v56, :label_04cf
    new-instance v56, Ljava/util/ArrayList;
    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V
    :label_04cf
    move-object/from16 v0, v56
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipants;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v56, v0
    goto/16 :label_02d2
    :label_04da
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;
    if-eqz v0, :label_04fa
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lxg/o5;
    move-result-object v0
    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;
    invoke-virtual {v0, v9}, Lxg/o5;->Z(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    :label_04e7
    move-object/from16 v4, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v4
    move-object v4, v1
    move-wide/from16 v67, v12
    move-object/from16 v14, v18
    move-object/from16 v7, v19
    move-object/from16 v8, v20
    goto/16 :label_0160
    :label_04fa
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;
    if-eqz v0, :label_0510
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I
    or-int v23, v23, v0
    if-nez v37, :label_0509
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0509
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_0510
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerWallpaper;
    if-eqz v0, :label_0522
    if-nez v37, :label_051b
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_051b
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_0522
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;
    if-eqz v0, :label_0538
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I
    or-int v23, v23, v0
    if-nez v37, :label_0531
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0531
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_0538
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;
    if-eqz v0, :label_054e
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I
    or-int v23, v23, v0
    if-nez v37, :label_0547
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0547
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_054e
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;
    if-eqz v0, :label_0560
    if-nez v37, :label_0559
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0559
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_0560
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;
    if-eqz v0, :label_0599
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I
    or-int v23, v23, v2
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->user_id:J
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(J)V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogPhotos:Lz/f;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->user_id:J
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :label_058b
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogPhotos:Lz/f;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->user_id:J
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogPhotos;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V
    :label_058b
    if-nez v37, :label_0592
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0592
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_0599
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;
    if-eqz v0, :label_05bb
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I
    or-int v23, v23, v2
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;->user_id:J
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(J)V
    if-nez v37, :label_05b4
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_05b4
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_05bb
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;
    if-eqz v0, :label_05d1
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_PHONE:I
    or-int v23, v23, v0
    if-nez v37, :label_05ca
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_05ca
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_02d0
    :label_05d1
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;
    if-eqz v0, :label_05e8
    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lxg/o5;
    move-result-object v0
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;->max_id:I
    invoke-virtual {v0, v2, v4, v5}, Lxg/o5;->U(IJ)V
    goto/16 :label_04e7
    :label_05e8
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;
    if-eqz v0, :label_0682
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;
    if-nez v30, :label_05f7
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    goto :label_05f9
    :label_05f7
    move-object/from16 v5, v30
    :label_05f9
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v4, :label_0669
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :label_0669
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z
    const/4 v4, -0x1
    if-eqz v2, :label_063e
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    neg-long v6, v6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v2
    if-eq v2, v4, :label_0624
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :label_0624
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :label_0669
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0669
    :label_063e
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v2
    if-eq v2, v4, :label_064f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :label_064f
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :label_0669
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    neg-long v6, v6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0669
    if-nez v37, :label_0670
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0670
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    move-object v4, v1
    move-wide/from16 v67, v12
    move-object/from16 v14, v19
    move-object/from16 v15, v20
    move-object/from16 v0, v27
    goto/16 :label_02dd
    :label_0682
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEncryptedMessage;
    if-eqz v0, :label_0735
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v0
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEncryptedMessage;
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;
    move-result-object v0
    if-eqz v0, :label_0721
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_0721
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I
    int-to-long v4, v2
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J
    move-result-wide v4
    if-nez v29, :label_06ab
    new-instance v2, Lz/f;
    invoke-direct {v2}, Lz/f;-><init>()V
    goto :label_06ad
    :label_06ab
    move-object/from16 v2, v29
    :label_06ad
    invoke-virtual {v2, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    if-nez v6, :label_06b9
    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v6
    :label_06b9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v7
    move-object/from16 v9, v19
    const/4 v14, 0x0
    :label_06c0
    if-ge v14, v7, :label_0719
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    if-nez v34, :label_06d7
    new-instance v16, Ljava/util/ArrayList;
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    move-object/from16 v31, v0
    move-object/from16 v0, v16
    goto :label_06db
    :label_06d7
    move-object/from16 v31, v0
    move-object/from16 v0, v34
    :label_06db
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v29, v0
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    move-object/from16 v32, v2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v19
    move v0, v14
    new-instance v14, Lorg/telegram/messenger/MessageObject;
    move-object/from16 v16, v15
    iget v15, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move-object/from16 v2, v20
    move/from16 v20, v19
    move-object/from16 v17, v2
    move v2, v0
    move-object/from16 v0, v17
    move-object/from16 v17, v3
    invoke-direct/range {v14 .. v20}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZZ)V
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v9, :label_070b
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :label_070b
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v14, v2, 0x1
    move-object/from16 v20, v0
    move-object/from16 v34, v29
    move-object/from16 v0, v31
    move-object/from16 v2, v32
    goto :label_06c0
    :label_0719
    move-object/from16 v32, v2
    move-object/from16 v0, v20
    move-object v14, v9
    move-object/from16 v4, v32
    goto :label_0727
    :label_0721
    move-object/from16 v0, v20
    move-object/from16 v14, v19
    move-object/from16 v4, v29
    :label_0727
    move-object v15, v0
    move-object/from16 v29, v4
    move-wide/from16 v67, v12
    :label_072c
    move-object/from16 v0, v27
    move-object/from16 v5, v30
    move-object/from16 v7, v66
    move-object v4, v1
    goto/16 :label_01c9
    :label_0735
    move-object/from16 v0, v20
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedChatTyping;
    if-eqz v4, :label_07df
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedChatTyping;
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedChatTyping;->chat_id:I
    const/4 v6, 0x1
    invoke-virtual {v1, v2, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-result-object v2
    if-eqz v2, :label_07d7
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedChatTyping;->chat_id:I
    int-to-long v4, v4
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J
    move-result-wide v4
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap;
    if-nez v6, :label_0769
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;
    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v7, v4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_0769
    invoke-virtual {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/ArrayList;
    if-nez v4, :label_0779
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v6, v10, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_0779
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/4 v6, 0x0
    :label_077e
    if-ge v6, v5, :label_079f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget-wide v14, v7, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:J
    move v9, v5
    move/from16 v16, v6
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    cmp-long v5, v14, v5
    if-nez v5, :label_079b
    iput-wide v12, v7, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V
    iput-object v4, v7, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :label_07b6
    :label_079b
    add-int/lit8 v6, v16, 0x1
    move v5, v9
    goto :label_077e
    :label_079f
    new-instance v5, Lorg/telegram/messenger/MessagesController$PrintingUser;
    invoke-direct {v5}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    iput-wide v6, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:J
    iput-wide v12, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V
    iput-object v6, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/16 v24, 0x1
    :label_07b6
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v4
    sub-int v4, v4, v92
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I
    move-result v4
    const/16 v6, 0x1e
    if-ge v4, v6, :label_07d7
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v4, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_07d7
    move-object v15, v0
    move-object v4, v1
    move-wide/from16 v67, v12
    move-object/from16 v14, v19
    goto/16 :label_02d9
    :label_07df
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;
    if-eqz v4, :label_080c
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;
    if-nez v49, :label_07ec
    new-instance v49, Landroid/util/SparseIntArray;
    invoke-direct/range {v49 .. v49}, Landroid/util/SparseIntArray;-><init>()V
    :label_07ec
    move-object/from16 v2, v49
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;->chat_id:I
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;->max_date:I
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V
    if-nez v64, :label_07fc
    new-instance v64, Ljava/util/ArrayList;
    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V
    :label_07fc
    move-object/from16 v4, v64
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v15, v0
    move-object/from16 v49, v2
    move-object/from16 v64, v4
    move-wide/from16 v67, v12
    move-object/from16 v14, v19
    goto/16 :label_072c
    :label_080c
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;
    if-eqz v4, :label_083d
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v67
    iget-wide v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;->chat_id:J
    iget-wide v6, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;->user_id:J
    iget-wide v14, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;->inviter_id:J
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdd;->version:I
    const/16 v72, 0x0
    move/from16 v75, v2
    move-wide/from16 v68, v4
    move-wide/from16 v70, v6
    move-wide/from16 v73, v14
    invoke-virtual/range {v67 .. v75}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(JJIJI)V
    :label_082b
    move-object/from16 v4, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v4
    move-object v8, v0
    move-object v4, v1
    move-wide/from16 v67, v12
    move-object/from16 v14, v18
    move-object/from16 v7, v19
    goto/16 :label_0160
    :label_083d
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantDelete;
    if-eqz v4, :label_085b
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantDelete;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v67
    iget-wide v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantDelete;->chat_id:J
    iget-wide v6, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantDelete;->user_id:J
    const-wide/16 v73, 0x0
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantDelete;->version:I
    const/16 v72, 0x1
    move/from16 v75, v2
    move-wide/from16 v68, v4
    move-wide/from16 v70, v6
    invoke-virtual/range {v67 .. v75}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(JJIJI)V
    goto :label_082b
    :label_085b
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDcOptions;
    if-eqz v4, :label_0867
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V
    goto :label_082b
    :label_0867
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateConfig;
    if-eqz v4, :label_0877
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V
    const/4 v6, 0x1
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->loadAppConfig(Z)V
    goto :label_082b
    :label_0877
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryption;
    if-eqz v4, :label_0885
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    move-result-object v2
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryption;
    invoke-virtual {v2, v9, v3}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryption;Lj$/util/concurrent/ConcurrentHashMap;)V
    goto :label_082b
    :label_0885
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerBlocked;
    if-eqz v4, :label_089d
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerBlocked;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v2
    new-instance v4, Lorg/telegram/messenger/ed;
    const/4 v5, 0x0
    invoke-direct {v4, v1, v9, v5}, Lorg/telegram/messenger/ed;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerBlocked;I)V
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    goto :label_082b
    :label_089d
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;
    if-eqz v4, :label_09b0
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;
    iget-boolean v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->popup:Z
    if-eqz v2, :label_08bb
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->message:Ljava/lang/String;
    if-eqz v2, :label_08bb
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v2
    if-lez v2, :label_08bb
    new-instance v2, Lorg/telegram/messenger/t2;
    const/16 v4, 0x1c
    invoke-direct {v2, v4, v1, v9}, Lorg/telegram/messenger/t2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_08bb
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->flags:I
    and-int/lit8 v2, v2, 0x2
    if-eqz v2, :label_0994
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    iget-boolean v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->invert_media:Z
    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I
    move-result v4
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    const/4 v6, 0x0
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    const/4 v6, 0x1
    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    const/16 v4, 0x100
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->inbox_date:I
    if-eqz v4, :label_08ec
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    goto :label_08f6
    :label_08ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    const-wide/16 v6, 0x3e8
    div-long/2addr v4, v6
    long-to-int v4, v4
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    :label_08f6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    const-wide/32 v5, 0xbdb28
    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v14
    iput-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v4, :label_0921
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v4, v4, 0x200
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0921
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->message:Ljava/lang/String;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;
    if-eqz v4, :label_0931
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit16 v4, v4, 0x80
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :label_0931
    if-nez v34, :label_0938
    new-instance v34, Ljava/util/ArrayList;
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :label_0938
    move-object/from16 v4, v34
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    new-instance v14, Lorg/telegram/messenger/MessageObject;
    iget v15, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move/from16 v20, v5
    move-object/from16 v16, v2
    move-object/from16 v17, v3
    move-object/from16 v7, v19
    move/from16 v19, v5
    invoke-direct/range {v14 .. v20}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZZ)V
    move-object v3, v14
    move-object/from16 v6, v17
    move-object/from16 v14, v18
    if-nez v29, :label_096a
    new-instance v5, Lz/f;
    invoke-direct {v5}, Lz/f;-><init>()V
    :label_0966
    move-wide/from16 v67, v12
    move-object v13, v11
    goto :label_096d
    :label_096a
    move-object/from16 v5, v29
    goto :label_0966
    :label_096d
    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v5, v11, v12}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/util/ArrayList;
    if-nez v9, :label_0981
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v5, v9, v11, v12}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0981
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v7, :label_098c
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    goto :label_098d
    :label_098c
    move-object v2, v7
    :label_098d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v34, v4
    move-object v4, v5
    goto :label_099f
    :label_0994
    move-object v6, v3
    move-wide/from16 v67, v12
    move-object/from16 v14, v18
    move-object/from16 v7, v19
    move-object v13, v11
    move-object v2, v7
    move-object/from16 v4, v29
    :label_099f
    move-object v15, v0
    move-object/from16 v29, v4
    move-object v3, v6
    move-object v11, v13
    move-object/from16 v18, v14
    move-object/from16 v0, v27
    move-object/from16 v5, v30
    move-object/from16 v7, v66
    move-object v4, v1
    move-object v14, v2
    goto/16 :label_01c9
    :label_09b0
    move-object v6, v3
    move-wide/from16 v67, v12
    move-object/from16 v14, v18
    move-object/from16 v7, v19
    move-object v13, v11
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateFolderPeers;
    if-eqz v3, :label_09dd
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateFolderPeers;
    move-object/from16 v12, v57
    if-nez v12, :label_09c9
    new-instance v57, Ljava/util/ArrayList;
    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V
    move-object/from16 v12, v57
    :label_09c9
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v15, v0
    move-object v4, v1
    :label_09ce
    move-object v3, v6
    move-object/from16 v57, v12
    move-object v11, v13
    move-object/from16 v18, v14
    :label_09d4
    move-object/from16 v0, v27
    move-object/from16 v5, v30
    move-object v14, v7
    move-object/from16 v27, v10
    goto/16 :label_027b
    :label_09dd
    move-object/from16 v12, v57
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebPage;
    if-eqz v3, :label_09fa
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebPage;
    if-nez v40, :label_09ec
    new-instance v40, Lz/f;
    invoke-direct/range {v40 .. v40}, Lz/f;-><init>()V
    :label_09ec
    move-object/from16 v2, v40
    iget-object v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J
    invoke-virtual {v2, v3, v4, v5}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_09f5
    move-object v15, v0
    move-object v4, v1
    move-object/from16 v40, v2
    goto :label_09ce
    :label_09fa
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelWebPage;
    if-eqz v3, :label_0a11
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelWebPage;
    if-nez v40, :label_0a07
    new-instance v40, Lz/f;
    invoke-direct/range {v40 .. v40}, Lz/f;-><init>()V
    :label_0a07
    move-object/from16 v2, v40
    iget-object v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J
    invoke-virtual {v2, v3, v4, v5}, Lz/f;->k(Ljava/lang/Object;J)V
    goto :label_09f5
    :label_0a11
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;
    if-eqz v3, :label_0ab9
    move-object v3, v9
    check-cast v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v4, :label_0a2f
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v57, v12
    iget-wide v11, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-static {v4, v11, v12}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    goto :label_0a31
    :label_0a2f
    move-object/from16 v57, v12
    :label_0a31
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->channelsPts:Lorg/telegram/messenger/support/LongSparseIntArray;
    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    const/4 v9, 0x0
    invoke-virtual {v2, v4, v5, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I
    move-result v2
    if-nez v2, :label_0a8b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(J)I
    move-result v2
    if-nez v2, :label_0a84
    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v14, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_0a5a
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-eqz v5, :label_0a64
    :label_0a5a
    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v4
    :label_0a64
    if-eqz v4, :label_0a6a
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-eqz v5, :label_0a78
    :label_0a6a
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v4
    iget-wide v11, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v4
    const/4 v5, 0x1
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    :label_0a78
    if-eqz v4, :label_0a8b
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-nez v5, :label_0a8b
    const-wide/16 v11, 0x0
    invoke-virtual {v1, v4, v11, v12}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    goto :label_0a8b
    :label_0a84
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->channelsPts:Lorg/telegram/messenger/support/LongSparseIntArray;
    iget-wide v11, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-virtual {v4, v11, v12, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    :label_0a8b
    if-eqz v2, :label_0aa4
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->flags:I
    const/16 v59, 0x1
    and-int/lit8 v4, v4, 0x1
    if-eqz v4, :label_0a9f
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->pts:I
    if-le v4, v2, :label_0aa4
    iget-wide v2, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(J)V
    goto :label_0aa4
    :label_0a9f
    iget-wide v2, v3, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelTooLong;->channel_id:J
    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(J)V
    :label_0aa4
    move-object v8, v0
    move-object v4, v1
    move-object v12, v6
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v11, v41
    move-object/from16 v41, v44
    move-object/from16 v27, v10
    move-object/from16 v44, v13
    :label_0ab5
    move-object/from16 v13, v43
    goto/16 :label_1577
    :label_0ab9
    move-object/from16 v57, v12
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;
    if-eqz v3, :label_0b4e
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;
    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->channel_id:J
    neg-long v2, v2
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    if-nez v4, :label_0adf
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v4
    const/4 v5, 0x0
    invoke-virtual {v4, v5, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    :label_0adf
    if-nez v47, :label_0ae6
    new-instance v47, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v47 .. v47}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_0ae6
    move-object/from16 v5, v47
    if-nez v60, :label_0aef
    new-instance v60, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v60 .. v60}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_0aef
    move-object/from16 v11, v60
    iget v12, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->max_id:I
    invoke-virtual {v5, v2, v3, v12}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget v12, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->still_unread_count:I
    invoke-virtual {v11, v2, v3, v12}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v12, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    move-object/from16 v20, v0
    iget v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->max_id:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v12, v15, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v4, "TL_updateReadChannelInbox "
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, "  new unread = "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->still_unread_count:I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " max id = "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelInbox;->max_id:I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " from get diff "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    move-object v4, v1
    move-object/from16 v47, v5
    move-object v3, v6
    move-object/from16 v60, v11
    :label_0b47
    move-object v11, v13
    move-object/from16 v18, v14
    move-object/from16 v15, v20
    goto/16 :label_09d4
    :label_0b4e
    move-object/from16 v20, v0
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;
    if-nez v0, :label_0b58
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;
    if-eqz v0, :label_0b6b
    :label_0b58
    move-object v12, v6
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v11, v41
    move-object/from16 v41, v44
    move-object/from16 v44, v13
    move-object/from16 v13, v43
    goto/16 :label_12fa
    :label_0b6b
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;
    if-eqz v0, :label_0bcf
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v3, :label_0b86
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0b86
    if-nez v48, :label_0b8d
    new-instance v48, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v48 .. v48}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_0b8d
    move-object/from16 v2, v48
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;->channel_id:J
    neg-long v3, v3
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;->max_id:I
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v9
    invoke-virtual {v5, v9}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    if-nez v5, :label_0bb2
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    const/4 v9, 0x1
    invoke-virtual {v5, v9, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    :label_0bb2
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v4
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelOutbox;->max_id:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v9, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object v4, v1
    move-object/from16 v48, v2
    :label_0bcc
    move-object v3, v6
    goto/16 :label_0b47
    :label_0bcf
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteChannelMessages;
    if-eqz v0, :label_0c0b
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteChannelMessages;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v3, :label_0bea
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteChannelMessages;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0bea
    if-nez v50, :label_0bf1
    new-instance v50, Lz/f;
    invoke-direct/range {v50 .. v50}, Lz/f;-><init>()V
    :label_0bf1
    move-object/from16 v2, v50
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteChannelMessages;->channel_id:J
    neg-long v3, v3
    invoke-virtual {v2, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/ArrayList;
    if-nez v5, :label_0c02
    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v5
    :label_0c02
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteChannelMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object v4, v1
    move-object/from16 v50, v2
    goto :label_0bcc
    :label_0c0b
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;
    if-eqz v0, :label_0c36
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0c26
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0c26
    if-nez v37, :label_0c2d
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0c2d
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    move-object v4, v1
    goto :label_0bcc
    :label_0c36
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChat;
    if-nez v0, :label_0c3e
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;
    if-eqz v0, :label_0c51
    :label_0c3e
    move-object v12, v6
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v11, v41
    move-object/from16 v41, v44
    move-object/from16 v44, v13
    move-object/from16 v13, v43
    goto/16 :label_12e3
    :label_0c51
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;
    if-eqz v0, :label_0c97
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v3, :label_0c6c
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0c6c
    move-object/from16 v11, v44
    if-nez v11, :label_0c77
    new-instance v44, Lz/f;
    invoke-direct/range {v44 .. v44}, Lz/f;-><init>()V
    move-object/from16 v11, v44
    :label_0c77
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;->channel_id:J
    neg-long v2, v2
    invoke-virtual {v11, v2, v3}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/util/SparseIntArray;
    if-nez v4, :label_0c8a
    new-instance v4, Landroid/util/SparseIntArray;
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V
    invoke-virtual {v11, v4, v2, v3}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0c8a
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;->id:I
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageViews;->views:I
    invoke-virtual {v4, v2, v0}, Landroid/util/SparseIntArray;->put(II)V
    move-object v4, v1
    move-object v3, v6
    move-object/from16 v44, v11
    goto/16 :label_0b47
    :label_0c97
    move-object/from16 v11, v44
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;
    if-eqz v0, :label_0ce1
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v3, :label_0cb4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0cb4
    move-object/from16 v12, v45
    if-nez v12, :label_0cbf
    new-instance v45, Lz/f;
    invoke-direct/range {v45 .. v45}, Lz/f;-><init>()V
    move-object/from16 v12, v45
    :label_0cbf
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;->channel_id:J
    neg-long v2, v2
    invoke-virtual {v12, v2, v3}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/util/SparseIntArray;
    if-nez v4, :label_0cd2
    new-instance v4, Landroid/util/SparseIntArray;
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V
    invoke-virtual {v12, v4, v2, v3}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_0cd2
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;->id:I
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelMessageForwards;->forwards:I
    invoke-virtual {v4, v2, v0}, Landroid/util/SparseIntArray;->put(II)V
    :label_0cd9
    move-object v4, v1
    move-object v3, v6
    move-object/from16 v44, v11
    move-object/from16 v45, v12
    goto/16 :label_0b47
    :label_0ce1
    move-object/from16 v12, v45
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;
    if-eqz v0, :label_0d20
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v69
    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;->chat_id:J
    iget-wide v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;->user_id:J
    iget-boolean v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;->is_admin:Z
    if-eqz v0, :label_0cfa
    const-wide/16 v15, 0x1
    move-wide/from16 v75, v15
    goto :label_0cfc
    :label_0cfa
    const-wide/16 v75, 0x0
    :label_0cfc
    iget v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantAdmin;->version:I
    const/16 v74, 0x2
    move/from16 v77, v0
    move-wide/from16 v70, v2
    move-wide/from16 v72, v4
    invoke-virtual/range {v69 .. v77}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(JJIJI)V
    :label_0d09
    move-object/from16 v4, v41
    move-object/from16 v41, v11
    move-object v11, v4
    move-object v4, v1
    move-object/from16 v45, v12
    move-object/from16 v44, v13
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    move-object/from16 v13, v43
    move-object v12, v6
    goto/16 :label_0169
    :label_0d20
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;
    if-eqz v0, :label_0d4e
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    const-wide/16 v31, 0x0
    cmp-long v5, v3, v31
    if-eqz v5, :label_0d32
    goto :label_0d34
    :label_0d32
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    :label_0d34
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;->version:I
    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatDefaultBannedRights(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)V
    if-nez v37, :label_0d46
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0d46
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    goto :label_0cd9
    :label_0d4e
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditChannelMessage;
    if-nez v0, :label_0d56
    instance-of v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditMessage;
    if-eqz v3, :label_0d69
    :label_0d56
    move-object/from16 v8, v41
    move-object/from16 v41, v11
    move-object v11, v8
    move-object/from16 v45, v12
    move-object/from16 v44, v13
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    goto/16 :label_1145
    :label_0d69
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;
    if-eqz v0, :label_0da2
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v3, :label_0d84
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;->channel_id:J
    invoke-static {v3, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0d84
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v69
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;->channel_id:J
    neg-long v2, v2
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;->messages:Ljava/util/ArrayList;
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedChannelMessages;->pinned:Z
    const/16 v76, 0x0
    const/16 v77, 0x0
    const/16 v74, -0x1
    const/16 v75, 0x0
    move/from16 v73, v0
    move-wide/from16 v70, v2
    move-object/from16 v72, v4
    invoke-virtual/range {v69 .. v77}, Lorg/telegram/messenger/MessagesStorage;->updatePinnedMessages(JLjava/util/ArrayList;ZIIZLjava/util/HashMap;)V
    goto/16 :label_0d09
    :label_0da2
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedMessages;
    if-eqz v0, :label_0dc7
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedMessages;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v69
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedMessages;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v70
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedMessages;->messages:Ljava/util/ArrayList;
    iget-boolean v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedMessages;->pinned:Z
    const/16 v76, 0x0
    const/16 v77, 0x0
    const/16 v74, -0x1
    const/16 v75, 0x0
    move-object/from16 v72, v0
    move/from16 v73, v2
    invoke-virtual/range {v69 .. v77}, Lorg/telegram/messenger/MessagesStorage;->updatePinnedMessages(JLjava/util/ArrayList;ZIIZLjava/util/HashMap;)V
    goto/16 :label_0d09
    :label_0dc7
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallConnection;
    if-eqz v0, :label_0dcd
    goto/16 :label_0d09
    :label_0dcd
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateLangPack;
    if-eqz v0, :label_0dde
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateLangPack;
    new-instance v0, Lorg/telegram/messenger/zc;
    const/4 v2, 0x0
    invoke-direct {v0, v2, v1, v9}, Lorg/telegram/messenger/zc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto/16 :label_0d09
    :label_0dde
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateLangPackTooLong;
    if-eqz v0, :label_0df3
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateLangPackTooLong;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v0
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    iget-object v3, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateLangPackTooLong;->lang_code:Ljava/lang/String;
    const/4 v4, 0x0
    const/4 v5, 0x0
    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V
    goto/16 :label_0d09
    :label_0df3
    const/4 v4, 0x0
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelAvailableMessages;
    if-eqz v0, :label_0e1a
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelAvailableMessages;
    if-nez v55, :label_0e01
    new-instance v55, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v55 .. v55}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_0e01
    move-object/from16 v0, v55
    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelAvailableMessages;->channel_id:J
    neg-long v2, v2
    const/4 v5, 0x0
    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I
    move-result v15
    if-eqz v15, :label_0e11
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelAvailableMessages;->available_min_id:I
    if-ge v15, v5, :label_0e16
    :label_0e11
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelAvailableMessages;->available_min_id:I
    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    :label_0e16
    move-object/from16 v55, v0
    goto/16 :label_0cd9
    :label_0e1a
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;
    const-string v2, " "
    if-eqz v0, :label_0ed1
    move-object v15, v9
    check-cast v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;
    iget-object v0, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_0e6f
    iget-object v3, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    if-eqz v3, :label_0e6f
    iget v3, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->msg_id:I
    if-eqz v3, :label_0e6f
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    new-instance v0, Landroid/util/SparseBooleanArray;
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V
    iget v3, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->msg_id:I
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PollResults;->has_unread_votes:Z
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    iget v1, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->top_msg_id:I
    move-object v3, v0
    int-to-long v0, v1
    sget-boolean v16, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z
    if-eqz v16, :label_0e66
    move-object/from16 v16, v3
    const-string v3, "check poll vores for "
    invoke-static {v4, v5, v3, v2}, La2/b;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-static {v2, v0, v1}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    move-wide/from16 v78, v4
    move-object/from16 v5, v16
    :label_0e58
    move-wide v3, v0
    move-wide/from16 v1, v78
    move-object/from16 v0, v87
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    goto :label_0e6a
    :label_0e66
    move-wide/from16 v78, v4
    move-object v5, v3
    goto :label_0e58
    :label_0e6a
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->checkUnreadPollVotes(JJLandroid/util/SparseBooleanArray;)V
    move-object v1, v0
    goto :label_0e77
    :label_0e6f
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    :label_0e77
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v0
    iget-wide v2, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->poll_id:J
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->getVoteSendTime(J)J
    move-result-wide v2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v4
    sub-long/2addr v4, v2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
    move-result-wide v2
    const-wide/16 v4, 0x258
    cmp-long v0, v2, v4
    if-gez v0, :label_0ea1
    move-object/from16 v4, v41
    move-object/from16 v41, v11
    move-object v11, v4
    move-object v4, v1
    move-object/from16 v27, v10
    move-object/from16 v45, v12
    move-object/from16 v44, v13
    move-object/from16 v13, v43
    move-object v12, v6
    goto/16 :label_1577
    :label_0ea1
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    iget-wide v2, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->poll_id:J
    iget-object v4, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-object v5, v15, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->updateMessagePollResults(JLorg/telegram/tgnet/TLRPC$Poll;Lorg/telegram/tgnet/TLRPC$PollResults;)V
    if-nez v37, :label_0eb5
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0eb5
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    move-object v4, v1
    move-object v3, v6
    move-object v15, v8
    move-object/from16 v27, v10
    move-object/from16 v44, v11
    move-object/from16 v45, v12
    move-object v11, v13
    :label_0ec6
    move-object/from16 v18, v14
    move-object/from16 v29, v78
    move-object/from16 v5, v79
    move-object/from16 v0, v80
    move-object v14, v7
    goto/16 :label_027b
    :label_0ed1
    move-object/from16 v8, v20
    move-object/from16 v80, v27
    move-object/from16 v78, v29
    move-object/from16 v79, v30
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;
    if-eqz v0, :label_0f54
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    iget v15, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->msg_id:I
    move-object/from16 v44, v13
    iget-object v13, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    invoke-virtual {v5, v3, v4, v15, v13}, Lorg/telegram/messenger/MessagesStorage;->updateMessageReactions(JILorg/telegram/tgnet/TLRPC$TL_messageReactions;)V
    iget-boolean v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->updateUnreadState:Z
    if-eqz v5, :label_0f38
    new-instance v5, Landroid/util/SparseBooleanArray;
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V
    iget v13, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->msg_id:I
    iget-object v15, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->hasUnreadReactions(Lorg/telegram/tgnet/TLRPC$TL_messageReactions;)Z
    move-result v15
    invoke-virtual {v5, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V
    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z
    move-result v13
    if-eqz v13, :label_0f1d
    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v13, v3, v4}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z
    move-result v13
    if-eqz v13, :label_0f1d
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v15
    move-wide v0, v15
    goto :label_0f20
    :label_0f1d
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->top_msg_id:I
    int-to-long v0, v0
    :label_0f20
    sget-boolean v13, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z
    if-eqz v13, :label_0f2d
    const-string v13, "check reactions for "
    invoke-static {v3, v4, v13, v2}, La2/b;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-static {v2, v0, v1}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0f2d
    move-wide/from16 v85, v3
    move-wide v3, v0
    move-wide/from16 v1, v85
    move-object/from16 v0, v87
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JJLandroid/util/SparseBooleanArray;)V
    move-object v1, v0
    :label_0f38
    if-nez v37, :label_0f3f
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0f3f
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v3, v44
    move-object/from16 v44, v11
    move-object v11, v3
    move-object/from16 v37, v0
    move-object v4, v1
    move-object v3, v6
    move-object v15, v8
    move-object/from16 v27, v10
    move-object/from16 v45, v12
    goto/16 :label_0ec6
    :label_0f54
    move-object/from16 v44, v13
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;
    if-eqz v0, :label_0fba
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->extended_media:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_0fa3
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->msg_id:I
    move-object v13, v11
    move-object/from16 v45, v12
    int-to-long v11, v5
    invoke-virtual {v2, v3, v4, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->getMessage(JJ)Lorg/telegram/tgnet/TLRPC$Message;
    move-result-object v2
    if-eqz v2, :label_0f94
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    new-instance v4, Ljava/util/ArrayList;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->extended_media:Ljava/util/ArrayList;
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;
    if-nez v34, :label_0f8d
    new-instance v34, Ljava/util/ArrayList;
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :label_0f8d
    move-object/from16 v0, v34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v34, v0
    :label_0f94
    if-nez v37, :label_0f9b
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_0f9b
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v37, v0
    goto :label_0fa6
    :label_0fa3
    move-object v13, v11
    move-object/from16 v45, v12
    :label_0fa6
    move-object v4, v1
    move-object v3, v6
    move-object v15, v8
    :label_0fa9
    move-object/from16 v27, v10
    :label_0fab
    move-object/from16 v18, v14
    move-object/from16 v11, v44
    move-object/from16 v29, v78
    move-object/from16 v5, v79
    move-object/from16 v0, v80
    move-object v14, v7
    move-object/from16 v44, v13
    goto/16 :label_027b
    :label_0fba
    move-object v13, v11
    move-object/from16 v45, v12
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEphemeralMessage;
    if-eqz v0, :label_0ff9
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEphemeralMessage;
    if-nez v8, :label_0fcb
    new-instance v15, Lte/s;
    invoke-direct {v15}, Lte/s;-><init>()V
    goto :label_0fcc
    :label_0fcb
    move-object v15, v8
    :label_0fcc
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v15, v9, v0, v6, v14}, Lte/s;->c(Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEphemeralMessage;ILj$/util/concurrent/ConcurrentHashMap;Lj$/util/concurrent/ConcurrentHashMap;)V
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewEphemeralMessage;->message:Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;->welcome:Z
    if-nez v2, :label_0ff6
    invoke-static {v0}, Lte/u;->b(Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;)Lorg/telegram/tgnet/TLRPC$TL_message;
    move-result-object v4
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v2
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_0ff6
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v8
    new-instance v0, Lorg/telegram/messenger/ad;
    const/4 v5, 0x0
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ad;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$TL_message;I)V
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :label_0ff6
    move-object v4, v1
    move-object v3, v6
    goto :label_0fa9
    :label_0ff9
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditEphemeralMessage;
    if-eqz v0, :label_1033
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditEphemeralMessage;
    if-nez v8, :label_1007
    new-instance v15, Lte/s;
    invoke-direct {v15}, Lte/s;-><init>()V
    goto :label_1008
    :label_1007
    move-object v15, v8
    :label_1008
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v15, v9, v0, v6, v14}, Lte/s;->b(Lorg/telegram/tgnet/tl/TL_update$TL_updateEditEphemeralMessage;ILj$/util/concurrent/ConcurrentHashMap;Lj$/util/concurrent/ConcurrentHashMap;)V
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditEphemeralMessage;->message:Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;->welcome:Z
    if-nez v2, :label_0ff6
    invoke-static {v0}, Lte/u;->b(Lorg/telegram/tgnet/tl/TL_ephemeral$EphemeralMessage;)Lorg/telegram/tgnet/TLRPC$TL_message;
    move-result-object v4
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v2
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v0
    if-eqz v0, :label_0ff6
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v8
    new-instance v0, Lorg/telegram/messenger/ad;
    const/4 v5, 0x1
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ad;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$TL_message;I)V
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    goto :label_0ff6
    :label_1033
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteEphemeralMessages;
    if-eqz v0, :label_106f
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteEphemeralMessages;
    if-nez v8, :label_1041
    new-instance v15, Lte/s;
    invoke-direct {v15}, Lte/s;-><init>()V
    goto :label_1042
    :label_1041
    move-object v15, v8
    :label_1042
    invoke-static {v9}, Lte/s;->a(Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteEphemeralMessages;)V
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteEphemeralMessages;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    move-object/from16 v11, v41
    if-nez v11, :label_1056
    new-instance v41, Lz/f;
    invoke-direct/range {v41 .. v41}, Lz/f;-><init>()V
    move-object/from16 v11, v41
    :label_1056
    invoke-virtual {v11, v2, v3}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    if-nez v0, :label_1062
    invoke-static {v2, v3, v11}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v0
    :label_1062
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateDeleteEphemeralMessages;->ids:Ljava/util/ArrayList;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object v4, v1
    move-object v3, v6
    move-object/from16 v27, v10
    move-object/from16 v41, v11
    goto/16 :label_0fab
    :label_106f
    move-object/from16 v11, v41
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateGeoLiveViewed;
    if-eqz v0, :label_1084
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getLocationController()Lorg/telegram/messenger/LocationController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->setNewLocationEndWatchTime()V
    move-object v4, v1
    move-object v12, v6
    move-object/from16 v27, v10
    move-object/from16 v41, v13
    goto/16 :label_0ab5
    :label_1084
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;
    if-eqz v0, :label_10d6
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;
    if-nez v37, :label_1092
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_1092
    move-object/from16 v2, v37
    if-nez v61, :label_109b
    new-instance v61, Ljava/util/HashMap;
    invoke-direct/range {v61 .. v61}, Ljava/util/HashMap;-><init>()V
    :label_109b
    move-object/from16 v3, v61
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->channel_id:J
    neg-long v4, v4
    iget v12, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->top_msg_id:I
    move-object/from16 v41, v13
    int-to-long v12, v12
    invoke-static {v4, v5, v12, v13}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v4
    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/Utilities;->getOrDefault(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->read_max_id:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v0, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v0
    move-object v4, v1
    move-object/from16 v37, v2
    move-object/from16 v61, v3
    :label_10d0
    move-object v3, v6
    move-object v15, v8
    move-object/from16 v27, v10
    goto/16 :label_0ec6
    :label_10d6
    move-object/from16 v41, v13
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;
    if-eqz v0, :label_112d
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;
    if-nez v62, :label_10e6
    new-instance v62, Ljava/util/HashMap;
    invoke-direct/range {v62 .. v62}, Ljava/util/HashMap;-><init>()V
    :label_10e6
    move-object/from16 v2, v62
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->channel_id:J
    neg-long v3, v3
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->top_msg_id:I
    int-to-long v12, v5
    invoke-static {v3, v4, v12, v13}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v3
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->channel_id:J
    neg-long v4, v4
    iget v12, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->top_msg_id:I
    int-to-long v12, v12
    invoke-static {v4, v5, v12, v13}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    move-result-object v4
    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/Utilities;->getOrDefault(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->read_max_id:I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    if-nez v37, :label_111a
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_111a
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v3, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v3
    move-object/from16 v37, v0
    move-object v4, v1
    move-object/from16 v62, v2
    goto :label_10d0
    :label_112d
    if-nez v37, :label_1134
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_1134
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v3, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v3
    move-object/from16 v37, v0
    move-object v4, v1
    goto :label_10d0
    :label_1145
    if-eqz v0, :label_117c
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditChannelMessage;
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v14, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v2, :label_1167
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    :label_1167
    if-nez v2, :label_117a
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    const/4 v5, 0x1
    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    goto :label_118e
    :label_117a
    const/4 v5, 0x1
    goto :label_118e
    :label_117c
    const/4 v5, 0x1
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditMessage;
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    cmp-long v2, v2, v21
    if-nez v2, :label_118e
    const/4 v9, 0x0
    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :label_118e
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-nez v2, :label_11c9
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    cmp-long v4, v2, v21
    if-nez v4, :label_119f
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    goto :label_11c9
    :label_119f
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    move-result-wide v4
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getSendAsPeers(J)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    move-result-object v4
    if-eqz v4, :label_11c9
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;->peers:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/4 v9, 0x0
    :label_11b0
    if-ge v9, v5, :label_11c9
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    add-int/lit8 v9, v9, 0x1
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;
    if-eqz v12, :label_11b0
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v12
    cmp-long v12, v2, v12
    if-nez v12, :label_11b0
    const/4 v12, 0x1
    iput-boolean v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :label_11c9
    if-nez v91, :label_1220
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0x0
    :label_11d2
    if-ge v3, v2, :label_1220
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    if-eqz v5, :label_121d
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v9
    invoke-virtual {v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v9, :label_11f4
    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v12, :label_11fc
    :label_11f4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v9
    invoke-virtual {v1, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v9
    :label_11fc
    if-eqz v9, :label_1202
    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v12, :label_1216
    :label_1202
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v9
    invoke-virtual {v9, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v4
    if-eqz v4, :label_1211
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v5, :label_1211
    const/4 v4, 0x0
    :label_1211
    const/4 v5, 0x1
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    move-object v9, v4
    :label_1216
    if-nez v9, :label_121d
    move-object v4, v1
    :label_1219
    const/16 v65, 0x0
    goto/16 :label_16a8
    :label_121d
    add-int/lit8 v3, v3, 0x1
    goto :label_11d2
    :label_1220
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-eqz v2, :label_122a
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    goto :label_122c
    :label_122a
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    :label_122c
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    if-nez v3, :label_1253
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v3
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v3, v4, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v2, v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_1253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v2
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-ge v2, v3, :label_125d
    const/4 v2, 0x1
    goto :label_125e
    :label_125d
    const/4 v2, 0x0
    :label_125e
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    cmp-long v2, v2, v21
    if-nez v2, :label_126e
    const/4 v5, 0x1
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    const/4 v5, 0x0
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    :label_126e
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-eqz v2, :label_127c
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    if-nez v2, :label_127c
    const-string v2, ""
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :label_127c
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    new-instance v2, Lorg/telegram/messenger/t2;
    const/16 v3, 0x1d
    invoke-direct {v2, v3, v1, v0}, Lorg/telegram/messenger/t2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v19
    move-object/from16 v18, v14
    new-instance v14, Lorg/telegram/messenger/MessageObject;
    iget v15, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move/from16 v20, v19
    move-object/from16 v16, v0
    move-object/from16 v17, v6
    invoke-direct/range {v14 .. v20}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZZ)V
    move-object v2, v14
    move-object/from16 v12, v17
    move-object/from16 v14, v18
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;
    move-result-object v3
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/TranslateController;->invalidateTranslation(Lorg/telegram/messenger/MessageObject;)V
    move-object/from16 v13, v43
    if-nez v13, :label_12bb
    new-instance v43, Lz/f;
    invoke-direct/range {v43 .. v43}, Lz/f;-><init>()V
    move-object/from16 v13, v43
    :label_12bb
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v13, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/ArrayList;
    if-nez v3, :label_12cf
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v13, v3, v4, v5}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_12cf
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v0, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v0
    :label_12da
    move-object v4, v1
    move-object v15, v8
    move-object/from16 v27, v10
    :label_12de
    move-object v3, v12
    move-object/from16 v43, v13
    goto/16 :label_0ec6
    :label_12e3
    if-nez v37, :label_12ea
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_12ea
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_12ef
    move-object/from16 v3, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v3
    move-object/from16 v37, v0
    goto :label_12da
    :label_12fa
    if-nez v37, :label_1301
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_1301
    move-object/from16 v0, v37
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_12ef
    :label_1307
    instance-of v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;
    if-eqz v2, :label_132b
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    const-wide/16 v31, 0x0
    cmp-long v4, v2, v31
    if-eqz v4, :label_1318
    goto :label_1323
    :label_1318
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v4, v2, v31
    if-eqz v4, :label_1320
    :label_131e
    neg-long v2, v2
    goto :label_1323
    :label_1320
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    goto :label_131e
    :label_1323
    iget-wide v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;->channel_id:J
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    iget v6, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelUserTyping;->top_msg_id:I
    move-wide v15, v2
    goto :label_1377
    :label_132b
    if-eqz v0, :label_134a
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserTyping;
    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserTyping;->user_id:J
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserTyping;->top_msg_id:I
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;
    if-eqz v5, :label_1345
    new-instance v0, Lorg/telegram/messenger/zc;
    const/4 v2, 0x4
    invoke-direct {v0, v2, v1, v9}, Lorg/telegram/messenger/zc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_1342
    move-object v4, v1
    goto/16 :label_0169
    :label_1345
    move-wide v15, v2
    move v6, v4
    const-wide/16 v4, 0x0
    goto :label_1377
    :label_134a
    check-cast v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatUserTyping;
    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatUserTyping;->chat_id:J
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    const-wide/16 v31, 0x0
    cmp-long v6, v4, v31
    if-eqz v6, :label_1359
    goto :label_1364
    :label_1359
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v6, v4, v31
    if-eqz v6, :label_1361
    :label_135f
    neg-long v4, v4
    goto :label_1364
    :label_1361
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    goto :label_135f
    :label_1364
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;
    if-eqz v6, :label_1374
    new-instance v0, Lorg/telegram/messenger/zc;
    const/4 v2, 0x5
    invoke-direct {v0, v2, v1, v9}, Lorg/telegram/messenger/zc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto :label_1342
    :label_1374
    move-wide v15, v4
    const/4 v6, 0x0
    move-wide v4, v2
    :label_1377
    neg-long v1, v4
    const-wide/16 v31, 0x0
    cmp-long v3, v1, v31
    if-nez v3, :label_137f
    move-wide v1, v15
    :label_137f
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTextDraftAction;
    if-eqz v3, :label_1399
    move-object v3, v0
    new-instance v0, Lorg/telegram/messenger/s7;
    move-object v5, v3
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTextDraftAction;
    move v4, v6
    const/4 v6, 0x3
    move-object/from16 v1, v87
    move-wide v2, v15
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/s7;-><init>(Ljava/lang/Object;JILjava/lang/Object;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    move-object/from16 v4, v87
    :label_1396
    move-object/from16 v27, v10
    goto :label_13d1
    :label_1399
    move-wide/from16 v85, v4
    move v4, v6
    move-wide/from16 v5, v85
    move-object v3, v0
    nop
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRichMessageDraftAction;
    if-eqz v0, :label_13b5
    new-instance v0, Lorg/telegram/messenger/s7;
    move-object v5, v3
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRichMessageDraftAction;
    const/4 v6, 0x4
    move-object/from16 v1, v87
    move-wide v2, v15
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/s7;-><init>(Ljava/lang/Object;JILjava/lang/Object;I)V
    move-object v4, v1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto :label_1396
    :label_13b5
    move v0, v4
    move-object/from16 v27, v10
    move-wide v9, v15
    move-object/from16 v4, v87
    instance-of v15, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;
    if-eqz v15, :label_13d5
    if-nez v54, :label_13c6
    new-instance v54, Lorg/telegram/messenger/support/LongSparseIntArray;
    invoke-direct/range {v54 .. v54}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V
    :label_13c6
    move-object/from16 v0, v54
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;->progress:I
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    move-object/from16 v54, v0
    :label_13d1
    move-wide/from16 v0, v67
    goto/16 :label_14fb
    :label_13d5
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v15
    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v15
    cmp-long v15, v9, v15
    if-eqz v15, :label_13d1
    instance-of v15, v3, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;
    if-eqz v15, :label_140e
    const-wide/16 v31, 0x0
    cmp-long v0, v5, v31
    if-eqz v0, :label_140a
    if-nez v66, :label_13f3
    new-instance v0, Lz/f;
    invoke-direct {v0}, Lz/f;-><init>()V
    goto :label_13f5
    :label_13f3
    move-object/from16 v0, v66
    :label_13f5
    invoke-virtual {v0, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/ArrayList;
    if-nez v1, :label_1401
    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/h4;->l(JLz/f;)Ljava/util/ArrayList;
    move-result-object v1
    :label_1401
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v66, v0
    :label_140a
    move-wide/from16 v0, v67
    goto/16 :label_14dc
    :label_140e
    iget-object v5, v4, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap;
    if-eqz v5, :label_1427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    goto :label_1428
    :label_1427
    const/4 v6, 0x0
    :label_1428
    instance-of v15, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;
    if-eqz v15, :label_1475
    if-eqz v6, :label_140a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v15, 0x0
    :label_1433
    if-ge v15, v3, :label_1454
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v16
    move/from16 v18, v0
    move-object/from16 v0, v16
    check-cast v0, Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-wide/from16 v19, v1
    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:J
    cmp-long v0, v0, v9
    if-nez v0, :label_144d
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    const/16 v24, 0x1
    goto :label_1458
    :label_144d
    add-int/lit8 v15, v15, 0x1
    move/from16 v0, v18
    move-wide/from16 v1, v19
    goto :label_1433
    :label_1454
    move/from16 v18, v0
    move-wide/from16 v19, v1
    :label_1458
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_140a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v5, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {v5}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    move-result v0
    if-eqz v0, :label_140a
    iget-object v0, v4, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :label_140a
    :label_1475
    move/from16 v18, v0
    move-wide/from16 v19, v1
    if-nez v5, :label_1489
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;
    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V
    iget-object v0, v4, Lorg/telegram/messenger/MessagesController;->printingUsers:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v0, v1, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_1489
    if-nez v6, :label_1497
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v5, v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_1497
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0x0
    :label_149c
    if-ge v1, v0, :label_14c7
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    add-int/lit8 v1, v1, 0x1
    check-cast v2, Lorg/telegram/messenger/MessagesController$PrintingUser;
    move v5, v0
    move v15, v1
    iget-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:J
    cmp-long v0, v0, v9
    if-nez v0, :label_14c4
    move-wide/from16 v0, v67
    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J
    iget-object v5, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v15
    if-eq v5, v15, :label_14c0
    const/16 v24, 0x1
    :label_14c0
    iput-object v3, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    const/4 v2, 0x1
    goto :label_14ca
    :label_14c4
    move v0, v5
    move v1, v15
    goto :label_149c
    :label_14c7
    move-wide/from16 v0, v67
    const/4 v2, 0x0
    :label_14ca
    if-nez v2, :label_14dc
    new-instance v2, Lorg/telegram/messenger/MessagesController$PrintingUser;
    invoke-direct {v2}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V
    iput-wide v9, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:J
    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J
    iput-object v3, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/16 v24, 0x1
    :label_14dc
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v2
    sub-int v2, v2, v92
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    move-result v2
    const/16 v6, 0x1e
    if-ge v2, v6, :label_14fb
    iget-object v2, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v2, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_14fb
    move-object/from16 v3, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v3
    move-wide/from16 v67, v0
    :label_1505
    move-object v15, v8
    goto/16 :label_12de
    :label_1508
    if-nez v37, :label_150f
    new-instance v37, Ljava/util/ArrayList;
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :label_150f
    move-object/from16 v2, v37
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v3, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v3
    move-wide/from16 v67, v0
    move-object/from16 v37, v2
    goto :label_1505
    :label_1521
    if-eqz v0, :label_1529
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewMessage;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;
    goto :label_1573
    :label_1529
    instance-of v0, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewScheduledMessage;
    if-eqz v0, :label_1533
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewScheduledMessage;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewScheduledMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;
    goto :label_1573
    :label_1533
    move-object v0, v9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewChannelMessage;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v1, :label_1558
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, " message_id = "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    invoke-static {v2, v1}, Lj2/t;->n(ILjava/lang/StringBuilder;)V
    :label_1558
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-nez v1, :label_1573
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v2, :label_1573
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v5
    cmp-long v1, v1, v5
    if-nez v1, :label_1573
    const/4 v5, 0x1
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :label_1573
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    if-eqz v1, :label_1580
    :label_1577
    move-object/from16 v0, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v0
    goto :label_1505
    :label_1580
    iget-object v1, v4, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;
    if-eqz v1, :label_158e
    invoke-interface {v1, v0}, Lorg/telegram/messenger/MessagesController$NewMessageCallback;->onMessageReceived(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v1
    if-eqz v1, :label_158e
    const/4 v1, 0x0
    iput-object v1, v4, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;
    goto :label_158f
    :label_158e
    const/4 v1, 0x0
    :label_158f
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    const-wide/16 v31, 0x0
    cmp-long v3, v5, v31
    if-eqz v3, :label_159c
    :label_1599
    move-wide/from16 v2, v31
    goto :label_15af
    :label_159c
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    cmp-long v3, v5, v31
    if-eqz v3, :label_15a3
    goto :label_1599
    :label_15a3
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v5, v2, v31
    if-eqz v5, :label_15ac
    move-wide/from16 v5, v31
    goto :label_15af
    :label_15ac
    move-wide/from16 v2, v31
    move-wide v5, v2
    :label_15af
    cmp-long v10, v5, v31
    if-eqz v10, :label_15e2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v15
    invoke-virtual {v14, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v15, :label_15c3
    iget-boolean v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-eqz v1, :label_15cc
    :label_15c3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v1
    move-object v15, v1
    :label_15cc
    if-eqz v15, :label_15d5
    iget-boolean v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-eqz v1, :label_15d3
    goto :label_15d5
    :label_15d3
    move-object v1, v15
    goto :label_15e3
    :label_15d5
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v1
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v1
    const/4 v15, 0x1
    invoke-virtual {v4, v1, v15}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    goto :label_15e3
    :label_15e2
    const/4 v1, 0x0
    :label_15e3
    if-nez v91, :label_16eb
    if-eqz v10, :label_1601
    if-nez v1, :label_1601
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_1219
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "not found chat "
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_15fe
    const/16 v65, 0x0
    return v65
    :label_1601
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v5
    add-int/lit8 v5, v5, 0x3
    const/4 v6, 0x0
    :label_160a
    if-ge v6, v5, :label_16eb
    if-eqz v6, :label_1626
    const/4 v15, 0x1
    if-ne v6, v15, :label_162a
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v3, :label_161a
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    goto :label_161c
    :label_161a
    const-wide/16 v2, 0x0
    :label_161c
    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    if-eqz v10, :label_1626
    move/from16 v10, v16
    const/4 v15, 0x1
    :label_1623
    const-wide/16 v31, 0x0
    goto :label_1651
    :label_1626
    move/from16 v10, v16
    :label_1628
    const/4 v15, 0x0
    goto :label_1623
    :label_162a
    move/from16 v10, v16
    if-ne v6, v10, :label_163e
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v2, :label_163b
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v3, :label_163b
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    goto :label_1628
    :label_163b
    const-wide/16 v2, 0x0
    goto :label_1628
    :label_163e
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    add-int/lit8 v3, v6, -0x3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    if-eqz v3, :label_163b
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:J
    goto :label_1628
    :label_1651
    cmp-long v16, v2, v31
    if-lez v16, :label_16e1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v10
    invoke-virtual {v12, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;
    move/from16 v18, v5
    if-eqz v10, :label_1669
    if-nez v15, :label_1671
    iget-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v5, :label_1671
    :label_1669
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v10
    :label_1671
    if-eqz v10, :label_1679
    if-nez v15, :label_168f
    iget-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v5, :label_168f
    :label_1679
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v5
    if-eqz v5, :label_168a
    if-nez v15, :label_168a
    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$User;->min:Z
    if-eqz v10, :label_168a
    const/4 v5, 0x0
    :label_168a
    const/4 v15, 0x1
    invoke-virtual {v4, v5, v15}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    move-object v10, v5
    :label_168f
    if-nez v10, :label_16a9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_1219
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "not found user "
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    goto/16 :label_15fe
    :label_16a8
    return v65
    :label_16a9
    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-nez v5, :label_16e3
    const/4 v5, 0x1
    if-ne v6, v5, :label_16e3
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    if-eqz v5, :label_16e3
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    if-gtz v5, :label_16e3
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v5
    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v5
    iget v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    sub-int/2addr v5, v10
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I
    move-result v5
    const/16 v10, 0x1e
    if-ge v5, v10, :label_16e3
    iget-object v5, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v15
    iget v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v10
    invoke-virtual {v5, v15, v10}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I
    or-int v5, v23, v5
    move/from16 v23, v5
    goto :label_16e3
    :label_16e1
    move/from16 v18, v5
    :label_16e3
    add-int/lit8 v6, v6, 0x1
    move/from16 v5, v18
    const/16 v16, 0x2
    goto/16 :label_160a
    :label_16eb
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;
    if-eqz v3, :label_1727
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v12, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :label_1711
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-eqz v2, :label_1711
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    or-int/lit8 v2, v2, 0x40
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    goto :label_1727
    :label_1711
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v3, :label_1727
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v2, v2, v21
    if-nez v2, :label_1727
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J
    cmp-long v2, v2, v21
    if-nez v2, :label_1727
    goto/16 :label_1577
    :label_1727
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    instance-of v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewChannelMessage;
    if-eqz v2, :label_1788
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_1788
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;
    if-nez v2, :label_1788
    move-object/from16 v10, v46
    if-nez v10, :label_1746
    new-instance v46, Lz/f;
    invoke-direct/range {v46 .. v46}, Lz/f;-><init>()V
    move-object/from16 v10, v46
    :label_1746
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v10, v2, v3}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/util/SparseArray;
    if-nez v2, :label_175a
    new-instance v2, Landroid/util/SparseArray;
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v10, v2, v5, v6}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_175a
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I
    if-eqz v5, :label_1761
    goto :label_1763
    :label_1761
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I
    :label_1763
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageReplies;
    if-nez v3, :label_1773
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :label_1773
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_177d
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;
    const/4 v6, 0x0
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :label_177d
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I
    const/16 v59, 0x1
    add-int/lit8 v2, v2, 0x1
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I
    :label_1785
    move-object/from16 v46, v10
    goto :label_178b
    :label_1788
    move-object/from16 v10, v46
    goto :label_1785
    :label_178b
    iget-object v2, v4, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :label_17b5
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J
    const-wide/16 v31, 0x0
    cmp-long v2, v2, v31
    if-nez v2, :label_17b5
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->generateMessageThumb(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/ImageLoader$MessageThumb;
    move-result-object v2
    if-eqz v2, :label_17b5
    if-nez v58, :label_17ae
    new-instance v58, Ljava/util/ArrayList;
    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V
    :label_17ae
    move-object/from16 v3, v58
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v58, v3
    :label_17b5
    instance-of v2, v9, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewScheduledMessage;
    if-eqz v2, :label_180e
    if-nez v26, :label_17c0
    new-instance v26, Ljava/util/ArrayList;
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :label_17c0
    move-object/from16 v1, v26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v2, v4, Lorg/telegram/messenger/MessagesController;->createdScheduledDialogIds:Ljava/util/ArrayList;
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v19
    move-object/from16 v18, v14
    new-instance v14, Lorg/telegram/messenger/MessageObject;
    iget v15, v4, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move/from16 v20, v19
    move-object/from16 v16, v0
    move-object/from16 v17, v12
    invoke-direct/range {v14 .. v20}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZZ)V
    const/4 v5, 0x1
    iput-boolean v5, v14, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-nez v39, :label_17ea
    new-instance v39, Lz/f;
    invoke-direct/range {v39 .. v39}, Lz/f;-><init>()V
    :label_17ea
    move-object/from16 v2, v39
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v2, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/ArrayList;
    if-nez v3, :label_1800
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v2, v3, v5, v6}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_1800
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v26, v1
    move-object/from16 v39, v2
    move-object v14, v7
    move-object/from16 v3, v17
    move-object/from16 v12, v78
    goto/16 :label_1959
    :label_180e
    move-object/from16 v17, v12
    move-object/from16 v18, v14
    if-nez v34, :label_1819
    new-instance v34, Ljava/util/ArrayList;
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :label_1819
    move-object/from16 v2, v34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    if-eqz v3, :label_1825
    iget-object v3, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    goto :label_1827
    :label_1825
    iget-object v3, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;
    :label_1827
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    if-nez v5, :label_184e
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v5, v6, v9, v10}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
    move-result v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-virtual {v3, v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_184e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v3
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-ge v3, v5, :label_186a
    if-eqz v1, :label_185e
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-nez v3, :label_186a
    :label_185e
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;
    if-nez v5, :label_186a
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;
    if-nez v3, :label_186a
    const/4 v3, 0x1
    goto :label_186b
    :label_186a
    const/4 v3, 0x0
    :label_186b
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    cmp-long v3, v5, v21
    if-nez v3, :label_1880
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z
    const/4 v9, 0x0
    if-nez v3, :label_187a
    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    :label_187a
    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z
    const/4 v15, 0x1
    iput-boolean v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    goto :label_1881
    :label_1880
    const/4 v9, 0x0
    :label_1881
    iget-object v3, v4, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v19
    new-instance v14, Lorg/telegram/messenger/MessageObject;
    iget v15, v4, Lorg/telegram/messenger/BaseController;->currentAccount:I
    move/from16 v20, v19
    move-object/from16 v16, v0
    invoke-direct/range {v14 .. v20}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZZ)V
    move-object/from16 v3, v17
    iget v5, v14, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0xb
    if-ne v5, v6, :label_18a5
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I
    :label_18a0
    or-int v23, v23, v5
    :label_18a2
    move-object/from16 v12, v78
    goto :label_18ac
    :label_18a5
    const/16 v6, 0xa
    if-ne v5, v6, :label_18a2
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I
    goto :label_18a0
    :label_18ac
    if-nez v12, :label_18b4
    new-instance v5, Lz/f;
    invoke-direct {v5}, Lz/f;-><init>()V
    move-object v12, v5
    :label_18b4
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v12, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/ArrayList;
    if-nez v5, :label_18c8
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v12, v5, v9, v10}, Lz/f;->k(Ljava/lang/Object;J)V
    :label_18c8
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v5
    if-eqz v5, :label_18d7
    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z
    if-eqz v5, :label_18f7
    :label_18d7
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isUnread()Z
    move-result v5
    if-eqz v5, :label_18f7
    if-eqz v1, :label_18e9
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    if-nez v5, :label_18f7
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z
    if-nez v1, :label_18f7
    :label_18e9
    if-nez v7, :label_18f1
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    goto :label_18f2
    :label_18f1
    move-object v1, v7
    :label_18f2
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v14, v1
    goto :label_18f8
    :label_18f7
    move-object v14, v7
    :label_18f8
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;
    if-eqz v5, :label_1915
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;->new_value:Z
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;->prev_value:Z
    if-eq v5, v1, :label_192d
    if-nez v42, :label_190d
    new-instance v42, Ljava/util/ArrayList;
    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V
    :label_190d
    move-object/from16 v1, v42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v42, v1
    goto :label_192d
    :label_1915
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCommunity;
    if-eqz v5, :label_192d
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCommunity;
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCommunity;->community_id:J
    const-wide/16 v31, 0x0
    cmp-long v1, v5, v31
    if-eqz v1, :label_192d
    new-instance v1, Lorg/telegram/messenger/ea;
    const/16 v7, 0x8
    invoke-direct {v1, v4, v5, v6, v7}, Lorg/telegram/messenger/ea;-><init>(Lorg/telegram/messenger/MessagesController;JI)V
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_192d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v1
    iget-wide v9, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    cmp-long v1, v5, v9
    if-nez v1, :label_1957
    if-nez v38, :label_1946
    new-instance v1, Ljava/util/ArrayList;
    const/4 v5, 0x1
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
    goto :label_1948
    :label_1946
    move-object/from16 v1, v38
    :label_1948
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object/from16 v38, v1
    :label_1957
    move-object/from16 v34, v2
    :label_1959
    move-object/from16 v0, v41
    move-object/from16 v41, v11
    move-object/from16 v11, v44
    move-object/from16 v44, v0
    move-object v15, v8
    move-object/from16 v29, v12
    move-object/from16 v43, v13
    move-object/from16 v7, v66
    move-object/from16 v5, v79
    move-object/from16 v0, v80
    :label_196c
    add-int/lit8 v2, v28, 0x1
    move/from16 v8, v91
    move-object v1, v4
    move/from16 v6, v25
    move-object/from16 v10, v27
    move-object/from16 v4, v29
    move-wide/from16 v12, v67
    const/4 v9, 0x0
    goto/16 :label_00d6
    :label_197c
    move-object/from16 v8, v44
    move-object/from16 v44, v11
    move-object/from16 v11, v41
    move-object/from16 v41, v8
    move-object/from16 v80, v0
    move-object v12, v4
    move-object/from16 v79, v5
    move-object/from16 v66, v7
    move-object v7, v14
    move-object v8, v15
    move-object/from16 v13, v43
    move-object/from16 v10, v46
    move-object v4, v1
    if-eqz v12, :label_19b0
    invoke-virtual {v12}, Lz/f;->m()I
    move-result v0
    const/4 v6, 0x0
    :label_1999
    if-ge v6, v0, :label_19b0
    invoke-virtual {v12, v6}, Lz/f;->j(I)J
    move-result-wide v1
    invoke-virtual {v12, v6}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/ArrayList;
    invoke-direct {v4, v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    move-result v1
    if-eqz v1, :label_19ad
    const/16 v24, 0x1
    :label_19ad
    add-int/lit8 v6, v6, 0x1
    goto :label_1999
    :label_19b0
    move/from16 v17, v24
    if-eqz v17, :label_19b7
    invoke-direct {v4}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V
    :label_19b7
    move-object/from16 v9, v79
    if-eqz v9, :label_19c2
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v0
    invoke-virtual {v0, v9, v3}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;)V
    :label_19c2
    if-eqz v7, :label_19d5
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v0
    new-instance v1, Lorg/telegram/messenger/fb;
    const/4 v2, 0x4
    invoke-direct {v1, v4, v7, v2}, Lorg/telegram/messenger/fb;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :label_19d5
    if-eqz v26, :label_19f0
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v25
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->getAutodownloadMask()I
    move-result v30
    const/16 v31, 0x1
    const-wide/16 v32, 0x0
    const/16 v27, 0x1
    const/16 v28, 0x1
    const/16 v29, 0x0
    invoke-virtual/range {v25 .. v33}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V
    :label_19f0
    if-eqz v34, :label_1a1d
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getStatsController()Lorg/telegram/messenger/StatsController;
    move-result-object v0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I
    move-result v1
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v5, 0x1
    invoke-virtual {v0, v1, v5, v2}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v27
    invoke-virtual {v4}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->getAutodownloadMask()I
    move-result v32
    const/16 v33, 0x0
    move-object/from16 v28, v34
    const-wide/16 v34, 0x0
    const/16 v29, 0x1
    const/16 v30, 0x1
    const/16 v31, 0x0
    invoke-virtual/range {v27 .. v35}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V
    :label_1a1d
    if-eqz v8, :label_1aea
    iget-object v7, v8, Lte/s;->b:Lte/q;
    iget-object v14, v8, Lte/s;->a:Lte/q;
    iget-object v2, v8, Lte/s;->c:Lte/r;
    iget-object v6, v8, Lte/s;->d:Lte/r;
    iget-object v15, v8, Lte/s;->e:Lte/r;
    iget-object v0, v2, Lte/q;->a:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_1a40
    new-instance v0, Lorg/telegram/messenger/bd;
    const/4 v5, 0x0
    move-object v1, v4
    move-object/from16 v4, v18
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/bd;-><init>(Lorg/telegram/messenger/MessagesController;Lte/r;Lj$/util/concurrent/ConcurrentHashMap;Lj$/util/concurrent/ConcurrentHashMap;I)V
    const-wide/16 v4, 0x190
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    goto :label_1a41
    :label_1a40
    move-object v1, v4
    :label_1a41
    iget-object v0, v6, Lte/q;->a:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_1a71
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    iget-object v2, v6, Lte/q;->a:Ljava/util/ArrayList;
    move-object v4, v0
    new-instance v0, Lbf/j0;
    move-object/from16 v16, v2
    move-object v2, v6
    const/16 v6, 0x9
    move-object/from16 v20, v8
    move-object/from16 v30, v9
    move-object/from16 v9, v16
    move-object v8, v4
    move-object/from16 v4, v18
    invoke-direct/range {v0 .. v6}, Lbf/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    invoke-virtual {v8, v9, v0}, Lorg/telegram/messenger/MessagesStorage;->processEphemeralEditedMessages(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    goto :label_1a75
    :label_1a71
    move-object/from16 v20, v8
    move-object/from16 v30, v9
    :label_1a75
    iget-object v0, v15, Lte/q;->a:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_1a92
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v6
    iget-object v8, v15, Lte/q;->a:Ljava/util/ArrayList;
    new-instance v0, Lorg/telegram/messenger/bd;
    const/4 v5, 0x1
    move-object/from16 v1, v87
    move-object v2, v15
    move-object/from16 v4, v18
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/bd;-><init>(Lorg/telegram/messenger/MessagesController;Lte/r;Lj$/util/concurrent/ConcurrentHashMap;Lj$/util/concurrent/ConcurrentHashMap;I)V
    invoke-virtual {v6, v8, v0}, Lorg/telegram/messenger/MessagesStorage;->processAnchoredEphemeralMessages(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    goto :label_1a94
    :label_1a92
    move-object/from16 v1, v87
    :label_1a94
    iget-object v0, v14, Lte/q;->b:Lz/f;
    iget-object v2, v14, Lte/q;->b:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    const/4 v6, 0x0
    :label_1a9d
    if-ge v6, v0, :label_1abf
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v67
    invoke-virtual {v2, v6}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v3
    move-object/from16 v68, v3
    check-cast v68, Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-virtual {v2, v6}, Lz/f;->j(I)J
    move-result-wide v69
    const/16 v74, 0x9
    const-wide/16 v75, 0x0
    const/16 v71, -0x2
    const/16 v72, 0x0
    const/16 v73, 0x0
    invoke-virtual/range {v67 .. v76}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V
    add-int/lit8 v6, v6, 0x1
    goto :label_1a9d
    :label_1abf
    iget-object v0, v7, Lte/q;->b:Lz/f;
    iget-object v2, v7, Lte/q;->b:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    const/4 v6, 0x0
    :label_1ac8
    if-ge v6, v0, :label_1aef
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v67
    invoke-virtual {v2, v6}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v3
    move-object/from16 v68, v3
    check-cast v68, Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-virtual {v2, v6}, Lz/f;->j(I)J
    move-result-wide v69
    const/16 v74, 0x9
    const-wide/16 v75, 0x0
    const/16 v71, -0x2
    const/16 v72, 0x0
    const/16 v73, 0x0
    invoke-virtual/range {v67 .. v76}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V
    add-int/lit8 v6, v6, 0x1
    goto :label_1ac8
    :label_1aea
    move-object v1, v4
    move-object/from16 v20, v8
    move-object/from16 v30, v9
    :label_1aef
    if-eqz v11, :label_1af9
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    const/4 v5, 0x1
    invoke-virtual {v0, v11, v5}, Lorg/telegram/messenger/MessagesStorage;->deleteEphemeralMessages(Lz/f;Z)V
    :label_1af9
    if-eqz v13, :label_1b4f
    invoke-virtual {v13}, Lz/f;->m()I
    move-result v0
    const/4 v6, 0x0
    :label_1b00
    if-ge v6, v0, :label_1b3e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V
    invoke-virtual {v13, v6}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v5, 0x0
    :label_1b12
    if-ge v5, v4, :label_1b24
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lorg/telegram/messenger/MessageObject;
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v5, v5, 0x1
    goto :label_1b12
    :label_1b24
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v67
    invoke-virtual {v13, v6}, Lz/f;->j(I)J
    move-result-wide v69
    const/16 v74, 0x0
    const-wide/16 v75, 0x0
    const/16 v71, -0x2
    const/16 v72, 0x0
    const/16 v73, 0x0
    move-object/from16 v68, v2
    invoke-virtual/range {v67 .. v76}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V
    add-int/lit8 v6, v6, 0x1
    goto :label_1b00
    :label_1b3e
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v0
    new-instance v2, Lorg/telegram/messenger/kb;
    const/4 v3, 0x1
    invoke-direct {v2, v1, v13, v3}, Lorg/telegram/messenger/kb;-><init>(Lorg/telegram/messenger/MessagesController;Lz/f;I)V
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :label_1b4f
    if-nez v41, :label_1b5c
    if-nez v45, :label_1b5c
    if-eqz v10, :label_1b56
    goto :label_1b5c
    :label_1b56
    move-object/from16 v2, v41
    move-object/from16 v3, v45
    const/4 v5, 0x1
    goto :label_1b68
    :label_1b5c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    move-object/from16 v2, v41
    move-object/from16 v3, v45
    const/4 v5, 0x1
    invoke-virtual {v0, v2, v3, v10, v5}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Lz/f;Lz/f;Lz/f;Z)V
    :label_1b68
    if-eqz v57, :label_1b8d
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v6, 0x0
    :label_1b6f
    if-ge v6, v0, :label_1b8d
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v24
    move-object/from16 v4, v57
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/tgnet/tl/TL_update$TL_updateFolderPeers;
    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_update$TL_updateFolderPeers;->folder_peers:Ljava/util/ArrayList;
    const-wide/16 v27, 0x0
    const/16 v29, 0x0
    const/16 v26, 0x0
    move-object/from16 v25, v7
    invoke-virtual/range {v24 .. v29}, Lorg/telegram/messenger/MessagesStorage;->setDialogsFolderId(Ljava/util/ArrayList;Ljava/util/ArrayList;JI)V
    add-int/lit8 v6, v6, 0x1
    goto :label_1b6f
    :label_1b8d
    move-object/from16 v4, v57
    new-instance v0, Lorg/telegram/messenger/cd;
    move/from16 v8, v92
    move-object/from16 v21, v3
    move-object/from16 v22, v10
    move-object/from16 v16, v11
    move-object v11, v12
    move-object v14, v13
    move-object/from16 v15, v20
    move-object/from16 v18, v30
    move-object/from16 v3, v37
    move-object/from16 v6, v38
    move-object/from16 v13, v39
    move-object/from16 v10, v40
    move-object/from16 v5, v42
    move-object/from16 v81, v44
    move-object/from16 v9, v54
    move-object/from16 v19, v56
    move-object/from16 v82, v61
    move-object/from16 v83, v62
    move-object/from16 v84, v64
    move-object/from16 v7, v66
    const/16 v65, 0x0
    move-object/from16 v20, v2
    move-object v12, v4
    move/from16 v2, v23
    move-object/from16 v23, v58
    move-object/from16 v4, v89
    invoke-direct/range {v0 .. v23}, Lorg/telegram/messenger/cd;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lz/f;ILorg/telegram/messenger/support/LongSparseIntArray;Lz/f;Lz/f;Ljava/util/ArrayList;Lz/f;Lz/f;Lte/s;Lz/f;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lz/f;Lz/f;Lz/f;Ljava/util/ArrayList;)V
    move-object v12, v10
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v13
    new-instance v0, Lorg/telegram/messenger/dd;
    const/4 v11, 0x0
    move-object/from16 v1, v87
    move-object/from16 v5, v36
    move-object/from16 v2, v47
    move-object/from16 v3, v48
    move-object/from16 v4, v49
    move-object/from16 v6, v50
    move-object/from16 v7, v51
    move-object/from16 v8, v52
    move-object/from16 v9, v53
    move-object/from16 v10, v55
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/dd;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;Landroid/util/SparseIntArray;Lz/f;Lz/f;Lz/f;Lz/f;Lz/f;Lorg/telegram/messenger/support/LongSparseIntArray;I)V
    move-object/from16 v28, v2
    move-object/from16 v29, v3
    move-object/from16 v30, v5
    invoke-virtual {v13, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    if-eqz v12, :label_1bfd
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Lz/f;)V
    :label_1bfd
    if-nez v28, :label_1c0e
    if-nez v29, :label_1c0e
    if-nez v4, :label_1c0e
    if-nez v30, :label_1c0e
    if-eqz v60, :label_1c08
    goto :label_1c0e
    :label_1c08
    move-object/from16 v5, v30
    const/4 v15, 0x1
    :label_1c0b
    move-object/from16 v0, v82
    goto :label_1c33
    :label_1c0e
    if-nez v28, :label_1c1e
    if-nez v29, :label_1c1e
    if-nez v30, :label_1c1e
    if-eqz v60, :label_1c17
    goto :label_1c1e
    :label_1c17
    move-object/from16 v2, v28
    move-object/from16 v3, v29
    move-object/from16 v5, v30
    goto :label_1c2a
    :label_1c1e
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v27
    const/16 v32, 0x1
    move-object/from16 v31, v60
    invoke-virtual/range {v27 .. v32}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;Lz/f;Lorg/telegram/messenger/support/LongSparseIntArray;Z)V
    goto :label_1c17
    :label_1c2a
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    const/4 v15, 0x1
    invoke-virtual {v0, v2, v3, v4, v15}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Lorg/telegram/messenger/support/LongSparseIntArray;Lorg/telegram/messenger/support/LongSparseIntArray;Landroid/util/SparseIntArray;Z)V
    goto :label_1c0b
    :label_1c33
    if-eqz v0, :label_1c6a
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :label_1c3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :label_1c6a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v16
    iget-wide v3, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v3, v3
    iget-wide v11, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    long-to-int v9, v11
    int-to-long v11, v9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v21
    const/16 v22, -0x1
    const/16 v23, 0x1
    move-wide/from16 v17, v3
    move-wide/from16 v19, v11
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessagesStorage;->updateRepliesMaxReadId(JJIIZ)V
    goto :label_1c3d
    :label_1c6a
    move-object/from16 v0, v83
    if-eqz v0, :label_1c7c
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v1
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateTopicsWithReadMessages(Ljava/util/HashMap;)V
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v1
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/TopicsController;->updateReadOutbox(Ljava/util/HashMap;)V
    :label_1c7c
    move-object/from16 v0, v80
    if-eqz v0, :label_1cb5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :label_1c88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :label_1cb5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v16
    iget-wide v3, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J
    neg-long v3, v3
    iget-wide v11, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J
    long-to-int v9, v11
    int-to-long v11, v9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v21
    const/16 v22, -0x1
    const/16 v23, 0x1
    move-wide/from16 v17, v3
    move-wide/from16 v19, v11
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessagesStorage;->updateRepliesMaxReadId(JJIIZ)V
    goto :label_1c88
    :label_1cb5
    move-object/from16 v13, v81
    if-eqz v13, :label_1cc7
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesStorage;->updateTopicsWithReadMessages(Ljava/util/HashMap;)V
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/TopicsController;->updateReadOutbox(Ljava/util/HashMap;)V
    :label_1cc7
    if-eqz v5, :label_1cf1
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v31
    invoke-virtual {v5}, Lz/f;->m()I
    move-result v0
    move/from16 v9, v65
    :label_1cd7
    if-ge v9, v0, :label_1cf1
    invoke-virtual {v5, v9}, Lz/f;->j(I)J
    move-result-wide v28
    invoke-virtual {v5, v9}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v1
    move-object/from16 v30, v1
    check-cast v30, Ljava/util/ArrayList;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v27
    move/from16 v32, v63
    invoke-virtual/range {v27 .. v32}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(JLjava/util/ArrayList;II)V
    add-int/lit8 v9, v9, 0x1
    goto :label_1cd7
    :label_1cf1
    if-eqz v6, :label_1d1c
    invoke-virtual {v6}, Lz/f;->m()I
    move-result v9
    move/from16 v11, v65
    :label_1cf9
    if-ge v11, v9, :label_1d1c
    invoke-virtual {v6, v11}, Lz/f;->j(I)J
    move-result-wide v2
    invoke-virtual {v6, v11}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Ljava/util/ArrayList;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v12
    new-instance v0, Lorg/telegram/messenger/ia;
    const/4 v5, 0x4
    move-object/from16 v1, v87
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ia;-><init>(Lorg/telegram/messenger/MessagesController;JLjava/util/ArrayList;I)V
    invoke-virtual {v12, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    add-int/lit8 v11, v11, 0x1
    goto :label_1cf9
    :label_1d1c
    if-eqz v7, :label_1d4e
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v2
    invoke-virtual {v7}, Lz/f;->m()I
    move-result v9
    move/from16 v11, v65
    :label_1d2c
    if-ge v11, v9, :label_1d4e
    invoke-virtual {v7, v11}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v7, v11}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Ljava/util/ArrayList;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v12
    new-instance v0, Lorg/telegram/messenger/ic;
    move-object/from16 v1, v87
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ic;-><init>(Lorg/telegram/messenger/MessagesController;JLjava/util/ArrayList;J)V
    invoke-virtual {v12, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    add-int/lit8 v11, v11, 0x1
    goto :label_1d2c
    :label_1d4e
    if-eqz v8, :label_1d76
    invoke-virtual {v8}, Lz/f;->m()I
    move-result v0
    move/from16 v9, v65
    :label_1d56
    if-ge v9, v0, :label_1d76
    invoke-virtual {v8, v9}, Lz/f;->j(I)J
    move-result-wide v17
    invoke-virtual {v8, v9}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v1
    move-object/from16 v19, v1
    check-cast v19, Ljava/util/ArrayList;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v16
    const/16 v22, 0x1
    const/16 v23, 0x0
    const/16 v20, 0x1
    const/16 v21, 0x0
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(JLjava/util/ArrayList;ZZII)Ljava/util/ArrayList;
    add-int/lit8 v9, v9, 0x1
    goto :label_1d56
    :label_1d76
    if-eqz v10, :label_1d9e
    invoke-virtual {v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v6
    move/from16 v9, v65
    :label_1d7e
    if-ge v9, v6, :label_1d9e
    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v2
    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v4
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    move-result-object v7
    new-instance v0, Lorg/telegram/messenger/z5;
    const/4 v5, 0x3
    move-object/from16 v1, v87
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/z5;-><init>(Ljava/lang/Object;JII)V
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    add-int/lit8 v9, v9, 0x1
    goto :label_1d7e
    :label_1d9e
    move-object/from16 v0, v84
    if-eqz v0, :label_1dc2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v1
    move/from16 v9, v65
    :label_1da8
    if-ge v9, v1, :label_1dc2
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;
    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v3
    iget v4, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;->chat_id:I
    iget v5, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;->max_date:I
    iget v6, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateEncryptedMessagesRead;->date:I
    const/4 v7, 0x1
    const/4 v8, 0x0
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V
    add-int/lit8 v9, v9, 0x1
    goto :label_1da8
    :label_1dc2
    return v15
.end method
