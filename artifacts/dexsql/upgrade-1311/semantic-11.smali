# file_id=2 method_idx=47731 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/hq0;->x0()V"
.method public final x0()V
    .registers 15

    iget-boolean v0, v14, Lorg/telegram/ui/hq0;->V:Z
    if-nez v0, :label_022c
    iget-boolean v0, v14, Lorg/telegram/ui/hq0;->a:Z
    if-nez v0, :label_0014
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v1
    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v1
    if-nez v1, :label_0014
    goto/16 :label_022c
    :label_0014
    const/4 v1, 0x0
    const/4 v2, 0x1
    if-eqz v0, :label_001d
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->finishFragment()V
    goto/16 :label_0217
    :label_001d
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    if-nez v3, :label_003d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerColor;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/2addr v4, v2
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J
    const-wide/16 v6, 0x7
    rem-long/2addr v4, v6
    long-to-int v4, v4
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I
    :label_003d
    iget-object v3, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget v3, v3, Lorg/telegram/ui/bq0;->h:I
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I
    move-result v4
    const/4 v5, 0x0
    const-wide/16 v6, 0x0
    if-ne v3, v4, :label_006e
    iget-object v3, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget-wide v3, v3, Lorg/telegram/ui/bq0;->n:J
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J
    move-result-wide v8
    cmp-long v3, v3, v8
    if-nez v3, :label_006e
    iget-object v3, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget-object v3, v3, Lorg/telegram/ui/bq0;->s:Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;
    if-nez v3, :label_005e
    move-wide v3, v6
    goto :label_0060
    :label_005e
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J
    :label_0060
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;
    if-eqz v9, :label_0069
    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J
    goto :label_006a
    :label_0069
    move-wide v8, v6
    :label_006a
    cmp-long v3, v3, v8
    if-eqz v3, :label_00e9
    :label_006e
    iput-boolean v2, v14, Lorg/telegram/ui/hq0;->T:Z
    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;
    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$updateColor;-><init>()V
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I
    or-int/lit16 v4, v4, 0x100
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/2addr v8, v2
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-object v4, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget-object v4, v4, Lorg/telegram/ui/bq0;->s:Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;
    if-eqz v4, :label_00a0
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/lit8 v4, v4, 0x4
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerColorCollectible;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerColorCollectible;-><init>()V
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget-object v8, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget-object v8, v8, Lorg/telegram/ui/bq0;->s:Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J
    iput-wide v9, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J
    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    goto :label_00e2
    :label_00a0
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/lit8 v4, v4, 0x4
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/2addr v8, v2
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-object v8, v14, Lorg/telegram/ui/hq0;->h:Lorg/telegram/ui/bq0;
    iget v9, v8, Lorg/telegram/ui/bq0;->h:I
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v11, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/lit8 v12, v11, 0x1
    iput v12, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iput v9, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I
    iget-wide v8, v8, Lorg/telegram/ui/bq0;->n:J
    cmp-long v13, v8, v6
    if-eqz v13, :label_00dc
    iget v12, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/2addr v12, v2
    iput v12, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/lit8 v11, v11, 0x3
    iput v11, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget v11, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/lit8 v11, v11, 0x2
    iput v11, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    goto :label_00e2
    :label_00dc
    and-int/lit8 v4, v12, -0x3
    iput v4, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iput-wide v6, v10, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    :label_00e2
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :label_00e9
    iget-object v3, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget v3, v3, Lorg/telegram/ui/bq0;->h:I
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I
    move-result v4
    if-ne v3, v4, :label_0111
    iget-object v3, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-wide v3, v3, Lorg/telegram/ui/bq0;->n:J
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getOnlyProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J
    move-result-wide v8
    cmp-long v3, v3, v8
    if-nez v3, :label_0111
    iget-object v3, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v3, v3, Lorg/telegram/ui/bq0;->r:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    if-nez v3, :label_0107
    move-wide v3, v6
    goto :label_0109
    :label_0107
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J
    :label_0109
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileCollectibleId(Lorg/telegram/tgnet/TLRPC$User;)J
    move-result-wide v8
    cmp-long v3, v3, v8
    if-eqz v3, :label_01aa
    :label_0111
    iput-boolean v2, v14, Lorg/telegram/ui/hq0;->U:Z
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    if-nez v3, :label_011e
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerColor;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    :label_011e
    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;
    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$updateColor;-><init>()V
    iput-boolean v2, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->for_profile:Z
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I
    or-int/lit16 v4, v4, 0x200
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I
    iget-object v4, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget v4, v4, Lorg/telegram/ui/bq0;->h:I
    if-gez v4, :label_013a
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    and-int/lit8 v8, v8, -0x2
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    goto :label_0161
    :label_013a
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    if-nez v4, :label_014b
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/lit8 v4, v4, 0x4
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    :label_014b
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/2addr v8, v2
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-object v8, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget v8, v8, Lorg/telegram/ui/bq0;->h:I
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v9, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/2addr v9, v2
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I
    :label_0161
    iget-object v4, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-wide v8, v4, Lorg/telegram/ui/bq0;->n:J
    cmp-long v4, v8, v6
    if-eqz v4, :label_0199
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    or-int/lit8 v8, v4, 0x1
    iput v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/lit8 v9, v9, 0x2
    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-object v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    if-nez v8, :label_0186
    or-int/lit8 v4, v4, 0x5
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;
    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    :label_0186
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    or-int/lit8 v8, v8, 0x2
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget-object v9, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-wide v9, v9, Lorg/telegram/ui/bq0;->n:J
    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    iput-wide v9, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    goto :label_01a3
    :label_0199
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    and-int/lit8 v8, v8, -0x3
    iput v8, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I
    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J
    :label_01a3
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :label_01aa
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    iget-object v4, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v4, v4, Lorg/telegram/ui/bq0;->r:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    invoke-static {v3, v4}, Lorg/telegram/ui/hq0;->B0(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Z
    move-result v3
    if-nez v3, :label_0203
    iget-object v3, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v3, v3, Lorg/telegram/ui/bq0;->r:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    if-nez v3, :label_01c4
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z
    move-result v3
    if-eqz v3, :label_0203
    :label_01c4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V
    iget-object v4, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v4, v4, Lorg/telegram/ui/bq0;->r:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    if-eqz v4, :label_01f1
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J
    move v4, v1
    :label_01d2
    iget-object v10, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v10, v10, Lorg/telegram/ui/bq0;->k0:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v10
    if-ge v4, v10, :label_01f1
    iget-object v10, v14, Lorg/telegram/ui/hq0;->n:Lorg/telegram/ui/bq0;
    iget-object v10, v10, Lorg/telegram/ui/bq0;->k0:Ljava/util/ArrayList;
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    iget-wide v11, v10, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J
    cmp-long v11, v11, v8
    if-nez v11, :label_01ee
    move-object v5, v10
    goto :label_01f1
    :label_01ee
    add-int/lit8 v4, v4, 0x1
    goto :label_01d2
    :label_01f1
    if-eqz v5, :label_01fc
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V
    iget-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J
    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->collectible_id:J
    :label_01fc
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    invoke-virtual {v4, v6, v7, v3, v5}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    :label_0203
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->finishFragment()V
    invoke-virtual {v14}, Lorg/telegram/ui/hq0;->E0()V
    :label_0217
    iput-boolean v2, v14, Lorg/telegram/ui/hq0;->V:Z
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I
    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-array v2, v2, [Ljava/lang/Object;
    aput-object v4, v2, v1
    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_022c
    return-void
.end method
