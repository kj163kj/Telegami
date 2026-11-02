# file_id=2 method_idx=55229 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/vn;->n0(Lorg/telegram/ui/Cells/u1;FFZ)V"
.method public final n0(Lorg/telegram/ui/Cells/u1;FFZ)V
    .registers 42

    move-object/from16 v1, v37
    invoke-virtual/range {v38 .. v38}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v9
    iget v0, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v2, 0x17
    const/4 v11, 0x2
    iget-object v14, v1, Lorg/telegram/ui/vn;->a:Lorg/telegram/ui/ko;
    if-ne v0, v2, :label_0048
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-eqz v2, :label_0ca8
    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;
    if-nez v3, :label_0ca8
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v0
    iput v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I
    iput v11, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I
    iget-object v0, v14, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2, v0}, Lxg/f6;->b(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getOrCreateStoryViewer()Lxg/y7;
    move-result-object v0
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    iget-object v4, v14, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-static {v4}, Lxg/x5;->a(Lorg/telegram/ui/Components/cn0;)Lxg/x5;
    move-result-object v4
    invoke-virtual {v0, v2, v3, v4}, Lxg/y7;->G(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lxg/x5;)V
    return-void
    :label_0048
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v0
    const/4 v12, 0x1
    if-eqz v0, :label_0062
    invoke-static {v14}, Lorg/telegram/ui/ko;->A5(Lorg/telegram/ui/ko;)I
    move-result v0
    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;
    move-result-object v0
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/tgnet/TLRPC$Message;)I
    move-result v0
    if-ne v0, v12, :label_0064
    iput-boolean v12, v9, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z
    goto :label_0064
    :label_0062
    iput-boolean v12, v9, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z
    :label_0064
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v0
    if-eqz v0, :label_007a
    const/4 v8, 0x1
    const/4 v10, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v9, 0x0
    move-object/from16 v3, v38
    move/from16 v6, v39
    move/from16 v7, v40
    move-object v2, v14
    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/ko;->L7(Landroid/view/View;ZZFFZZZ)Z
    return-void
    :label_007a
    move-object v2, v14
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v0
    if-eqz v0, :label_0083
    goto/16 :label_0ca8
    :label_0083
    const/4 v13, 0x0
    const/4 v14, 0x0
    if-eqz v41, :label_00ed
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v0, :label_00ed
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v0, :label_00ed
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    if-eqz v0, :label_00ed
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_00ed
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v6
    const/4 v7, 0x2
    const/4 v5, 0x0
    move-object/from16 v4, v38
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ko;->ja(Ljava/lang/String;Lorg/telegram/ui/Cells/u1;Landroid/text/style/CharacterStyle;II)Z
    move-result v0
    move-object/from16 v36, v4
    move-object v4, v2
    move-object v2, v3
    move-object/from16 v3, v36
    if-nez v0, :label_0ca8
    iget-object v0, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    if-eqz v0, :label_00c1
    invoke-virtual {v0, v12}, Lje/e;->a(Z)V
    :label_00c1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    if-nez v0, :label_00c8
    goto :label_00cd
    :label_00c8
    new-instance v13, Lorg/telegram/ui/on;
    invoke-direct {v13, v1, v3, v14}, Lorg/telegram/ui/on;-><init>(Ljava/lang/Object;Lorg/telegram/ui/Cells/c0;I)V
    :label_00cd
    iput-object v13, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v14
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v15
    iget-object v0, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    const/16 v22, 0x1
    const/16 v23, 0x0
    const/16 v16, 0x1
    const/16 v17, 0x0
    const/16 v18, 0x0
    const/16 v20, 0x0
    const/16 v21, 0x0
    move-object/from16 v19, v0
    invoke-static/range {v14 .. v23}, Lje/f;->q(Landroid/content/Context;Landroid/net/Uri;ZZZLje/e;Ljava/lang/String;ZZZ)V
    return-void
    :label_00ed
    move-object/from16 v3, v38
    move-object v4, v2
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v0
    const/4 v15, 0x5
    if-eqz v0, :label_0113
    new-instance v0, Lorg/telegram/ui/hn;
    invoke-direct {v0, v1, v9, v14}, Lorg/telegram/ui/hn;-><init>(Lorg/telegram/ui/vn;Lorg/telegram/messenger/MessageObject;I)V
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isStakeableDice()Z
    move-result v2
    if-eqz v2, :label_010f
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    new-instance v3, Lorg/telegram/ui/z;
    invoke-direct {v3, v1, v9, v0, v15}, Lorg/telegram/ui/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->loadStakeDiceInfo(Lorg/telegram/messenger/Utilities$Callback;)V
    return-void
    :label_010f
    invoke-virtual {v0}, Lorg/telegram/ui/hn;->run()V
    return-void
    :label_0113
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z
    move-result v0
    if-eqz v0, :label_0139
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z
    move-result v0
    if-eqz v0, :label_013f
    iget-object v0, v4, Lorg/telegram/ui/ko;->wa:Lorg/telegram/ui/hl;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    move-result-object v2
    iget-object v0, v0, Lorg/telegram/ui/nz;->e:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/nz;->p(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :label_0139
    iget-object v0, v4, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :label_013f
    :label_0139
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z
    move-result v0
    if-eqz v0, :label_014d
    :label_013f
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ko;->Ra(Lorg/telegram/ui/Cells/u1;)V
    iget-object v0, v4, Lorg/telegram/ui/ko;->wa:Lorg/telegram/ui/hl;
    invoke-virtual {v0, v3, v4, v12}, Lorg/telegram/ui/nz;->k(Lorg/telegram/ui/Cells/u1;Lorg/telegram/ui/ko;Z)V
    iget-object v0, v4, Lorg/telegram/ui/ko;->w0:Lorg/telegram/ui/fk;
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/cn0;->I0(Z)V
    return-void
    :label_014d
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v0
    const/16 v16, 0x6
    const/4 v10, -0x1
    if-eqz v0, :label_0986
    invoke-virtual {v4, v9, v14}, Lorg/telegram/ui/ko;->kb(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/ui/ef;
    move-result-object v7
    invoke-static {v4, v9}, Lorg/telegram/ui/ko;->P4(Lorg/telegram/ui/ko;Lorg/telegram/messenger/MessageObject;)Lbh/f4;
    move-result-object v0
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/u1;->invalidate()V
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->f()Lorg/telegram/ui/SecretMediaViewer;
    move-result-object v3
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    iput v5, v3, Lorg/telegram/ui/SecretMediaViewer;->a:I
    iget-object v6, v3, Lorg/telegram/ui/SecretMediaViewer;->h:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    move/from16 v17, v15
    const/4 v15, 0x7
    move-object/from16 v18, v7
    const/high16 v19, 0x40000000
    if-ne v5, v2, :label_0180
    const/4 v5, 0x0
    goto/16 :label_044c
    :label_0180
    iput-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    new-instance v5, Lorg/telegram/ui/Components/fo0;
    invoke-direct {v5, v2, v13}, Lorg/telegram/ui/Components/fo0;-><init>(Landroid/content/Context;Landroid/view/animation/DecelerateInterpolator;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->f1:Lorg/telegram/ui/Components/fo0;
    new-instance v5, Lorg/telegram/ui/k0;
    const/16 v8, 0x15
    invoke-direct {v5, v3, v2, v8}, Lorg/telegram/ui/k0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->k0:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v5, v12}, Landroid/view/View;->setFocusable(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v5, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    new-instance v5, Lbf/h;
    invoke-direct {v5, v3, v2}, Lbf/h;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    new-instance v5, Landroid/view/View;
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->f:Landroid/view/View;
    const/high16 v8, 0x7f000000
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    iget-object v13, v3, Lorg/telegram/ui/SecretMediaViewer;->f:Landroid/view/View;
    const/4 v11, -0x2
    const/16 v7, 0x50
    invoke-static {v10, v11, v7}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v11
    invoke-virtual {v5, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v5, v14}, Landroid/view/View;->setFocusable(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I
    const/16 v11, 0x33
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v5, v12}, Landroid/view/View;->setFitsSystemWindows(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    new-instance v11, Lorg/telegram/ui/g51;
    invoke-direct {v11, v3, v14}, Lorg/telegram/ui/g51;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v5, v11}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    const/16 v11, 0x700
    invoke-virtual {v5, v11}, Landroid/view/View;->setSystemUiVisibility(I)V
    new-instance v5, Landroid/view/GestureDetector;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v11
    invoke-direct {v5, v11, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->K0:Landroid/view/GestureDetector;
    invoke-virtual {v5, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    new-instance v5, Lnf/d1;
    invoke-direct {v5, v3, v2, v15}, Lnf/d1;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/l;->setTitleColor(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/l;->setSubtitleColor(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/l;->setBackgroundColor(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/l;->setOccupyStatusBar(Z)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    const v11, 0x40ffffff
    invoke-virtual {v5, v11, v14}, Lorg/telegram/ui/ActionBar/l;->C(IZ)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    invoke-virtual {v5, v10, v14}, Lorg/telegram/ui/ActionBar/l;->D(IZ)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    sget v11, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I
    invoke-virtual {v5, v11}, Lorg/telegram/ui/ActionBar/l;->setBackButtonImage(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    const/high16 v11, 0x428c0000
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-virtual {v5, v11}, Lorg/telegram/ui/ActionBar/l;->setTitleRightMargin(I)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    const/high16 v13, -0x40000000
    invoke-static {v13, v10}, Lt7/x5;->c(FI)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v13
    invoke-virtual {v5, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    new-instance v11, Lorg/telegram/ui/y41;
    invoke-direct {v11, v3, v12}, Lorg/telegram/ui/y41;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v5, v11}, Lorg/telegram/ui/ActionBar/l;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/k;)V
    new-instance v5, Lzg/e3;
    invoke-direct {v5, v2, v12}, Lzg/e3;-><init>(Landroid/content/Context;I)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->r:Lzg/e3;
    const/high16 v11, -0x3e300000
    const/high16 v13, 0x3f800000
    invoke-virtual {v5, v13, v11}, Lzg/e3;->l(FF)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->r:Lzg/e3;
    const/high16 v23, 0x41000000
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v13
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v12
    invoke-virtual {v5, v11, v13, v14, v12}, Landroid/view/View;->setPadding(IIII)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->r:Lzg/e3;
    const/16 v32, 0x0
    const/16 v33, 0x0
    const/16 v27, -0x1
    const/high16 v28, 0x42a00000
    const/16 v29, 0x35
    const/16 v30, 0x0
    const/high16 v31, 0x42400000
    invoke-static/range {v27 .. v33}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v12
    invoke-virtual {v5, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lorg/telegram/ui/m51;
    invoke-direct {v5, v3, v2}, Lorg/telegram/ui/m51;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    const/16 v27, 0x77
    const/high16 v28, 0x42400000
    const/16 v31, 0x0
    invoke-static/range {v27 .. v33}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v12
    invoke-virtual {v11, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lorg/telegram/ui/jp0;
    const/4 v11, 0x2
    invoke-direct {v5, v3, v11}, Lorg/telegram/ui/jp0;-><init>(Ljava/lang/Object;I)V
    new-instance v11, Lorg/telegram/ui/n51;
    invoke-direct {v11, v3, v2}, Lorg/telegram/ui/n51;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V
    iput-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    new-instance v11, Landroid/view/View;
    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    iput-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->S:Landroid/view/View;
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundColor(I)V
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->S:Landroid/view/View;
    const/16 v12, 0x77
    invoke-static {v10, v10, v12}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v12
    invoke-virtual {v8, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v8, Lorg/telegram/ui/ActionBar/p5;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v11
    invoke-direct {v8, v11}, Lorg/telegram/ui/ActionBar/p5;-><init>(Landroid/content/Context;)V
    iput-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->R:Lorg/telegram/ui/ActionBar/p5;
    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/p5;->setTextColor(I)V
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->R:Lorg/telegram/ui/ActionBar/p5;
    const/16 v11, 0x35
    invoke-virtual {v8, v11}, Lorg/telegram/ui/ActionBar/p5;->setGravity(I)V
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->R:Lorg/telegram/ui/ActionBar/p5;
    const/16 v11, 0xe
    invoke-virtual {v8, v11}, Lorg/telegram/ui/ActionBar/p5;->setTextSize(I)V
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->R:Lorg/telegram/ui/ActionBar/p5;
    const/4 v11, 0x2
    invoke-virtual {v8, v11}, Landroid/view/View;->setImportantForAccessibility(I)V
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    iget-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->R:Lorg/telegram/ui/ActionBar/p5;
    const/high16 v32, 0x41400000
    const/16 v27, -0x2
    const/high16 v28, -0x40000000
    const/high16 v31, 0x41700000
    invoke-static/range {v27 .. v33}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v12
    invoke-virtual {v8, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v8, Lorg/telegram/ui/a60;
    invoke-direct {v8, v3, v2, v15}, Lorg/telegram/ui/a60;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->Q:Lorg/telegram/ui/a60;
    new-instance v11, Lorg/telegram/ui/Components/g91;
    invoke-direct {v11, v8}, Lorg/telegram/ui/Components/g91;-><init>(Landroid/view/View;)V
    iput-object v11, v3, Lorg/telegram/ui/SecretMediaViewer;->P:Lorg/telegram/ui/Components/g91;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    iput v8, v11, Lorg/telegram/ui/Components/g91;->z:I
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->P:Lorg/telegram/ui/Components/g91;
    const v11, 0x33ffffff
    iput v11, v8, Lorg/telegram/ui/Components/g91;->k:I
    iput v11, v8, Lorg/telegram/ui/Components/g91;->l:I
    iput v10, v8, Lorg/telegram/ui/Components/g91;->m:I
    iput v10, v8, Lorg/telegram/ui/Components/g91;->n:I
    const v11, 0x59ffffff
    iput v11, v8, Lorg/telegram/ui/Components/g91;->A:I
    iput-object v5, v8, Lorg/telegram/ui/Components/g91;->j:Lorg/telegram/ui/Components/f91;
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->Q:Lorg/telegram/ui/a60;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    iget-object v8, v3, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    const/16 v11, 0x30
    invoke-static {v10, v11, v7}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v7
    invoke-virtual {v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v5, Lorg/telegram/ui/ct0;
    new-instance v7, Lxg/b;
    invoke-direct {v7}, Lxg/b;-><init>()V
    const/4 v8, 0x0
    invoke-direct {v5, v8, v7}, Lorg/telegram/ui/ct0;-><init>(Lxg/s6;Lorg/telegram/ui/ActionBar/j6;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->X:Lorg/telegram/ui/ct0;
    const/4 v7, 0x1
    iput-boolean v7, v5, Lorg/telegram/ui/Cells/ba;->j0:Z
    const/4 v7, 0x0
    iput-boolean v7, v5, Lorg/telegram/ui/Cells/ba;->h0:Z
    new-instance v5, Lorg/telegram/ui/yu0;
    iget-object v7, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v7
    invoke-direct {v5, v7}, Lorg/telegram/ui/yu0;-><init>(Landroid/content/Context;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->Y:Lorg/telegram/ui/yu0;
    new-instance v7, Lorg/telegram/ui/h51;
    invoke-direct {v7, v3, v2}, Lorg/telegram/ui/h51;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V
    invoke-virtual {v5, v7}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->Y:Lorg/telegram/ui/yu0;
    const/4 v7, 0x4
    invoke-virtual {v5, v7}, Lorg/telegram/ui/yu0;->setVisibility(I)V
    iget-boolean v5, v3, Lorg/telegram/ui/SecretMediaViewer;->v1:Z
    const/4 v7, 0x1
    if-eq v5, v7, :label_039b
    iput-boolean v7, v3, Lorg/telegram/ui/SecretMediaViewer;->v1:Z
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->Y:Lorg/telegram/ui/yu0;
    const/4 v7, 0x2
    const/4 v8, 0x0
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->Y:Lorg/telegram/ui/yu0;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/o21;->getCurrentView()Landroid/widget/TextView;
    move-result-object v5
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->Y:Lorg/telegram/ui/yu0;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/o21;->getNextView()Landroid/widget/TextView;
    move-result-object v5
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :label_039b
    new-instance v5, Landroid/widget/ImageView;
    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    iput-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    const/high16 v2, 0x42800000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    const/high16 v7, 0x66000000
    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/n6;->K(II)Landroid/graphics/drawable/ShapeDrawable;
    move-result-object v2
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    new-instance v2, Lorg/telegram/ui/Components/xh0;
    const/16 v5, 0x1c
    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/xh0;-><init>(I)V
    iput-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->V:Lorg/telegram/ui/Components/xh0;
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer;->V:Lorg/telegram/ui/Components/xh0;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    const v5, 0x3f19999a
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    const/4 v5, 0x0
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    const/high16 v7, 0x42000000
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    int-to-float v8, v8
    invoke-virtual {v2, v8}, Landroid/view/View;->setPivotX(F)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    iget-object v7, v3, Lorg/telegram/ui/SecretMediaViewer;->U:Landroid/widget/ImageView;
    const/16 v8, 0x11
    const/16 v12, 0x40
    invoke-static {v12, v12, v8}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v8
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v2, Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V
    iput-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->c:Landroid/view/WindowManager$LayoutParams;
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->height:I
    const/4 v7, -0x3
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->format:I
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->width:I
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
    const/16 v7, 0x63
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I
    const v7, -0x7ffedef8
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V
    const/4 v7, 0x1
    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->X:Lorg/telegram/ui/ct0;
    iget-object v6, v3, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/ba;->n(Landroid/content/Context;)Lorg/telegram/ui/Cells/aa;
    move-result-object v2
    if-eqz v2, :label_0440
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V
    iget-object v6, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :label_0440
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->X:Lorg/telegram/ui/ct0;
    iget-object v6, v3, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/ba;->S(Landroid/view/ViewGroup;)V
    iget-object v2, v3, Lorg/telegram/ui/SecretMediaViewer;->X:Lorg/telegram/ui/ct0;
    const/4 v7, 0x1
    iput-boolean v7, v2, Lorg/telegram/ui/Cells/ba;->i0:Z
    :label_044c
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->f()Lorg/telegram/ui/SecretMediaViewer;
    move-result-object v11
    iget-object v2, v4, Lorg/telegram/ui/ko;->Fa:Lorg/telegram/ui/cm;
    const-string v12, "window"
    iget-object v13, v11, Lorg/telegram/ui/SecretMediaViewer;->k0:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;
    iget-object v8, v11, Lorg/telegram/ui/SecretMediaViewer;->h:Lorg/telegram/messenger/ImageReceiver;
    iget-object v3, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    if-eqz v3, :label_0982
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z
    move-result v3
    if-eqz v3, :label_0982
    if-nez v2, :label_0466
    goto/16 :label_0ca8
    :label_0466
    const/4 v6, 0x1
    const/4 v7, 0x0
    const/4 v4, 0x0
    move v3, v5
    const/4 v5, 0x0
    move v14, v3
    move-object v3, v9
    const/high16 v9, 0x3f800000
    const/4 v15, 0x3
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/cm;->E(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/kv0;
    move-result-object v4
    if-nez v4, :label_0478
    goto/16 :label_0ca8
    :label_0478
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    const v6, 0x7fffffff
    if-ne v5, v6, :label_0483
    const/4 v5, 0x1
    goto :label_0484
    :label_0483
    const/4 v5, 0x0
    :label_0484
    iput-boolean v5, v11, Lorg/telegram/ui/SecretMediaViewer;->p1:Z
    iput-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->o1:Ljava/lang/Runnable;
    iput-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->M:Lorg/telegram/ui/iv0;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    iput-wide v5, v11, Lorg/telegram/ui/SecretMediaViewer;->J:J
    const-wide/16 v5, 0x0
    iput-wide v5, v11, Lorg/telegram/ui/SecretMediaViewer;->K:J
    const/4 v7, 0x1
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->j0:Z
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->i0:Z
    const/4 v7, 0x0
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->o0:Z
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->w:Lorg/telegram/ui/n4;
    const/4 v7, 0x4
    if-eqz v0, :label_04a4
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V
    :label_04a4
    invoke-virtual {v11}, Lorg/telegram/ui/SecretMediaViewer;->i()V
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->M0:F
    iput v9, v11, Lorg/telegram/ui/SecretMediaViewer;->N0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->O0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->P0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->Q0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->R0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->S0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->T0:F
    const/4 v2, 0x0
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->Y0:Z
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->Z0:Z
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->a1:Z
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->b1:Z
    const/4 v5, 0x1
    iput-boolean v5, v11, Lorg/telegram/ui/SecretMediaViewer;->c1:Z
    iget v0, v11, Lorg/telegram/ui/SecretMediaViewer;->x0:F
    invoke-virtual {v11, v0}, Lorg/telegram/ui/SecretMediaViewer;->n(F)V
    invoke-virtual {v13, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->I:Z
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->G:Z
    iput-boolean v2, v11, Lorg/telegram/ui/SecretMediaViewer;->H:Z
    const/4 v5, 0x1
    iput-boolean v5, v11, Lorg/telegram/ui/SecretMediaViewer;->L:Z
    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->N:I
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->O:I
    iget-object v0, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;
    move-result-object v0
    new-instance v2, Landroid/graphics/RectF;
    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
    iget v0, v2, Landroid/graphics/RectF;->left:F
    iget-object v5, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F
    move-result v0
    iput v0, v2, Landroid/graphics/RectF;->left:F
    iget v0, v2, Landroid/graphics/RectF;->top:F
    iget-object v5, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F
    move-result v0
    iput v0, v2, Landroid/graphics/RectF;->top:F
    iget v0, v2, Landroid/graphics/RectF;->right:F
    iget-object v5, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F
    move-result v0
    iput v0, v2, Landroid/graphics/RectF;->right:F
    iget v0, v2, Landroid/graphics/RectF;->bottom:F
    iget-object v5, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F
    move-result v5
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F
    move-result v0
    iput v0, v2, Landroid/graphics/RectF;->bottom:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
    move-result v0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
    move-result v5
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I
    iget v6, v6, Landroid/graphics/Point;->y:I
    sget v23, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I
    add-int v6, v6, v23
    int-to-float v10, v7
    div-float v10, v0, v10
    int-to-float v15, v6
    div-float v15, v5, v15
    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F
    move-result v10
    iput v10, v11, Lorg/telegram/ui/SecretMediaViewer;->x0:F
    iget-object v10, v4, Lorg/telegram/ui/kv0;->h:[I
    if-eqz v10, :label_0565
    array-length v10, v10
    new-array v10, v10, [I
    iput-object v10, v11, Lorg/telegram/ui/SecretMediaViewer;->G0:[I
    const/4 v10, 0x0
    :label_0555
    iget-object v15, v4, Lorg/telegram/ui/kv0;->h:[I
    array-length v9, v15
    if-ge v10, v9, :label_0568
    iget-object v9, v11, Lorg/telegram/ui/SecretMediaViewer;->G0:[I
    aget v15, v15, v10
    aput v15, v9, v10
    add-int/lit8 v10, v10, 0x1
    const/high16 v9, 0x3f800000
    goto :label_0555
    :label_0565
    const/4 v9, 0x0
    iput-object v9, v11, Lorg/telegram/ui/SecretMediaViewer;->G0:[I
    :label_0568
    iget v9, v4, Lorg/telegram/ui/kv0;->b:I
    int-to-float v9, v9
    iget v10, v2, Landroid/graphics/RectF;->left:F
    add-float/2addr v9, v10
    div-float v0, v0, v19
    add-float/2addr v0, v9
    const/16 v22, 0x2
    div-int/lit8 v7, v7, 0x2
    int-to-float v7, v7
    sub-float/2addr v0, v7
    iput v0, v11, Lorg/telegram/ui/SecretMediaViewer;->v0:F
    iget v0, v4, Lorg/telegram/ui/kv0;->c:I
    int-to-float v0, v0
    iget v7, v2, Landroid/graphics/RectF;->top:F
    add-float/2addr v0, v7
    div-float v7, v5, v19
    add-float/2addr v7, v0
    div-int/lit8 v6, v6, 0x2
    int-to-float v0, v6
    sub-float/2addr v7, v0
    iput v7, v11, Lorg/telegram/ui/SecretMediaViewer;->w0:F
    iget-object v0, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F
    move-result v0
    sub-float/2addr v10, v0
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F
    move-result v0
    iput v0, v11, Lorg/telegram/ui/SecretMediaViewer;->u0:F
    iget v0, v2, Landroid/graphics/RectF;->top:F
    iget-object v6, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v6
    sub-float/2addr v0, v6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    move-result v0
    float-to-int v0, v0
    const/4 v7, 0x2
    new-array v6, v7, [I
    iget-object v7, v4, Lorg/telegram/ui/kv0;->d:Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V
    const/16 v26, 0x1
    aget v7, v6, v26
    int-to-float v7, v7
    iget v9, v4, Lorg/telegram/ui/kv0;->c:I
    int-to-float v9, v9
    iget v10, v2, Landroid/graphics/RectF;->top:F
    add-float/2addr v9, v10
    sub-float/2addr v7, v9
    iget v9, v4, Lorg/telegram/ui/kv0;->j:I
    int-to-float v9, v9
    add-float/2addr v7, v9
    iput v7, v11, Lorg/telegram/ui/SecretMediaViewer;->q0:F
    int-to-float v0, v0
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F
    move-result v7
    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F
    move-result v7
    iput v7, v11, Lorg/telegram/ui/SecretMediaViewer;->q0:F
    iget v7, v4, Lorg/telegram/ui/kv0;->c:I
    int-to-float v7, v7
    iget v2, v2, Landroid/graphics/RectF;->top:F
    add-float/2addr v7, v2
    float-to-int v2, v5
    int-to-float v2, v2
    add-float/2addr v7, v2
    const/16 v26, 0x1
    aget v2, v6, v26
    iget-object v5, v4, Lorg/telegram/ui/kv0;->d:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I
    move-result v5
    add-int/2addr v5, v2
    int-to-float v2, v5
    sub-float/2addr v7, v2
    iget v2, v4, Lorg/telegram/ui/kv0;->i:I
    int-to-float v2, v2
    add-float/2addr v7, v2
    iput v7, v11, Lorg/telegram/ui/SecretMediaViewer;->r0:F
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F
    move-result v2
    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->r0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->s0:F
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F
    move-result v2
    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->s0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->t0:F
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F
    move-result v0
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F
    move-result v0
    iput v0, v11, Lorg/telegram/ui/SecretMediaViewer;->t0:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    iput-wide v5, v11, Lorg/telegram/ui/SecretMediaViewer;->I0:J
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->y0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->z0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->C0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->E0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->F0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->B0:F
    iput v14, v11, Lorg/telegram/ui/SecretMediaViewer;->D0:F
    const/high16 v9, 0x3f800000
    iput v9, v11, Lorg/telegram/ui/SecretMediaViewer;->A0:F
    const/4 v7, 0x1
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->H0:Z
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->d1:Z
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->k1:Lorg/telegram/ui/nb0;
    if-eqz v0, :label_062d
    invoke-virtual {v0}, Lorg/telegram/ui/nb0;->destroy()V
    const/4 v2, 0x0
    iput-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->k1:Lorg/telegram/ui/nb0;
    :label_062d
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->G1:Lorg/telegram/ui/LaunchActivity;
    if-eqz v0, :label_0637
    new-instance v2, Lorg/telegram/ui/nb0;
    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/nb0;-><init>(Lorg/telegram/ui/LaunchActivity;Z)V
    goto :label_0638
    :label_0637
    const/4 v2, 0x0
    :label_0638
    iput-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->k1:Lorg/telegram/ui/nb0;
    iget v0, v11, Lorg/telegram/ui/SecretMediaViewer;->a:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    invoke-virtual {v0, v11, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    iget v0, v11, Lorg/telegram/ui/SecretMediaViewer;->a:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I
    invoke-virtual {v0, v11, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    iget v0, v11, Lorg/telegram/ui/SecretMediaViewer;->a:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I
    invoke-virtual {v0, v11, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    iput-wide v5, v11, Lorg/telegram/ui/SecretMediaViewer;->v:J
    iput-object v3, v11, Lorg/telegram/ui/SecretMediaViewer;->g0:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v0
    iget-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    if-eqz v2, :label_0675
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V
    const/4 v2, 0x0
    iput-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    :label_0675
    iget-object v2, v4, Lorg/telegram/ui/kv0;->a:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    move-result-object v2
    iput-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    iget-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    const/16 v5, 0x8
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
    if-eqz v0, :label_0775
    const/4 v2, 0x0
    :label_0687
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v2, v5, :label_06a9
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    if-eqz v6, :label_06a6
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->N:I
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->O:I
    goto :label_06a9
    :label_06a6
    add-int/lit8 v2, v2, 0x1
    goto :label_0687
    :label_06a9
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v2
    if-eqz v2, :label_06f6
    iget-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    sget v5, Lorg/telegram/messenger/R$string;->DisappearingGif:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/l;->setTitle(Ljava/lang/CharSequence;)V
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v2, :label_06c9
    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    if-eqz v5, :label_06c9
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v0
    goto :label_06cd
    :label_06c9
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v0
    :label_06cd
    iget-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    if-eqz v2, :label_06dd
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    iget-object v5, v5, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;
    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    move-object v5, v2
    :label_06db
    move-object v2, v8
    goto :label_06df
    :label_06dd
    const/4 v5, 0x0
    goto :label_06db
    :label_06df
    const/4 v8, 0x0
    const/4 v10, 0x1
    move-object v6, v4
    const/4 v4, 0x0
    move-object v15, v6
    const-wide/16 v6, -0x1
    move/from16 v24, v9
    move-object v14, v15
    move-object/from16 v15, v18
    const/4 v1, 0x4
    move-object v9, v3
    move-object v3, v0
    const/4 v0, -0x1
    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_06f2
    move/from16 v20, v1
    goto/16 :label_07c5
    :label_06f6
    move-object v14, v4
    move-object v2, v8
    move/from16 v24, v9
    move-object/from16 v15, v18
    const/4 v0, -0x1
    const/4 v1, 0x4
    const/4 v7, 0x1
    iput v7, v11, Lorg/telegram/ui/SecretMediaViewer;->a0:I
    iget-object v4, v11, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    sget v5, Lorg/telegram/messenger/R$string;->DisappearingVideo:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/l;->setTitle(Ljava/lang/CharSequence;)V
    new-instance v4, Ljava/io/File;
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v5
    if-eqz v5, :label_0720
    invoke-virtual {v11, v4}, Lorg/telegram/ui/SecretMediaViewer;->h(Ljava/io/File;)V
    :label_071e
    const/4 v7, 0x1
    goto :label_0751
    :label_0720
    iget v4, v11, Lorg/telegram/ui/SecretMediaViewer;->a:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;
    move-result-object v4
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v4
    new-instance v5, Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v7, ".enc"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v6
    if-eqz v6, :label_074d
    move-object v4, v5
    :label_074d
    invoke-virtual {v11, v4}, Lorg/telegram/ui/SecretMediaViewer;->h(Ljava/io/File;)V
    goto :label_071e
    :label_0751
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->I:Z
    iget-object v4, v11, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    const/4 v7, 0x0
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V
    iget-object v4, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    if-eqz v4, :label_0768
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    iget-object v5, v5, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;
    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    move-object v5, v4
    goto :label_0769
    :label_0768
    const/4 v5, 0x0
    :label_0769
    const/4 v8, 0x0
    const/4 v10, 0x2
    move-object v9, v3
    const/4 v3, 0x0
    const/4 v4, 0x0
    const-wide/16 v6, -0x1
    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    goto/16 :label_06f2
    :label_0775
    move-object v14, v4
    move-object v2, v8
    move/from16 v24, v9
    move-object/from16 v15, v18
    const/4 v0, -0x1
    const/4 v1, 0x4
    iget-object v4, v11, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    sget v5, Lorg/telegram/messenger/R$string;->DisappearingPhoto:I
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/l;->setTitle(Ljava/lang/CharSequence;)V
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v5
    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v4
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;
    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v5
    iget-object v6, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    if-eqz v6, :label_07a9
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, v11, Lorg/telegram/ui/SecretMediaViewer;->h0:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    iget-object v7, v7, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;
    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    move-object v9, v3
    move-object v3, v5
    move-object v5, v6
    goto :label_07ac
    :label_07a9
    move-object v9, v3
    move-object v3, v5
    const/4 v5, 0x0
    :label_07ac
    const/4 v8, 0x0
    const/4 v10, 0x2
    move-object v6, v4
    const/4 v4, 0x0
    move-object/from16 v19, v6
    const-wide/16 v6, -0x1
    move/from16 v20, v1
    move-object/from16 v1, v19
    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    if-eqz v1, :label_07c5
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I
    iput v2, v11, Lorg/telegram/ui/SecretMediaViewer;->N:I
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I
    iput v1, v11, Lorg/telegram/ui/SecretMediaViewer;->O:I
    :label_07c5
    const-string v1, ""
    const/4 v7, 0x0
    invoke-virtual {v11, v9, v1, v7}, Lorg/telegram/ui/SecretMediaViewer;->j(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Z)V
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    const/4 v5, 0x1
    invoke-virtual {v11, v9, v1, v5}, Lorg/telegram/ui/SecretMediaViewer;->j(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Z)V
    invoke-virtual {v11, v5, v7}, Lorg/telegram/ui/SecretMediaViewer;->m(ZZ)V
    invoke-virtual {v11, v7, v7}, Lorg/telegram/ui/SecretMediaViewer;->k(ZZ)V
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->V:Lorg/telegram/ui/Components/xh0;
    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/Components/xh0;->a(ZZ)V
    iget-boolean v1, v11, Lorg/telegram/ui/SecretMediaViewer;->p1:Z
    if-eqz v1, :label_083d
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    iput-boolean v5, v1, Lorg/telegram/ui/m51;->e:Z
    iget-object v2, v1, Lorg/telegram/ui/m51;->r:Landroid/text/TextPaint;
    const/high16 v3, 0x41500000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V
    const-string v3, "fonts/num.otf"
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V
    new-instance v27, Landroid/text/StaticLayout;
    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v33, 0x0
    const/16 v34, 0x0
    const-string v28, "1"
    const/16 v30, 0x3e7
    const/high16 v32, 0x3f800000
    move-object/from16 v29, v2
    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v27
    iput-object v0, v1, Lorg/telegram/ui/m51;->s:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_0822
    iget-object v0, v1, Lorg/telegram/ui/m51;->s:Landroid/text/StaticLayout;
    const/4 v7, 0x0
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    move v7, v0
    goto :label_0823
    :label_0822
    const/4 v7, 0x0
    :label_0823
    iput v7, v1, Lorg/telegram/ui/m51;->v:F
    iget-object v0, v1, Lorg/telegram/ui/m51;->s:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I
    move-result v0
    int-to-float v0, v0
    iput v0, v1, Lorg/telegram/ui/m51;->w:F
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    new-instance v1, Lorg/telegram/ui/p41;
    const/4 v2, 0x3
    invoke-direct {v1, v11, v2}, Lorg/telegram/ui/p41;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    goto :label_0843
    :label_083d
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    const/4 v2, 0x0
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :label_0843
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :label_085d
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :label_0858
    goto :label_085d
    :label_0859
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_085d
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    iget-object v2, v11, Lorg/telegram/ui/SecretMediaViewer;->c:Landroid/view/WindowManager$LayoutParams;
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->n:Lorg/telegram/ui/m51;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    const/4 v7, 0x1
    iput-boolean v7, v11, Lorg/telegram/ui/SecretMediaViewer;->s:Z
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getLightNavigationBar(Landroid/view/Window;)Z
    move-result v1
    iput-boolean v1, v11, Lorg/telegram/ui/SecretMediaViewer;->n1:Z
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    const/4 v7, 0x0
    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Activity;Z)V
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->d:Lorg/telegram/ui/k0;
    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;
    const/high16 v3, -0x1000000
    if-eqz v2, :label_08af
    check-cast v1, Lorg/telegram/ui/LaunchActivity;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 0x1a
    if-lt v0, v2, :label_08a4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I
    move-result v0
    goto :label_08a5
    :label_08a4
    const/4 v0, 0x0
    :label_08a5
    iput v0, v11, Lorg/telegram/ui/SecretMediaViewer;->m1:I
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    check-cast v0, Lorg/telegram/ui/LaunchActivity;
    invoke-virtual {v0, v3}, Lorg/telegram/ui/LaunchActivity;->y(I)V
    goto :label_08ba
    :label_08af
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I
    move-result v0
    iput v0, v11, Lorg/telegram/ui/SecretMediaViewer;->m1:I
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->b:Landroid/app/Activity;
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Activity;I)V
    :label_08ba
    new-instance v0, Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V
    iput-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->J0:Landroid/animation/AnimatorSet;
    iget-object v1, v11, Lorg/telegram/ui/SecretMediaViewer;->E:Lnf/d1;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;
    const/4 v7, 0x2
    new-array v3, v7, [F
    fill-array-data v3, :payload_0cce_0000
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v1
    iget-object v3, v11, Lorg/telegram/ui/SecretMediaViewer;->Z:Lorg/telegram/ui/hu0;
    new-array v4, v7, [F
    fill-array-data v4, :payload_0cd6_0000
    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v3
    iget-object v4, v11, Lorg/telegram/ui/SecretMediaViewer;->r:Lzg/e3;
    new-array v5, v7, [F
    fill-array-data v5, :payload_0cde_0000
    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v4
    sget-object v5, Lorg/telegram/ui/Components/u6;->d:Lorg/telegram/ui/Components/s6;
    const/16 v6, 0xff
    const/4 v8, 0x0
    filled-new-array {v8, v6}, [I
    move-result-object v6
    invoke-static {v13, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    move-result-object v5
    iget-object v6, v11, Lorg/telegram/ui/SecretMediaViewer;->u1:Lorg/telegram/ui/t0;
    new-array v10, v7, [F
    fill-array-data v10, :payload_0ce6_0000
    invoke-static {v11, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v6
    iget-object v7, v11, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    iget-object v10, v7, Lorg/telegram/ui/n51;->n:Lorg/telegram/ui/t0;
    move/from16 v25, v8
    const/4 v12, 0x1
    new-array v8, v12, [F
    aput v24, v8, v25
    invoke-static {v7, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v7
    iget-object v8, v11, Lorg/telegram/ui/SecretMediaViewer;->T:Lorg/telegram/ui/n51;
    iget-boolean v10, v11, Lorg/telegram/ui/SecretMediaViewer;->I:Z
    if-eqz v10, :label_0915
    move/from16 v18, v24
    goto :label_0917
    :label_0915
    const/16 v18, 0x0
    :label_0917
    new-array v10, v12, [F
    aput v18, v10, v25
    invoke-static {v8, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v2
    const/4 v8, 0x7
    new-array v8, v8, [Landroid/animation/Animator;
    aput-object v1, v8, v25
    aput-object v3, v8, v12
    const/16 v22, 0x2
    aput-object v4, v8, v22
    const/4 v1, 0x3
    aput-object v5, v8, v1
    aput-object v6, v8, v20
    aput-object v7, v8, v17
    aput-object v2, v8, v16
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    iput v1, v11, Lorg/telegram/ui/SecretMediaViewer;->l0:I
    new-instance v0, Lorg/telegram/ui/tf0;
    const/16 v1, 0x1b
    invoke-direct {v0, v11, v15, v9, v1}, Lorg/telegram/ui/tf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    iput-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->n0:Ljava/lang/Runnable;
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->J0:Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0xfa
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->J0:Landroid/animation/AnimatorSet;
    new-instance v1, Lorg/telegram/ui/k51;
    const/4 v7, 0x0
    invoke-direct {v1, v11, v7}, Lorg/telegram/ui/k51;-><init>(Lorg/telegram/ui/SecretMediaViewer;I)V
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, v11, Lorg/telegram/ui/SecretMediaViewer;->m0:J
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I
    move-result v0
    if-nez v0, :label_0966
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->e:Lbf/h;
    const/4 v2, 0x0
    const/4 v7, 0x2
    invoke-virtual {v0, v7, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :label_0966
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->J0:Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    const/4 v7, 0x0
    iput v7, v13, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->b:I
    new-instance v0, Lorg/telegram/ui/ly0;
    const/16 v1, 0x16
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/ly0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    iput-object v0, v13, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->a:Lorg/telegram/ui/ly0;
    iget-object v0, v11, Lorg/telegram/ui/SecretMediaViewer;->J0:Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    return-void
    :label_0982
    move-object/from16 v1, v37
    goto/16 :label_0ca8
    :label_0986
    move v0, v10
    move v7, v11
    const-wide/16 v5, 0x0
    const/16 v20, 0x4
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v1
    if-eqz v1, :label_09c7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v1
    if-eqz v1, :label_09c7
    new-instance v0, Ljava/util/ArrayList;
    const/4 v7, 0x1
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Lorg/telegram/ui/Components/lw;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v2
    iget-object v3, v4, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v1, v4, v2, v3, v0}, Lorg/telegram/ui/Components/lw;-><init>(Lorg/telegram/ui/ActionBar/r2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;Ljava/util/ArrayList;)V
    invoke-virtual {v4}, Lorg/telegram/ui/ko;->C9()Z
    move-result v0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/k3;->setCalcMandatoryInsets(Z)V
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    return-void
    :label_09c7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v1
    if-eqz v1, :label_0a06
    new-instance v12, Lorg/telegram/ui/Components/pz0;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v13
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    move-result-object v15
    iget-object v0, v4, Lorg/telegram/ui/ko;->N0:Lorg/telegram/ui/bl;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    move-result v0
    if-eqz v0, :label_09ee
    iget-object v0, v4, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :label_09e9
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    if-eqz v0, :label_09ee
    :label_09e9
    iget-object v0, v4, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/xk;
    move-object/from16 v17, v0
    goto :label_09f0
    :label_09ee
    const/16 v17, 0x0
    :label_09f0
    iget-object v0, v4, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/16 v16, 0x0
    move-object/from16 v18, v0
    move-object v14, v4
    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/Components/pz0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/mz0;Lorg/telegram/ui/ActionBar/j6;)V
    move-object v2, v14
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->C9()Z
    move-result v0
    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/k3;->setCalcMandatoryInsets(Z)V
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    return-void
    :label_0a06
    move-object v2, v4
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v1
    if-nez v1, :label_0a1b
    iget v1, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v12, 0x1
    if-eq v1, v12, :label_0a1b
    if-nez v1, :label_0a1f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z
    move-result v1
    if-eqz v1, :label_0a1b
    goto :label_0a1f
    :label_0a1b
    move-object v4, v2
    const/4 v8, 0x0
    goto/16 :label_0c3f
    :label_0a1f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v1
    if-eqz v1, :label_0a26
    goto :label_0a1b
    :label_0a26
    iget v1, v9, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v15, 0x3
    if-ne v1, v15, :label_0aa7
    const/4 v12, 0x1
    invoke-virtual {v2, v9, v12}, Lorg/telegram/ui/ko;->kb(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/ui/ef;
    :label_0a2f
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v0, :label_0a47
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    if-eqz v0, :label_0a47
    new-instance v13, Ljava/io/File;
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    goto :label_0a48
    :label_0a45
    move-exception v0
    goto :label_0a9f
    :label_0a47
    const/4 v13, 0x0
    :label_0a48
    if-eqz v13, :label_0a50
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :label_0a5a
    :label_0a50
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v0
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v13
    :label_0a5a
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :label_0a63
    const/16 v3, 0x18
    const-string v4, "video/mp4"
    if-lt v1, v3, :label_0a8e
    const/4 v7, 0x1
    :label_0a6a
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ".provider"
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v1, v3, v13}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    goto :label_0a95
    :label_0a8e
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :label_0a95
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    const/16 v3, 0x1f4
    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :label_0a9e
    return-void
    :label_0a9f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ko;->C6(Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0982
    :label_0aa7
    move/from16 v3, v20
    if-ne v1, v3, :label_0af1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/r2;)Z
    move-result v0
    if-nez v0, :label_0ab3
    goto/16 :label_0982
    :label_0ab3
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z
    move-result v0
    if-eqz v0, :label_0adc
    new-instance v0, Lorg/telegram/ui/md0;
    iget-object v1, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :label_0acf
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v1
    if-nez v1, :label_0acf
    iget-object v1, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z
    if-eqz v1, :label_0acc
    goto :label_0acf
    :label_0acc
    move/from16 v11, v16
    goto :label_0ad0
    :label_0acf
    move v11, v7
    :label_0ad0
    invoke-direct {v0, v11}, Lorg/telegram/ui/md0;-><init>(I)V
    iput-object v2, v0, Lorg/telegram/ui/md0;->E0:Lorg/telegram/ui/hd0;
    invoke-virtual {v0, v9}, Lorg/telegram/ui/md0;->t0(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_0adc
    new-instance v0, Lorg/telegram/ui/md0;
    iget-object v1, v2, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :label_0ae4
    const/4 v14, 0x3
    goto :label_0ae5
    :label_0ae4
    const/4 v14, 0x0
    :label_0ae5
    invoke-direct {v0, v14}, Lorg/telegram/ui/md0;-><init>(I)V
    iput-object v2, v0, Lorg/telegram/ui/md0;->E0:Lorg/telegram/ui/hd0;
    invoke-virtual {v0, v9}, Lorg/telegram/ui/md0;->t0(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_0af1
    const/16 v3, 0x9
    if-eq v1, v3, :label_0af7
    if-nez v1, :label_0982
    :label_0af7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v1
    const-string v3, "attheme"
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :label_0b4e
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    if-eqz v1, :label_0b23
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v1
    if-eqz v1, :label_0b23
    new-instance v1, Ljava/io/File;
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :label_0b23
    goto :label_0b24
    :label_0b23
    const/4 v1, 0x0
    :label_0b24
    if-nez v1, :label_0b37
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getFileLoader()Lorg/telegram/messenger/FileLoader;
    move-result-object v3
    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    move-result-object v3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :label_0b37
    move-object v1, v3
    :label_0b37
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;
    move-result-object v3
    const/4 v7, 0x1
    const/4 v8, 0x0
    invoke-static {v1, v3, v8, v7}, Lorg/telegram/ui/ActionBar/n6;->u(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/m6;
    move-result-object v1
    if-eqz v1, :label_0b4c
    new-instance v0, Lorg/telegram/ui/ie1;
    invoke-direct {v0, v1}, Lorg/telegram/ui/ie1;-><init>(Lorg/telegram/ui/ActionBar/m6;)V
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_0b4c
    iput v0, v2, Lorg/telegram/ui/ko;->w4:I
    :label_0b4e
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z
    move-result v0
    if-eqz v0, :label_0b8c
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->u1()Lorg/telegram/ui/PhotoViewer;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v8, 0x0
    invoke-virtual {v0, v8, v2, v1}, Lorg/telegram/ui/PhotoViewer;->M2(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/ui/ActionBar/j6;)V
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->u1()Lorg/telegram/ui/PhotoViewer;
    move-result-object v0
    iget v1, v9, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v1, :label_0b6c
    iget-wide v3, v2, Lorg/telegram/ui/ko;->S5:J
    move-wide/from16 v34, v5
    move-wide v5, v3
    goto :label_0b6e
    :label_0b6c
    move-wide/from16 v34, v5
    :label_0b6e
    if-eqz v1, :label_0b74
    iget-wide v3, v2, Lorg/telegram/ui/ko;->K6:J
    move-wide v7, v3
    goto :label_0b76
    :label_0b74
    move-wide/from16 v7, v34
    :label_0b76
    if-eqz v1, :label_0b7e
    invoke-virtual {v2}, Lorg/telegram/ui/ko;->d()J
    move-result-wide v3
    move-wide/from16 v34, v3
    :label_0b7e
    iget-object v11, v2, Lorg/telegram/ui/ko;->Fa:Lorg/telegram/ui/cm;
    move-object v4, v2
    move-object v3, v9
    move-wide/from16 v9, v34
    move-object v2, v0
    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/PhotoViewer;->h2(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ko;JJJLorg/telegram/ui/av0;)Z
    move-object v9, v3
    move-object v2, v4
    const/4 v0, 0x1
    goto :label_0b8d
    :label_0b8c
    const/4 v0, 0x0
    :label_0b8d
    sget-object v1, Lorg/telegram/ui/Components/eb0;->a:Ljava/util/regex/Pattern;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getExtension()Ljava/lang/String;
    move-result-object v1
    const-string v3, "md"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "mkd"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "mdwn"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "mkdn"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "mdown"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "markdown"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :label_0bc4
    goto :label_0beb
    :label_0bc4
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :label_0bcb
    goto :label_0be8
    :label_0bcb
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v1
    const-string v3, "text/markdown"
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "text/x-markdown"
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :label_0beb
    const-string v3, "text/x-web-markdown"
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :label_0be8
    goto :label_0beb
    :label_0be8
    move v12, v0
    move-object v4, v2
    goto :label_0c29
    :label_0beb
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :label_0bf3
    move-object v4, v2
    goto :label_0c28
    :label_0bf3
    new-instance v5, Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v15, 0x3
    invoke-direct {v5, v0, v15, v1}, Lorg/telegram/ui/ActionBar/f2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    const/4 v7, 0x0
    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    const/4 v12, 0x1
    new-array v6, v12, [Z
    aput-boolean v7, v6, v7
    new-instance v0, Lorg/telegram/ui/lh;
    invoke-direct {v0, v7, v6}, Lorg/telegram/ui/lh;-><init>(I[Z)V
    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/f2;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    const-wide/16 v0, 0x96
    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/f2;->r(J)V
    new-instance v0, Ljava/lang/Thread;
    move-object v4, v2
    new-instance v2, Lorg/telegram/ui/ia;
    const/4 v8, 0x4
    const/4 v7, 0x0
    move-object v3, v4
    move-object v4, v9
    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ia;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    move-object v4, v3
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :label_0c28
    const/4 v12, 0x1
    :label_0c29
    if-nez v12, :label_0982
    :label_0c2b
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v0
    iget-object v1, v4, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    const/4 v7, 0x0
    invoke-static {v9, v0, v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/j6;Z)Z
    :label_0c35
    return-void
    :label_0c36
    move-exception v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    invoke-virtual {v4, v9}, Lorg/telegram/ui/ko;->C6(Lorg/telegram/messenger/MessageObject;)V
    goto/16 :label_0982
    :label_0c3f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-eqz v0, :label_0c5f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isGif()Z
    move-result v0
    if-nez v0, :label_0c51
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z
    move-result v0
    if-eqz v0, :label_0c54
    :label_0c51
    const/4 v7, 0x0
    const/4 v12, 0x1
    goto :label_0c62
    :label_0c54
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z
    move-result v0
    if-eqz v0, :label_0c5f
    const/4 v7, 0x0
    const/4 v12, 0x1
    invoke-virtual {v4, v9, v12, v7}, Lorg/telegram/ui/ko;->O9(Lorg/telegram/messenger/MessageObject;ZZ)V
    :label_0c5f
    move-object/from16 v1, v37
    goto :label_0ca9
    :label_0c62
    invoke-virtual {v4, v9, v12, v7}, Lorg/telegram/ui/ko;->O9(Lorg/telegram/messenger/MessageObject;ZZ)V
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    if-eqz v0, :label_0982
    iget-object v0, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    if-eqz v0, :label_0c70
    invoke-virtual {v0, v12}, Lje/e;->a(Z)V
    :label_0c70
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    if-nez v0, :label_0c7a
    move-object/from16 v1, v37
    move-object v13, v8
    goto :label_0c81
    :label_0c7a
    new-instance v13, Lorg/telegram/ui/on;
    move-object/from16 v1, v37
    invoke-direct {v13, v1, v3, v12}, Lorg/telegram/ui/on;-><init>(Ljava/lang/Object;Lorg/telegram/ui/Cells/c0;I)V
    :label_0c81
    iput-object v13, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v14
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v15
    iget-object v0, v4, Lorg/telegram/ui/ko;->zb:Lje/e;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z
    const/16 v23, 0x0
    const/16 v16, 0x1
    const/16 v17, 0x0
    const/16 v18, 0x0
    const/16 v20, 0x0
    const/16 v21, 0x0
    move-object/from16 v19, v0
    move/from16 v22, v2
    invoke-static/range {v14 .. v23}, Lje/f;->q(Landroid/content/Context;Landroid/net/Uri;ZZZLje/e;Ljava/lang/String;ZZZ)V
    :label_0ca8
    return-void
    :label_0ca9
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDuration()D
    move-result-wide v5
    const-wide/16 v7, 0x0
    cmpl-double v0, v5, v7
    if-lez v0, :label_0cca
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getVideoStartsTimestamp()I
    move-result v0
    if-lez v0, :label_0cca
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject;->openedInViewer:Z
    if-nez v0, :label_0cca
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getVideoStartsTimestamp()I
    move-result v0
    int-to-double v5, v0
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDuration()D
    move-result-wide v7
    div-double/2addr v5, v7
    double-to-float v0, v5
    iput v0, v9, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F
    :label_0cca
    invoke-virtual {v4, v3, v9}, Lorg/telegram/ui/ko;->ma(Lorg/telegram/ui/Cells/u1;Lorg/telegram/messenger/MessageObject;)V
    return-void
    :payload_0cce_0000
    .array-data 4
        0x0
        0x3f800000
    .end array-data
    :payload_0cd6_0000
    .array-data 4
        0x0
        0x3f800000
    .end array-data
    :payload_0cde_0000
    .array-data 4
        0x0
        0x3f800000
    .end array-data
    :payload_0ce6_0000
    .array-data 4
        0x0
        0x3f800000
    .end array-data
    .catch Ljava/lang/Exception; {:label_0843 .. :label_0858} :label_0859
    .catch Ljava/lang/Exception; {:label_0a2f .. :label_0a63} :label_0a45
    .catch Ljava/lang/Exception; {:label_0a6a .. :label_0a9e} :label_0a45
    .catch Ljava/lang/Exception; {:label_0c2b .. :label_0c35} :label_0c36
.end method
