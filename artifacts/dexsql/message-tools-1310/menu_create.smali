# file_id=2 method_idx=49413 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->L7(Landroid/view/View;ZZFFZZZ)Z"
.method public final L7(Landroid/view/View;ZZFFZZZ)Z
    .registers 104

    move-object/from16 v1, v95
    move-object/from16 v15, v96
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/l;->t()Z
    move-result v0
    const/4 v2, 0x0
    if-nez v0, :label_0013
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->F9()Z
    move-result v0
    if-eqz v0, :label_0016
    :label_0013
    move v9, v2
    goto/16 :label_21de
    :label_0016
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_001d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->j0()V
    :label_001d
    instance-of v0, v15, Lorg/telegram/ui/Cells/u1;
    const/4 v3, 0x0
    if-eqz v0, :label_0030
    move-object v0, v15
    check-cast v0, Lorg/telegram/ui/Cells/u1;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v4
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    move-object v8, v0
    move-object v12, v4
    goto :label_0040
    :label_0030
    instance-of v0, v15, Lorg/telegram/ui/Cells/x0;
    if-eqz v0, :label_003e
    move-object v0, v15
    check-cast v0, Lorg/telegram/ui/Cells/x0;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/x0;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v4
    move-object v8, v4
    :label_003c
    move-object v12, v8
    goto :label_0040
    :label_003e
    move-object v8, v3
    goto :label_003c
    :label_0040
    if-nez v12, :label_0043
    goto :label_0013
    :label_0043
    const/4 v0, 0x4
    const/4 v4, 0x2
    const/4 v5, 0x3
    const/4 v6, 0x1
    if-nez v97, :label_0066
    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    new-array v9, v0, [Ljava/lang/Class;
    const-class v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCommunity;
    aput-object v10, v9, v2
    const-class v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;
    aput-object v10, v9, v6
    const-class v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;
    aput-object v10, v9, v4
    const-class v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;
    aput-object v10, v9, v5
    invoke-static {v7, v9}, Lue/d;->g(Ljava/lang/Object;[Ljava/lang/Class;)Z
    move-result v7
    if-eqz v7, :label_0066
    goto :label_0013
    :label_0066
    iget-object v7, v1, Lorg/telegram/ui/ko;->z1:Lzg/e3;
    if-eqz v7, :label_006d
    invoke-virtual {v7, v2}, Lzg/e3;->e(Z)V
    :label_006d
    new-instance v7, Ljava/lang/StringBuilder;
    const-string v9, "open menu msg_id="
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v9
    if-eqz v9, :label_0096
    new-instance v9, Ljava/lang/StringBuilder;
    const-string v10, " doc_id="
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v10
    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    goto :label_0098
    :label_0096
    const-string v9, ""
    :label_0098
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    invoke-virtual {v1, v12}, Lorg/telegram/ui/ko;->J8(Lorg/telegram/messenger/MessageObject;)I
    move-result v7
    if-eqz v97, :label_02a9
    iget-object v9, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayResults;
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPollAppendAnswer;
    if-eqz v11, :label_00d5
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v0
    if-eqz v0, :label_00c1
    new-instance v0, Lorg/telegram/ui/ef;
    invoke-direct {v0, v1, v12, v4}, Lorg/telegram/ui/ef;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    return v6
    :label_00c1
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/R$string;->MessageNotFound:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/xc;->t(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    return v6
    :label_00d5
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPollDeleteAnswer;
    if-eqz v11, :label_00fc
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v0
    if-eqz v0, :label_00e8
    new-instance v0, Lorg/telegram/ui/ef;
    invoke-direct {v0, v1, v12, v5}, Lorg/telegram/ui/ef;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    return v6
    :label_00e8
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/R$string;->MessageNotFound:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/xc;->t(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    return v6
    :label_00fc
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;
    if-nez v11, :label_0286
    if-eqz v10, :label_0104
    goto/16 :label_0286
    :label_0104
    if-nez v102, :label_0130
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;
    if-eqz v10, :label_0130
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v2
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v2
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v2
    new-instance v3, Lorg/telegram/ui/ye;
    invoke-direct {v3, v1, v6}, Lorg/telegram/ui/ye;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    return v6
    :label_0130
    if-nez v102, :label_014a
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;
    if-eqz v10, :label_014a
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v0
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/r2;->resourceProvider:Lorg/telegram/ui/ActionBar/j6;
    check-cast v0, Landroid/app/Activity;
    invoke-static {v0, v2, v3, v9, v4}, Lvg/d8;->j1(Landroid/app/Activity;IILorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;Lorg/telegram/ui/ActionBar/j6;)V
    return v6
    :label_014a
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;
    if-nez v10, :label_015f
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;
    if-nez v10, :label_015f
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;
    if-eqz v10, :label_0157
    goto :label_015f
    :label_0157
    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;
    if-eqz v9, :label_02a9
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->Bb()V
    return v6
    :label_015f
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v9
    if-nez v9, :label_0167
    goto/16 :label_0013
    :label_0167
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v9
    if-eqz v9, :label_01f6
    iget-object v0, v9, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;
    if-eqz v0, :label_01cf
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J
    cmp-long v0, v3, v7
    if-nez v0, :label_01cf
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;
    if-eqz v0, :label_01a9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    check-cast v0, Lorg/telegram/ui/LaunchActivity;
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x0
    move-object/from16 v96, v0
    move-object/from16 v97, v2
    move/from16 v100, v3
    move-object/from16 v101, v4
    move-object/from16 v98, v5
    move-object/from16 v99, v7
    invoke-static/range {v96 .. v101}, Lorg/telegram/ui/q60;->d1(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
    return v6
    :label_01a9
    new-instance v0, Landroid/content/Intent;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    const-class v3, Lorg/telegram/ui/LaunchActivity;
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const-string v2, "voip_chat"
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I
    move-result v2
    const-string v3, "currentAccount"
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    return v6
    :label_01cf
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v0
    if-nez v0, :label_01d6
    move v2, v6
    :label_01d6
    iput-boolean v2, v1, Lorg/telegram/ui/ko;->X7:Z
    iget-object v0, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v4
    const/4 v5, 0x0
    const/4 v7, 0x0
    move-object/from16 v96, v0
    move-object/from16 v101, v1
    move/from16 v98, v2
    move-object/from16 v100, v3
    move-object/from16 v102, v4
    move-object/from16 v97, v5
    move-object/from16 v99, v7
    invoke-static/range {v96 .. v102}, Lorg/telegram/ui/Components/voip/c2;->l(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/messenger/AccountInstance;)V
    return v6
    :label_01f6
    iget-object v9, v1, Lorg/telegram/ui/ko;->W1:Lorg/telegram/ui/qk;
    if-eqz v9, :label_025f
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v9
    if-eqz v9, :label_025f
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v0
    if-eqz v0, :label_022c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    check-cast v0, Lorg/telegram/ui/LaunchActivity;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I
    move-result v2
    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x0
    move-object/from16 v96, v0
    move-object/from16 v97, v2
    move/from16 v100, v3
    move-object/from16 v101, v4
    move-object/from16 v98, v5
    move-object/from16 v99, v7
    invoke-static/range {v96 .. v101}, Lorg/telegram/ui/q60;->d1(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
    return v6
    :label_022c
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    move-result-object v0
    if-nez v0, :label_0234
    goto/16 :label_0013
    :label_0234
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-wide v3, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v3
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x0
    move-object/from16 v96, v0
    move-object/from16 v101, v1
    move-object/from16 v100, v2
    move-object/from16 v102, v3
    move-object/from16 v97, v4
    move-object/from16 v99, v5
    move/from16 v98, v7
    invoke-static/range {v96 .. v102}, Lorg/telegram/ui/Components/voip/c2;->l(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/messenger/AccountInstance;)V
    return v6
    :label_025f
    iget-object v9, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v9
    if-eqz v9, :label_02a9
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    move-result-object v3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    if-nez v4, :label_0276
    move v10, v6
    goto/16 :label_21dd
    :label_0276
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    neg-long v7, v7
    new-instance v5, Lorg/telegram/ui/Components/wz;
    invoke-direct {v5, v2, v1, v3, v0}, Lorg/telegram/ui/Components/wz;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    invoke-static {v4, v7, v8, v3, v5}, Lorg/telegram/ui/Components/k90;->v(Landroid/app/Activity;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    return v6
    :label_0286
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v2
    if-eqz v2, :label_0295
    new-instance v2, Lorg/telegram/ui/ef;
    invoke-direct {v2, v1, v12, v0}, Lorg/telegram/ui/ef;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    return v6
    :label_0295
    invoke-static {v1}, Lorg/telegram/ui/Components/xc;->a0(Lorg/telegram/ui/ActionBar/r2;)Lorg/telegram/ui/Components/xc;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/R$string;->MessageNotFound:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/xc;->t(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/Components/qc;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/qc;->j()Lorg/telegram/ui/Components/qc;
    return v6
    :label_02a9
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v9
    if-nez v9, :label_02c3
    iget-object v9, v1, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v9, :label_02c0
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :label_02c0
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->K9()Z
    move-result v9
    if-nez v9, :label_02c0
    goto :label_02c3
    :label_02c0
    move/from16 v9, v97
    goto :label_02c4
    :label_02c3
    move v9, v6
    :label_02c4
    iput-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->g5:Lorg/telegram/messenger/MessageObject;
    iput-object v3, v1, Lorg/telegram/ui/ko;->h5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iput-object v3, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    move v10, v6
    :label_02cf
    iget-object v11, v1, Lorg/telegram/ui/ko;->V5:[Landroid/util/SparseArray;
    if-ltz v10, :label_02e9
    iget-object v13, v1, Lorg/telegram/ui/ko;->W5:[Landroid/util/SparseArray;
    aget-object v13, v13, v10
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V
    iget-object v13, v1, Lorg/telegram/ui/ko;->X5:[Landroid/util/SparseArray;
    aget-object v13, v13, v10
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V
    aget-object v11, v11, v10
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V
    add-int/lit8 v10, v10, -0x1
    goto :label_02cf
    :label_02e9
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->h9()V
    if-eqz v101, :label_02f3
    invoke-virtual {v1, v12}, Lorg/telegram/ui/ko;->c9(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-result-object v10
    goto :label_02f4
    :label_02f3
    move-object v10, v3
    :label_02f4
    iget v13, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v13, v5, :label_0340
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->E9()Z
    move-result v13
    if-eqz v13, :label_02ff
    goto :label_0340
    :label_02ff
    iget v13, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v13, v6, :label_0340
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->K9()Z
    move-result v13
    if-eqz v13, :label_030e
    iget-boolean v13, v1, Lorg/telegram/ui/ko;->g4:Z
    if-nez v13, :label_030e
    goto :label_0340
    :label_030e
    iget-object v13, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :label_032c
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v13
    iget-wide v3, v1, Lorg/telegram/ui/ko;->K6:J
    cmp-long v3, v13, v3
    if-eqz v3, :label_0340
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canPinMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_0340
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z
    if-nez v3, :label_0340
    move v3, v6
    goto :label_0341
    :label_032c
    iget-object v3, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v3, :label_0340
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v3
    if-eqz v3, :label_0339
    goto :label_0340
    :label_0339
    iget-object v3, v1, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v3, :label_0340
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z
    goto :label_0341
    :label_0340
    move v3, v2
    :label_0341
    iget-wide v13, v1, Lorg/telegram/ui/ko;->S5:J
    invoke-static {v13, v14}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z
    move-result v4
    const-wide/32 v18, 0x77628
    if-nez v4, :label_0352
    iget-wide v13, v1, Lorg/telegram/ui/ko;->S5:J
    cmp-long v4, v13, v18
    if-nez v4, :label_0353
    :label_0352
    move v3, v2
    :label_0353
    const/16 v4, 0x18
    if-eqz v3, :label_0373
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v3
    if-lez v3, :label_0373
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-eqz v3, :label_0367
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;
    if-eqz v3, :label_0373
    :label_0367
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v3
    if-nez v3, :label_0373
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v3, v4, :label_0373
    move v3, v6
    goto :label_0374
    :label_0373
    move v3, v2
    :label_0374
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->D9()Z
    move-result v13
    if-nez v13, :label_038b
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-nez v13, :label_038b
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v13
    cmp-long v13, v13, v18
    if-nez v13, :label_0389
    goto :label_038b
    :label_0389
    move v13, v2
    goto :label_038c
    :label_038b
    move v13, v6
    :label_038c
    const/16 v14, 0x1d
    if-nez v13, :label_0398
    iget v13, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-ne v13, v14, :label_0395
    goto :label_0398
    :label_0395
    move/from16 v20, v2
    goto :label_039a
    :label_0398
    move/from16 v20, v6
    :label_039a
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v21
    iget-wide v14, v1, Lorg/telegram/ui/ko;->K6:J
    cmp-long v13, v21, v14
    if-eqz v13, :label_03db
    if-eqz v3, :label_03db
    iget-object v3, v1, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_03d8
    if-eqz v10, :label_03db
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-nez v3, :label_03db
    iget-object v3, v1, Lorg/telegram/ui/ko;->I4:Ljava/util/HashMap;
    iget-object v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :label_03db
    :label_03d8
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    :label_03db
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v12, v3}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_0409
    iget-object v3, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    iget-object v13, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->c3:Lorg/telegram/messenger/MessageObject;
    if-nez v13, :label_03f0
    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->d3:Lorg/telegram/messenger/VideoEditedInfo;
    if-eqz v3, :label_03ee
    goto :label_03f0
    :label_03ee
    move v3, v2
    goto :label_03f1
    :label_03f0
    move v3, v6
    :label_03f1
    if-nez v3, :label_0409
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v13
    iget-wide v4, v1, Lorg/telegram/ui/ko;->K6:J
    cmp-long v4, v13, v4
    if-eqz v4, :label_0409
    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v5, 0x17
    if-eq v4, v5, :label_0409
    const/16 v5, 0x11
    if-eq v4, v5, :label_0409
    move v4, v6
    goto :label_040a
    :label_0409
    move v4, v2
    :label_040a
    if-eqz v4, :label_0433
    if-eqz v10, :label_0433
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v4
    move v5, v2
    :label_0415
    if-ge v5, v4, :label_0433
    iget-object v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :label_0429
    iget-object v14, v13, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v14
    if-nez v14, :label_0430
    :label_0429
    iput-object v13, v1, Lorg/telegram/ui/ko;->b5:Lorg/telegram/messenger/MessageObject;
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :label_0430
    add-int/lit8 v5, v5, 0x1
    goto :label_0415
    :label_0433
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z
    move-result v4
    const-wide/16 v21, 0x0
    if-nez v4, :label_0495
    iget v4, v1, Lorg/telegram/ui/ko;->Q3:I
    if-eq v4, v6, :label_0495
    iget-object v4, v1, Lorg/telegram/ui/ko;->Z3:Ljava/util/ArrayList;
    if-eqz v4, :label_0449
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :label_0495
    :label_0449
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v4
    if-nez v4, :label_0495
    if-ne v7, v6, :label_045b
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v4
    iget-wide v13, v1, Lorg/telegram/ui/ko;->K6:J
    cmp-long v4, v4, v13
    if-eqz v4, :label_0495
    :label_045b
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;
    if-nez v4, :label_0495
    iget-object v4, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v4, :label_046d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    if-ltz v4, :label_0495
    :label_046d
    iget-object v4, v1, Lorg/telegram/ui/ko;->N0:Lorg/telegram/ui/al;
    if-eqz v4, :label_0495
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
    move-result v4
    if-nez v4, :label_0495
    iget-boolean v4, v1, Lorg/telegram/ui/ko;->H0:Z
    if-eqz v4, :label_0495
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :label_0495
    iget v5, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v13
    invoke-static {v5, v4, v13}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J
    move-result-wide v4
    cmp-long v4, v4, v21
    if-nez v4, :label_0495
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z
    :label_0495
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_04a4
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_04a4
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    :label_04a4
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_04ba
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_04ba
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_04ba
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    :label_04ba
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_04c1
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    :label_04c1
    const/16 v15, 0x1b
    const-wide/16 v4, 0xfa
    const/4 v13, 0x5
    if-nez v9, :label_0618
    const/4 v14, 0x2
    if-lt v7, v14, :label_0618
    const/16 v14, 0x14
    if-ne v7, v14, :label_04d1
    goto/16 :label_0618
    :label_04d1
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_04e5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->u0()Z
    move-result v0
    if-nez v0, :label_0013
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->t0()Z
    move-result v0
    if-eqz v0, :label_04e5
    goto/16 :label_0013
    :label_04e5
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v0, v15, :label_0013
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v0
    if-eqz v0, :label_04f1
    goto/16 :label_0013
    :label_04f1
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->G7()V
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/l;->i()Lorg/telegram/ui/ActionBar/z;
    move-result-object v0
    const/16 v7, 0xc
    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/ActionBar/z;->q(II)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->O0:Lfg/c;
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    iget-object v0, v1, Lorg/telegram/ui/ko;->Bc:Le6/f;
    invoke-virtual {v0, v13, v6, v6}, Le6/f;->h(IZZ)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
    const/high16 v0, 0x424c0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->G7()V
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :label_0579
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iget-object v7, v1, Lorg/telegram/ui/ko;->H1:Lorg/telegram/ui/ok;
    if-eqz v7, :label_0532
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I
    move-result v7
    if-nez v7, :label_0532
    iget-object v7, v1, Lorg/telegram/ui/ko;->H1:Lorg/telegram/ui/ok;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0532
    iget-object v7, v1, Lorg/telegram/ui/ko;->c1:Lorg/telegram/ui/Components/f01;
    if-eqz v7, :label_0541
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I
    move-result v7
    if-nez v7, :label_0541
    iget-object v7, v1, Lorg/telegram/ui/ko;->c1:Lorg/telegram/ui/Components/f01;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0541
    iget-object v7, v1, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    new-array v8, v2, [Landroid/view/View;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/view/View;
    const/4 v3, 0x3
    new-array v3, v3, [Z
    fill-array-data v3, :payload_21e0_0000
    invoke-virtual {v7, v0, v3}, Lorg/telegram/ui/ActionBar/l;->O([Landroid/view/View;[Z)V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;
    if-eqz v0, :label_0565
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    check-cast v0, Lorg/telegram/ui/LaunchActivity;
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->Y()V
    :label_0565
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_0592
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_0592
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V
    goto :label_0592
    :label_0579
    iget-object v0, v1, Lorg/telegram/ui/ko;->N0:Lorg/telegram/ui/al;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :label_058c
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    new-array v3, v6, [Z
    aput-boolean v6, v3, v2
    const/4 v7, 0x0
    invoke-virtual {v0, v7, v3}, Lorg/telegram/ui/ActionBar/l;->O([Landroid/view/View;[Z)V
    goto :label_0592
    :label_058c
    const/4 v7, 0x0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/r2;->actionBar:Lorg/telegram/ui/ActionBar/l;
    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/ActionBar/l;->O([Landroid/view/View;[Z)V
    :label_0592
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ko;->D7(Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->y0:Lorg/telegram/ui/hk;
    iput-boolean v6, v0, Ln4/x;->R:Z
    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ko;->Cc(IZ)V
    new-instance v0, Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    move v7, v2
    :label_05a7
    iget-object v8, v1, Lorg/telegram/ui/ko;->Y0:Ljava/util/ArrayList;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v9
    if-ge v7, v9, :label_05ca
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Landroid/view/View;
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V
    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;
    const/4 v14, 0x2
    new-array v10, v14, [F
    fill-array-data v10, :payload_21e6_0000
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v8
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v7, v7, 0x1
    goto :label_05a7
    :label_05ca
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    move/from16 v0, v98
    invoke-virtual {v1, v12, v0}, Lorg/telegram/ui/ko;->z6(Lorg/telegram/messenger/MessageObject;Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_05de
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->W:Z
    :label_05de
    iget-object v0, v1, Lorg/telegram/ui/ko;->a1:Lorg/telegram/ui/Components/r6;
    if-eqz v0, :label_05fa
    aget-object v3, v11, v2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
    move-result v3
    aget-object v4, v11, v6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    move-result v4
    add-int/2addr v4, v3
    new-array v3, v2, [Ljava/lang/Object;
    const-string v5, "MessagesSelected"
    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3, v2, v6}, Lorg/telegram/ui/Components/r6;->c(Ljava/lang/CharSequence;ZZ)V
    :label_05fa
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ko;->ad(Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_0013
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->k0:Lbh/m0;
    if-eqz v3, :label_0608
    invoke-virtual {v3, v2}, Lbh/m0;->setOpened(Z)V
    :label_0608
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->h0()Z
    move-result v3
    if-eqz v3, :label_0610
    goto/16 :label_0013
    :label_0610
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->l0:Lorg/telegram/ui/Components/mf;
    if-eqz v0, :label_0013
    invoke-virtual {v0}, Lbh/i0;->c()V
    return v2
    :label_0618
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v11
    if-nez v11, :label_0620
    goto/16 :label_0013
    :label_0620
    new-instance v11, Ljava/util/ArrayList;
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    new-instance v14, Ljava/util/ArrayList;
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    new-instance v15, Ljava/util/ArrayList;
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z
    move-result v23
    if-eqz v23, :label_0663
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :label_0663
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v3, :label_0663
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v3
    move/from16 v26, v6
    move/from16 v25, v7
    iget-wide v6, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    cmp-long v3, v4, v6
    if-eqz v3, :label_0667
    iget v3, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v4, 0x3
    if-eq v3, v4, :label_0667
    sget v4, Lorg/telegram/messenger/R$string;->OpenProfile:I
    const/16 v5, 0x68
    invoke-static {v4, v5, v14, v15}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_search:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_0667
    :label_0663
    move/from16 v26, v6
    move/from16 v25, v7
    :label_0667
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v4
    const/4 v5, -0x1
    if-nez v4, :label_0700
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z
    move-result v4
    if-nez v4, :label_0700
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    if-eqz v4, :label_0700
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v4
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J
    const-wide/32 v27, 0x9600000
    cmp-long v4, v6, v27
    if-ltz v4, :label_0700
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v4
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :label_0700
    iget v4, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v3, 0x3
    if-eq v4, v3, :label_0700
    sget v4, Lorg/telegram/messenger/R$string;->PremiumSpeedPromo:I
    const/16 v6, 0x67
    invoke-static {v4, v6, v14, v15}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I
    move-result v4
    if-eqz v4, :label_0700
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;
    move-result-object v4
    const/16 v16, 0x2
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/PremiumPreviewFragment;->m0(I)Ljava/lang/String;
    move-result-object v6
    if-eqz v4, :label_0700
    move v7, v2
    :label_06d1
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v7, v3, :label_06eb
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :label_06e8
    goto :label_06ec
    :label_06e8
    add-int/lit8 v7, v7, 0x1
    goto :label_06d1
    :label_06eb
    move v7, v5
    :label_06ec
    if-eq v7, v5, :label_0700
    iget v3, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v7, 0x3
    invoke-virtual {v3, v6, v4, v7, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    :label_0700
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;
    const/16 v6, 0xd
    if-eqz v4, :label_074c
    if-eqz v9, :label_074c
    iget-wide v3, v1, Lorg/telegram/ui/ko;->S5:J
    cmp-long v3, v3, v21
    if-gez v3, :label_071c
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :label_074c
    invoke-static {v3, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v3
    if-eqz v3, :label_074c
    :label_071c
    new-instance v27, Lorg/telegram/ui/Components/r8;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v28
    new-instance v3, Lorg/telegram/ui/mi;
    invoke-direct {v3, v1}, Lorg/telegram/ui/mi;-><init>(Lorg/telegram/ui/ko;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v33
    const/16 v31, 0x1
    const/16 v32, 0x0
    const/16 v29, 0x0
    move-object/from16 v30, v3
    invoke-direct/range {v27 .. v33}, Lorg/telegram/ui/Components/r8;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ki0;Lorg/telegram/ui/Components/q8;ZILorg/telegram/ui/ActionBar/j6;)V
    move-object/from16 v3, v27
    iget-object v4, v1, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v4, :label_0741
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I
    goto :label_0745
    :label_0741
    iget-object v4, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I
    :label_0745
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/r8;->b(I)V
    iget-object v3, v3, Lorg/telegram/ui/Components/r8;->a:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    move-object v7, v3
    goto :label_076c
    :label_074c
    if-gez v25, :label_0764
    move/from16 v3, v25
    if-ne v3, v5, :label_076b
    if-eqz v9, :label_076b
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v3
    if-nez v3, :label_0760
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v3
    if-eqz v3, :label_076b
    :label_0760
    iget-object v3, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v3, :label_076b
    :label_0764
    iput-object v12, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iput-object v10, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    invoke-virtual {v1, v8, v11, v14, v15}, Lorg/telegram/ui/ko;->q8(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :label_076b
    const/4 v7, 0x0
    :label_076c
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x7
    const/16 v9, 0xa
    const/4 v5, 0x6
    const/16 v6, 0x8
    if-eqz v3, :label_07b3
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isHiddenSensitive()Z
    move-result v3
    if-eqz v3, :label_07b3
    iget-object v3, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z
    if-nez v3, :label_07b3
    move v3, v2
    :label_0783
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    move-result v13
    if-ge v3, v13, :label_07b3
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    move-result v13
    move/from16 v29, v2
    const/4 v2, 0x2
    if-eq v13, v2, :label_07a3
    if-eq v13, v0, :label_07a3
    if-eq v13, v9, :label_07a3
    if-eq v13, v5, :label_07a3
    if-eq v13, v4, :label_07a3
    if-eq v13, v6, :label_07a3
    goto :label_07ae
    :label_07a3
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v3, v3, -0x1
    :label_07ae
    add-int/lit8 v3, v3, 0x1
    move/from16 v2, v29
    goto :label_0783
    :label_07b3
    move/from16 v29, v2
    if-eqz v103, :label_07ff
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_07df
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v2, :label_07cf
    move/from16 v3, v26
    if-eq v2, v3, :label_07cf
    const/4 v3, 0x3
    if-ne v2, v3, :label_07df
    :label_07cf
    sget v2, Lorg/telegram/messenger/R$string;->EditOfferMessage:I
    const/16 v13, 0x71
    invoke-static {v2, v13, v14, v15}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_07df
    sget v2, Lorg/telegram/messenger/R$string;->EditOfferPrice:I
    const/16 v13, 0x6f
    invoke-static {v2, v13, v14, v15}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_edit_price:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    sget v2, Lorg/telegram/messenger/R$string;->EditOfferTime:I
    const/16 v13, 0x70
    invoke-static {v2, v13, v14, v15}, Lorg/telegram/ui/va;->z(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_07ff
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-eqz v2, :label_080b
    if-nez v7, :label_080b
    move/from16 v9, v29
    goto/16 :label_21de
    :label_080b
    iget-object v2, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    if-eqz v2, :label_0819
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ko;->D7(Z)V
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/ko;->S8:Lorg/telegram/ui/ActionBar/h1;
    iput-object v2, v1, Lorg/telegram/ui/ko;->R8:[Lorg/telegram/ui/ActionBar/h1;
    return v29
    :label_0819
    const/4 v2, 0x0
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;
    move/from16 v0, v29
    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    move-result-object v31
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;
    move-result-object v31
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v32
    if-nez v32, :label_087d
    if-nez v103, :label_087d
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->w()Z
    move-result v33
    if-nez v33, :label_087d
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v33
    if-nez v33, :label_087d
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :label_087d
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->hasReactions()Z
    move-result v3
    if-eqz v3, :label_087d
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_085f
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v3, :label_087d
    :label_085f
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-nez v3, :label_087d
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-nez v3, :label_087d
    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z
    if-eqz v3, :label_087d
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z
    move-result v3
    if-nez v3, :label_087d
    const/4 v3, 0x1
    goto :label_087e
    :label_087d
    const/4 v3, 0x0
    :label_087e
    if-nez v103, :label_0882
    if-eqz v32, :label_0886
    :label_0882
    move-object/from16 v34, v10
    goto/16 :label_0929
    :label_0886
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z
    move-result v33
    if-eqz v33, :label_08c8
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    move-object/from16 v34, v10
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v9
    neg-long v9, v9
    invoke-virtual {v4, v9, v10}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;
    move-result-object v4
    if-nez v4, :label_089f
    goto/16 :label_0926
    :label_089f
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->w()Z
    move-result v9
    if-nez v9, :label_0929
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->E9()Z
    move-result v9
    if-nez v9, :label_0929
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v9
    if-nez v9, :label_0929
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isReactionsAvailable()Z
    move-result v9
    if-eqz v9, :label_0929
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z
    move-result v9
    if-nez v9, :label_0929
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;
    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;
    if-eqz v9, :label_0926
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z
    if-eqz v4, :label_0929
    goto :label_0926
    :label_08c8
    move-object/from16 v34, v10
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->w()Z
    move-result v4
    if-nez v4, :label_0929
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->E9()Z
    move-result v4
    if-nez v4, :label_0929
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v4
    if-nez v4, :label_0929
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isReactionsAvailable()Z
    move-result v4
    if-eqz v4, :label_0929
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z
    move-result v4
    if-nez v4, :label_0929
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z
    move-result v4
    if-nez v4, :label_0929
    iget-object v4, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v4, :label_08fc
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;
    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;
    if-eqz v9, :label_0912
    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z
    if-nez v9, :label_0912
    :label_08fc
    if-nez v4, :label_0906
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_0912
    :label_0906
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :label_0912
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_0929
    :label_0912
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_0926
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_0926
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v9, 0x1a
    invoke-static {v4, v9}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v4
    if-eqz v4, :label_0929
    :label_0926
    const/16 v31, 0x1
    goto :label_092b
    :label_0929
    const/16 v31, 0x0
    :label_092b
    if-nez v103, :label_098d
    if-nez v32, :label_098d
    if-nez v3, :label_098d
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v4
    if-nez v4, :label_098d
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-eqz v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSent()Z
    move-result v4
    if-eqz v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v4
    if-nez v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v4
    if-nez v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v4
    if-nez v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z
    move-result v4
    if-nez v4, :label_098d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z
    move-result v4
    if-nez v4, :label_098d
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v4
    iget-object v9, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    sub-int/2addr v4, v9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v9
    iget v9, v9, Lorg/telegram/messenger/MessagesController;->chatReadMarkExpirePeriod:I
    if-ge v4, v9, :label_098d
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_098f
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_098d
    goto :label_098f
    :label_098d
    const/4 v9, 0x3
    goto :label_09bb
    :label_098f
    iget-object v4, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v4, :label_098d
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v9
    iget v9, v9, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I
    if-gt v4, v9, :label_098d
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;
    if-nez v4, :label_098d
    iget v4, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v9, 0x3
    if-eq v4, v9, :label_09bb
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->canSetReaction()Z
    move-result v4
    if-eqz v4, :label_09bb
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_09bb
    const/16 v36, 0x1
    goto :label_09bd
    :label_09bb
    const/16 v36, 0x0
    :label_09bd
    if-nez v103, :label_09ed
    if-nez v32, :label_09ed
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_09ed
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v4
    if-nez v4, :label_09ed
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_09ed
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v10, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4, v10}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-eqz v4, :label_09ed
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J
    neg-long v9, v9
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v37
    cmp-long v4, v9, v37
    if-nez v4, :label_09ed
    const/16 v37, 0x1
    goto :label_09ef
    :label_09ed
    const/16 v37, 0x0
    :label_09ef
    if-nez v103, :label_0a7f
    if-nez v32, :label_0a7f
    if-nez v3, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :label_0a7f
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-nez v9, :label_0a7f
    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J
    invoke-static {v9, v10}, Lorg/telegram/messenger/UserObject;->isService(J)Z
    move-result v4
    if-nez v4, :label_0a7f
    iget-object v4, v1, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v4, :label_0a2d
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z
    if-nez v4, :label_0a7f
    :label_0a2d
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v4
    if-nez v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v4
    if-eqz v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSent()Z
    move-result v4
    if-eqz v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v4
    if-nez v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v4
    if-nez v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v4
    if-nez v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z
    move-result v4
    if-nez v4, :label_0a7f
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z
    move-result v4
    if-nez v4, :label_0a7f
    iget v4, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I
    move-result v4
    iget-object v9, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    sub-int/2addr v4, v9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v9
    iget v9, v9, Lorg/telegram/messenger/MessagesController;->pmReadDateExpirePeriod:I
    if-ge v4, v9, :label_0a7f
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;
    if-nez v4, :label_0a7f
    const/16 v38, 0x1
    goto :label_0a81
    :label_0a7f
    const/16 v38, 0x0
    :label_0a81
    if-nez v103, :label_0aae
    if-nez v32, :label_0aae
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :label_0a97
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0aae
    iget-object v4, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z
    move-result v4
    if-nez v4, :label_0aae
    :label_0a97
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->c()Z
    move-result v4
    if-nez v4, :label_0aae
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isEdited()Z
    move-result v4
    if-eqz v4, :label_0aae
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;
    if-nez v4, :label_0aae
    const/16 v39, 0x1
    goto :label_0ab0
    :label_0aae
    const/16 v39, 0x0
    :label_0ab0
    const-string v4, "https://"
    if-nez v103, :label_0ae8
    if-nez v32, :label_0ae8
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v9, :label_0ae8
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v9
    if-eqz v9, :label_0ae8
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->sponsoredInfo:Ljava/lang/String;
    if-nez v10, :label_0ae6
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    if-nez v10, :label_0ae6
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    if-eqz v9, :label_0ae8
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :label_0ae8
    :label_0ae6
    const/4 v5, 0x1
    goto :label_0ae9
    :label_0ae8
    const/4 v5, 0x0
    :label_0ae9
    if-nez v103, :label_0af0
    if-eqz v31, :label_0af0
    const/16 v40, 0x1
    goto :label_0af2
    :label_0af0
    const/16 v40, 0x0
    :label_0af2
    if-nez v3, :label_0afc
    if-nez v36, :label_0afc
    if-eqz v5, :label_0af9
    goto :label_0afc
    :label_0af9
    const/4 v5, 0x0
    :label_0afa
    move-object v9, v12
    goto :label_0afe
    :label_0afc
    const/4 v5, 0x1
    goto :label_0afa
    :label_0afe
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v10
    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I
    move-object/from16 v42, v0
    iget-object v0, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v12, v6, v5, v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/high16 v49, 0x43480000
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    invoke-virtual {v12, v0}, Landroid/view/View;->setMinimumWidth(I)V
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    sget v5, Lorg/telegram/ui/ActionBar/n6;->G8:I
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v5
    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V
    new-instance v5, Lorg/telegram/ui/lf;
    const/4 v6, 0x2
    invoke-direct {v5, v1, v6}, Lorg/telegram/ui/lf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-static {v5}, Lorg/telegram/ui/Components/rn0;->d(Lorg/telegram/messenger/Utilities$Callback2;)V
    iget-object v5, v1, Lorg/telegram/ui/ko;->z8:Lwf/a;
    move-object/from16 v103, v0
    const/4 v6, 0x1
    const/4 v10, 0x0
    invoke-virtual {v5, v12, v10, v6}, Lwf/a;->c(Landroid/view/View;Lzf/a;Z)Lyf/b;
    move-result-object v0
    iget-object v6, v1, Lorg/telegram/ui/ActionBar/r2;->resourceProvider:Lorg/telegram/ui/ActionBar/j6;
    invoke-static {v6}, Lag/c;->g(Lorg/telegram/ui/ActionBar/j6;)Lzf/d;
    move-result-object v6
    invoke-virtual {v0, v6}, Lyf/b;->o(Lzf/a;)V
    const/high16 v17, 0x41400000
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    invoke-virtual {v0, v6}, Lyf/b;->q(F)V
    const/high16 v43, 0x41000000
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v0, v6}, Lyf/b;->p(I)V
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    const/high16 v50, 0x42000000
    const/high16 v51, 0x43700000
    const/16 v52, 0x10
    move-object/from16 v53, v15
    const/high16 v54, 0x40c00000
    const/high16 v56, 0x41600000
    if-nez v7, :label_1b26
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->ac(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-eqz v0, :label_0bcf
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    sget v46, Lorg/telegram/messenger/R$string;->EphemeralWelcomeMessageMenuHint:I
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v10
    const/16 v15, 0xd
    invoke-static {v15, v0, v10, v6}, Lorg/telegram/ui/ko;->M7(ILandroid/content/Context;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Landroid/widget/FrameLayout;
    move-result-object v0
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumHeight(I)V
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    move-object/from16 v46, v2
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-virtual {v0, v6, v10, v15, v2}, Landroid/view/View;->setPadding(IIII)V
    const/4 v2, -0x2
    const/4 v6, -0x1
    invoke-static {v6, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v10
    invoke-virtual {v12, v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v10, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v10}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/16 v2, 0x8
    invoke-static {v6, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v10
    invoke-virtual {v12, v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    goto :label_0bd1
    :label_0bcf
    move-object/from16 v46, v2
    :label_0bd1
    const/high16 v57, 0x43960000
    const/high16 v58, 0x42200000
    if-eqz v3, :label_0f25
    move-object v3, v7
    new-instance v7, Lorg/telegram/ui/Components/xk0;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    iget v10, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-direct {v7, v6, v10, v8}, Lorg/telegram/ui/Components/xk0;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;)V
    iget-object v6, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    if-eqz v6, :label_0c19
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v10
    const/4 v15, 0x0
    const/16 v48, 0x0
    const/16 v59, 0x0
    :label_0bf6
    if-ge v15, v10, :label_0c14
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v61
    add-int/lit8 v15, v15, 0x1
    move-object/from16 v2, v61
    check-cast v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I
    add-int v59, v59, v0
    move-object/from16 v63, v3
    const/4 v3, 0x1
    if-gt v0, v3, :label_0c0f
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z
    if-nez v0, :label_0c11
    :label_0c0f
    const/16 v48, 0x1
    :label_0c11
    move-object/from16 v3, v63
    goto :label_0bf6
    :label_0c14
    move/from16 v0, v59
    :label_0c16
    move-object/from16 v63, v3
    goto :label_0c1d
    :label_0c19
    const/4 v0, 0x0
    const/16 v48, 0x0
    goto :label_0c16
    :label_0c1d
    if-eqz v48, :label_0c2b
    iget-object v2, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v15, 0xd
    invoke-static {v2, v15}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    move-result v2
    if-eqz v2, :label_0c2d
    const/4 v2, 0x1
    goto :label_0c2e
    :label_0c2b
    const/16 v15, 0xd
    :label_0c2d
    const/4 v2, 0x0
    :label_0c2e
    if-eqz v2, :label_0c4e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    sget v10, Lorg/telegram/messenger/R$string;->TapAndHoldToDeleteReaction:I
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v10
    check-cast v3, Landroid/app/Activity;
    const/16 v15, 0xe
    invoke-static {v15, v3, v10, v6}, Lorg/telegram/ui/ko;->M7(ILandroid/content/Context;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Landroid/widget/FrameLayout;
    move-result-object v3
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v3, v6}, Landroid/view/View;->setMinimumHeight(I)V
    :label_0c4b
    const/16 v6, 0xa
    goto :label_0c52
    :label_0c4e
    const/16 v15, 0xe
    const/4 v3, 0x0
    goto :label_0c4b
    :label_0c52
    if-le v0, v6, :label_0c63
    iget-object v10, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v10
    const/4 v6, 0x1
    if-le v10, v6, :label_0c64
    move v10, v6
    goto :label_0c65
    :label_0c63
    const/4 v6, 0x1
    :label_0c64
    const/4 v10, 0x0
    :label_0c65
    new-instance v15, Lorg/telegram/ui/Components/dl0;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v15, v6}, Lorg/telegram/ui/Components/dl0;-><init>(Landroid/content/Context;)V
    iput-boolean v10, v15, Lorg/telegram/ui/Components/dl0;->a:Z
    const/4 v6, 0x1
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v48, v4
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    if-eqz v10, :label_0c89
    const/16 v59, 0x60
    move/from16 v94, v59
    move-object/from16 v59, v5
    move/from16 v5, v94
    goto :label_0c8d
    :label_0c89
    move-object/from16 v59, v5
    const/16 v5, 0x2c
    :label_0c8d
    add-int/lit16 v5, v5, 0x12c
    int-to-float v5, v5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    xor-int/lit8 v64, v10, 0x1
    add-int v5, v5, v64
    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v4, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    move-object/from16 v64, v7
    move-object/from16 v65, v9
    const/4 v7, 0x1
    const/4 v9, 0x0
    invoke-direct {v4, v5, v6, v7, v9}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    const/16 v5, 0x2c
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/h1;->setItemHeight(I)V
    sget v5, Lorg/telegram/messenger/R$string;->Back:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I
    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/h1;->getTextView()Lorg/telegram/ui/Components/a6;
    move-result-object v5
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v6, :label_0cc9
    const/4 v6, 0x0
    goto :label_0ccd
    :label_0cc9
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    :label_0ccd
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v7, :label_0cd7
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    :label_0cd5
    const/4 v9, 0x0
    goto :label_0cd9
    :label_0cd7
    const/4 v7, 0x0
    goto :label_0cd5
    :label_0cd9
    invoke-virtual {v5, v6, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V
    new-instance v5, Lorg/telegram/ui/bg;
    const/4 v6, 0x1
    invoke-direct {v5, v12, v6}, Lorg/telegram/ui/bg;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v5, -0x2
    const/4 v7, -0x1
    invoke-static {v7, v5}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v9
    invoke-virtual {v15, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    move-object v7, v13
    new-array v13, v6, [I
    const/high16 v4, 0x3f800000
    if-eqz v10, :label_0e56
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;
    new-instance v2, Landroid/widget/LinearLayout;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v9, 0x0
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V
    new-instance v3, Lu4/g;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v3, v6}, Lu4/g;-><init>(Landroid/content/Context;)V
    new-instance v6, Landroid/widget/HorizontalScrollView;
    iget-object v9, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v9
    invoke-direct {v6, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
    new-instance v70, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct/range {v70 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
    invoke-interface {v5}, Ljava/util/List;->size()I
    move-result v9
    const/4 v10, 0x1
    if-le v9, v10, :label_0d2f
    move v9, v4
    const/4 v4, 0x1
    goto :label_0d31
    :label_0d2f
    move v9, v4
    const/4 v4, 0x0
    :label_0d31
    invoke-interface {v5}, Ljava/util/List;->size()I
    move-result v10
    add-int/2addr v10, v4
    const/4 v9, 0x0
    :label_0d37
    if-ge v9, v10, :label_0d9c
    move-object/from16 v69, v2
    new-instance v2, Lorg/telegram/ui/Components/il0;
    move-object/from16 v67, v3
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/il0;-><init>(Landroid/content/Context;)V
    if-eqz v4, :label_0d4d
    add-int/lit8 v3, v9, -0x1
    goto :label_0d4e
    :label_0d4d
    move v3, v9
    :label_0d4e
    if-gez v3, :label_0d56
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/il0;->setCounter(I)V
    move/from16 v73, v0
    goto :label_0d63
    :label_0d56
    move/from16 v73, v0
    iget v0, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ReactionCount;
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Components/il0;->a(ILorg/telegram/tgnet/TLRPC$ReactionCount;)V
    :label_0d63
    new-instance v66, Lbh/b4;
    move-object/from16 v72, v2
    move-object/from16 v71, v6
    move/from16 v68, v9
    invoke-direct/range {v66 .. v72}, Lbh/b4;-><init>(Lu4/g;ILandroid/widget/LinearLayout;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/HorizontalScrollView;Lorg/telegram/ui/Components/il0;)V
    move-object/from16 v6, v66
    move-object/from16 v0, v69
    move-object/from16 v2, v71
    move-object/from16 v3, v72
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    if-nez v68, :label_0d7e
    move/from16 v77, v54
    goto :label_0d80
    :label_0d7e
    const/16 v77, 0x0
    :label_0d80
    const/high16 v79, 0x40c00000
    const/high16 v80, 0x40c00000
    const/high16 v74, -0x40000000
    const/high16 v75, -0x40800000
    const/16 v76, 0x10
    const/high16 v78, 0x40c00000
    invoke-static/range {v74 .. v80}, Lt7/x5;->i(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    add-int/lit8 v9, v68, 0x1
    move-object v6, v2
    move-object/from16 v3, v67
    move-object v2, v0
    move/from16 v0, v73
    goto :label_0d37
    :label_0d9c
    move/from16 v73, v0
    move-object v0, v2
    move-object/from16 v67, v3
    move-object v2, v6
    const/4 v9, 0x0
    invoke-virtual {v2, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V
    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V
    const/16 v3, 0x2c
    const/4 v6, -0x1
    invoke-static {v6, v3}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v9
    invoke-virtual {v15, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v9, Lorg/telegram/ui/ActionBar/o1;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    move-object/from16 v69, v0
    iget-object v0, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v9, v3, v0}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/16 v0, 0x8
    invoke-static {v6, v0}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v15, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    const/high16 v3, 0x42b00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    const/16 v26, 0x1
    add-int/lit8 v3, v3, 0x1
    move-object/from16 v71, v2
    move v2, v10
    move v10, v3
    new-instance v3, Landroid/util/SparseArray;
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V
    new-instance v9, Landroid/util/SparseIntArray;
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V
    const/4 v0, 0x0
    :label_0de4
    invoke-interface {v5}, Ljava/util/List;->size()I
    move-result v25
    add-int/lit8 v6, v25, 0x1
    if-ge v0, v6, :label_0df8
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v10
    invoke-virtual {v9, v0, v6}, Landroid/util/SparseIntArray;->put(II)V
    add-int/lit8 v0, v0, 0x1
    const/4 v6, -0x1
    goto :label_0de4
    :label_0df8
    new-instance v0, Lorg/telegram/ui/oi;
    move-object/from16 v86, v103
    move-object/from16 v84, v7
    move-object/from16 v82, v11
    move-object/from16 v98, v14
    move-object/from16 v25, v15
    move-object/from16 v81, v34
    move-object/from16 v16, v42
    move/from16 v101, v43
    move-object/from16 v85, v46
    move-object/from16 v88, v48
    move-object/from16 v87, v59
    move-object/from16 v83, v63
    move-object/from16 v7, v64
    move-object/from16 v6, v65
    move-object/from16 v11, v67
    move/from16 v14, v73
    const/16 v97, 0x0
    const/4 v15, 0x0
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/oi;-><init>(Lorg/telegram/ui/ko;ILandroid/util/SparseArray;ZLjava/util/List;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/xk0;Lorg/telegram/messenger/MessageObject;Landroid/util/SparseIntArray;ILu4/g;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[II)V
    move-object v3, v0
    move-object v0, v7
    move-object/from16 v47, v12
    move-object v12, v6
    invoke-virtual {v11, v3}, Lu4/g;->setAdapter(Lu4/a;)V
    new-instance v41, Lorg/telegram/ui/pi;
    move/from16 v44, v2
    move-object/from16 v46, v9
    move-object/from16 v48, v13
    move-object/from16 v43, v69
    move-object/from16 v42, v70
    move-object/from16 v45, v71
    invoke-direct/range {v41 .. v48}, Lorg/telegram/ui/pi;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/LinearLayout;ILandroid/widget/HorizontalScrollView;Landroid/util/SparseIntArray;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[I)V
    move-object/from16 v2, v41
    move-object/from16 v4, v47
    invoke-virtual {v11, v2}, Lu4/g;->b(Lu4/e;)V
    const/4 v5, -0x1
    const/high16 v14, 0x3f800000
    invoke-static {v14, v5, v15}, Lt7/x5;->l(FII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    move-object/from16 v6, v25
    invoke-virtual {v6, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    move-object/from16 v3, v97
    move v9, v5
    move-object v10, v6
    move-object v7, v8
    const/4 v8, 0x1
    const/16 v11, 0x8
    goto/16 :label_0f0b
    :label_0e56
    move-object/from16 v86, v103
    move-object/from16 v84, v7
    move-object/from16 v82, v11
    move-object/from16 v98, v14
    move-object v6, v15
    move-object/from16 v81, v34
    move-object/from16 v16, v42
    move/from16 v101, v43
    move-object/from16 v85, v46
    move-object/from16 v88, v48
    move-object/from16 v87, v59
    move-object/from16 v83, v63
    move-object/from16 v0, v64
    const/16 v97, 0x0
    const/4 v5, -0x1
    const/4 v15, 0x0
    move v14, v4
    move-object v4, v12
    move-object/from16 v12, v65
    new-instance v7, Lorg/telegram/ui/ActionBar/o1;
    iget-object v9, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v9
    iget-object v10, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v7, v9, v10}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/16 v9, 0x8
    invoke-static {v5, v9}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v10
    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    move/from16 v25, v5
    new-instance v5, Lorg/telegram/ui/Components/hl0;
    iget-object v7, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v7
    move-object v10, v6
    move-object v6, v7
    iget-object v7, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    move/from16 v41, v9
    move-object v9, v8
    iget v8, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    move-object v11, v10
    const/4 v10, 0x0
    move-object/from16 v23, v11
    const/4 v11, 0x1
    move-object/from16 v93, v23
    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Components/hl0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V
    move-object v7, v9
    invoke-virtual {v0}, Lorg/telegram/ui/Components/xk0;->getSeenUsers()Ljava/util/List;
    move-result-object v6
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/hl0;->h(Ljava/util/List;)V
    new-instance v6, Lorg/telegram/ui/af;
    const/16 v8, 0xb
    invoke-direct {v6, v1, v8}, Lorg/telegram/ui/af;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/hl0;->d(Lorg/telegram/ui/af;)V
    new-instance v6, Lorg/telegram/ui/ig;
    invoke-direct {v6, v1, v7, v15}, Lorg/telegram/ui/ig;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;I)V
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/hl0;->g(Lorg/telegram/ui/ig;)V
    new-instance v6, Lorg/telegram/ui/jg;
    invoke-direct {v6, v1, v2, v7, v15}, Lorg/telegram/ui/jg;-><init>(Lorg/telegram/ui/ko;ZLorg/telegram/messenger/MessageObject;I)V
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/hl0;->f(Lorg/telegram/ui/jg;)V
    new-instance v2, Lorg/telegram/ui/e7;
    const/4 v8, 0x1
    invoke-direct {v2, v3, v4, v13, v8}, Lorg/telegram/ui/e7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/hl0;->e(Lorg/telegram/ui/e7;)V
    new-instance v2, Lorg/telegram/ui/i3;
    invoke-direct {v2, v5, v8}, Lorg/telegram/ui/i3;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/xk0;->setSeenCallback(Lp0/a;)V
    const/4 v9, -0x1
    invoke-static {v14, v9, v15}, Lt7/x5;->l(FII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    move-object/from16 v10, v93
    invoke-virtual {v10, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    if-eqz v3, :label_0f08
    new-instance v2, Lorg/telegram/ui/ActionBar/o1;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    iget-object v11, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v2, v6, v11}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/16 v11, 0x8
    invoke-static {v9, v11}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v10, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    const/4 v2, -0x2
    invoke-static {v9, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v10, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :label_0f0a
    :label_0f08
    const/16 v11, 0x8
    :label_0f0a
    move-object v3, v5
    :label_0f0b
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->b(Landroid/view/View;)I
    move-result v2
    aput v2, v13, v15
    new-instance v2, Lorg/telegram/ui/a0;
    const/4 v10, 0x2
    invoke-direct {v2, v3, v4, v13, v10}, Lorg/telegram/ui/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/16 v13, 0x30
    invoke-static {v9, v13}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    move v2, v8
    goto :label_0f49
    :label_0f25
    move-object/from16 v86, v103
    move-object/from16 v88, v4
    move-object/from16 v87, v5
    move-object/from16 v83, v7
    move-object v7, v8
    move-object/from16 v82, v11
    move-object v4, v12
    move-object/from16 v84, v13
    move-object/from16 v98, v14
    move-object/from16 v81, v34
    move-object/from16 v16, v42
    move/from16 v101, v43
    move-object/from16 v85, v46
    const/16 v97, 0x0
    const/4 v8, 0x1
    const/4 v10, 0x2
    const/16 v11, 0x8
    const/16 v13, 0x30
    const/4 v15, 0x0
    move-object v12, v9
    const/4 v9, -0x1
    move v2, v15
    :label_0f49
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_0fd4
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v3, :label_0fd4
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Poll;->hide_results_until_close:Z
    if-eqz v5, :label_0f8f
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z
    if-nez v5, :label_0f8f
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->creator:Z
    if-nez v3, :label_0f8f
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    sget v6, Lorg/telegram/messenger/R$string;->PollResultsWillLater:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    check-cast v3, Landroid/app/Activity;
    const/16 v14, 0xe
    invoke-static {v14, v3, v6, v5}, Lorg/telegram/ui/ko;->M7(ILandroid/content/Context;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Landroid/widget/FrameLayout;
    move-result-object v3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v3, Lorg/telegram/ui/ActionBar/o1;
    iget-object v5, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v5
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v9, v11}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    goto :label_0f91
    :label_0f8f
    const/16 v14, 0xe
    :label_0f91
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z
    if-nez v3, :label_0fd4
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Poll;->subscribers_only:Z
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->countries_iso2:Ljava/util/ArrayList;
    if-eqz v0, :label_0fa5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :label_0fa5
    or-int/lit8 v3, v3, 0x4
    :label_0fa5
    if-eqz v3, :label_0fd4
    invoke-static {v12, v3}, Lmg/j;->b(Lorg/telegram/messenger/MessageObject;I)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :label_0fd4
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    check-cast v3, Landroid/app/Activity;
    invoke-static {v14, v3, v0, v5}, Lorg/telegram/ui/ko;->M7(ILandroid/content/Context;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Landroid/widget/FrameLayout;
    move-result-object v0
    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v3, v5}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v9, v11}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    :label_0fd4
    const/high16 v14, -0x40000000
    if-eqz v36, :label_10bf
    new-instance v2, Lorg/telegram/ui/ji0;
    iget-object v0, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    iget v3, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v5, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v2, v0, v3, v12, v5}, Lorg/telegram/ui/ji0;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    new-instance v0, Landroid/widget/FrameLayout;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    invoke-static {v14, v9}, Lt7/x5;->c(FI)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v3, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v5
    iget-object v6, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v3, v5, v6, v8, v15}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    const/16 v5, 0x2c
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/h1;->setItemHeight(I)V
    sget v6, Lorg/telegram/messenger/R$string;->Back:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I
    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/h1;->getTextView()Lorg/telegram/ui/Components/a6;
    move-result-object v5
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v6, :label_101e
    move v6, v15
    goto :label_1022
    :label_101e
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    :label_1022
    sget-boolean v23, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v23, :label_102d
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v23
    move/from16 v10, v23
    goto :label_102e
    :label_102d
    move v10, v15
    :label_102e
    invoke-virtual {v5, v6, v15, v10, v15}, Landroid/view/View;->setPadding(IIII)V
    new-instance v5, Landroid/widget/FrameLayout;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    new-instance v6, Landroid/widget/LinearLayout;
    iget-object v10, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v10
    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    sget v10, Lorg/telegram/ui/ActionBar/n6;->G8:I
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v10
    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V
    invoke-virtual {v2}, Lorg/telegram/ui/ji0;->a()Lorg/telegram/ui/Components/bn0;
    move-result-object v10
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    new-instance v3, Lorg/telegram/ui/ActionBar/o1;
    iget-object v13, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v13
    iget-object v14, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v3, v13, v14}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v9, v11}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v13
    invoke-virtual {v6, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v3, Lorg/telegram/ui/c8;
    invoke-direct {v3, v4, v8}, Lorg/telegram/ui/c8;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    move-object/from16 v47, v4
    move-object v4, v6
    new-array v6, v8, [I
    move-object v3, v0
    new-instance v0, Lorg/telegram/ui/si;
    move-object v5, v10
    move-object v10, v3
    move-object v3, v5
    move-object/from16 v5, v47
    const/16 v13, 0x2c
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/si;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/ui/ji0;Lorg/telegram/ui/Components/bn0;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[I)V
    move-object/from16 v94, v5
    move-object v5, v0
    move-object/from16 v0, v94
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v5, -0x2
    invoke-static {v9, v5}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v14
    invoke-virtual {v4, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lbh/l4;
    const/4 v14, 0x4
    invoke-direct {v5, v14, v1, v2}, Lbh/l4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/bn0;->setOnItemClickListener(Lorg/telegram/ui/Components/rm0;)V
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->b(Landroid/view/View;)I
    move-result v2
    aput v2, v6, v15
    invoke-static {v9, v13}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v0, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    move v6, v8
    move v5, v9
    move v4, v11
    move/from16 v62, v13
    move/from16 v30, v14
    const/high16 v3, -0x40000000
    const/16 v44, 0x30
    const/16 v92, 0x2
    goto :label_1100
    :label_10bf
    move-object v0, v4
    const/16 v13, 0x2c
    const/4 v14, 0x4
    if-eqz v38, :label_10f3
    move/from16 v25, v9
    new-instance v9, Lorg/telegram/ui/Components/md0;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v10
    move/from16 v62, v13
    new-instance v13, Lorg/telegram/ui/zf;
    invoke-direct {v13, v1, v15}, Lorg/telegram/ui/zf;-><init>(Lorg/telegram/ui/ko;I)V
    move/from16 v30, v14
    iget-object v14, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    move/from16 v41, v11
    const/4 v11, 0x0
    move/from16 v5, v25
    move/from16 v4, v41
    const/high16 v3, -0x40000000
    const/16 v44, 0x30
    const/16 v92, 0x2
    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/md0;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/j6;)V
    const/16 v2, 0x24
    invoke-static {v5, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v0, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    move v6, v8
    goto :label_1100
    :label_10f3
    move v5, v9
    move v4, v11
    move/from16 v62, v13
    move/from16 v30, v14
    const/high16 v3, -0x40000000
    const/16 v44, 0x30
    const/16 v92, 0x2
    move v6, v2
    :label_1100
    if-eqz v39, :label_111f
    new-instance v9, Lorg/telegram/ui/Components/md0;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v10
    new-instance v13, Lorg/telegram/ui/zf;
    invoke-direct {v13, v1, v8}, Lorg/telegram/ui/zf;-><init>(Lorg/telegram/ui/ko;I)V
    iget-object v14, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v11, 0x1
    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/md0;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/j6;)V
    move-object v13, v12
    const/16 v2, 0x24
    invoke-static {v5, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v0, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    move v6, v8
    goto :label_1120
    :label_111f
    move-object v13, v12
    :label_1120
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_115c
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z
    move-result v2
    if-eqz v2, :label_115c
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_115c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v2
    if-eqz v2, :label_115c
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :label_115c
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_115c
    iget-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z
    if-nez v9, :label_115c
    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J
    cmp-long v9, v9, v21
    if-eqz v9, :label_115c
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z
    if-eqz v2, :label_115c
    move v2, v8
    goto :label_115d
    :label_115c
    move v2, v15
    :label_115d
    if-nez v2, :label_119b
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->probablyRingtone()Z
    move-result v9
    if-eqz v9, :label_119b
    iget-object v9, v1, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v9, :label_119b
    new-instance v6, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v9
    if-nez v38, :label_1175
    if-nez v39, :label_1175
    move v10, v8
    goto :label_1176
    :label_1175
    move v10, v15
    :label_1176
    iget-object v11, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v6, v9, v11, v10, v15}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    invoke-virtual {v6, v9}, Landroid/view/View;->setMinimumWidth(I)V
    sget v9, Lorg/telegram/messenger/R$string;->SaveForNotifications:I
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v9
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I
    invoke-virtual {v6, v10, v9}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v9, Lbh/e;
    const/16 v10, 0x1b
    invoke-direct {v9, v10, v1, v13}, Lbh/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    move v6, v8
    :label_119b
    if-eqz v6, :label_11b1
    new-instance v6, Lorg/telegram/ui/ActionBar/o1;
    iget-object v9, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v9
    iget-object v10, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v6, v9, v10}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v5, v4}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v9
    invoke-virtual {v0, v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    :label_11b1
    if-eqz v37, :label_11ef
    new-instance v6, Lorg/telegram/ui/ti;
    iget-object v9, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v9
    iget v10, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-direct {v6, v1, v9, v10, v13}, Lorg/telegram/ui/ti;-><init>(Lorg/telegram/ui/ko;Landroid/content/Context;ILorg/telegram/messenger/MessageObject;)V
    new-instance v9, Landroid/widget/FrameLayout;
    iget-object v10, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v10
    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    invoke-static {v3, v5}, Lt7/x5;->c(FI)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v9, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    const/16 v3, 0x24
    invoke-static {v5, v3}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v0, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    new-instance v3, Lorg/telegram/ui/ActionBar/o1;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    iget-object v9, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v3, v6, v9}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v5, v4}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v6
    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    :label_11ef
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/ki0;
    move-result-object v3
    if-eqz v3, :label_1203
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/ki0;
    move-result-object v3
    new-instance v6, Lorg/telegram/ui/kf;
    const/4 v14, 0x6
    invoke-direct {v6, v1, v14}, Lorg/telegram/ui/kf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    goto :label_1204
    :label_1203
    const/4 v14, 0x6
    :label_1204
    if-eqz v2, :label_1386
    new-instance v9, Landroid/widget/LinearLayout;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v2, 0x59
    invoke-static {v5, v2}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v10
    new-instance v11, Landroid/widget/FrameLayout;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    new-instance v2, Landroid/widget/TextView;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    sget v3, Lorg/telegram/ui/ActionBar/n6;->y6:I
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V
    sget v3, Lorg/telegram/messenger/R$string;->RateTranscription:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/16 v28, 0x0
    const/16 v29, 0x0
    const/16 v23, -0x1
    const/high16 v24, -0x40000000
    const/16 v25, 0x30
    const/16 v26, 0x0
    const/high16 v27, 0x41400000
    invoke-static/range {v23 .. v29}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v11, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-array v3, v8, [Z
    new-array v2, v8, [Z
    move/from16 v41, v4
    new-instance v4, Landroid/widget/ImageView;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->I5:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v12
    invoke-static {v12, v15, v15}, Lorg/telegram/ui/ActionBar/n6;->N(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v12
    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    iget-object v12, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v12
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v12
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_rate_up:I
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v5
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;
    sget v14, Lorg/telegram/ui/ActionBar/n6;->F8:I
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v8
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v12, v8, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    new-instance v8, Lorg/telegram/ui/Components/ls;
    new-instance v12, Lorg/telegram/ui/Components/nq;
    move-object/from16 v47, v0
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    const/high16 v23, 0x3fc00000
    move-object/from16 v24, v2
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    move-object/from16 v27, v3
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v3
    invoke-direct {v12, v0, v2, v3}, Lorg/telegram/ui/Components/nq;-><init>(FFI)V
    invoke-direct {v8, v5, v12}, Lorg/telegram/ui/Components/ls;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrRateTranscriptionUp:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v33, 0x21
    const/high16 v34, 0x42040000
    const/16 v35, 0x31
    const/high16 v36, -0x3dd80000
    const/high16 v37, 0x421c0000
    invoke-static/range {v33 .. v39}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v0
    invoke-virtual {v11, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Landroid/widget/ImageView;
    iget-object v0, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v0
    const/4 v2, 0x0
    invoke-static {v0, v2, v2}, Lorg/telegram/ui/ActionBar/n6;->N(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v0
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_rate_down:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v3
    invoke-direct {v2, v3, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    new-instance v2, Lorg/telegram/ui/Components/ls;
    new-instance v3, Lorg/telegram/ui/Components/nq;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    int-to-float v8, v8
    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v12
    invoke-direct {v3, v6, v8, v12}, Lorg/telegram/ui/Components/nq;-><init>(FFI)V
    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ls;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrRateTranscriptionDown:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    const/high16 v36, 0x42280000
    invoke-static/range {v33 .. v39}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v0
    invoke-virtual {v11, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v0, Lbf/c3;
    const/16 v6, 0xb
    move-object/from16 v2, v24
    move-object/from16 v3, v27
    move/from16 v15, v41
    move-object/from16 v14, v47
    move/from16 v12, v62
    const/4 v8, -0x1
    invoke-direct/range {v0 .. v6}, Lbf/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    new-instance v2, Lorg/telegram/ui/ag;
    const/4 v6, 0x0
    invoke-direct {v2, v3, v0, v6}, Lorg/telegram/ui/ag;-><init>([ZLbf/c3;I)V
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v2, Lorg/telegram/ui/ag;
    const/4 v6, 0x1
    invoke-direct {v2, v3, v0, v6}, Lorg/telegram/ui/ag;-><init>([ZLbf/c3;I)V
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/16 v0, 0x51
    invoke-static {v8, v0}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v0
    invoke-virtual {v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v8, v15}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v14, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    goto :label_138b
    :label_1386
    move-object v14, v0
    move v15, v4
    move v8, v5
    move/from16 v12, v62
    :label_138b
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_16eb
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-eqz v0, :label_16eb
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->sponsoredInfo:Ljava/lang/String;
    const/high16 v3, 0x41900000
    if-nez v2, :label_13c4
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    if-nez v2, :label_13c4
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    if-eqz v0, :label_13c0
    new-instance v2, Ljava/lang/StringBuilder;
    move-object/from16 v4, v88
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :label_13c0
    goto :label_13c4
    :label_13c0
    const/16 v6, 0x9
    goto/16 :label_15f4
    :label_13c4
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v6, 0x1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
    new-instance v2, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v9, 0x0
    invoke-direct {v2, v4, v5, v6, v9}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/h1;->setItemHeight(I)V
    sget v4, Lorg/telegram/messenger/R$string;->Back:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/h1;->getTextView()Lorg/telegram/ui/Components/a6;
    move-result-object v4
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v5, :label_13f5
    const/4 v5, 0x0
    goto :label_13f9
    :label_13f5
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    :label_13f9
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v6, :label_1403
    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    :label_1401
    const/4 v9, 0x0
    goto :label_1405
    :label_1403
    const/4 v6, 0x0
    goto :label_1401
    :label_1405
    invoke-virtual {v4, v5, v9, v6, v9}, Landroid/view/View;->setPadding(IIII)V
    new-instance v4, Lorg/telegram/ui/bg;
    invoke-direct {v4, v14, v9}, Lorg/telegram/ui/bg;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v5, -0x2
    invoke-static {v8, v5}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v4
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v2, Lorg/telegram/ui/ActionBar/o1;
    iget-object v4, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v8, v15}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v4
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    const/high16 v5, 0x41200000
    if-eqz v4, :label_14ba
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v6
    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :label_14ba
    new-instance v4, Landroid/widget/TextView;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->gc:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V
    move/from16 v6, v56
    const/4 v10, 0x1
    invoke-virtual {v4, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxWidth(I)V
    iget-object v6, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v6
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    move-result-object v9
    invoke-static {v9}, Lje/f;->a(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-static {v6, v9}, Lje/f;->v(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->I5:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    if-nez v9, :label_149d
    const/4 v9, 0x6
    :label_149b
    const/4 v10, 0x0
    goto :label_149f
    :label_149d
    const/4 v9, 0x0
    goto :label_149b
    :label_149f
    invoke-static {v6, v10, v9}, Lorg/telegram/ui/ActionBar/n6;->Z(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v6
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    new-instance v6, Lorg/telegram/ui/kf;
    const/4 v9, 0x7
    invoke-direct {v6, v1, v9}, Lorg/telegram/ui/kf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v6, Lorg/telegram/ui/cg;
    invoke-direct {v6, v1, v10}, Lorg/telegram/ui/cg;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_14ba
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->sponsoredInfo:Ljava/lang/String;
    if-eqz v4, :label_151c
    new-instance v4, Landroid/widget/TextView;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v6, 0x41600000
    const/4 v10, 0x1
    invoke-virtual {v4, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxWidth(I)V
    iget-object v6, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->sponsoredInfo:Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->I5:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    if-nez v9, :label_1508
    const/4 v9, 0x6
    :label_1506
    const/4 v10, 0x0
    goto :label_150a
    :label_1508
    const/4 v9, 0x0
    goto :label_1506
    :label_150a
    invoke-static {v6, v10, v9}, Lorg/telegram/ui/ActionBar/n6;->Z(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v6
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    new-instance v6, Lorg/telegram/ui/kf;
    invoke-direct {v6, v1, v15}, Lorg/telegram/ui/kf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_151c
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    if-eqz v4, :label_1578
    new-instance v4, Landroid/widget/TextView;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v6
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    sget v6, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v6, 0x41600000
    const/4 v10, 0x1
    invoke-virtual {v4, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v4, v6, v9, v10, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V
    iget-object v5, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget v5, Lorg/telegram/ui/ActionBar/n6;->I5:I
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v5
    const/4 v6, 0x6
    const/4 v9, 0x0
    invoke-static {v5, v9, v6}, Lorg/telegram/ui/ActionBar/n6;->Z(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v5
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    new-instance v5, Lorg/telegram/ui/kf;
    const/16 v6, 0x9
    invoke-direct {v5, v1, v6}, Lorg/telegram/ui/kf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :label_157a
    :label_1578
    const/16 v6, 0x9
    :label_157a
    const/4 v4, 0x0
    :label_157b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v4, v5, :label_15b0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/view/View;
    if-lez v4, :label_15a5
    new-instance v9, Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v10
    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    sget v10, Lorg/telegram/ui/ActionBar/n6;->d7:I
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v10
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V
    const/4 v10, 0x1
    invoke-static {v8, v10}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v11
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I
    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :label_15a5
    const/4 v9, -0x2
    invoke-static {v8, v9}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v10
    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_157b
    :label_15b0
    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->b(Landroid/view/View;)I
    move-result v0
    new-instance v2, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v10, 0x1
    invoke-direct {v2, v4, v5, v10, v10}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-eqz v4, :label_15c9
    sget v4, Lorg/telegram/messenger/R$string;->SponsoredMessageSponsorReportable:I
    goto :label_15cb
    :label_15c9
    sget v4, Lorg/telegram/messenger/R$string;->SponsoredMessageSponsor:I
    :label_15cb
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel:I
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v14, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v4, Lmf/c2;
    const/4 v5, 0x4
    invoke-direct {v4, v1, v14, v0, v5}, Lmf/c2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v8, v15}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    :label_15f4
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z
    if-nez v0, :label_16e7
    new-instance v0, Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    const/high16 v2, 0x42600000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V
    sget v2, Lorg/telegram/ui/ActionBar/n6;->I5:I
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v2
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I
    move-result v4
    if-gtz v4, :label_161b
    const/4 v4, 0x6
    :label_1619
    const/4 v9, 0x0
    goto :label_161d
    :label_161b
    const/4 v4, 0x0
    goto :label_1619
    :label_161d
    invoke-static {v2, v4, v9}, Lorg/telegram/ui/ActionBar/n6;->Z(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    invoke-virtual {v0, v2, v9, v3, v9}, Landroid/view/View;->setPadding(IIII)V
    new-instance v2, Landroid/widget/ImageView;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;
    sget v4, Lorg/telegram/ui/ActionBar/n6;->F8:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v3, :label_1658
    const/4 v5, 0x5
    goto :label_1659
    :label_1658
    const/4 v5, 0x3
    :label_1659
    or-int/lit8 v3, v5, 0x10
    const/16 v4, 0x28
    const/4 v5, -0x2
    invoke-static {v5, v4, v3}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v2, Lbh/j;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-direct {v2, v3, v6}, Lbh/j;-><init>(Landroid/content/Context;I)V
    const/4 v3, 0x3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v4, 0x41600000
    const/4 v10, 0x1
    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V
    sget v4, Lorg/telegram/messenger/R$string;->SponsoredMessageInfo:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    const/high16 v5, 0x422c0000
    if-eqz v4, :label_16a1
    const/4 v4, 0x0
    goto :label_16a5
    :label_16a1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    :label_16a5
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v9, :label_16af
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    :label_16ad
    const/4 v9, 0x0
    goto :label_16b1
    :label_16af
    const/4 v5, 0x0
    goto :label_16ad
    :label_16b1
    invoke-virtual {v2, v4, v9, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v4, :label_16ba
    const/4 v5, 0x5
    goto :label_16bb
    :label_16ba
    move v5, v3
    :label_16bb
    or-int/lit8 v4, v5, 0x10
    const/4 v5, -0x2
    invoke-static {v5, v5, v4}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v4
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v2, Lorg/telegram/ui/kf;
    const/16 v4, 0xa
    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/kf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {v8, v15}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    goto :label_16f0
    :label_16e7
    const/4 v3, 0x3
    const/16 v4, 0xa
    goto :label_16f0
    :label_16eb
    const/4 v3, 0x3
    const/16 v4, 0xa
    const/16 v6, 0x9
    :label_16f0
    invoke-virtual/range {v98 .. v98}, Ljava/util/ArrayList;->size()I
    move-result v0
    new-array v0, v0, [Lorg/telegram/ui/ActionBar/h1;
    iput-object v0, v1, Lorg/telegram/ui/ko;->R8:[Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual/range {v98 .. v98}, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v2, 0x0
    :label_16fd
    if-ge v2, v0, :label_1a94
    move-object/from16 v5, v53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    move-result v10
    const/4 v11, 0x1
    if-ne v10, v11, :label_1735
    iget-object v10, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ko;->ac(Lorg/telegram/messenger/MessageObject;)Z
    move-result v10
    if-eqz v10, :label_1735
    move/from16 v24, v0
    move-object v3, v5
    move-object/from16 v17, v7
    move-object/from16 v65, v13
    move-object/from16 v12, v16
    move/from16 v10, v20
    move-object/from16 v34, v81
    move-object/from16 v15, v84
    const/16 v11, 0x18
    const/16 v28, 0x5
    const/16 v55, 0x24
    const/16 v60, 0xb
    const-wide/16 v89, 0xfa
    const/16 v91, 0x1d
    move-object/from16 v20, v98
    goto/16 :label_1a76
    :label_1735
    new-instance v10, Lorg/telegram/ui/ActionBar/h1;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v11
    if-nez v2, :label_173f
    const/4 v12, 0x1
    goto :label_1740
    :label_173f
    const/4 v12, 0x0
    :label_1740
    add-int/lit8 v3, v0, -0x1
    if-ne v2, v3, :label_1746
    const/4 v3, 0x1
    goto :label_1747
    :label_1746
    const/4 v3, 0x0
    :label_1747
    iget-object v4, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v10, v11, v4, v12, v3}, Lorg/telegram/ui/ActionBar/h1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;ZZ)V
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    invoke-virtual {v10, v3}, Landroid/view/View;->setMinimumWidth(I)V
    move-object/from16 v3, v98
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/CharSequence;
    move-object/from16 v11, v82
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    move-result v12
    invoke-virtual {v10, v12, v4}, Lorg/telegram/ui/ActionBar/h1;->f(ILjava/lang/CharSequence;)V
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    move-result v4
    const/16 v12, 0x74
    if-ne v4, v12, :label_17c3
    sget v4, Lorg/telegram/messenger/R$string;->WelcomeMessageRevertInfo:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setSubtext(Ljava/lang/CharSequence;)V
    const/16 v4, 0x40
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setItemHeight(I)V
    const/high16 v4, 0x40a00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    neg-int v4, v4
    int-to-float v4, v4
    iget-object v12, v10, Lorg/telegram/ui/ActionBar/h1;->a:Lorg/telegram/ui/Components/a6;
    invoke-virtual {v12, v4}, Landroid/view/View;->setTranslationY(F)V
    iget-object v4, v10, Lorg/telegram/ui/ActionBar/h1;->b:Landroid/widget/TextView;
    const/4 v12, 0x0
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setSingleLine(Z)V
    iget-object v4, v10, Lorg/telegram/ui/ActionBar/h1;->b:Landroid/widget/TextView;
    const/4 v12, 0x2
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMaxLines(I)V
    iget-object v4, v10, Lorg/telegram/ui/ActionBar/h1;->b:Landroid/widget/TextView;
    const/high16 v12, 0x41300000
    const/4 v6, 0x1
    invoke-virtual {v4, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->p7:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v12
    invoke-virtual {v10, v6, v12}, Lorg/telegram/ui/ActionBar/h1;->c(II)V
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v6
    invoke-virtual {v10, v6}, Lorg/telegram/ui/ActionBar/h1;->setSubtextColor(I)V
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    const v6, 0x3df5c28f
    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/n6;->m1(FI)I
    move-result v4
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setSelectorColor(I)V
    :label_17c3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    move-result v4
    const/4 v6, 0x1
    if-ne v4, v6, :label_1824
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :label_17e4
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I
    if-eqz v6, :label_17e8
    iput-object v10, v1, Lorg/telegram/ui/ko;->S8:Lorg/telegram/ui/ActionBar/h1;
    iget-object v4, v1, Lorg/telegram/ui/ko;->T8:Lorg/telegram/ui/uk;
    invoke-virtual {v4}, Lorg/telegram/ui/uk;->run()V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->D6:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setSubtextColor(I)V
    :label_17e4
    move-object/from16 v98, v9
    const/4 v8, 0x1
    goto :label_1827
    :label_17e8
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPaidSuggestedPostProtected()Z
    move-result v4
    if-eqz v4, :label_17e4
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    move-object/from16 v98, v9
    int-to-long v8, v4
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;
    iget-object v4, v4, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->get(Ljava/util/concurrent/TimeUnit;)J
    move-result-wide v23
    add-long v8, v23, v8
    sget v4, Lorg/telegram/messenger/R$string;->SuggestedOfferPaidUntil:I
    const/4 v12, 0x0
    invoke-static {v8, v9, v12}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;
    move-result-object v6
    const/4 v8, 0x1
    new-array v9, v8, [Ljava/lang/Object;
    aput-object v6, v9, v12
    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setSubtext(Ljava/lang/CharSequence;)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->D6:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/h1;->setSubtextColor(I)V
    goto :label_1827
    :label_1824
    move v8, v6
    move-object/from16 v98, v9
    :label_1827
    iget-object v4, v1, Lorg/telegram/ui/ko;->R8:[Lorg/telegram/ui/ActionBar/h1;
    aput-object v10, v4, v2
    invoke-virtual/range {v98 .. v98}, Ljava/lang/Integer;->intValue()I
    move-result v4
    const/16 v6, 0x23
    if-ne v4, v6, :label_1849
    new-instance v4, Lorg/telegram/ui/ActionBar/o1;
    iget-object v6, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    iget-object v9, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v4, v6, v9}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v6, -0x1
    invoke-static {v6, v15}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v9
    invoke-virtual {v14, v4, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    goto :label_184a
    :label_1849
    const/4 v6, -0x1
    :label_184a
    invoke-virtual {v14, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    new-instance v4, Lmf/c2;
    const/4 v9, 0x5
    invoke-direct {v4, v1, v2, v5, v9}, Lmf/c2;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    invoke-virtual/range {v98 .. v98}, Ljava/lang/Integer;->intValue()I
    move-result v4
    const/16 v12, 0x1d
    if-ne v4, v12, :label_1a57
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;
    move-result-object v4
    invoke-virtual {v4}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z
    move-result v4
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    move-result-object v17
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;
    move-result-object v17
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v17
    move-object/from16 v53, v5
    invoke-static {}, Lorg/telegram/ui/Components/r51;->D()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v23
    filled-new-array/range {v23 .. v23}, [I
    move-result-object v6
    move-object/from16 v15, v81
    invoke-virtual {v13, v15, v6}, Lorg/telegram/messenger/MessageObject;->getMessageTextToTranslate(Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v23
    move-object/from16 v82, v11
    new-instance v11, Lorg/telegram/ui/dg;
    move-object/from16 v12, v96
    const/4 v8, 0x0
    invoke-direct {v11, v8, v1, v12}, Lorg/telegram/ui/dg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    iget-object v8, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :label_18bd
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isPoll()Z
    move-result v8
    if-nez v8, :label_18b8
    iget-object v8, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v8
    if-nez v8, :label_18b8
    iget-object v8, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v8
    if-nez v8, :label_18b8
    iget-object v8, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-boolean v8, v8, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-nez v8, :label_18b8
    iget v8, v1, Lorg/telegram/ui/ko;->Q3:I
    if-ne v8, v9, :label_18bd
    :label_18b8
    move-object/from16 v8, v97
    move-object/from16 v98, v10
    goto :label_18c9
    :label_18bd
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v8
    move-object/from16 v98, v10
    iget-wide v9, v1, Lorg/telegram/ui/ko;->S5:J
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;
    move-result-object v8
    :label_18c9
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v9, :label_18da
    iget v10, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v12, 0x24
    if-ne v10, v12, :label_18dc
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v10, :label_18dc
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->rich_message:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    goto :label_18de
    :label_18da
    const/16 v12, 0x24
    :label_18dc
    move-object/from16 v10, v97
    :label_18de
    if-eqz v10, :label_1922
    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;
    move-object/from16 v9, v98
    const/4 v12, 0x0
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V
    move/from16 v23, v0
    new-instance v0, Lorg/telegram/ui/eg;
    move/from16 v29, v12
    const/4 v12, 0x0
    move-object/from16 v24, v8
    move-object v8, v6
    move-object/from16 v6, v17
    move-object/from16 v17, v7
    move-object/from16 v7, v24
    move-object/from16 v65, v13
    move-object/from16 v34, v15
    move/from16 v24, v23
    move/from16 v13, v29
    const/16 v28, 0x5
    const/16 v55, 0x24
    const/16 v91, 0x1d
    move-object v15, v9
    move-object v9, v10
    move/from16 v10, v20
    move-object/from16 v20, v3
    move-object/from16 v3, v53
    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/eg;-><init>(Lorg/telegram/ui/ko;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputPeer;[ILjava/lang/Object;ZLorg/telegram/ui/dg;I)V
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    move-object/from16 v12, v16
    move-object/from16 v15, v84
    :label_191a
    const/16 v11, 0x18
    const/16 v60, 0xb
    const-wide/16 v89, 0xfa
    goto/16 :label_1a76
    :label_1922
    move-object v10, v8
    move-object v8, v6
    move-object/from16 v6, v17
    move-object/from16 v17, v7
    move-object v7, v10
    move/from16 v24, v0
    move/from16 v55, v12
    move-object/from16 v65, v13
    move-object/from16 v34, v15
    move/from16 v10, v20
    const/4 v13, 0x0
    const/16 v28, 0x5
    const/16 v91, 0x1d
    move-object/from16 v15, v98
    move-object/from16 v20, v3
    move-object/from16 v3, v53
    if-eqz v9, :label_19bc
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_19bc
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;
    if-eqz v0, :label_19bc
    move-object/from16 v0, v84
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    iget-object v9, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;
    if-eqz v9, :label_199d
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :label_1969
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :label_1969
    const-string v12, "und"
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :label_199d
    :label_1969
    if-eqz v4, :label_1975
    invoke-static {}, Lorg/telegram/ui/z31;->Y()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :label_199b
    :label_1975
    iget-object v4, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :label_1983
    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z
    if-nez v12, :label_198b
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v4
    if-nez v4, :label_198b
    :label_1983
    iget-object v4, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v4, :label_199d
    :label_198b
    const-string v4, "uk"
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :label_199b
    const-string v4, "ru"
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :label_199d
    :label_199b
    const/4 v4, 0x0
    goto :label_199f
    :label_199d
    const/16 v4, 0x8
    :label_199f
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V
    move-object/from16 v84, v0
    new-instance v0, Lorg/telegram/ui/eg;
    const/4 v12, 0x1
    move-object v4, v9
    move-object/from16 v9, v23
    move-object/from16 v13, v84
    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/eg;-><init>(Lorg/telegram/ui/ko;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputPeer;[ILjava/lang/Object;ZLorg/telegram/ui/dg;I)V
    move v9, v2
    move-object/from16 v53, v3
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    move-object/from16 v1, v95
    move-object v15, v13
    move-object/from16 v12, v16
    goto/16 :label_191a
    :label_19bc
    move v12, v2
    move-object/from16 v53, v3
    move-object/from16 v27, v7
    move-object/from16 v9, v23
    move-object/from16 v13, v84
    move-object/from16 v23, v11
    move-object v11, v8
    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z
    move-result v0
    if-eqz v0, :label_1a25
    filled-new-array/range {v97 .. v97}, [Ljava/lang/String;
    move-result-object v2
    const/16 v0, 0x8
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V
    const/4 v8, 0x1
    invoke-virtual {v13, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
    move-object v1, v0
    new-instance v0, Lorg/telegram/ui/fg;
    move-object v3, v5
    move-object v7, v13
    move-object/from16 v8, v16
    move-object v13, v1
    move v5, v4
    move-object v4, v6
    move-object v6, v15
    move-object/from16 v1, v95
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/fg;-><init>(Lorg/telegram/ui/ko;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/h1;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    move-object v1, v0
    move-object v5, v3
    move-object v15, v7
    move-object v0, v8
    new-instance v3, Lnh/j0;
    const/16 v7, 0xb
    invoke-direct {v3, v7, v15, v0}, Lnh/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v13, v1, v3}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V
    new-instance v0, Lorg/telegram/ui/eg;
    move-object/from16 v1, v95
    move-object v13, v6
    move/from16 v60, v7
    move-object/from16 v7, v27
    move-object/from16 v3, v53
    move-object v6, v4
    move-object v4, v2
    move v2, v12
    move-object v12, v8
    move-object v8, v11
    move-object/from16 v11, v23
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/eg;-><init>(Lorg/telegram/ui/ko;ILjava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputPeer;[ILjava/lang/CharSequence;ZLorg/telegram/ui/dg;)V
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v0, Lorg/telegram/ui/tu0;
    const/16 v11, 0x18
    invoke-direct {v0, v12, v11}, Lorg/telegram/ui/tu0;-><init>(Ljava/lang/Object;I)V
    const-wide/16 v4, 0xfa
    invoke-virtual {v13, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    move-wide/from16 v89, v4
    goto/16 :label_1a76
    :label_1a25
    move-object v0, v15
    move-object v15, v13
    move-object v13, v0
    move v0, v4
    move-object v6, v5
    move-object v8, v11
    move v2, v12
    move-object/from16 v12, v16
    move-object/from16 v7, v27
    move-object/from16 v3, v53
    const-wide/16 v4, 0xfa
    const/16 v11, 0x18
    const/16 v60, 0xb
    if-eqz v0, :label_1a4d
    new-instance v0, Lorg/telegram/ui/gg;
    move-object/from16 v1, v95
    move-wide/from16 v89, v4
    move-object v4, v7
    move-object v5, v8
    move-object v7, v9
    move v8, v10
    move-object/from16 v9, v23
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/gg;-><init>(Lorg/telegram/ui/ko;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;[ILjava/lang/String;Ljava/lang/CharSequence;ZLorg/telegram/ui/dg;)V
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    goto :label_1a76
    :label_1a4d
    const/16 v0, 0x8
    move-object/from16 v1, v95
    move-wide/from16 v89, v4
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V
    goto :label_1a76
    :label_1a57
    move/from16 v24, v0
    move-object/from16 v17, v7
    move/from16 v28, v9
    move-object/from16 v82, v11
    move/from16 v91, v12
    move-object/from16 v65, v13
    move-object/from16 v12, v16
    move/from16 v10, v20
    move-object/from16 v34, v81
    move-object/from16 v15, v84
    const/16 v11, 0x18
    const/16 v55, 0x24
    const/16 v60, 0xb
    const-wide/16 v89, 0xfa
    move-object/from16 v20, v3
    move-object v3, v5
    :label_1a76
    add-int/lit8 v2, v2, 0x1
    move-object/from16 v53, v3
    move-object/from16 v16, v12
    move-object/from16 v84, v15
    move-object/from16 v7, v17
    move-object/from16 v98, v20
    move/from16 v0, v24
    move-object/from16 v81, v34
    move-object/from16 v13, v65
    const/4 v3, 0x3
    const/16 v4, 0xa
    const/16 v6, 0x9
    const/4 v8, -0x1
    const/16 v15, 0x8
    move/from16 v20, v10
    goto/16 :label_16fd
    :label_1a94
    move-object/from16 v17, v7
    move-object/from16 v65, v13
    move-object/from16 v12, v16
    move-object/from16 v15, v84
    const/16 v11, 0x18
    const/16 v55, 0x24
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_1b24
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_1b24
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->video_processing_pending:Z
    if-eqz v0, :label_1b24
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v6, -0x1
    const/16 v9, 0x8
    invoke-static {v6, v9}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    new-instance v0, Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    new-instance v2, Lbh/j;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v3
    const/16 v4, 0xa
    invoke-direct {v2, v3, v4}, Lbh/j;-><init>(Landroid/content/Context;I)V
    const/4 v6, 0x6
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V
    const/4 v7, 0x3
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    sget v3, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v3, 0x41500000
    const/4 v6, 0x1
    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V
    sget v4, Lorg/telegram/messenger/R$string;->VideoConversionInfo:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static/range {v101 .. v101}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    invoke-static/range {v101 .. v101}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V
    const/16 v3, 0x77
    const/4 v5, -0x2
    invoke-static {v5, v5, v3}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V
    goto :label_1b3f
    :label_1b24
    const/4 v7, 0x3
    goto :label_1b3f
    :label_1b26
    move-object/from16 v86, v103
    move-object/from16 v85, v2
    move-object/from16 v87, v5
    move-object/from16 v83, v7
    move-object/from16 v17, v8
    move-object/from16 v65, v9
    move-object/from16 v97, v10
    move-object v14, v12
    move-object v15, v13
    move-object/from16 v12, v42
    move/from16 v101, v43
    const/4 v7, 0x3
    const/16 v11, 0x18
    const/16 v55, 0x24
    :label_1b3f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_1b8f
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v0
    if-eqz v0, :label_1b8f
    iget v0, v1, Lorg/telegram/ui/ko;->Q3:I
    const/16 v6, 0x9
    if-eq v0, v6, :label_1b8f
    iget-object v0, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ko;->ac(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-nez v0, :label_1b8f
    new-instance v0, Lorg/telegram/ui/ActionBar/o1;
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v6, -0x1
    const/16 v9, 0x8
    invoke-static {v6, v9}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v2, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    sget v3, Lorg/telegram/messenger/R$string;->EphemeralMessageMenuHint:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    const/16 v4, 0xd
    invoke-static {v4, v0, v3, v2}, Lorg/telegram/ui/ko;->M7(ILandroid/content/Context;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Landroid/widget/FrameLayout;
    move-result-object v0
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V
    const/4 v5, -0x2
    invoke-static {v6, v5}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    :label_1b8f
    new-instance v6, Lorg/telegram/ui/lb;
    iget-object v0, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    const/4 v10, 0x1
    invoke-direct {v6, v10, v0, v1}, Lorg/telegram/ui/lb;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/r2;)V
    new-instance v0, Lorg/telegram/ui/ui;
    move-object/from16 v2, v85
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ui;-><init>(Lorg/telegram/ui/ko;Landroid/graphics/Rect;)V
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    move-object/from16 v3, v83
    if-eqz v3, :label_1bb0
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    move-object/from16 v3, v97
    goto/16 :label_200f
    :label_1bb0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v0
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J
    move-result-wide v2
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v4
    cmp-long v0, v2, v4
    if-nez v0, :label_1bc2
    const/4 v8, 0x1
    goto :label_1bc3
    :label_1bc2
    const/4 v8, 0x0
    :label_1bc3
    new-instance v0, Lorg/telegram/ui/Components/yl0;
    if-eqz v8, :label_1bc9
    move v2, v7
    goto :label_1bca
    :label_1bc9
    const/4 v2, 0x0
    :label_1bca
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    move v4, v2
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v5
    move/from16 v94, v4
    move-object v4, v1
    move/from16 v1, v94
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/yl0;-><init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/ui/ActionBar/j6;)V
    move-object v1, v4
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/r2;->resourceProvider:Lorg/telegram/ui/ActionBar/j6;
    invoke-static {v2}, Lag/c;->h(Lorg/telegram/ui/ActionBar/j6;)Lzf/d;
    move-result-object v2
    move-object/from16 v3, v87
    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/yl0;->o(Lwf/a;Lzf/d;)V
    if-eqz v8, :label_1c14
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z
    move-result v2
    if-eqz v2, :label_1bfe
    sget v2, Lorg/telegram/messenger/R$string;->SavedTagReactionsHint2:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    goto :label_1c11
    :label_1bfe
    sget v2, Lorg/telegram/messenger/R$string;->SavedTagReactionsPremiumHint:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    sget v3, Lorg/telegram/ui/ActionBar/n6;->o6:I
    new-instance v4, Lorg/telegram/ui/zf;
    const/4 v10, 0x2
    invoke-direct {v4, v1, v10}, Lorg/telegram/ui/zf;-><init>(Lorg/telegram/ui/ko;I)V
    const/4 v9, 0x0
    invoke-static {v2, v3, v9, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    move-result-object v2
    :label_1c11
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/yl0;->setHint(Ljava/lang/CharSequence;)V
    :label_1c14
    if-eqz v31, :label_1c23
    if-eqz v8, :label_1c28
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z
    move-result v2
    if-nez v2, :label_1c23
    goto :label_1c28
    :label_1c23
    move-object/from16 v9, v65
    const/4 v2, 0x0
    goto/16 :label_1cb3
    :label_1c28
    const/high16 v2, 0x40800000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v4, :label_1c34
    const/4 v4, 0x0
    goto :label_1c35
    :label_1c34
    move v4, v11
    :label_1c35
    add-int/2addr v3, v4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v5, :label_1c43
    goto :label_1c44
    :label_1c43
    const/4 v11, 0x0
    :label_1c44
    add-int/2addr v2, v11
    const/16 v5, 0x16
    int-to-float v8, v5
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V
    move-object v3, v0
    new-instance v0, Lk4/d;
    const/16 v5, 0xb
    const/4 v4, 0x0
    move-object/from16 v2, v17
    invoke-direct/range {v0 .. v5}, Lk4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    move-object v2, v0
    move-object v0, v3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/yl0;->setDelegate(Lorg/telegram/ui/Components/xl0;)V
    invoke-virtual {v0}, Lorg/telegram/ui/Components/yl0;->getTopOffset()F
    move-result v2
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v2, v3
    const/high16 v3, 0x42500000
    add-float/2addr v2, v3
    add-float/2addr v2, v8
    float-to-int v2, v2
    const/16 v37, 0x0
    const/16 v38, -0x14
    const/16 v32, -0x1
    const/16 v34, 0x5
    const/16 v35, 0x0
    const/16 v36, 0x32
    move/from16 v33, v2
    invoke-static/range {v32 .. v38}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/jp;->setReactionsLayout(Lorg/telegram/ui/Components/yl0;)V
    const/4 v9, 0x0
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V
    move-object/from16 v9, v65
    invoke-virtual {v1, v9}, Lorg/telegram/ui/ko;->c9(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-result-object v2
    if-eqz v2, :label_1c94
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    goto :label_1c95
    :label_1c94
    move-object v2, v9
    :label_1c95
    iget-object v3, v1, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    const/4 v10, 0x1
    invoke-virtual {v0, v2, v3, v10}, Lorg/telegram/ui/Components/yl0;->p(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    const/4 v2, 0x0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/yl0;->setTransitionProgress(F)V
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/ki0;
    move-result-object v3
    if-eqz v3, :label_1cb3
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/ki0;
    move-result-object v3
    new-instance v4, Lorg/telegram/ui/vi;
    invoke-direct {v4, v0}, Lorg/telegram/ui/vi;-><init>(Lorg/telegram/ui/Components/yl0;)V
    iget-object v3, v3, Lorg/telegram/ui/Components/ki0;->x:Ljava/util/ArrayList;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1cb3
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->D9()Z
    move-result v3
    if-nez v3, :label_1cc7
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z
    if-eqz v3, :label_1cea
    iget-object v3, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :label_1cea
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z
    if-eqz v3, :label_1cea
    :label_1cc7
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    if-nez v3, :label_1cea
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSent()Z
    move-result v3
    if-eqz v3, :label_1cea
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v3
    if-nez v3, :label_1cea
    iget v3, v1, Lorg/telegram/ui/ko;->Q3:I
    const/4 v10, 0x1
    if-eq v3, v10, :label_1cea
    if-eq v3, v7, :label_1cea
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v3
    cmp-long v3, v3, v18
    if-eqz v3, :label_1cea
    const/4 v3, 0x1
    goto :label_1ceb
    :label_1cea
    const/4 v3, 0x0
    :label_1ceb
    if-eqz v31, :label_1cf2
    const/high16 v4, 0x41800000
    move/from16 v35, v4
    goto :label_1cf4
    :label_1cf2
    move/from16 v35, v2
    :label_1cf4
    if-eqz v31, :label_1cf8
    const/high16 v2, 0x42100000
    :label_1cf8
    move/from16 v37, v2
    const/16 v38, 0x0
    const/high16 v32, -0x40000000
    const/high16 v33, -0x40000000
    const/16 v34, 0x3
    const/16 v36, 0x0
    invoke-static/range {v32 .. v38}, Lt7/x5;->u(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v6, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/jp;->setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    const/high16 v2, 0x42180000
    if-eqz v3, :label_1e19
    const/4 v10, 0x0
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v3
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v4
    invoke-virtual {v14, v3, v4}, Landroid/view/View;->measure(II)V
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v3
    if-eqz v3, :label_1d2e
    iget-object v3, v1, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-nez v3, :label_1d2e
    const/4 v3, 0x1
    goto :label_1d2f
    :label_1d2e
    const/4 v3, 0x0
    :label_1d2f
    new-instance v4, Landroid/widget/TextView;
    iget-object v5, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const/high16 v5, 0x41600000
    const/4 v10, 0x1
    invoke-virtual {v4, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V
    sget v5, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->D9()Z
    move-result v5
    if-eqz v5, :label_1da0
    invoke-virtual {v1}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v10
    cmp-long v5, v10, v21
    if-lez v5, :label_1d8d
    iget-object v3, v1, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    if-eqz v3, :label_1d75
    iget-object v5, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :label_1d75
    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_peer_enabled:Z
    if-eqz v8, :label_1d75
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    move-result-object v3
    sget v5, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoUserBecauseUser:I
    const/4 v10, 0x1
    new-array v8, v10, [Ljava/lang/Object;
    const/16 v29, 0x0
    aput-object v3, v8, v29
    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    goto :label_1d98
    :label_1d75
    if-eqz v3, :label_1d86
    iget-object v5, v1, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :label_1d86
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->noforwards_my_enabled:Z
    if-eqz v3, :label_1d86
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoUserBecauseYou:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    goto :label_1d98
    :label_1d86
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoUser:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    goto :label_1d98
    :label_1d8d
    if-eqz v3, :label_1d92
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoChannel:I
    goto :label_1d94
    :label_1d92
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoGroup:I
    :label_1d94
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    :label_1d98
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :label_1da9
    :label_1da0
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoBot:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :label_1da9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I
    move-result v3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v3, v5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I
    invoke-static {v3, v5}, Le0/c;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v3
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;
    sget v8, Lorg/telegram/ui/ActionBar/n6;->G8:I
    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v8
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v5, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    new-instance v5, Landroid/widget/FrameLayout;
    iget-object v8, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v8
    invoke-direct {v5, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    const/high16 v37, 0x41300000
    const/high16 v38, 0x41300000
    const/16 v32, -0x1
    const/high16 v33, -0x40000000
    const/16 v34, 0x0
    const/high16 v35, 0x41300000
    const/high16 v36, 0x41300000
    invoke-static/range {v32 .. v38}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    if-eqz v31, :label_1dfd
    move/from16 v35, v52
    goto :label_1dff
    :label_1dfd
    const/16 v35, 0x0
    :label_1dff
    if-eqz v31, :label_1e04
    move/from16 v37, v55
    goto :label_1e06
    :label_1e04
    const/16 v37, 0x0
    :label_1e06
    const/16 v38, 0x0
    const/16 v32, -0x1
    const/16 v33, -0x2
    const/16 v34, 0x3
    const/16 v36, -0x8
    invoke-static/range {v32 .. v38}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v6, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iput-object v5, v6, Lorg/telegram/ui/Components/jp;->c:Landroid/widget/FrameLayout;
    :label_1e19
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v3
    if-eqz v3, :label_1efd
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :label_1efd
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J
    cmp-long v3, v3, v21
    if-lez v3, :label_1efd
    const/4 v10, 0x0
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v3
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v4
    invoke-virtual {v14, v3, v4}, Landroid/view/View;->measure(II)V
    new-instance v3, Landroid/widget/TextView;
    iget-object v4, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v4
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const/high16 v4, 0x41600000
    const/4 v10, 0x1
    invoke-virtual {v3, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J
    long-to-int v4, v4
    const/4 v10, 0x0
    new-array v5, v10, [Ljava/lang/Object;
    const-string v8, "PaidMessagesSendErrorState1"
    invoke-static {v8, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lvg/d8;->R0(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v4
    iget-object v5, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move/from16 v98, v2
    move-object/from16 v102, v3
    iget-wide v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J
    long-to-int v2, v2
    new-array v3, v10, [Ljava/lang/Object;
    const-string v5, "PaidMessagesSendErrorState2"
    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lvg/d8;->R0(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v2
    new-array v3, v7, [Ljava/lang/CharSequence;
    aput-object v4, v3, v10
    const-string v4, " "
    const/16 v26, 0x1
    aput-object v4, v3, v26
    const/16 v92, 0x2
    aput-object v2, v3, v92
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    move-object/from16 v3, v102
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    invoke-static/range {v98 .. v98}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v2, v4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V
    iget-object v2, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I
    invoke-static {v2, v4}, Le0/c;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v2
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;
    sget v5, Lorg/telegram/ui/ActionBar/n6;->G8:I
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v5
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v4, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    new-instance v4, Landroid/widget/FrameLayout;
    iget-object v5, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    const/high16 v21, 0x41300000
    const/high16 v22, 0x41300000
    const/16 v16, -0x1
    const/high16 v17, -0x40000000
    const/16 v18, 0x0
    const/high16 v19, 0x41300000
    const/high16 v20, 0x41300000
    invoke-static/range {v16 .. v22}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    if-eqz v31, :label_1ee1
    move/from16 v19, v52
    goto :label_1ee3
    :label_1ee1
    const/16 v19, 0x0
    :label_1ee3
    if-eqz v31, :label_1ee8
    move/from16 v21, v55
    goto :label_1eea
    :label_1ee8
    const/16 v21, 0x0
    :label_1eea
    const/16 v22, 0x0
    const/16 v16, -0x1
    const/16 v17, -0x2
    const/16 v18, 0x3
    const/16 v20, -0x8
    invoke-static/range {v16 .. v22}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v6, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iput-object v4, v6, Lorg/telegram/ui/Components/jp;->c:Landroid/widget/FrameLayout;
    :label_1efd
    iget v2, v9, Lorg/telegram/messenger/MessageObject;->contentType:I
    if-nez v2, :label_200e
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;
    const-class v4, Lorg/telegram/ui/Components/b6;
    if-eqz v3, :label_1f19
    move-object v3, v2
    check-cast v3, Landroid/text/Spanned;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v2
    const/4 v9, 0x0
    invoke-interface {v3, v9, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v2
    move-object v3, v2
    check-cast v3, [Lorg/telegram/ui/Components/b6;
    goto :label_1f1c
    :label_1f19
    const/4 v9, 0x0
    move-object/from16 v3, v97
    :label_1f1c
    iget-object v2, v1, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v1, Lorg/telegram/ui/ko;->d5:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    move-object/from16 v7, v97
    invoke-static {v2, v5, v7}, Lorg/telegram/ui/ko;->G8(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;[I)Ljava/lang/CharSequence;
    move-result-object v2
    instance-of v5, v2, Landroid/text/Spanned;
    if-eqz v5, :label_1f38
    move-object v5, v2
    check-cast v5, Landroid/text/Spanned;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v2
    invoke-interface {v5, v9, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [Lorg/telegram/ui/Components/b6;
    move-object v7, v2
    :label_1f38
    if-nez v3, :label_1f3c
    const/4 v2, 0x0
    goto :label_1f3d
    :label_1f3c
    array-length v2, v3
    :label_1f3d
    if-nez v7, :label_1f41
    const/4 v4, 0x0
    goto :label_1f42
    :label_1f41
    array-length v4, v7
    :label_1f42
    add-int/2addr v2, v4
    if-lez v2, :label_200e
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    if-nez v3, :label_1f4e
    const/4 v5, 0x0
    goto :label_1f4f
    :label_1f4e
    array-length v5, v3
    :label_1f4f
    const/4 v8, 0x0
    :label_1f50
    if-ge v8, v2, :label_1fb7
    if-ge v8, v5, :label_1f57
    aget-object v9, v3, v8
    goto :label_1f5b
    :label_1f57
    sub-int v9, v8, v5
    aget-object v9, v7, v9
    :label_1f5b
    if-eqz v9, :label_1f61
    iget-boolean v10, v9, Lorg/telegram/ui/Components/b6;->standard:Z
    if-eqz v10, :label_1f69
    :label_1f61
    move/from16 v98, v2
    move-object/from16 v97, v3
    :label_1f65
    move-object/from16 v102, v7
    move v11, v8
    goto :label_1fae
    :label_1f69
    iget-object v10, v9, Lorg/telegram/ui/Components/b6;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v10, :label_1f7a
    iget v10, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    move/from16 v98, v2
    move-object/from16 v97, v3
    iget-wide v2, v9, Lorg/telegram/ui/Components/b6;->documentId:J
    invoke-static {v10, v2, v3}, Lorg/telegram/ui/Components/s5;->f(IJ)Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v10
    goto :label_1f7e
    :label_1f7a
    move/from16 v98, v2
    move-object/from16 v97, v3
    :label_1f7e
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v2
    if-nez v2, :label_1f85
    goto :label_1f65
    :label_1f85
    const/4 v3, 0x0
    :label_1f86
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v9
    if-ge v3, v9, :label_1fa5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J
    move-object/from16 v102, v7
    move v11, v8
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J
    cmp-long v7, v9, v7
    if-nez v7, :label_1f9f
    const/4 v3, 0x1
    goto :label_1fa9
    :label_1f9f
    add-int/lit8 v3, v3, 0x1
    move-object/from16 v7, v102
    move v8, v11
    goto :label_1f86
    :label_1fa5
    move-object/from16 v102, v7
    move v11, v8
    const/4 v3, 0x0
    :label_1fa9
    if-nez v3, :label_1fae
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_1fae
    add-int/lit8 v8, v11, 0x1
    move-object/from16 v3, v97
    move/from16 v2, v98
    move-object/from16 v7, v102
    goto :label_1f50
    :label_1fb7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v2
    if-lez v2, :label_200e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z
    move-result v2
    if-nez v2, :label_200e
    new-instance v2, Lorg/telegram/ui/ActionBar/o1;
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v5, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v2, v3, v5}, Lorg/telegram/ui/ActionBar/o1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const/4 v5, -0x1
    const/16 v9, 0x8
    invoke-static {v5, v9}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v3
    invoke-virtual {v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    new-instance v16, Lorg/telegram/ui/Components/hc0;
    iget v2, v1, Lorg/telegram/ui/ActionBar/r2;->currentAccount:I
    iget-object v3, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v19
    iget-object v3, v1, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/16 v18, 0x0
    move/from16 v17, v2
    move-object/from16 v21, v3
    move-object/from16 v20, v4
    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/hc0;-><init>(IILandroid/content/Context;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/j6;)V
    move-object/from16 v3, v16
    move-object/from16 v2, v20
    new-instance v4, Lorg/telegram/ui/hg;
    const/4 v9, 0x0
    invoke-direct {v4, v1, v2, v9}, Lorg/telegram/ui/hg;-><init>(Lorg/telegram/ui/ko;Ljava/util/ArrayList;I)V
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v5, -0x2
    const/4 v7, -0x1
    invoke-static {v7, v5}, Lt7/x5;->n(II)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v14, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->c()V
    :label_200e
    move-object v3, v0
    :label_200f
    if-eqz v3, :label_2014
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/yl0;->setParentLayout(Lorg/telegram/ui/Components/jp;)V
    :label_2014
    new-instance v0, Lorg/telegram/ui/yi;
    invoke-direct {v0, v1, v6, v3}, Lorg/telegram/ui/yi;-><init>(Lorg/telegram/ui/ko;Lorg/telegram/ui/lb;Lorg/telegram/ui/Components/yl0;)V
    iput-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    const/4 v10, 0x1
    iput-boolean v10, v0, Lorg/telegram/ui/ActionBar/r1;->e:Z
    const/16 v2, 0xdc
    iput v2, v0, Lorg/telegram/ui/ActionBar/r1;->c:I
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V
    if-eqz v31, :label_203c
    if-eqz v3, :label_203c
    invoke-static {}, Lorg/telegram/ui/Components/yl0;->c()Z
    move-result v0
    if-nez v0, :label_2035
    goto :label_203c
    :label_2035
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    const/4 v9, 0x0
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    goto :label_2043
    :label_203c
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :label_2043
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    const/4 v10, 0x1
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    const/high16 v0, 0x447a0000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    const/high16 v4, -0x80000000
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    invoke-virtual {v6, v2, v0}, Landroid/view/View;->measure(II)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    const/4 v10, 0x2
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    const/16 v13, 0x30
    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->P8:Lorg/telegram/ui/ActionBar/r1;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
    move-result-object v0
    const/4 v10, 0x1
    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V
    invoke-virtual {v14, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V
    sget v0, Lorg/telegram/ui/ActionBar/n6;->E8:I
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v0
    const v2, 0x3d75c28f
    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/n6;->m1(FI)I
    move-result v0
    invoke-static {v14, v0}, Lorg/telegram/ui/Components/a90;->U(Landroid/view/ViewGroup;I)V
    invoke-virtual/range {v96 .. v96}, Landroid/view/View;->getLeft()I
    move-result v0
    move/from16 v2, v99
    float-to-int v2, v2
    add-int/2addr v0, v2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    sub-int/2addr v0, v2
    move-object/from16 v2, v86
    iget v4, v2, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, v4
    const/high16 v4, 0x41e00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v0, v4
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    if-ge v0, v4, :label_20ae
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    goto :label_20d0
    :label_20ae
    iget-object v4, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    sub-int/2addr v4, v5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I
    move-result v5
    sub-int/2addr v4, v5
    if-le v0, v4, :label_20d0
    iget-object v0, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int/2addr v0, v4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
    sub-int/2addr v0, v4
    :label_20d0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v4
    if-eqz v4, :label_20e3
    const/4 v10, 0x2
    new-array v4, v10, [I
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/r2;->fragmentView:Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V
    const/16 v29, 0x0
    aget v4, v4, v29
    add-int/2addr v0, v4
    :label_20e3
    iget-object v4, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I
    move-result v4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I
    move-result v5
    const/high16 v7, 0x42400000
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v5
    iget-object v5, v1, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v5}, Lorg/telegram/ui/bn;->R()I
    move-result v5
    const/high16 v8, 0x41a00000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    if-le v5, v8, :label_2103
    add-int/2addr v4, v5
    :label_2103
    iget-object v5, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v5}, Landroid/view/View;->getY()F
    move-result v5
    const/high16 v8, 0x41c00000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    int-to-float v8, v8
    add-float/2addr v5, v8
    float-to-int v5, v5
    sub-int v8, v4, v7
    invoke-static/range {v101 .. v101}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    sub-int/2addr v8, v9
    if-ge v7, v4, :label_217b
    iget-object v4, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v4}, Landroid/view/View;->getY()F
    move-result v4
    invoke-virtual/range {v96 .. v96}, Landroid/view/View;->getTop()I
    move-result v9
    int-to-float v9, v9
    add-float/2addr v4, v9
    add-float v4, v4, v100
    float-to-int v4, v4
    iget-boolean v9, v1, Lorg/telegram/ui/ko;->Oa:Z
    if-eqz v9, :label_2161
    const/4 v10, 0x2
    new-array v2, v10, [I
    move-object/from16 v9, v96
    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationInWindow([I)V
    const/16 v26, 0x1
    aget v4, v2, v26
    int-to-float v4, v4
    add-float v4, v4, v100
    float-to-int v4, v4
    iget-object v5, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V
    const/high16 v5, 0x41c00000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    aget v2, v2, v26
    iget-object v8, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
    add-int/2addr v8, v2
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v2, v2, Landroid/graphics/Point;->y:I
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I
    move-result v2
    move/from16 v8, v101
    invoke-static {v8, v2, v7}, Lorg/telegram/messenger/h4;->z(FII)I
    move-result v8
    goto :label_2176
    :label_2161
    move-object/from16 v9, v96
    iget v10, v2, Landroid/graphics/Rect;->top:I
    sub-int v10, v7, v10
    iget v2, v2, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v10, v2
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    if-le v10, v2, :label_2176
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v2, v7
    add-int/2addr v4, v2
    :label_2176
    invoke-static {v4, v8, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I
    move-result v2
    goto :label_2185
    :label_217b
    move-object/from16 v9, v96
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/r2;->inBubbleMode:Z
    if-eqz v2, :label_2183
    const/4 v2, 0x0
    goto :label_2185
    :label_2183
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I
    :label_2185
    add-int/2addr v8, v7
    sub-int/2addr v8, v2
    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/jp;->setMaxHeight(I)V
    new-instance v4, Lorg/telegram/messenger/qj;
    move/from16 v99, v0
    move-object/from16 v98, v1
    move/from16 v100, v2
    move-object/from16 v102, v3
    move-object/from16 v97, v4
    move/from16 v101, v40
    invoke-direct/range {v97 .. v102}, Lorg/telegram/messenger/qj;-><init>(Lorg/telegram/ui/ko;IIZLorg/telegram/ui/Components/yl0;)V
    move-object/from16 v0, v97
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v2
    if-eqz v2, :label_21a7
    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    goto :label_21aa
    :label_21a7
    invoke-virtual {v0}, Lorg/telegram/messenger/qj;->run()V
    :label_21aa
    iget-object v0, v1, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/ek;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/bn0;->B0()V
    iget-object v0, v1, Lorg/telegram/ui/ko;->y0:Lorg/telegram/ui/hk;
    const/4 v10, 0x0
    iput-boolean v10, v0, Ln4/x;->R:Z
    invoke-virtual/range {v95 .. v96}, Lorg/telegram/ui/ko;->h8(Landroid/view/View;)V
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ko;->m9(Z)V
    iget-object v0, v1, Lorg/telegram/ui/ko;->y3:Lorg/telegram/ui/sl;
    const/4 v10, 0x1
    if-eqz v0, :label_21c2
    invoke-virtual {v0, v10, v10}, Lorg/telegram/ui/Components/UndoView;->e(IZ)V
    :label_21c2
    iget-object v0, v1, Lorg/telegram/ui/ko;->x3:Lorg/telegram/ui/Components/UndoView;
    if-eqz v0, :label_21c9
    invoke-virtual {v0, v10, v10}, Lorg/telegram/ui/Components/UndoView;->e(IZ)V
    :label_21c9
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    if-eqz v0, :label_21dd
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    if-eqz v0, :label_21dd
    iget-object v0, v1, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/uu;
    move-result-object v0
    const/4 v9, 0x0
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V
    :label_21dd
    return v10
    :label_21de
    return v9
    nop
    :payload_21e0_0000
    .array-data 1
        0x0t
        0x1t
        0x1t
    .end array-data
    :payload_21e6_0000
    .array-data 4
        0x3dcccccd
        0x3f800000
    .end array-data
.end method

