# file_id=0 method_idx=41993 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->lambda$processUpdateArray$418(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lz/f;ILorg/telegram/messenger/support/LongSparseIntArray;Lz/f;Lz/f;Ljava/util/ArrayList;Lz/f;Lz/f;Lte/s;Lz/f;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lz/f;Lz/f;Lz/f;Ljava/util/ArrayList;)V"
.method private synthetic lambda$processUpdateArray$418(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lz/f;ILorg/telegram/messenger/support/LongSparseIntArray;Lz/f;Lz/f;Ljava/util/ArrayList;Lz/f;Lz/f;Lte/s;Lz/f;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lz/f;Lz/f;Lz/f;Ljava/util/ArrayList;)V
    .registers 68

    move-object/from16 v1, v45
    move-object/from16 v8, v47
    move-object/from16 v9, v48
    move-object/from16 v10, v49
    move-object/from16 v11, v50
    move-object/from16 v12, v51
    move-object/from16 v13, v53
    const/4 v2, 0x0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v16
    if-eqz v8, :label_1472
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v7
    move/from16 v23, v46
    move/from16 v26, v2
    move/from16 v27, v26
    const/16 v25, 0x0
    :label_002b
    if-ge v2, v7, :label_1446
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageID;
    if-eqz v3, :label_0048
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageID;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesController;->processMessageIDUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageID;)V
    :label_003c
    move/from16 v32, v2
    move-object/from16 v44, v6
    move/from16 v33, v7
    const/4 v8, 0x1
    const/16 v18, 0x9
    move-object v7, v5
    goto/16 :label_143b
    :label_0048
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;
    if-eqz v3, :label_010d
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;
    if-eqz v4, :label_005f
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x0
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_005f
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;
    if-eqz v4, :label_006e
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x1
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_006e
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;
    if-eqz v4, :label_007d
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x2
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_007d
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneP2P;
    if-eqz v4, :label_008c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x3
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_008c
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyProfilePhoto;
    if-eqz v4, :label_009b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x4
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_009b
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyForwards;
    if-eqz v4, :label_00aa
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x5
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_00aa
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneNumber;
    if-eqz v4, :label_00b9
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x6
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto :label_003c
    :label_00b9
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAddedByPhone;
    if-eqz v4, :label_00c9
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/4 v4, 0x7
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto/16 :label_003c
    :label_00c9
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyVoiceMessages;
    if-eqz v4, :label_00da
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/16 v4, 0x8
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto/16 :label_003c
    :label_00da
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAbout;
    if-eqz v4, :label_00eb
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/16 v4, 0x9
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto/16 :label_003c
    :label_00eb
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyBirthday;
    if-eqz v4, :label_00fc
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/16 v4, 0xb
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto/16 :label_003c
    :label_00fc
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStarGiftsAutoSave;
    if-eqz v3, :label_003c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePrivacy;->rules:Ljava/util/ArrayList;
    const/16 v4, 0xc
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V
    goto/16 :label_003c
    :label_010d
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionState;
    if-eqz v3, :label_011e
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/GiftAuctionController;->getInstance(I)Lorg/telegram/messenger/GiftAuctionController;
    move-result-object v3
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionState;
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/GiftAuctionController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionState;)V
    goto/16 :label_003c
    :label_011e
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionUserState;
    if-eqz v3, :label_012f
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/GiftAuctionController;->getInstance(I)Lorg/telegram/messenger/GiftAuctionController;
    move-result-object v3
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionUserState;
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/GiftAuctionController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateStarGiftAuctionUserState;)V
    goto/16 :label_003c
    :label_012f
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsRevenueStatus;
    if-eqz v3, :label_0140
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lvg/p;->g(I)Lvg/p;
    move-result-object v3
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsRevenueStatus;
    invoke-virtual {v3, v0}, Lvg/p;->q(Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsRevenueStatus;)V
    goto/16 :label_003c
    :label_0140
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;
    if-eqz v3, :label_01aa
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->user_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v3
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    move/from16 v32, v2
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;
    if-eqz v2, :label_015d
    const/16 v2, -0x64
    iput v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    goto :label_016e
    :label_015d
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;
    if-eqz v2, :label_0166
    const/16 v2, -0x65
    iput v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    goto :label_016e
    :label_0166
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;
    if-eqz v2, :label_016e
    const/16 v2, -0x66
    iput v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    :label_016e
    move v2, v7
    if-eqz v3, :label_0177
    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->user_id:J
    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    :label_0177
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->user_id:J
    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->user_id:J
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v7
    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v7
    cmp-long v3, v3, v7
    if-nez v3, :label_01a0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V
    :label_01a0
    move/from16 v33, v2
    :label_01a2
    move-object v7, v5
    move-object/from16 v44, v6
    :label_01a5
    const/4 v8, 0x1
    :label_01a6
    const/16 v18, 0x9
    goto/16 :label_143b
    :label_01aa
    move/from16 v32, v2
    move v2, v7
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;
    if-eqz v3, :label_01cb
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lvg/b6;->w(I)Lvg/b6;
    move-result-object v33
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;->channel_id:J
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v36
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMonoForumNoPaidException;->exception:Z
    move/from16 v38, v0
    move-wide/from16 v34, v3
    invoke-virtual/range {v33 .. v38}, Lvg/b6;->b0(JJZ)V
    goto :label_01a0
    :label_01cb
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerWallpaper;
    if-eqz v3, :label_01db
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerWallpaper;
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;
    move-result-object v3
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ChatThemeController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerWallpaper;)V
    goto :label_01a0
    :label_01db
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;
    if-eqz v3, :label_0221
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;->user_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v3
    if-eqz v3, :label_020e
    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;->user_id:J
    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-eqz v4, :label_020e
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v4
    sget v7, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I
    move/from16 v33, v2
    const/4 v8, 0x1
    new-array v2, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v3, v2, v24
    invoke-virtual {v4, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto :label_0210
    :label_020e
    move/from16 v33, v2
    :label_0210
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;->user_id:J
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_01a2
    :label_0221
    move/from16 v33, v2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;
    if-eqz v2, :label_0307
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->user_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_02cf
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v3
    if-nez v3, :label_0243
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->first_name:Ljava/lang/String;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->last_name:Ljava/lang/String;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;
    :label_0243
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;
    if-eqz v3, :label_026c
    const/4 v3, 0x0
    :label_0248
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :label_026c
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;
    if-eqz v4, :label_0269
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_0269
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Lj$/util/concurrent/ConcurrentHashMap;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;
    invoke-virtual {v7, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :label_0269
    add-int/lit8 v3, v3, 0x1
    goto :label_0248
    :label_026c
    const/4 v3, 0x0
    :label_026d
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :label_0299
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :label_0296
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_username;
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z
    if-eqz v7, :label_0296
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v7, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_0296
    add-int/lit8 v3, v3, 0x1
    goto :label_026d
    :label_0299
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    if-eqz v3, :label_02ae
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0x1
    if-le v3, v4, :label_02ac
    const/4 v3, 0x0
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;
    goto :label_02d0
    :label_02ac
    const/4 v3, 0x0
    goto :label_02b0
    :label_02ae
    const/4 v4, 0x1
    goto :label_02ac
    :label_02b0
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    if-eqz v7, :label_02c6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v7
    if-ne v7, v4, :label_02c6
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    const/4 v7, 0x0
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;
    goto :label_02c7
    :label_02c6
    move-object v4, v3
    :label_02c7
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    goto :label_02d0
    :label_02cf
    const/4 v3, 0x0
    :label_02d0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->user_id:J
    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->first_name:Ljava/lang/String;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->last_name:Ljava/lang/String;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    if-eqz v4, :label_02fa
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v8, 0x1
    if-ne v4, v8, :label_02f8
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserName;->usernames:Ljava/util/ArrayList;
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;
    goto :label_02fd
    :label_02f8
    const/4 v4, 0x0
    goto :label_02fc
    :label_02fa
    const/4 v8, 0x1
    goto :label_02f8
    :label_02fc
    move-object v0, v3
    :label_02fd
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v7, v5
    move-object/from16 v44, v6
    goto/16 :label_01a6
    :label_0307
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v8, 0x1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;
    if-eqz v2, :label_0356
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;
    instance-of v7, v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    if-eqz v7, :label_0321
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v30
    :label_031e
    move/from16 v24, v4
    goto :label_0324
    :label_0321
    const-wide/16 v30, 0x0
    goto :label_031e
    :label_0324
    iget-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;->pinned:Z
    move-object v2, v5
    const/4 v5, 0x0
    move-object/from16 v19, v6
    const-wide/16 v6, -0x1
    move-object/from16 v43, v2
    move-object/from16 v44, v19
    move/from16 v8, v24
    move-wide/from16 v2, v30
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z
    move-result v4
    if-nez v4, :label_0351
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;->folder_id:I
    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/UserConfig;->setPinnedDialogsLoaded(IZ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogPinned;->folder_id:I
    const/4 v7, 0x0
    invoke-virtual {v1, v0, v2, v3, v7}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(IJLjava/util/ArrayList;)V
    goto :label_0352
    :label_0351
    const/4 v7, 0x0
    :label_0352
    move-object/from16 v7, v43
    goto/16 :label_01a5
    :label_0356
    move-object v7, v3
    move v8, v4
    move-object/from16 v43, v5
    move-object/from16 v44, v6
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;
    if-eqz v2, :label_03c7
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    iget v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;->folder_id:I
    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/UserConfig;->setPinnedDialogsLoaded(IZ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2, v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;->flags:I
    const/4 v3, 0x1
    and-int/2addr v2, v3
    if-eqz v2, :label_03bf
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v5
    move v6, v8
    :label_0384
    if-ge v6, v5, :label_03bb
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v17
    move-object/from16 v7, v17
    check-cast v7, Lorg/telegram/tgnet/TLRPC$DialogPeer;
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    if-eqz v8, :label_03ad
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    move-object v8, v4
    iget-wide v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    const-wide/16 v14, 0x0
    cmp-long v17, v3, v14
    if-eqz v17, :label_03a0
    goto :label_03ab
    :label_03a0
    iget-wide v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    cmp-long v17, v3, v14
    if-eqz v17, :label_03a8
    :label_03a6
    neg-long v3, v3
    goto :label_03ab
    :label_03a8
    iget-wide v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    goto :label_03a6
    :label_03ab
    const/4 v7, 0x1
    goto :label_03b2
    :label_03ad
    move-object v8, v4
    const-wide/16 v14, 0x0
    move v7, v3
    move-wide v3, v14
    :label_03b2
    invoke-static {v3, v4, v2, v6, v7}, Lcom/google/android/recaptcha/internal/a;->i(JLjava/util/ArrayList;II)I
    move-result v6
    move v3, v7
    move-object v4, v8
    const/4 v7, 0x0
    const/4 v8, 0x0
    goto :label_0384
    :label_03bb
    move-object v7, v2
    :label_03bc
    const-wide/16 v14, 0x0
    goto :label_03c1
    :label_03bf
    const/4 v7, 0x0
    goto :label_03bc
    :label_03c1
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedDialogs;->folder_id:I
    invoke-virtual {v1, v0, v14, v15, v7}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(IJLjava/util/ArrayList;)V
    goto :label_0352
    :label_03c7
    const-wide/16 v14, 0x0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;
    if-eqz v2, :label_0405
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->user_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_03df
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    :label_03df
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->user_id:J
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhoto;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    move-object/from16 v7, v43
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v0
    if-eqz v0, :label_01a5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I
    const/4 v4, 0x0
    new-array v3, v4, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_01a5
    :label_0405
    move-object/from16 v7, v43
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStoryReaction;
    if-eqz v2, :label_04c9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStoryReaction;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStoryReaction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStoryReaction;->story_id:I
    new-instance v5, Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V
    neg-int v4, v4
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v2
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v2
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-wide v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_0485
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;
    move-result-object v3
    const-string v4, "EnableReactionsPreview"
    const/4 v8, 0x1
    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v3
    if-eqz v3, :label_0485
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStoryReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;
    invoke-static {v0}, Lvf/p0;->d(Lorg/telegram/tgnet/TLRPC$Reaction;)Lvf/p0;
    move-result-object v0
    invoke-virtual {v0}, Lvf/p0;->a()Lvf/p0;
    move-result-object v0
    iget-object v3, v0, Lvf/p0;->f:Ljava/lang/String;
    if-eqz v3, :label_0477
    sget v3, Lorg/telegram/messenger/R$string;->PushReactStory:I
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v4
    iget-object v0, v0, Lvf/p0;->f:Ljava/lang/String;
    const/4 v8, 0x2
    new-array v6, v8, [Ljava/lang/Object;
    move/from16 v21, v8
    const/4 v8, 0x0
    aput-object v4, v6, v8
    const/16 v22, 0x1
    aput-object v0, v6, v22
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    goto :label_0492
    :label_0477
    const/4 v8, 0x0
    const/16 v21, 0x2
    sget v0, Lorg/telegram/messenger/R$string;->PushReactStoryHidden:I
    new-array v3, v8, [Ljava/lang/Object;
    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    goto :label_0492
    :label_0485
    const/4 v8, 0x0
    const/16 v21, 0x2
    sget v0, Lorg/telegram/messenger/R$string;->PushReactStoryHidden:I
    new-array v3, v8, [Ljava/lang/Object;
    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :label_0492
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v3, Lorg/telegram/messenger/MessageObject;
    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-direct {v3, v4, v5, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    const/4 v8, 0x1
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject;->isStoryReactionPush:Z
    iput v8, v3, Lorg/telegram/messenger/MessageObject;->localType:I
    if-eqz v2, :label_04b2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_04b2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;
    goto :label_04ba
    :label_04b2
    sget v2, Lorg/telegram/messenger/R$string;->PushReactStoryHiddenSender:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;
    :label_04ba
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v8, 0x1
    invoke-virtual {v2, v0, v8, v4, v3}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    goto/16 :label_01a6
    :label_04c9
    const/16 v21, 0x2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsBalance;
    if-eqz v2, :label_04ec
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsBalance;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsBalance;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v3, v2}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStarsBalance;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    invoke-virtual {v3, v0}, Lvg/b6;->k0(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)V
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v0, v2}, Lvg/b6;->y(IZ)Lvg/b6;
    move-result-object v0
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Lvg/b6;->T(Z)V
    goto/16 :label_01a5
    :label_04ec
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;
    if-eqz v2, :label_0550
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;->user_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v9, :label_051f
    const/4 v3, 0x0
    :label_04ff
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :label_051f
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :label_0518
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J
    move-wide/from16 v28, v14
    iget-wide v14, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUser;->user_id:J
    cmp-long v5, v5, v14
    if-nez v5, :label_051a
    goto :label_0522
    :label_0518
    move-wide/from16 v28, v14
    :label_051a
    add-int/lit8 v3, v3, 0x1
    move-wide/from16 v14, v28
    goto :label_04ff
    :label_051f
    move-wide/from16 v28, v14
    const/4 v4, 0x0
    :label_0522
    if-eqz v4, :label_053c
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    if-eqz v0, :label_053c
    if-eqz v2, :label_052c
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    :label_052c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_053c
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v0
    if-eqz v0, :label_01a5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I
    const/4 v4, 0x0
    new-array v3, v4, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_01a5
    :label_0550
    move-wide/from16 v28, v14
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;
    if-eqz v2, :label_0596
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;->user_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_0584
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;->phone:Ljava/lang/String;
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;
    sget-object v3, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;
    new-instance v4, Lorg/telegram/messenger/ua;
    const/4 v8, 0x0
    invoke-direct {v4, v1, v2, v8}, Lorg/telegram/messenger/ua;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v2
    if-eqz v2, :label_0584
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I
    new-array v4, v8, [Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_0584
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;->user_id:J
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateUserPhone;->phone:Ljava/lang/String;
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :label_01a5
    :label_0596
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;
    if-eqz v2, :label_07c1
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
    if-eqz v2, :label_07b9
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I
    or-int v26, v26, v2
    if-nez v25, :label_05ae
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v25
    :label_05ae
    move-object/from16 v2, v25
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;
    if-nez v4, :label_05c1
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;
    if-eqz v5, :label_05c8
    :label_05c1
    move-object/from16 v36, v2
    const/4 v8, 0x4
    const/16 v14, 0x9
    goto/16 :label_0766
    :label_05c8
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;
    if-eqz v4, :label_0626
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    const/16 v22, 0x1
    and-int/lit8 v4, v4, 0x1
    if-eqz v4, :label_05dd
    const-string v4, "EnablePreviewGroup"
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :label_05dd
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    const/4 v8, 0x4
    and-int/2addr v3, v8
    if-eqz v3, :label_0607
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const-string v4, "EnableGroup2"
    const/4 v5, 0x0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v3
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I
    if-eq v3, v5, :label_0607
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "overwrite_group"
    const/4 v4, 0x1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    new-instance v3, Lorg/telegram/messenger/da;
    const/4 v4, 0x7
    invoke-direct {v3, v1, v4}, Lorg/telegram/messenger/da;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0607
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/NotificationsController;->getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    move-result-object v34
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;
    const/16 v41, 0x0
    const/16 v42, 0x0
    const-wide/16 v37, 0x0
    const-wide/16 v39, 0x0
    move-object/from16 v35, v0
    move-object/from16 v36, v2
    invoke-virtual/range {v34 .. v42}, Lorg/telegram/messenger/NotificationsSettingsFacade;->applySoundSettings(Lorg/telegram/tgnet/TLRPC$NotificationSound;Landroid/content/SharedPreferences$Editor;JJIZ)V
    :label_0622
    const/16 v14, 0x9
    goto/16 :label_07af
    :label_0626
    const/4 v8, 0x4
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;
    if-eqz v4, :label_0708
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    const/16 v22, 0x1
    and-int/lit8 v4, v4, 0x1
    if-eqz v4, :label_063c
    const-string v4, "EnablePreviewAll"
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :label_063c
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const-string v4, "EnableAllStories"
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :label_0656
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const/4 v5, 0x1
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v3
    goto :label_0658
    :label_0656
    const/4 v5, 0x1
    const/4 v3, 0x0
    :label_0658
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const-string v14, "EnableHideStoriesSenders"
    invoke-interface {v6, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :label_066d
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v6, v14, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v6
    goto :label_066e
    :label_066d
    const/4 v6, 0x0
    :label_066e
    iget-object v15, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    move/from16 v22, v5
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    and-int/lit8 v5, v5, 0x40
    if-eqz v5, :label_0684
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_muted:Z
    xor-int/lit8 v5, v5, 0x1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v15
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    goto :label_0685
    :label_0684
    const/4 v15, 0x0
    :label_0685
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    and-int/lit16 v5, v5, 0x80
    if-eqz v5, :label_0697
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_hide_sender:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v5
    invoke-interface {v2, v14, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    goto :label_0698
    :label_0697
    const/4 v5, 0x0
    :label_0698
    if-nez v3, :label_069c
    const/4 v4, 0x1
    goto :label_069d
    :label_069c
    const/4 v4, 0x0
    :label_069d
    if-nez v15, :label_06a1
    const/4 v14, 0x1
    goto :label_06a2
    :label_06a1
    const/4 v14, 0x0
    :label_06a2
    if-ne v4, v14, :label_06b8
    if-nez v6, :label_06a8
    const/4 v4, 0x1
    goto :label_06a9
    :label_06a8
    const/4 v4, 0x0
    :label_06a9
    if-nez v5, :label_06ad
    const/4 v14, 0x1
    goto :label_06ae
    :label_06ad
    const/4 v14, 0x0
    :label_06ae
    if-ne v4, v14, :label_06b8
    if-eqz v3, :label_06b4
    if-ne v3, v15, :label_06b8
    :label_06b4
    if-eqz v6, :label_06bf
    if-eq v6, v5, :label_06bf
    :label_06b8
    const-string/jumbo v3, "overwrite_stories"
    const/4 v4, 0x1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :label_06bf
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/NotificationsController;->getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    move-result-object v34
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;
    const/16 v41, 0x1
    const/16 v42, 0x0
    const-wide/16 v37, 0x0
    const-wide/16 v39, 0x0
    move-object/from16 v36, v2
    move-object/from16 v35, v3
    invoke-virtual/range {v34 .. v42}, Lorg/telegram/messenger/NotificationsSettingsFacade;->applySoundSettings(Lorg/telegram/tgnet/TLRPC$NotificationSound;Landroid/content/SharedPreferences$Editor;JJIZ)V
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    and-int/2addr v3, v8
    if-eqz v3, :label_0704
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const-string v4, "EnableAll2"
    const/4 v5, 0x0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I
    if-eq v3, v0, :label_0704
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "overwrite_private"
    const/4 v4, 0x1
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    new-instance v0, Lorg/telegram/messenger/da;
    const/16 v4, 0x8
    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/da;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_0704
    move-object/from16 v36, v2
    goto/16 :label_0622
    :label_0708
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyBroadcasts;
    if-eqz v3, :label_0704
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    const/16 v22, 0x1
    and-int/lit8 v4, v4, 0x1
    if-eqz v4, :label_071d
    const-string v4, "EnablePreviewChannel"
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :label_071d
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I
    and-int/2addr v3, v8
    if-eqz v3, :label_0748
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->notificationsPreferences:Landroid/content/SharedPreferences;
    const-string v4, "EnableChannel2"
    const/4 v5, 0x0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v3
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I
    if-eq v3, v5, :label_0748
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "overwrite_channel"
    const/4 v4, 0x1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    new-instance v3, Lorg/telegram/messenger/da;
    const/16 v14, 0x9
    invoke-direct {v3, v1, v14}, Lorg/telegram/messenger/da;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto :label_074a
    :label_0748
    const/16 v14, 0x9
    :label_074a
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/NotificationsController;->getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    move-result-object v34
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;
    const/16 v41, 0x2
    const/16 v42, 0x0
    const-wide/16 v37, 0x0
    const-wide/16 v39, 0x0
    move-object/from16 v35, v0
    move-object/from16 v36, v2
    invoke-virtual/range {v34 .. v42}, Lorg/telegram/messenger/NotificationsSettingsFacade;->applySoundSettings(Lorg/telegram/tgnet/TLRPC$NotificationSound;Landroid/content/SharedPreferences$Editor;JJIZ)V
    goto :label_07af
    :label_0766
    if-eqz v4, :label_0783
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v5, v3, v28
    if-eqz v5, :label_0773
    goto :label_077e
    :label_0773
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    cmp-long v5, v3, v28
    if-eqz v5, :label_077b
    neg-long v3, v3
    goto :label_077e
    :label_077b
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    neg-long v3, v2
    :label_077e
    move-wide/from16 v38, v3
    move-wide/from16 v40, v28
    goto :label_07a0
    :label_0783
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v6, v4, v28
    if-eqz v6, :label_078e
    goto :label_0799
    :label_078e
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    cmp-long v6, v4, v28
    if-eqz v6, :label_0796
    :label_0794
    neg-long v4, v4
    goto :label_0799
    :label_0796
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    goto :label_0794
    :label_0799
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;->top_msg_id:I
    int-to-long v2, v2
    move-wide/from16 v40, v2
    move-wide/from16 v38, v4
    :label_07a0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/NotificationsController;->getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    move-result-object v37
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    move-object/from16 v42, v0
    invoke-virtual/range {v37 .. v42}, Lorg/telegram/messenger/NotificationsSettingsFacade;->applyDialogNotificationsSettings(JJLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    :label_07af
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->updateMutedDialogsFiltersCounters()V
    move-object/from16 v25, v36
    goto :label_07bc
    :label_07b9
    const/4 v8, 0x4
    const/16 v14, 0x9
    :label_07bc
    move/from16 v18, v14
    :label_07be
    const/4 v8, 0x1
    goto/16 :label_143b
    :label_07c1
    const/4 v8, 0x4
    const/16 v14, 0x9
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewAuthorization;
    if-eqz v2, :label_07d2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getUnconfirmedAuthController()Lorg/telegram/messenger/UnconfirmedAuthController;
    move-result-object v2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewAuthorization;
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/UnconfirmedAuthController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateNewAuthorization;)V
    goto :label_07bc
    :label_07d2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewBotConnection;
    if-eqz v2, :label_07e0
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getUnconfirmedAuthController()Lorg/telegram/messenger/UnconfirmedAuthController;
    move-result-object v2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewBotConnection;
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/UnconfirmedAuthController;->processUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateNewBotConnection;)V
    goto :label_07bc
    :label_07e0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;
    if-eqz v2, :label_0890
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;->channel_id:J
    neg-long v3, v3
    invoke-virtual {v2, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;->channel_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v3
    if-eqz v3, :label_087e
    if-nez v2, :label_0816
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channel;
    if-eqz v4, :label_0816
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z
    if-nez v4, :label_0816
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;
    new-instance v4, Lorg/telegram/messenger/t2;
    const/16 v5, 0x15
    invoke-direct {v4, v5, v1, v0}, Lorg/telegram/messenger/t2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :label_0813
    move/from16 v18, v14
    goto :label_0835
    :label_0816
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_0813
    if-eqz v2, :label_0813
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->promoDialog:Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v4, :label_082d
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    move/from16 v18, v14
    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    cmp-long v4, v4, v14
    if-eqz v4, :label_0835
    goto :label_082f
    :label_082d
    move/from16 v18, v14
    :label_082f
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    const/4 v2, 0x0
    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V
    :label_0835
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
    if-nez v2, :label_083d
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z
    if-eqz v2, :label_0880
    :label_083d
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    const/4 v2, 0x0
    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v4
    if-eqz v4, :label_0880
    new-instance v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;
    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;-><init>()V
    iget v5, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->flags:I
    or-int/lit8 v5, v5, 0x2
    iput v5, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->flags:I
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    neg-long v5, v5
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v3
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;-><init>()V
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-object v5, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    iput-wide v14, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ChatObject$Call;->processGroupCallUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;)V
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v3
    if-eqz v3, :label_0880
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v3
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->onGroupCallUpdated(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    goto :label_0880
    :label_087e
    move/from16 v18, v14
    :label_0880
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I
    or-int v2, v23, v2
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannel;->channel_id:J
    const/4 v5, 0x1
    const/4 v6, 0x0
    invoke-virtual {v1, v3, v4, v6, v5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V
    move/from16 v23, v2
    move v8, v5
    goto/16 :label_143b
    :label_0890
    move/from16 v18, v14
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChat;
    if-eqz v2, :label_0911
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChat;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChat;->chat_id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_08ad
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;
    if-nez v3, :label_08af
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z
    if-eqz v3, :label_08ad
    goto :label_08af
    :label_08ad
    const/4 v4, 0x0
    goto :label_0902
    :label_08af
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    const/4 v5, 0x0
    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v3
    if-eqz v3, :label_08ef
    new-instance v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;
    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;-><init>()V
    iget v5, v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->flags:I
    or-int/lit8 v5, v5, 0x2
    iput v5, v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->flags:I
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    neg-long v5, v5
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;
    move-result-object v5
    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;-><init>()V
    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-object v6, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    iput-wide v14, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J
    iput-wide v14, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ChatObject$Call;->processGroupCallUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;)V
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v3
    if-eqz v3, :label_08ef
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v3
    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->onGroupCallUpdated(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    :label_08ef
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    neg-long v4, v4
    invoke-virtual {v3, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v2, :label_08ad
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J
    const/4 v4, 0x0
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V
    :label_0902
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I
    or-int v2, v23, v2
    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChat;->chat_id:J
    const/4 v3, 0x1
    invoke-virtual {v1, v5, v6, v4, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V
    move/from16 v23, v2
    :label_090e
    move v8, v3
    goto/16 :label_143b
    :label_0911
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;
    if-eqz v2, :label_093b
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v5, v3, v28
    if-eqz v5, :label_0920
    goto :label_0922
    :label_0920
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    :label_0922
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_07be
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatDefaultBannedRights;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    new-instance v0, Lorg/telegram/messenger/wa;
    const/4 v4, 0x0
    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/wa;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    goto/16 :label_07be
    :label_093b
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateBotCommands;
    if-eqz v2, :label_0950
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateBotCommands;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v2
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateBotCommands;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/messenger/MediaDataController;->updateBotInfo(JLorg/telegram/tgnet/tl/TL_update$TL_updateBotCommands;)V
    goto/16 :label_07be
    :label_0950
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSets;
    if-eqz v2, :label_0960
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    const/4 v4, 0x1
    const/4 v5, 0x0
    invoke-virtual {v0, v5, v5, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickers(IZZ)V
    :label_095d
    move v8, v4
    goto/16 :label_143b
    :label_0960
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSetsOrder;
    if-eqz v2, :label_097f
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSetsOrder;
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSetsOrder;->masks:Z
    if-eqz v2, :label_096c
    const/4 v2, 0x1
    goto :label_0973
    :label_096c
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSetsOrder;->emojis:Z
    if-eqz v2, :label_0972
    const/4 v2, 0x5
    goto :label_0973
    :label_0972
    const/4 v2, 0x0
    :label_0973
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;
    const/4 v4, 0x0
    invoke-virtual {v3, v2, v0, v4}, Lorg/telegram/messenger/MediaDataController;->reorderStickers(ILjava/util/ArrayList;Z)V
    goto/16 :label_07be
    :label_097f
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateRecentReactions;
    if-eqz v2, :label_098c
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    const/4 v4, 0x1
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecentAndTopReactions(Z)V
    goto :label_095d
    :label_098c
    const/4 v4, 0x1
    if-eqz v2, :label_0997
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadSavedReactions(Z)V
    goto :label_095d
    :label_0997
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSavedReactionTags;
    if-eqz v2, :label_09a1
    move-wide/from16 v14, v28
    invoke-virtual {v1, v14, v15, v4}, Lorg/telegram/messenger/MessagesController;->getSavedReactionTags(JZ)Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;
    goto :label_095d
    :label_09a1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentWalletTransaction;
    if-eqz v2, :label_09b2
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/ui/Wallet/l0;->w(I)Lorg/telegram/ui/Wallet/l0;
    move-result-object v2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentWalletTransaction;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Wallet/l0;->M(Lorg/telegram/tgnet/tl/TL_update$TL_updateSentWalletTransaction;)V
    goto/16 :label_07be
    :label_09b2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletGaslessInfo;
    if-eqz v2, :label_09c3
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/ui/Wallet/l0;->w(I)Lorg/telegram/ui/Wallet/l0;
    move-result-object v2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletGaslessInfo;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Wallet/l0;->N(Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletGaslessInfo;)V
    goto/16 :label_07be
    :label_09c3
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletState;
    if-eqz v2, :label_09d4
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/ui/Wallet/l0;->w(I)Lorg/telegram/ui/Wallet/l0;
    move-result-object v2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletState;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Wallet/l0;->O(Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletState;)V
    goto/16 :label_07be
    :label_09d4
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletTonConnectSession;
    if-eqz v2, :label_09e9
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/ui/Wallet/l0;->w(I)Lorg/telegram/ui/Wallet/l0;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/ui/Wallet/l0;->g:Lorg/telegram/ui/Wallet/f2;
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletTonConnectSession;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWalletTonConnectSession;->session:Lorg/telegram/tgnet/tl/TL_wallet$tonConnectSession;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Wallet/f2;->n(Lorg/telegram/tgnet/tl/TL_wallet$tonConnectSession;)V
    goto/16 :label_07be
    :label_09e9
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateFavedStickers;
    if-eqz v2, :label_09fa
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    move/from16 v4, v21
    const/4 v3, 0x1
    const/4 v5, 0x0
    invoke-virtual {v0, v4, v5, v5, v3}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V
    goto/16 :label_090e
    :label_09fa
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateContactsReset;
    if-eqz v2, :label_0a07
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V
    goto/16 :label_07be
    :label_0a07
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStickerSet;
    if-eqz v2, :label_0a18
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStickerSet;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v2
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateNewStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaDataController;->addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    goto/16 :label_07be
    :label_0a18
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSavedGifs;
    if-eqz v2, :label_0a2f
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->emojiPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v2, "lastGifLoadTime"
    const-wide/16 v14, 0x0
    invoke-interface {v0, v2, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    goto/16 :label_07be
    :label_0a2f
    const-wide/16 v14, 0x0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateRecentStickers;
    if-eqz v2, :label_0a46
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->emojiPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v2, "lastStickersLoadTime"
    invoke-interface {v0, v2, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    goto/16 :label_07be
    :label_0a46
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;
    if-eqz v2, :label_0a86
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v5, v3, v14
    if-eqz v5, :label_0a57
    :label_0a54
    move-wide/from16 v35, v3
    goto :label_0a63
    :label_0a57
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v5, v3, v14
    if-eqz v5, :label_0a5f
    neg-long v3, v3
    goto :label_0a54
    :label_0a5f
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    neg-long v3, v2
    goto :label_0a54
    :label_0a63
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_0a6e
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    :label_0a6b
    move-wide/from16 v37, v2
    goto :label_0a72
    :label_0a6e
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;->top_msg_id:I
    int-to-long v2, v2
    goto :label_0a6b
    :label_0a72
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v34
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDraftMessage;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;
    const/16 v40, 0x0
    const/16 v41, 0x1
    move-object/from16 v39, v0
    invoke-virtual/range {v34 .. v41}, Lorg/telegram/messenger/MediaDataController;->saveDraft(JJLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V
    const/4 v8, 0x1
    const/16 v27, 0x1
    goto/16 :label_143b
    :label_0a86
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStoriesStealthMode;
    if-eqz v2, :label_0a97
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStoriesStealthMode;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lxg/o5;
    move-result-object v2
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStoriesStealthMode;->stealth_mode:Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;
    invoke-virtual {v2, v0}, Lxg/o5;->f0(Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;)V
    goto/16 :label_07be
    :label_0a97
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadFeaturedStickers;
    if-eqz v2, :label_0aa5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    const/4 v4, 0x0
    invoke-virtual {v0, v4, v4}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersAsRead(ZZ)V
    goto/16 :label_07be
    :label_0aa5
    const/4 v4, 0x0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadFeaturedEmojiStickers;
    if-eqz v2, :label_0ab4
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    const/4 v3, 0x1
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersAsRead(ZZ)V
    goto/16 :label_090e
    :label_0ab4
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMoveStickerSetToTop;
    if-eqz v2, :label_0ac9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMoveStickerSetToTop;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v2
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMoveStickerSetToTop;->stickerset:J
    iget-boolean v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMoveStickerSetToTop;->emojis:Z
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMoveStickerSetToTop;->masks:Z
    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/telegram/messenger/MediaDataController;->moveStickerSetToTop(JZZ)V
    goto/16 :label_07be
    :label_0ac9
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;
    if-eqz v2, :label_0afe
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v4
    neg-long v2, v2
    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/TopicsController;->getCurrentPinnedOrder(J)Ljava/util/ArrayList;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;->topic_id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    iget-boolean v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;->pinned:Z
    if-eqz v5, :label_0af5
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopic;->topic_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const/4 v5, 0x0
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :label_0af5
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;)V
    goto/16 :label_07be
    :label_0afe
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;
    if-eqz v2, :label_0b29
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;->flags:I
    const/16 v22, 0x1
    and-int/lit8 v4, v4, 0x1
    if-eqz v4, :label_0b1e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v4
    neg-long v2, v2
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedForumTopics;->order:Ljava/util/ArrayList;
    invoke-virtual {v4, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;)V
    goto/16 :label_07be
    :label_0b1e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v0
    neg-long v2, v2
    const/4 v4, 0x0
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JZ)V
    goto/16 :label_07be
    :label_0b29
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCallSignalingData;
    if-eqz v2, :label_0b3a
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCallSignalingData;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    if-eqz v2, :label_07be
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->onSignalingData(Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCallSignalingData;)V
    goto/16 :label_07be
    :label_0b3a
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallParticipants;
    if-eqz v2, :label_0b61
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallParticipants;
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->groupCalls:Lz/f;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J
    invoke-virtual {v2, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/messenger/ChatObject$Call;
    if-eqz v2, :label_0b52
    const/4 v4, 0x0
    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/ChatObject$Call;->processParticipantsUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallParticipants;Z)V
    :label_0b52
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    if-eqz v2, :label_07be
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->onGroupCallParticipantsUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallParticipants;)V
    goto/16 :label_07be
    :label_0b61
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;
    if-eqz v2, :label_0be2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->live_story:Z
    if-eqz v2, :label_0b8b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->storyGroupCallUpdated:I
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    const/4 v6, 0x2
    new-array v14, v6, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v14, v24
    const/16 v22, 0x1
    aput-object v5, v14, v22
    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_0b8b
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->groupCalls:Lz/f;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    invoke-virtual {v2, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/messenger/ChatObject$Call;
    if-eqz v2, :label_0baf
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ChatObject$Call;->processGroupCallUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;)V
    iget-wide v2, v2, Lorg/telegram/messenger/ChatObject$Call;->chatId:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_0bd1
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCall;
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z
    goto :label_0bd1
    :label_0baf
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_0bd1
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    neg-long v2, v2
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v4
    if-eqz v4, :label_0bd1
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;
    if-eqz v4, :label_0bcc
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    cmp-long v4, v4, v14
    if-eqz v4, :label_0bd1
    :label_0bcc
    const/4 v4, 0x1
    const/4 v5, 0x0
    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V
    :label_0bd1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    if-eqz v2, :label_07be
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->onGroupCallUpdated(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    goto/16 :label_07be
    :label_0be2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCall;
    if-eqz v2, :label_0e1d
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCall;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePhoneCall;->phone_call:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0c0f
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v4, "Received call in update: "
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v4, "call id "
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    invoke-static {v0, v4, v5}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0c0f
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;
    if-eqz v0, :label_0c21
    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;
    if-eqz v4, :label_0c21
    move-object v4, v2
    check-cast v4, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;
    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_debug:Z
    invoke-virtual {v0, v5, v6, v4}, Lorg/telegram/messenger/voip/VoIPDebugToSend;->done(JZ)V
    :label_0c21
    instance-of v0, v2, Lorg/telegram/tgnet/tl/TL_phone$phoneCallRequested;
    if-eqz v0, :label_0dcf
    iget v0, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->date:I
    iget v4, v1, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I
    div-int/lit16 v4, v4, 0x3e8
    add-int/2addr v4, v0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v0
    if-ge v4, v0, :label_0c41
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_07be
    const-string v0, "ignoring too old call"
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    goto/16 :label_07be
    :label_0c41
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    invoke-static {v0}, Ld0/l0;->c(Landroid/content/Context;)Ld0/l0;
    move-result-object v0
    invoke-virtual {v0}, Ld0/l0;->a()Z
    move-result v0
    if-nez v0, :label_0c63
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    if-nez v0, :label_0c58
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z
    if-nez v0, :label_0c56
    goto :label_0c58
    :label_0c56
    const/4 v4, 0x1
    goto :label_0c64
    :label_0c58
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_07be
    const-string v0, "Ignoring incoming call because notifications are disabled in system"
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    goto/16 :label_07be
    :label_0c63
    const/4 v4, 0x0
    :label_0c64
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    const-string/jumbo v5, "phone"
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/telephony/TelephonyManager;
    :label_0c6f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 0x1f
    if-lt v5, v6, :label_0c8a
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    const-string v6, "android.permission.READ_PHONE_STATE"
    invoke-static {v5, v6}, Le0/c;->b(Landroid/content/Context;Ljava/lang/String;)I
    move-result v5
    if-nez v5, :label_0c94
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I
    move-result v0
    if-nez v0, :label_0c86
    :label_0c85
    goto :label_0c94
    :label_0c86
    const/4 v0, 0x0
    goto :label_0c95
    :label_0c88
    move-exception v0
    goto :label_0c91
    :label_0c8a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
    move-result v0
    :label_0c8e
    if-nez v0, :label_0c86
    goto :label_0c85
    :label_0c91
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_0c94
    const/4 v0, 0x1
    :label_0c95
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "updatePhoneCall: svc="
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, " callIShouldHavePutIntoIntent="
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v6, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, " callStateIsIdle="
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    if-nez v3, :label_0d52
    sget-object v5, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    if-nez v5, :label_0d52
    if-nez v0, :label_0cc3
    goto/16 :label_0d52
    :label_0cc3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0cd3
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v3, "Starting service for call "
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    invoke-static {v0, v5, v6}, Lj2/t;->s(Ljava/lang/StringBuilder;J)V
    :label_0cd3
    sput-object v2, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    new-instance v0, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "set VoIPService.callIShouldHavePutIntoIntent = "
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    new-instance v0, Landroid/content/Intent;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    const-class v5, Lorg/telegram/messenger/voip/VoIPService;
    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const-string v3, "is_outgoing"
    const/4 v5, 0x0
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->participant_id:J
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v3
    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v14
    cmp-long v3, v5, v14
    if-nez v3, :label_0d07
    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->admin_id:J
    goto :label_0d09
    :label_0d07
    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->participant_id:J
    :label_0d09
    const-string/jumbo v3, "user_id"
    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    const-string v3, "account"
    iget v5, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    const-string v3, "notifications_disabled"
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :label_0d1b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v5, 0x21
    if-lt v3, v5, :label_0d2f
    const-string v3, "accept"
    const/4 v4, 0x1
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->show(Landroid/content/Context;Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V
    goto :label_0d40
    :label_0d2d
    move-exception v0
    goto :label_0d4d
    :label_0d2f
    if-nez v4, :label_0d3b
    const/16 v2, 0x1a
    if-lt v3, v2, :label_0d3b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    invoke-virtual {v2, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto :label_0d40
    :label_0d3b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :label_0d40
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    if-nez v0, :label_0d48
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z
    if-nez v0, :label_07be
    :label_0d48
    const/4 v4, 0x1
    iput-boolean v4, v1, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z
    :label_0d4b
    goto/16 :label_07be
    :label_0d4d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto/16 :label_07be
    :label_0d52
    if-eqz v3, :label_0d76
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I
    move-result v0
    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    if-eq v0, v4, :label_0d76
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    if-eqz v0, :label_0d76
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v5
    cmp-long v0, v3, v5
    if-nez v0, :label_0d76
    goto/16 :label_07be
    :label_0d76
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0d92
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v3, "Auto-declining call "
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v3, " because there's already active one"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_0d92
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V
    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;
    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J
    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V
    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "discardCall "
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v3, Lorg/telegram/messenger/oa;
    const/4 v4, 0x2
    invoke-direct {v3, v1, v4}, Lorg/telegram/messenger/oa;-><init>(Lorg/telegram/messenger/MessagesController;I)V
    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    goto/16 :label_07be
    :label_0dcf
    if-eqz v3, :label_0de0
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I
    move-result v0
    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    if-ne v0, v4, :label_0de0
    if-eqz v2, :label_0de0
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V
    goto/16 :label_07be
    :label_0de0
    instance-of v0, v2, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;
    if-eqz v0, :label_0dea
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    const/4 v4, 0x0
    invoke-static {v0, v4}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V
    :label_0dea
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    if-eqz v0, :label_07be
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0df7
    const-string v0, "Updated the call while the service is starting"
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_0df7
    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J
    cmp-long v0, v3, v5
    if-nez v0, :label_07be
    instance-of v0, v2, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;
    if-eqz v0, :label_0e06
    const/4 v2, 0x0
    :label_0e06
    sput-object v2, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v2, "(2) set VoIPService.callIShouldHavePutIntoIntent = "
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    sget-object v2, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    goto/16 :label_07be
    :label_0e1d
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogUnreadMark;
    if-eqz v2, :label_0e8b
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogUnreadMark;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogUnreadMark;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    if-eqz v3, :label_0e43
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    const-wide/16 v28, 0x0
    cmp-long v5, v3, v28
    if-eqz v5, :label_0e36
    goto :label_0e45
    :label_0e36
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    cmp-long v5, v3, v28
    if-eqz v5, :label_0e3f
    neg-long v2, v3
    :label_0e3d
    move-wide v3, v2
    goto :label_0e45
    :label_0e3f
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    neg-long v2, v2
    goto :label_0e3d
    :label_0e43
    const-wide/16 v3, 0x0
    :label_0e45
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-boolean v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogUnreadMark;->unread:Z
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogUnread(JZ)V
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    invoke-virtual {v2, v3, v4}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v2, :label_07be
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogUnreadMark;->unread:Z
    if-eq v5, v0, :label_07be
    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I
    if-nez v0, :label_0e81
    const-wide/16 v14, 0x0
    invoke-virtual {v1, v3, v4, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z
    move-result v0
    if-nez v0, :label_0e81
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z
    if-eqz v0, :label_0e79
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->unreadUnmutedDialogs:I
    const/16 v22, 0x1
    add-int/lit8 v0, v0, 0x1
    iput v0, v1, Lorg/telegram/messenger/MessagesController;->unreadUnmutedDialogs:I
    goto :label_0e81
    :label_0e79
    const/16 v22, 0x1
    iget v0, v1, Lorg/telegram/messenger/MessagesController;->unreadUnmutedDialogs:I
    add-int/lit8 v0, v0, -0x1
    iput v0, v1, Lorg/telegram/messenger/MessagesController;->unreadUnmutedDialogs:I
    :label_0e81
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I
    or-int v23, v23, v0
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I
    or-int v26, v26, v0
    goto/16 :label_07be
    :label_0e8b
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;
    if-eqz v2, :label_0eb5
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->didUpdatePollResults:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->poll_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v6, v24
    const/16 v22, 0x1
    aput-object v5, v6, v22
    const/16 v21, 0x2
    aput-object v0, v6, v21
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_0eb5
    const/4 v14, 0x3
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;
    if-eqz v2, :label_0ed8
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v3, :label_0ec5
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    goto :label_0ed0
    :label_0ec5
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;
    if-eqz v3, :label_0ecd
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    :label_0ecb
    neg-long v2, v2
    goto :label_0ed0
    :label_0ecd
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    goto :label_0ecb
    :label_0ed0
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerSettings;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;
    const/4 v4, 0x1
    invoke-direct {v1, v2, v3, v0, v4}, Lorg/telegram/messenger/MessagesController;->savePeerSettings(JLorg/telegram/tgnet/TLRPC$PeerSettings;Z)V
    goto/16 :label_095d
    :label_0ed8
    const/4 v4, 0x1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerLocated;
    if-eqz v2, :label_0eee
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I
    new-array v5, v4, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v0, v5, v24
    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_0eee
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;
    if-eqz v2, :label_0f54
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v4}, Lvg/b6;->w(I)Lvg/b6;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->msg_id:I
    invoke-virtual {v4, v5, v2, v3}, Lvg/b6;->D(IJ)J
    move-result-wide v4
    const-wide/16 v28, 0x0
    cmp-long v6, v4, v28
    if-eqz v6, :label_0f2e
    iget v6, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v6}, Lvg/b6;->w(I)Lvg/b6;
    move-result-object v6
    iget v15, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    iget-object v8, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    long-to-int v4, v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->msg_id:I
    invoke-static {v5, v2, v3}, Lvg/v5;->a(IJ)Lvg/v5;
    move-result-object v5
    iget-object v14, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    invoke-virtual {v6, v5, v14}, Lvg/b6;->B(Lvg/v5;Lorg/telegram/tgnet/TLRPC$TL_messageReactions;)J
    move-result-wide v37
    const/16 v39, 0x1
    move/from16 v36, v4
    move-object/from16 v35, v8
    move/from16 v34, v15
    invoke-static/range {v34 .. v39}, Lorg/telegram/messenger/MessageObject;->addPaidReactions(ILorg/telegram/tgnet/TLRPC$MessageReactions;IJZ)V
    :label_0f2e
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v4
    sget v5, Lorg/telegram/messenger/NotificationCenter;->didUpdateReactions:I
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    iget v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->msg_id:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v2, v6, v24
    const/16 v22, 0x1
    aput-object v3, v6, v22
    const/16 v21, 0x2
    aput-object v0, v6, v21
    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_0f54
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;
    if-eqz v2, :label_0f85
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->didUpdateExtendedMedia:I
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->msg_id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateMessageExtendedMedia;->extended_media:Ljava/util/ArrayList;
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v6, v24
    const/4 v4, 0x1
    aput-object v5, v6, v4
    const/16 v21, 0x2
    aput-object v0, v6, v21
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_095d
    :label_0f85
    const/4 v4, 0x1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTheme;
    if-eqz v2, :label_0f98
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTheme;
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTheme;->theme:Lorg/telegram/tgnet/TLRPC$Theme;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    const/4 v3, 0x0
    invoke-static {v3, v3, v0, v2, v4}, Lorg/telegram/ui/ActionBar/n6;->D1(Lorg/telegram/ui/ActionBar/m6;Lorg/telegram/ui/ActionBar/l6;Lorg/telegram/tgnet/TLRPC$TL_theme;IZ)V
    goto/16 :label_095d
    :label_0f98
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogFilter;
    if-eqz v2, :label_0fa1
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V
    goto/16 :label_095d
    :label_0fa1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogFilterOrder;
    if-eqz v2, :label_0faa
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V
    goto/16 :label_095d
    :label_0faa
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateDialogFilters;
    if-eqz v2, :label_0fb3
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V
    goto/16 :label_095d
    :label_0fb3
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateRecentEmojiStatuses;
    if-eqz v2, :label_0fc5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I
    const/4 v4, 0x0
    new-array v3, v4, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_0fc5
    const/4 v4, 0x0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebViewResultSent;
    if-eqz v2, :label_0fe2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebViewResultSent;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I
    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebViewResultSent;->query_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    const/4 v8, 0x1
    new-array v5, v8, [Ljava/lang/Object;
    aput-object v0, v5, v4
    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_143b
    :label_0fe2
    const/4 v8, 0x1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateAttachMenuBots;
    if-eqz v2, :label_0ff0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    invoke-virtual {v0, v4, v8}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V
    goto/16 :label_143b
    :label_0ff0
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateJoinChatWebViewDecision;
    if-eqz v2, :label_100f
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateJoinChatWebViewDecision;
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/messenger/BotGuardHelper;->getInstance(I)Lorg/telegram/messenger/BotGuardHelper;
    move-result-object v34
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateJoinChatWebViewDecision;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v35
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateJoinChatWebViewDecision;->query_id:J
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateJoinChatWebViewDecision;->result:Lorg/telegram/tgnet/TLRPC$JoinChatBotResult;
    move-object/from16 v39, v0
    move-wide/from16 v37, v2
    invoke-virtual/range {v34 .. v39}, Lorg/telegram/messenger/BotGuardHelper;->closeGuardBotWebApp(JJLorg/telegram/tgnet/TLRPC$JoinChatBotResult;)V
    goto/16 :label_07be
    :label_100f
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;
    if-eqz v2, :label_1033
    check-cast v0, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateBotMenuButton:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;->bot_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;->button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;
    const/4 v6, 0x2
    new-array v5, v6, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v5, v24
    const/16 v22, 0x1
    aput-object v0, v5, v22
    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_1033
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;
    if-eqz v2, :label_10b2
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->threadMessagesRead:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->channel_id:J
    neg-long v4, v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->top_msg_id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    iget v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->read_max_id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v8, 0x4
    new-array v14, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v14, v24
    const/16 v22, 0x1
    aput-object v5, v14, v22
    const/16 v21, 0x2
    aput-object v6, v14, v21
    const/16 v17, 0x3
    aput-object v16, v14, v17
    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->flags:I
    and-int/lit8 v2, v2, 0x1
    if-eqz v2, :label_07be
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v34
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->broadcast_id:J
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->broadcast_post:I
    int-to-long v4, v4
    iget v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->read_max_id:I
    const/16 v40, 0x0
    const/16 v41, 0x1
    move-wide/from16 v35, v2
    move-wide/from16 v37, v4
    move/from16 v39, v6
    invoke-virtual/range {v34 .. v41}, Lorg/telegram/messenger/MessagesStorage;->updateRepliesMaxReadId(JJIIZ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->commentsRead:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->broadcast_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->broadcast_post:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionInbox;->read_max_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v6, v24
    const/16 v22, 0x1
    aput-object v5, v6, v22
    const/16 v21, 0x2
    aput-object v0, v6, v21
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_10b2
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;
    if-eqz v2, :label_10e9
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->threadMessagesRead:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->channel_id:J
    neg-long v4, v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->top_msg_id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadChannelDiscussionOutbox;->read_max_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const/4 v8, 0x4
    new-array v6, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v6, v24
    const/16 v22, 0x1
    aput-object v5, v6, v22
    const/16 v21, 0x2
    aput-object v16, v6, v21
    const/16 v17, 0x3
    aput-object v0, v6, v17
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_10e9
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;
    if-eqz v2, :label_113d
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->monoForumMessagesRead:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->channel_id:J
    neg-long v4, v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    iget v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->read_max_id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    const/4 v8, 0x4
    new-array v14, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v14, v24
    const/16 v22, 0x1
    aput-object v5, v14, v22
    const/16 v21, 0x2
    aput-object v6, v14, v21
    const/16 v17, 0x3
    aput-object v16, v14, v17
    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v34
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->channel_id:J
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v37
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumInbox;->read_max_id:I
    const/16 v40, 0x0
    const/16 v41, 0x1
    move/from16 v39, v0
    move-wide/from16 v35, v2
    invoke-virtual/range {v34 .. v41}, Lorg/telegram/messenger/MessagesStorage;->updateRepliesMaxReadId(JJIIZ)V
    goto/16 :label_07be
    :label_113d
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;
    if-eqz v2, :label_1178
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->monoForumMessagesRead:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->channel_id:J
    neg-long v4, v4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateReadMonoForumOutbox;->read_max_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const/4 v8, 0x4
    new-array v6, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v4, v6, v24
    const/16 v22, 0x1
    aput-object v5, v6, v22
    const/16 v21, 0x2
    aput-object v16, v6, v21
    const/16 v17, 0x3
    aput-object v0, v6, v17
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_1178
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;
    if-eqz v2, :label_124c
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    const-wide/16 v28, 0x0
    cmp-long v4, v2, v28
    if-lez v4, :label_11a6
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v4
    if-eqz v4, :label_11a3
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;->ttl_period:I
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I
    if-nez v5, :label_119d
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I
    and-int/lit16 v5, v5, -0x4001
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I
    goto :label_11a3
    :label_119d
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I
    or-int/lit16 v5, v5, 0x4000
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I
    :label_11a3
    move-object v5, v4
    const/4 v4, 0x0
    goto :label_11d8
    :label_11a6
    neg-long v4, v2
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v4
    if-eqz v4, :label_11d7
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;->ttl_period:I
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channelFull;
    if-eqz v6, :label_11c8
    if-nez v5, :label_11c0
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    const v6, -0x1000001
    and-int/2addr v5, v6
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    goto :label_11d7
    :label_11c0
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    const/high16 v6, 0x1000000
    or-int/2addr v5, v6
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    goto :label_11d7
    :label_11c8
    if-nez v5, :label_11d1
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    and-int/lit16 v5, v5, -0x4001
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    goto :label_11d7
    :label_11d1
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    or-int/lit16 v5, v5, 0x4000
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I
    :label_11d7
    const/4 v5, 0x0
    :label_11d8
    if-eqz v4, :label_11ff
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I
    const/4 v8, 0x4
    new-array v14, v8, [Ljava/lang/Object;
    const/4 v8, 0x0
    aput-object v4, v14, v8
    const/16 v22, 0x1
    aput-object v16, v14, v22
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/4 v8, 0x2
    aput-object v15, v14, v8
    const/16 v17, 0x3
    aput-object v15, v14, v17
    invoke-virtual {v5, v6, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    const/4 v6, 0x0
    invoke-virtual {v5, v4, v6}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    goto :label_1223
    :label_11ff
    const/4 v6, 0x0
    const/4 v8, 0x2
    if-eqz v5, :label_1223
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v4
    sget v14, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v15
    move/from16 v24, v6
    new-array v6, v8, [Ljava/lang/Object;
    aput-object v15, v6, v24
    const/16 v22, 0x1
    aput-object v5, v6, v22
    invoke-virtual {v4, v14, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v4
    move/from16 v8, v24
    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V
    :label_1223
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;->ttl_period:I
    invoke-virtual {v4, v2, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogTtl(JI)V
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Lz/f;
    invoke-virtual {v4, v2, v3}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;
    if-eqz v2, :label_07be
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePeerHistoryTTL;->ttl_period:I
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I
    const/4 v4, 0x1
    new-array v3, v4, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v16, v3, v24
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_124c
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePendingJoinRequests;
    if-eqz v2, :label_125b
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePendingJoinRequests;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;
    move-result-object v2
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MemberRequestsController;->onPendingRequestsUpdated(Lorg/telegram/tgnet/tl/TL_update$TL_updatePendingJoinRequests;)V
    goto/16 :label_07be
    :label_125b
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSavedRingtones;
    if-eqz v2, :label_126b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lqe/c;
    const/4 v4, 0x1
    invoke-virtual {v0, v4}, Lqe/c;->g(Z)V
    goto/16 :label_095d
    :label_126b
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribeAudio;
    if-eqz v2, :label_1276
    const-string v0, "Received legacy TL_updateTranscribeAudio update"
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    goto/16 :label_07be
    :label_1276
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;
    if-eqz v2, :label_130c
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v2, :label_12a0
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Transcription update received, pending="
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->pending:Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v3, " id="
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->transcription_id:J
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v3, " text="
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->text:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/google/android/recaptcha/internal/a;->q(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :label_12a0
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->pending:Z
    if-eqz v2, :label_12ac
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :label_07be
    :label_12ac
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->pending:Z
    if-nez v2, :label_12bb
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->transcription_id:J
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->text:Ljava/lang/String;
    const/4 v5, 0x0
    invoke-static {v5, v2, v3, v4}, Lorg/telegram/ui/Components/z41;->g(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)Z
    move-result v2
    if-nez v2, :label_07be
    :label_12bb
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v34
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v35
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->msg_id:I
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->text:Ljava/lang/String;
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->transcription_id:J
    iget-boolean v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->pending:Z
    const/16 v22, 0x1
    xor-int/lit8 v41, v6, 0x1
    move/from16 v37, v2
    move-object/from16 v38, v3
    move-wide/from16 v39, v4
    invoke-virtual/range {v34 .. v41}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscription(JILjava/lang/String;JZ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->transcription_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->text:Ljava/lang/String;
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateTranscribedAudio;->pending:Z
    xor-int/lit8 v0, v0, 0x1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    const/4 v6, 0x5
    new-array v6, v6, [Ljava/lang/Object;
    const/16 v19, 0x0
    const/16 v24, 0x0
    aput-object v19, v6, v24
    aput-object v4, v6, v22
    const/16 v21, 0x2
    aput-object v5, v6, v21
    const/16 v17, 0x3
    aput-object v19, v6, v17
    const/16 v20, 0x4
    aput-object v0, v6, v20
    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto/16 :label_07be
    :label_130c
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;
    if-eqz v2, :label_1325
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lxg/o5;
    move-result-object v4
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;->story_id:I
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSentStoryReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;
    invoke-virtual {v4, v2, v3, v5, v0}, Lxg/o5;->q0(JILorg/telegram/tgnet/TLRPC$Reaction;)V
    goto/16 :label_07be
    :label_1325
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;
    if-eqz v2, :label_138b
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->channel_id:J
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v2
    if-eqz v2, :label_1353
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z
    iget-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->enabled:Z
    if-eq v3, v4, :label_135e
    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z
    if-eqz v4, :label_1344
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I
    or-int/lit8 v3, v3, 0x40
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I
    goto :label_134a
    :label_1344
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I
    and-int/lit8 v3, v3, -0x41
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I
    :label_134a
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v3
    const/4 v4, 0x0
    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    goto :label_135e
    :label_1353
    const/4 v4, 0x0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->channel_id:J
    const/4 v8, 0x1
    invoke-virtual {v2, v5, v6, v4, v8}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V
    :label_135e
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->channel_id:J
    neg-long v2, v2
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;
    move-result-object v2
    if-eqz v2, :label_137d
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->view_forum_as_messages:Z
    iget-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->enabled:Z
    if-eq v3, v4, :label_07be
    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->view_forum_as_messages:Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->channel_id:J
    neg-long v3, v3
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->enabled:Z
    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/messenger/MessagesStorage;->setDialogViewThreadAsMessages(JZ)V
    goto/16 :label_07be
    :label_137d
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v2
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->channel_id:J
    neg-long v3, v3
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChannelViewForumAsMessages;->enabled:Z
    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/messenger/MessagesStorage;->setDialogViewThreadAsMessages(JZ)V
    goto/16 :label_07be
    :label_138b
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePinnedSavedDialogs;
    if-nez v2, :label_1393
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateSavedDialogPinned;
    if-eqz v2, :label_1396
    :label_1393
    const/4 v8, 0x1
    goto/16 :label_1434
    :label_1396
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-static {v2}, Lcf/s2;->f(I)Lcf/s2;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x0
    invoke-virtual {v2, v0, v3, v4}, Lcf/s2;->j(Lorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;I)Z
    move-result v2
    if-eqz v2, :label_13a6
    goto/16 :label_07be
    :label_13a6
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePaidReactionPrivacy;
    if-eqz v2, :label_13da
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePaidReactionPrivacy;
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v3
    iput-wide v3, v1, Lorg/telegram/messenger/MessagesController;->paidReactionsPrivacyTime:J
    const-string/jumbo v5, "paidReactionsAnonymousTime"
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updatePaidReactionPrivacy;->privacy:Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;
    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;->getDialogId()J
    move-result-wide v3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/messenger/MessagesController;->paidReactionsPrivacy:Ljava/lang/Long;
    const-string/jumbo v0, "paidReactionsDialogId"
    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/messenger/MessagesController;->loadingArePaidReactionsAnonymous:Z
    goto/16 :label_07be
    :label_13da
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallChainBlocks;
    if-eqz v2, :label_13f4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    if-eqz v2, :label_13f1
    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;
    if-eqz v2, :label_13f1
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallChainBlocks;
    const/4 v3, 0x0
    const/4 v4, 0x1
    invoke-virtual {v2, v3, v0, v4, v3}, Lorg/telegram/messenger/voip/ConferenceCall;->applyUpdate(Ljava/lang/Integer;Lorg/telegram/tgnet/tl/TL_update$TL_updateGroupCallChainBlocks;ZLjava/lang/Long;)Z
    goto/16 :label_095d
    :label_13f1
    const/4 v4, 0x1
    goto/16 :label_095d
    :label_13f4
    const/4 v4, 0x1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantRank;
    if-eqz v2, :label_1409
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantRank;
    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantRank;->chat_id:J
    move/from16 v22, v4
    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantRank;->user_id:J
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateChatParticipantRank;->rank:Ljava/lang/String;
    move/from16 v8, v22
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->updateRank(JJLjava/lang/String;)V
    goto :label_143b
    :label_1409
    move v8, v4
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateAiComposeTones;
    if-eqz v2, :label_1416
    iget-object v0, v1, Lorg/telegram/messenger/MessagesController;->tonesController:Lorg/telegram/messenger/AiTonesController;
    if-eqz v0, :label_143b
    invoke-virtual {v0}, Lorg/telegram/messenger/AiTonesController;->invalidate()V
    goto :label_143b
    :label_1416
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserSettings;
    if-eqz v2, :label_1420
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserSettings;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesController;->applyWebBrowserUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserSettings;)V
    goto :label_143b
    :label_1420
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserException;
    if-eqz v2, :label_142a
    check-cast v0, Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserException;
    invoke-direct {v1, v0}, Lorg/telegram/messenger/MessagesController;->applyWebBrowserUpdate(Lorg/telegram/tgnet/tl/TL_update$TL_updateWebBrowserException;)V
    goto :label_143b
    :label_142a
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;
    if-eqz v2, :label_143b
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I
    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/ApplicationLoader;->processUpdate(ILorg/telegram/tgnet/TLRPC$Update;)V
    goto :label_143b
    :label_1434
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;
    move-result-object v2
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/SavedMessagesController;->processUpdate(Lorg/telegram/tgnet/TLRPC$Update;)V
    :label_143b
    add-int/lit8 v2, v32, 0x1
    move-object/from16 v8, v47
    move-object v5, v7
    move/from16 v7, v33
    move-object/from16 v6, v44
    goto/16 :label_002b
    :label_1446
    move-object v7, v5
    move-object/from16 v44, v6
    const/4 v8, 0x1
    const/16 v18, 0x9
    if-eqz v25, :label_145e
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I
    const/4 v4, 0x0
    new-array v3, v4, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    goto :label_145f
    :label_145e
    const/4 v4, 0x0
    :label_145f
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    move-object/from16 v2, v44
    invoke-virtual {v0, v2, v8, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v0
    invoke-virtual {v0, v7, v4, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V
    move/from16 v2, v26
    goto :label_147a
    :label_1472
    const/4 v8, 0x1
    const/16 v18, 0x9
    move/from16 v23, v46
    const/4 v2, 0x0
    const/16 v27, 0x0
    :label_147a
    if-eqz v10, :label_14d5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v3, 0x0
    :label_1481
    if-ge v3, v0, :label_14d5
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    add-int/lit8 v3, v3, 0x1
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v14
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v7
    if-eqz v7, :label_1481
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;
    if-eqz v9, :label_1481
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;->new_value:Z
    if-nez v4, :label_14af
    const/4 v4, 0x0
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_peer_enabled:Z
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_my_enabled:Z
    goto :label_14b8
    :label_14af
    cmp-long v4, v14, v5
    if-nez v4, :label_14b6
    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_peer_enabled:Z
    goto :label_14b8
    :label_14b6
    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_my_enabled:Z
    :label_14b8
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v4
    sget v9, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/4 v6, 0x2
    new-array v14, v6, [Ljava/lang/Object;
    const/4 v6, 0x0
    aput-object v5, v14, v6
    aput-object v7, v14, v8
    invoke-virtual {v4, v9, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v4
    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V
    goto :label_1481
    :label_14d5
    if-eqz v11, :label_14f2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v3, 0x0
    :label_14dc
    if-ge v3, v0, :label_14f2
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    move-result-wide v4
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v6
    invoke-virtual {v6, v4, v5}, Lorg/telegram/messenger/MediaDataController;->increaseGuestRating(J)V
    add-int/lit8 v3, v3, 0x1
    goto :label_14dc
    :label_14f2
    if-eqz v12, :label_151e
    invoke-virtual {v12}, Lz/f;->m()I
    move-result v0
    const/4 v3, 0x0
    :label_14f9
    if-ge v3, v0, :label_151e
    invoke-virtual {v12, v3}, Lz/f;->j(I)J
    move-result-wide v4
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController;->groupCallsByChatId:Lz/f;
    invoke-virtual {v6, v4, v5}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/messenger/ChatObject$Call;
    if-eqz v4, :label_1519
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v5
    invoke-virtual {v12, v3}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    move/from16 v7, v52
    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/ChatObject$Call;->processTypingsUpdate(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;I)V
    goto :label_151b
    :label_1519
    move/from16 v7, v52
    :label_151b
    add-int/lit8 v3, v3, 0x1
    goto :label_14f9
    :label_151e
    if-eqz v13, :label_1540
    invoke-virtual {v13}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I
    move-result v0
    const/4 v3, 0x0
    :label_1525
    if-ge v3, v0, :label_1540
    invoke-virtual {v13, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J
    move-result-wide v4
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v6
    invoke-virtual {v6, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;
    move-result-object v4
    if-nez v4, :label_1536
    goto :label_153d
    :label_1536
    invoke-virtual {v13, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I
    move-result v5
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->setImportProgress(I)V
    :label_153d
    add-int/lit8 v3, v3, 0x1
    goto :label_1525
    :label_1540
    if-eqz v54, :label_1615
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I
    new-array v4, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v54, v4, v24
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    const/4 v0, 0x0
    :label_1552
    const/4 v14, 0x3
    if-ge v0, v14, :label_1615
    if-ne v0, v8, :label_155c
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->reloadingScheduledWebpagesPending:Lz/f;
    move/from16 v36, v8
    goto :label_1568
    :label_155c
    const/4 v4, 0x2
    if-ne v0, v4, :label_1564
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->reloadingSavedWebpagesPending:Lz/f;
    const/16 v36, 0x3
    goto :label_1568
    :label_1564
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Lz/f;
    const/16 v36, 0x0
    :label_1568
    invoke-virtual/range {v54 .. v54}, Lz/f;->m()I
    move-result v4
    const/4 v5, 0x0
    :label_156d
    if-ge v5, v4, :label_160f
    move-object/from16 v14, v54
    invoke-virtual {v14, v5}, Lz/f;->j(I)J
    move-result-wide v6
    invoke-virtual {v3, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/util/ArrayList;
    invoke-virtual {v3, v6, v7}, Lz/f;->l(J)V
    if-eqz v9, :label_160b
    invoke-virtual {v14, v5}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$WebPage;
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_webPage;
    if-nez v10, :label_159c
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;
    if-eqz v10, :label_1594
    goto :label_159c
    :label_1594
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J
    invoke-virtual {v3, v9, v10, v11}, Lz/f;->k(Ljava/lang/Object;J)V
    const-wide/16 v12, 0x0
    goto :label_15d6
    :label_159c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v10
    const/4 v11, 0x0
    const-wide/16 v12, 0x0
    :label_15a3
    if-ge v11, v10, :label_15d6
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/messenger/MessageObject;
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iput-object v6, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    if-nez v11, :label_15c8
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v12
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/messenger/MessageObject;
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    :label_15c8
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/messenger/MessageObject;
    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v11, v11, 0x1
    goto :label_15a3
    :label_15d6
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-nez v6, :label_160b
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v30
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;
    move-result-object v6
    invoke-virtual {v6}, Lorg/telegram/messenger/DownloadController;->getAutodownloadMask()I
    move-result v35
    const-wide/16 v37, 0x0
    const/16 v32, 0x1
    const/16 v33, 0x1
    const/16 v34, 0x0
    move-object/from16 v31, v7
    invoke-virtual/range {v30 .. v38}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v6
    sget v7, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v10
    const/4 v11, 0x2
    new-array v12, v11, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v10, v12, v24
    aput-object v9, v12, v8
    invoke-virtual {v6, v7, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_160b
    add-int/lit8 v5, v5, 0x1
    goto/16 :label_156d
    :label_160f
    move-object/from16 v14, v54
    add-int/lit8 v0, v0, 0x1
    goto/16 :label_1552
    :label_1615
    if-eqz v2, :label_162b
    const/4 v0, 0x0
    :label_1618
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;
    array-length v4, v3
    if-ge v0, v4, :label_162b
    aget-object v3, v3, v0
    if-eqz v3, :label_1628
    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I
    and-int/2addr v3, v2
    if-eqz v3, :label_1628
    move v7, v8
    goto :label_162d
    :label_1628
    add-int/lit8 v0, v0, 0x1
    goto :label_1618
    :label_162b
    move/from16 v7, v27
    :label_162d
    if-eqz v55, :label_1665
    invoke-virtual/range {v55 .. v55}, Lz/f;->m()I
    move-result v0
    const/4 v2, 0x0
    const/4 v3, 0x0
    :label_1635
    if-ge v2, v0, :label_164e
    move-object/from16 v15, v55
    invoke-virtual {v15, v2}, Lz/f;->j(I)J
    move-result-wide v4
    invoke-virtual {v15, v2}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    const/4 v9, 0x0
    invoke-virtual {v1, v4, v5, v6, v9}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z
    move-result v4
    if-eqz v4, :label_164b
    move v3, v8
    :label_164b
    add-int/lit8 v2, v2, 0x1
    goto :label_1635
    :label_164e
    move-object/from16 v2, v56
    invoke-direct {v1, v2}, Lorg/telegram/messenger/MessagesController;->applyFoldersUpdates(Ljava/util/ArrayList;)Z
    move-result v0
    if-nez v0, :label_165a
    if-nez v3, :label_165c
    if-eqz v7, :label_165c
    :label_165a
    const/4 v3, 0x0
    goto :label_165e
    :label_165c
    const/4 v3, 0x0
    goto :label_1661
    :label_165e
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Lz/f;)V
    :label_1661
    move-object/from16 v3, v57
    move v2, v8
    goto :label_1679
    :label_1665
    move-object/from16 v2, v56
    const/4 v3, 0x0
    invoke-direct {v1, v2}, Lorg/telegram/messenger/MessagesController;->applyFoldersUpdates(Ljava/util/ArrayList;)Z
    move-result v0
    if-nez v7, :label_1675
    if-eqz v0, :label_1671
    goto :label_1675
    :label_1671
    move-object/from16 v3, v57
    const/4 v2, 0x0
    goto :label_1679
    :label_1675
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Lz/f;)V
    goto :label_1661
    :label_1679
    if-eqz v3, :label_1692
    invoke-virtual {v3}, Lz/f;->m()I
    move-result v0
    const/4 v4, 0x0
    :label_1680
    if-ge v4, v0, :label_1692
    invoke-virtual {v3, v4}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v3, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    invoke-virtual {v1, v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z
    add-int/lit8 v4, v4, 0x1
    goto :label_1680
    :label_1692
    move-object/from16 v3, v58
    if-eqz v3, :label_17d5
    invoke-virtual {v3}, Lz/f;->m()I
    move-result v0
    move v4, v2
    const/4 v2, 0x0
    :label_169c
    if-ge v2, v0, :label_17d4
    invoke-virtual {v3, v2}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v3, v2}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v9
    const/4 v10, 0x0
    const/4 v11, 0x0
    :label_16ae
    if-ge v10, v9, :label_16ec
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Lorg/telegram/messenger/MessageObject;
    const-wide/16 v28, 0x0
    cmp-long v13, v5, v28
    if-lez v13, :label_16e9
    if-nez v11, :label_16c3
    new-instance v11, Landroid/util/SparseBooleanArray;
    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V
    :label_16c3
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v13
    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->hasUnreadReactions(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v14
    invoke-virtual {v11, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messageService;
    if-eqz v14, :label_16e9
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;
    if-eqz v13, :label_16e9
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v13
    if-eqz v13, :label_16e9
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v13
    invoke-virtual {v13, v12}, Lorg/telegram/messenger/voip/VoIPService;->processMessageUpdate(Lorg/telegram/messenger/MessageObject;)V
    :label_16e9
    add-int/lit8 v10, v10, 0x1
    goto :label_16ae
    :label_16ec
    const-wide/16 v28, 0x0
    cmp-long v9, v5, v28
    if-lez v9, :label_16ff
    const-wide/16 v9, 0x0
    move-object/from16 v46, v1
    move-wide/from16 v47, v5
    move-wide/from16 v49, v9
    move-object/from16 v51, v11
    invoke-virtual/range {v46 .. v51}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JJLandroid/util/SparseBooleanArray;)V
    :label_16ff
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    invoke-virtual {v9, v5, v6}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/util/ArrayList;
    if-eqz v9, :label_1790
    move v10, v4
    const/4 v4, 0x0
    :label_170b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    move-result v11
    if-ge v4, v11, :label_178f
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v12
    const/4 v13, 0x0
    :label_171c
    if-ge v13, v12, :label_1784
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v15
    move/from16 v22, v8
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v8
    if-ne v15, v8, :label_1751
    invoke-virtual {v9, v4, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    iget-object v8, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v8, :label_174b
    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    const-wide/16 v28, 0x0
    cmp-long v8, v10, v28
    if-nez v8, :label_174d
    iget-object v8, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Landroid/util/SparseArray;
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v10
    invoke-virtual {v8, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    goto :label_174d
    :label_174b
    const-wide/16 v28, 0x0
    :label_174d
    move/from16 v10, v22
    const/4 v8, 0x0
    goto :label_1789
    :label_1751
    const-wide/16 v28, 0x0
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v15
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v25
    cmp-long v8, v15, v25
    if-nez v8, :label_177e
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;
    if-eqz v8, :label_177e
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :label_177e
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v8
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v15
    if-ne v8, v15, :label_177e
    iput-object v14, v11, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/4 v8, 0x0
    invoke-virtual {v11, v8, v8}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    move/from16 v10, v22
    goto :label_1789
    :label_177e
    const/4 v8, 0x0
    add-int/lit8 v13, v13, 0x1
    move/from16 v8, v22
    goto :label_171c
    :label_1784
    move/from16 v22, v8
    const/4 v8, 0x0
    const-wide/16 v28, 0x0
    :label_1789
    add-int/lit8 v4, v4, 0x1
    move/from16 v8, v22
    goto/16 :label_170b
    :label_178f
    move v4, v10
    :label_1790
    move/from16 v22, v8
    const/4 v8, 0x0
    const-wide/16 v28, 0x0
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v9
    const/4 v10, 0x0
    const/4 v11, 0x0
    const/4 v12, 0x0
    const-wide/16 v13, 0x0
    const/4 v15, 0x0
    move-wide/from16 v48, v5
    move-object/from16 v47, v7
    move-object/from16 v46, v9
    move/from16 v54, v10
    move-object/from16 v55, v11
    move/from16 v50, v12
    move-wide/from16 v51, v13
    move-object/from16 v53, v15
    invoke-virtual/range {v46 .. v55}, Lorg/telegram/messenger/MediaDataController;->loadReplyMessagesForMessages(Ljava/util/ArrayList;JIJLjava/lang/Runnable;ILorg/telegram/messenger/Timer;)V
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v9
    sget v10, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v5, v6, v24
    aput-object v7, v6, v22
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/16 v21, 0x2
    aput-object v5, v6, v21
    invoke-virtual {v9, v10, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    add-int/lit8 v2, v2, 0x1
    move/from16 v8, v22
    goto/16 :label_169c
    :label_17d4
    move v2, v4
    :label_17d5
    move/from16 v22, v8
    move-object/from16 v3, v59
    if-eqz v3, :label_1857
    iget-object v0, v3, Lte/s;->a:Lte/q;
    iget-object v0, v0, Lte/q;->c:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    const/4 v4, 0x0
    :label_17e4
    if-ge v4, v0, :label_181d
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I
    iget-object v7, v3, Lte/s;->a:Lte/q;
    iget-object v7, v7, Lte/q;->c:Lz/f;
    invoke-virtual {v7, v4}, Lz/f;->j(I)J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    iget-object v8, v3, Lte/s;->a:Lte/q;
    iget-object v8, v8, Lte/q;->c:Lz/f;
    invoke-virtual {v8, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    const/4 v10, 0x4
    new-array v11, v10, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v7, v11, v24
    aput-object v8, v11, v22
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/16 v21, 0x2
    aput-object v7, v11, v21
    const/16 v17, 0x3
    aput-object v9, v11, v17
    invoke-virtual {v5, v6, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_17e4
    :label_181d
    iget-object v0, v3, Lte/s;->b:Lte/q;
    iget-object v0, v0, Lte/q;->c:Lz/f;
    invoke-virtual {v0}, Lz/f;->m()I
    move-result v0
    const/4 v4, 0x0
    :label_1826
    if-ge v4, v0, :label_1857
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I
    iget-object v7, v3, Lte/s;->b:Lte/q;
    iget-object v7, v7, Lte/q;->c:Lz/f;
    invoke-virtual {v7, v4}, Lz/f;->j(I)J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    iget-object v8, v3, Lte/s;->b:Lte/q;
    iget-object v8, v8, Lte/q;->c:Lz/f;
    invoke-virtual {v8, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v8
    const/4 v14, 0x3
    new-array v9, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v7, v9, v24
    aput-object v8, v9, v22
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/16 v21, 0x2
    aput-object v7, v9, v21
    invoke-virtual {v5, v6, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_1826
    :label_1857
    move-object/from16 v3, v60
    if-eqz v3, :label_18b7
    invoke-virtual {v3}, Lz/f;->m()I
    move-result v0
    const/4 v4, 0x0
    :label_1860
    if-ge v4, v0, :label_18b7
    invoke-virtual {v3, v4}, Lz/f;->j(I)J
    move-result-wide v5
    invoke-virtual {v3, v4}, Lz/f;->n(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/ArrayList;
    if-nez v7, :label_186f
    goto :label_18b4
    :label_186f
    new-instance v8, Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v9
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    move-result v9
    const/4 v10, 0x0
    :label_187d
    if-ge v10, v9, :label_1897
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    add-int/lit8 v10, v10, 0x1
    check-cast v11, Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    move-result v11
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->ephemeralMessageIdPack(I)I
    move-result v11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_187d
    :label_1897
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v7
    sget v9, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    neg-long v5, v5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    const/4 v14, 0x3
    new-array v6, v14, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v8, v6, v24
    aput-object v5, v6, v22
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/16 v21, 0x2
    aput-object v5, v6, v21
    invoke-virtual {v7, v9, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_18b4
    add-int/lit8 v4, v4, 0x1
    goto :label_1860
    :label_18b7
    if-eqz v2, :label_18c5
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I
    const/4 v4, 0x0
    new-array v3, v4, [Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_18c5
    if-eqz v61, :label_18cb
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I
    or-int v23, v23, v0
    :label_18cb
    if-eqz v62, :label_18d5
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I
    or-int v0, v23, v0
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PHONE:I
    or-int v23, v0, v2
    :label_18d5
    move-object/from16 v2, v63
    if-eqz v2, :label_18f0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v3, 0x0
    :label_18de
    if-ge v3, v0, :label_18f0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    move-result-object v5
    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    add-int/lit8 v3, v3, 0x1
    goto :label_18de
    :label_18f0
    if-nez v64, :label_18f6
    if-nez v65, :label_18f6
    if-eqz v66, :label_1912
    :label_18f6
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateMessagesViews:I
    const/4 v8, 0x4
    new-array v3, v8, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v64, v3, v24
    aput-object v65, v3, v22
    const/16 v21, 0x2
    aput-object v66, v3, v21
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    const/16 v17, 0x3
    aput-object v4, v3, v17
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_1912
    if-eqz v23, :label_1929
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    move/from16 v4, v22
    new-array v4, v4, [Ljava/lang/Object;
    const/16 v24, 0x0
    aput-object v3, v4, v24
    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :label_1929
    move-object/from16 v2, v67
    if-eqz v2, :label_1934
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;
    move-result-object v0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageLoader;->putThumbsToCache(Ljava/util/ArrayList;)V
    :label_1934
    return-void
    .catchall {:label_0c6f .. :label_0c8e} :label_0c88
    .catchall {:label_0d1b .. :label_0d4b} :label_0d2d
.end method
