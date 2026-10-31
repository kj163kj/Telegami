# file_id=0 method_idx=45400 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper;->canSendMessageToChat(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)I"
.method public static canSendMessageToChat(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)I
    .registers 15

    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v1
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v2
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v5
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v6
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v7
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isSticker()Z
    move-result v8
    const/4 v9, 0x1
    const/4 v10, 0x0
    if-nez v8, :label_0040
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z
    move-result v8
    if-nez v8, :label_0040
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v8
    if-nez v8, :label_0040
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isGame()Z
    move-result v8
    if-eqz v8, :label_003e
    goto :label_0040
    :label_003e
    move v8, v10
    goto :label_0041
    :label_0040
    move v8, v9
    :label_0041
    if-nez v0, :label_0050
    if-eqz v8, :label_0050
    const/16 v14, 0x8
    invoke-static {v13, v14}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_004f
    const/4 v13, 0x4
    return v13
    :label_004f
    return v9
    :label_0050
    const/16 v0, 0x10
    const/16 v9, 0xa
    if-nez v1, :label_0070
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;
    if-eqz v1, :label_0070
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v1
    if-nez v1, :label_0070
    if-nez v8, :label_0070
    invoke-static {v13, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_006d
    return v9
    :label_006d
    const/16 v13, 0xc
    return v13
    :label_0070
    const/16 v1, 0x14
    const/16 v11, 0x13
    const/16 v12, 0x12
    if-nez v7, :label_0086
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isMusic()Z
    move-result v7
    if-eqz v7, :label_0086
    invoke-static {v13, v12}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_0085
    return v11
    :label_0085
    return v1
    :label_0086
    const/16 v7, 0x11
    if-nez v2, :label_009e
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v2
    if-eqz v2, :label_009e
    if-nez v8, :label_009e
    invoke-static {v13, v7}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_009b
    const/16 v13, 0x9
    return v13
    :label_009b
    const/16 v13, 0xb
    return v13
    :label_009e
    if-nez v4, :label_00b2
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v2, :label_00b2
    invoke-static {v13, v9}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_00b0
    const/4 v13, 0x6
    return v13
    :label_00b0
    const/4 v13, 0x3
    return v13
    :label_00b2
    const/16 v2, 0x15
    if-nez v4, :label_00c8
    iget-object v4, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    if-eqz v4, :label_00c8
    invoke-static {v13, v9}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_00c5
    return v2
    :label_00c5
    const/16 v13, 0x16
    return v13
    :label_00c8
    if-nez v6, :label_00de
    iget-object v4, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v4
    if-eqz v4, :label_00de
    invoke-static {v13, v1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_00db
    const/16 v13, 0xd
    return v13
    :label_00db
    const/16 v13, 0xe
    return v13
    :label_00de
    if-nez v5, :label_00f2
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    move-result v1
    if-eqz v1, :label_00f2
    invoke-static {v13, v2}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_00f1
    const/16 v13, 0xf
    return v13
    :label_00f1
    return v0
    :label_00f2
    if-nez v3, :label_0106
    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    if-eqz v14, :label_0106
    if-nez v8, :label_0106
    invoke-static {v13, v11}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v13
    if-eqz v13, :label_0105
    return v7
    :label_0105
    return v12
    :label_0106
    return v10
.end method
