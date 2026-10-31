# file_id=2 method_idx=49176 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/kf;->onClick(Landroid/view/View;)V"
.method public final onClick(Landroid/view/View;)V
    .registers 27

    move-object/from16 v0, v25
    iget v1, v0, Lorg/telegram/ui/kf;->a:I
    const/4 v2, 0x2
    const-string v3, "user_id"
    const-string v4, ""
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x1
    iget-object v8, v0, Lorg/telegram/ui/kf;->b:Lorg/telegram/ui/ko;
    packed-switch v1, :payload_04e4_000e
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->T7()V
    iget-object v1, v8, Lorg/telegram/ui/ko;->x3:Lorg/telegram/ui/Components/UndoView;
    iget-wide v2, v8, Lorg/telegram/ui/ko;->S5:J
    sget v4, Lorg/telegram/messenger/R$string;->BroadcastGroupInfo:I
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v4
    const/16 v5, 0x12
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/UndoView;->m(JLjava/lang/Object;I)V
    return-void
    :label_0024
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->J9()Z
    move-result v1
    if-eqz v1, :label_002b
    goto :label_002c
    :label_002b
    move-object v4, v5
    :label_002c
    invoke-virtual {v8, v4}, Lorg/telegram/ui/ko;->qa(Ljava/lang/String;)V
    return-void
    :label_0030
    iget-object v9, v0, Lorg/telegram/ui/kf;->b:Lorg/telegram/ui/ko;
    iget-object v1, v9, Lorg/telegram/ui/ko;->o5:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_0042
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v10
    const/4 v14, 0x1
    const/4 v15, 0x0
    const/4 v11, 0x0
    const/4 v12, 0x1
    const/4 v13, 0x0
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/ko;->j(IIZIZI)V
    :label_0042
    return-void
    :label_0043
    invoke-static {v8}, Lorg/telegram/ui/ko;->c1(Lorg/telegram/ui/ko;)V
    return-void
    :label_0047
    iget-object v1, v8, Lorg/telegram/ui/ko;->V5:[Landroid/util/SparseArray;
    move v2, v7
    :label_004a
    if-ltz v2, :label_007d
    if-nez v5, :label_0067
    aget-object v3, v1, v2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
    move-result v3
    if-eqz v3, :label_0067
    iget-object v3, v8, Lorg/telegram/ui/ko;->n6:[Landroid/util/SparseArray;
    aget-object v3, v3, v2
    aget-object v4, v1, v2
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I
    move-result v4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/telegram/messenger/MessageObject;
    move-object v5, v3
    :label_0067
    aget-object v3, v1, v2
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    iget-object v3, v8, Lorg/telegram/ui/ko;->W5:[Landroid/util/SparseArray;
    aget-object v3, v3, v2
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    iget-object v3, v8, Lorg/telegram/ui/ko;->X5:[Landroid/util/SparseArray;
    aget-object v3, v3, v2
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    add-int/lit8 v2, v2, -0x1
    goto :label_004a
    :label_007d
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->h9()V
    if-eqz v5, :label_0091
    iget-object v1, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    if-gtz v1, :label_008e
    if-gez v1, :label_0091
    iget-object v1, v8, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v1, :label_0091
    :label_008e
    invoke-virtual {v8, v5}, Lorg/telegram/ui/ko;->Fb(Lorg/telegram/messenger/MessageObject;)V
    :label_0091
    invoke-virtual {v8, v6, v7}, Lorg/telegram/ui/ko;->Cc(IZ)V
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ko;->ad(Z)V
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->Pc()V
    return-void
    :label_009b
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ko;->ga(Z)V
    return-void
    :label_009f
    invoke-static {v8}, Lorg/telegram/ui/ko;->i0(Lorg/telegram/ui/ko;)V
    return-void
    :label_00a3
    invoke-static {v8}, Lorg/telegram/ui/ko;->Y0(Lorg/telegram/ui/ko;)V
    return-void
    :label_00a7
    invoke-static {v8}, Lorg/telegram/ui/ko;->m0(Lorg/telegram/ui/ko;)V
    return-void
    :label_00ab
    new-instance v1, Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->a()J
    move-result-wide v4
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    new-instance v2, Lorg/telegram/ui/jl;
    invoke-direct {v2, v1}, Lorg/telegram/ui/cp;-><init>(Landroid/os/Bundle;)V
    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_00c0
    invoke-static {v8}, Lorg/telegram/ui/ko;->b1(Lorg/telegram/ui/ko;)V
    return-void
    :label_00c4
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ko;->na(Z)V
    return-void
    :label_00c8
    iget-object v9, v0, Lorg/telegram/ui/kf;->b:Lorg/telegram/ui/ko;
    iput-boolean v7, v9, Lorg/telegram/ui/ko;->C4:Z
    invoke-virtual {v9}, Lorg/telegram/ui/ko;->K9()Z
    move-result v1
    if-eqz v1, :label_00e2
    iget-boolean v1, v9, Lorg/telegram/ui/ko;->g4:Z
    if-nez v1, :label_00e2
    iget-wide v1, v9, Lorg/telegram/ui/ko;->c4:J
    long-to-int v10, v1
    const/4 v14, 0x1
    const/4 v15, 0x0
    const/4 v11, 0x0
    const/4 v12, 0x1
    const/4 v13, 0x0
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/ko;->j(IIZIZI)V
    goto :label_0124
    :label_00e2
    iget v10, v9, Lorg/telegram/ui/ko;->K4:I
    if-eqz v10, :label_0124
    iget-object v1, v9, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :label_0112
    iget-object v1, v9, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-static {v7, v1}, Lj2/t;->f(ILjava/util/ArrayList;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    if-ne v10, v1, :label_010d
    iget-object v1, v9, Lorg/telegram/ui/ko;->G4:Ljava/util/ArrayList;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    add-int/lit8 v6, v1, 0x1
    iput-boolean v7, v9, Lorg/telegram/ui/ko;->N4:Z
    goto :label_0112
    :label_010d
    add-int/lit8 v1, v10, -0x1
    iput-boolean v6, v9, Lorg/telegram/ui/ko;->N4:Z
    move v6, v1
    :label_0112
    iput v6, v9, Lorg/telegram/ui/ko;->M4:I
    iget-boolean v1, v9, Lorg/telegram/ui/ko;->N4:Z
    if-nez v1, :label_0119
    neg-int v6, v6
    :label_0119
    move v15, v6
    const/4 v13, 0x0
    const/4 v14, 0x1
    const/4 v11, 0x0
    const/4 v12, 0x1
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/ko;->j(IIZIZI)V
    invoke-virtual {v9}, Lorg/telegram/ui/ko;->yc()V
    :label_0124
    return-void
    :label_0125
    iget-wide v1, v8, Lorg/telegram/ui/ko;->S5:J
    iget-object v3, v8, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v3, :label_012f
    iget-object v1, v8, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J
    :label_012f
    iput-boolean v6, v8, Lorg/telegram/ui/ko;->Xb:Z
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-object v4, v8, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-object v5, v8, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v3, v1, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->hidePeerSettingsBar(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ko;->Uc(Z)V
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ko;->sc(Z)V
    return-void
    :label_0143
    iget-object v1, v8, Lorg/telegram/ui/ko;->b4:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    if-eqz v1, :label_015c
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;
    move-result-object v1
    iget-object v2, v8, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    iget-object v4, v8, Lorg/telegram/ui/ko;->b4:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z
    invoke-virtual {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V
    :label_015c
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->Vc()V
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ko;->lc(Z)V
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ko;->Uc(Z)V
    return-void
    :label_0166
    invoke-static {v8}, Lorg/telegram/ui/ko;->k0(Lorg/telegram/ui/ko;)V
    return-void
    :label_016a
    iget-object v9, v0, Lorg/telegram/ui/kf;->b:Lorg/telegram/ui/ko;
    iget-wide v10, v9, Lorg/telegram/ui/ko;->S5:J
    iget-object v12, v9, Lorg/telegram/ui/ko;->f:Lorg/telegram/tgnet/TLRPC$User;
    iget-object v13, v9, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v14, v9, Lorg/telegram/ui/ko;->h:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v1, v9, Lorg/telegram/ui/ko;->M1:Landroid/widget/TextView;
    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :label_0180
    move v15, v7
    goto :label_0181
    :label_0180
    move v15, v6
    :label_0181
    iget-object v1, v9, Lorg/telegram/ui/ko;->Y7:Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v3, Lorg/telegram/ui/hh;
    invoke-direct {v3, v9, v2}, Lorg/telegram/ui/hh;-><init>(Lorg/telegram/ui/ko;I)V
    iget-object v2, v9, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    move-object/from16 v16, v1
    move-object/from16 v18, v2
    move-object/from16 v17, v3
    invoke-static/range {v9 .. v18}, Lorg/telegram/ui/Components/g5;->i0(Lorg/telegram/ui/ActionBar/r2;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;ZLorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/j6;)V
    return-void
    :label_0194
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    new-instance v1, Lnf/f1;
    const/16 v2, 0x1c
    invoke-direct {v1, v8, v2, v7}, Lnf/f1;-><init>(Lorg/telegram/ui/ActionBar/r2;IZ)V
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    return-void
    :label_01a2
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->finishPreviewFragment()V
    return-void
    :label_01a6
    iget-object v1, v8, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    if-eqz v1, :label_03bc
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    if-nez v1, :label_01b2
    goto/16 :label_03bc
    :label_01b2
    iget-object v1, v8, Lorg/telegram/ui/ko;->W0:Lorg/telegram/ui/bn;
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static {v7, v1, v5, v6}, Lorg/telegram/messenger/h4;->o(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/j6;Z)Lorg/telegram/ui/ActionBar/k3;
    move-result-object v1
    new-instance v3, Lorg/telegram/ui/y91;
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v4
    iget-object v8, v8, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    invoke-static {v4, v7}, Lj2/t;->e(Landroid/app/Activity;I)Landroid/widget/LinearLayout;
    move-result-object v9
    new-instance v10, Landroid/widget/TextView;
    invoke-direct {v10, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    sget v11, Lorg/telegram/messenger/R$string;->SponsoredMessageInfo:I
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v11
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    sget v11, Lorg/telegram/ui/ActionBar/n6;->G6:I
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v12
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v12, 0x41a00000
    invoke-virtual {v10, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V
    new-instance v12, Lorg/telegram/ui/Components/qa0;
    invoke-direct {v12, v4, v8}, Lorg/telegram/ui/Components/qa0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const-string v13, "SponsoredMessageInfo2Description1"
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v13
    invoke-static {v13, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/j6;)Landroid/text/SpannableStringBuilder;
    move-result-object v13
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget v13, Lorg/telegram/ui/ActionBar/n6;->gc:I
    invoke-static {v13, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v13
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v13
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v13, 0x41600000
    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V
    const/high16 v14, 0x40000000
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    int-to-float v15, v15
    move/from16 v26, v14
    const/high16 v14, 0x3f800000
    invoke-virtual {v12, v15, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V
    new-instance v15, Lorg/telegram/ui/w91;
    invoke-direct {v15, v3, v6}, Lorg/telegram/ui/w91;-><init>(Lorg/telegram/ui/y91;I)V
    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/qa0;->setOnLinkPressListener(Lorg/telegram/ui/Components/pa0;)V
    new-instance v15, Lorg/telegram/ui/Components/qa0;
    invoke-direct {v15, v4, v5}, Lorg/telegram/ui/Components/qa0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const-string v16, "SponsoredMessageInfo2Description2"
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-static {v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/j6;)Landroid/text/SpannableStringBuilder;
    move-result-object v6
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v6
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v15, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    invoke-virtual {v15, v6, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V
    new-instance v6, Lorg/telegram/ui/w91;
    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/w91;-><init>(Lorg/telegram/ui/y91;I)V
    invoke-virtual {v15, v6}, Lorg/telegram/ui/Components/qa0;->setOnLinkPressListener(Lorg/telegram/ui/Components/pa0;)V
    new-instance v6, Lorg/telegram/ui/Components/qa0;
    invoke-direct {v6, v4, v5}, Lorg/telegram/ui/Components/qa0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const-string v16, "SponsoredMessageInfo2Description3"
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/j6;)Landroid/text/SpannableStringBuilder;
    move-result-object v5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v6, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    int-to-float v5, v5
    invoke-virtual {v6, v5, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V
    new-instance v5, Lorg/telegram/ui/w91;
    invoke-direct {v5, v3, v2}, Lorg/telegram/ui/w91;-><init>(Lorg/telegram/ui/y91;I)V
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/qa0;->setOnLinkPressListener(Lorg/telegram/ui/Components/pa0;)V
    new-instance v2, Landroid/graphics/Paint;
    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    sget v5, Lorg/telegram/ui/ActionBar/n6;->Oh:I
    move/from16 v16, v14
    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v14
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    int-to-float v14, v14
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    new-instance v14, Lorg/telegram/ui/bl;
    invoke-direct {v14, v4, v2}, Lorg/telegram/ui/bl;-><init>(Landroid/app/Activity;Landroid/graphics/Paint;)V
    new-instance v2, Lorg/telegram/ui/x91;
    invoke-direct {v2, v4}, Lorg/telegram/ui/x91;-><init>(Landroid/app/Activity;)V
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/high16 v19, 0x41400000
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v13
    const/4 v7, 0x0
    invoke-virtual {v14, v2, v7, v13, v7}, Landroid/widget/TextView;->setPadding(IIII)V
    sget v2, Lorg/telegram/messenger/R$string;->SponsoredMessageAlertLearnMoreUrl:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v2
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V
    sget v2, Lorg/telegram/ui/ActionBar/n6;->h5:I
    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v2
    const/4 v5, 0x1
    new-array v13, v5, [F
    const/high16 v17, 0x40800000
    aput v17, v13, v7
    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/d6;->e([FI)Lorg/telegram/ui/Cells/b0;
    move-result-object v2
    invoke-virtual {v14, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    const/high16 v2, 0x41600000
    invoke-virtual {v14, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    const/16 v2, 0x10
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setGravity(I)V
    new-instance v2, Lorg/telegram/ui/Components/qa0;
    const/4 v5, 0x0
    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/qa0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    const-string v4, "SponsoredMessageInfo2Description4"
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/j6;)Landroid/text/SpannableStringBuilder;
    move-result-object v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    move/from16 v5, v16
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v4, 0x41600000
    const/4 v5, 0x1
    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    const/high16 v4, 0x41b00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    const/4 v8, 0x0
    invoke-virtual {v10, v5, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    invoke-virtual {v12, v5, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V
    const/16 v23, 0x0
    const/16 v24, 0x0
    const/16 v18, -0x1
    const/16 v19, -0x2
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x12
    invoke-static/range {v18 .. v24}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v9, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    const/4 v8, 0x0
    invoke-virtual {v15, v5, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V
    const/16 v22, 0x18
    invoke-static/range {v18 .. v24}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v9, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    const/4 v8, 0x0
    invoke-virtual {v6, v5, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V
    invoke-static/range {v18 .. v24}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v9, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    const/16 v23, 0x16
    const/16 v18, -0x2
    const/16 v19, 0x22
    const/16 v20, 0x1
    const/16 v21, 0x16
    const/16 v22, 0xe
    invoke-static/range {v18 .. v24}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v9, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    const/4 v8, 0x0
    invoke-virtual {v2, v5, v8, v4, v8}, Landroid/view/View;->setPadding(IIII)V
    const/4 v15, 0x0
    const/16 v16, 0x0
    const/4 v10, -0x1
    const/4 v11, -0x2
    const/4 v12, 0x0
    const/4 v13, 0x0
    const/16 v14, 0xe
    invoke-static/range {v10 .. v16}, Lt7/x5;->t(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v4
    invoke-virtual {v9, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v2, Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v4
    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    const/4 v15, 0x0
    const/high16 v16, 0x41b00000
    const/high16 v11, -0x40000000
    const/4 v13, 0x0
    const/high16 v14, 0x41400000
    invoke-static/range {v10 .. v16}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v4
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/k3;->access$2202(Lorg/telegram/ui/ActionBar/k3;Landroid/view/View;)Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/k3;->show()V
    :label_03bc
    return-void
    :label_03bd
    iget-object v1, v8, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->sponsoredAdditionalInfo:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :label_03db
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/ui/Components/mb;->a(Landroid/content/Context;)Lorg/telegram/ui/Components/lb;
    move-result-object v1
    iget-object v2, v8, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    new-instance v3, Lorg/telegram/ui/Components/xc;
    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/xc;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/j6;)V
    sget v1, Lorg/telegram/messenger/R$string;->TextCopied:I
    invoke-static {v1, v3}, Lorg/telegram/ui/b;->n(ILorg/telegram/ui/Components/xc;)V
    :label_03db
    return-void
    :label_03dc
    iget-object v1, v8, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->sponsoredInfo:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :label_03fa
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/ui/Components/mb;->a(Landroid/content/Context;)Lorg/telegram/ui/Components/lb;
    move-result-object v1
    iget-object v2, v8, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    new-instance v3, Lorg/telegram/ui/Components/xc;
    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/xc;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/j6;)V
    sget v1, Lorg/telegram/messenger/R$string;->TextCopied:I
    invoke-static {v1, v3}, Lorg/telegram/ui/b;->n(ILorg/telegram/ui/Components/xc;)V
    :label_03fa
    return-void
    :label_03fb
    iget-object v1, v8, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    if-nez v1, :label_0400
    goto :label_0424
    :label_0400
    const/4 v7, 0x0
    invoke-virtual {v8, v1, v7, v7}, Lorg/telegram/ui/ko;->O9(Lorg/telegram/messenger/MessageObject;ZZ)V
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v9
    iget-object v1, v8, Lorg/telegram/ui/ko;->c5:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v10
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v1
    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z
    const/16 v18, 0x0
    const/4 v11, 0x1
    const/4 v12, 0x0
    const/4 v13, 0x0
    const/4 v14, 0x0
    const/4 v15, 0x0
    const/16 v16, 0x0
    move/from16 v17, v1
    invoke-static/range {v9 .. v18}, Lje/f;->q(Landroid/content/Context;Landroid/net/Uri;ZZZLje/e;Ljava/lang/String;ZZZ)V
    :label_0424
    return-void
    :label_0425
    move v5, v7
    invoke-virtual {v8, v5}, Lorg/telegram/ui/ko;->D7(Z)V
    return-void
    :label_042a
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    if-nez v1, :label_0431
    goto :label_0450
    :label_0431
    iget-object v1, v8, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    if-eqz v1, :label_043c
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/x0;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V
    :label_043c
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/r2;->getParentActivity()Landroid/app/Activity;
    move-result-object v1
    new-instance v2, Lorg/telegram/ui/pl;
    invoke-direct {v2, v8}, Lorg/telegram/ui/pl;-><init>(Lorg/telegram/ui/ko;)V
    iget-object v3, v8, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/g5;->o(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/ActionBar/f3;
    move-result-object v1
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/f3;->a:Lorg/telegram/ui/ActionBar/k3;
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/r2;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :label_0450
    return-void
    :label_0451
    iget-object v1, v8, Lorg/telegram/ui/ko;->H1:Lorg/telegram/ui/ok;
    const/4 v5, 0x1
    if-eqz v1, :label_0464
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/bc0;->setReversed(Z)V
    iget-object v1, v8, Lorg/telegram/ui/ko;->H1:Lorg/telegram/ui/ok;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/bc0;->getAdapter()Lbf/f2;
    move-result-object v1
    iput-boolean v5, v1, Lbf/f2;->j0:Z
    invoke-virtual {v8}, Lorg/telegram/ui/ko;->p7()V
    :label_0464
    iget-object v1, v8, Lorg/telegram/ui/ko;->R2:Landroid/widget/ImageView;
    const/16 v2, 0x8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    iget-object v1, v8, Lorg/telegram/ui/ko;->S2:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    iput-boolean v5, v8, Lorg/telegram/ui/ko;->m3:Z
    const/4 v5, 0x0
    iput-object v5, v8, Lorg/telegram/ui/ko;->n3:Lorg/telegram/tgnet/TLRPC$User;
    iput-object v5, v8, Lorg/telegram/ui/ko;->o3:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v1, v8, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    sget v2, Lorg/telegram/messenger/R$string;->SearchMembers:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/x0;->setSearchFieldHint(Ljava/lang/CharSequence;)V
    iget-object v1, v8, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    sget v2, Lorg/telegram/messenger/R$string;->SearchFrom:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/x0;->setSearchFieldCaption(Ljava/lang/CharSequence;)V
    iget-object v1, v8, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/x0;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;
    move-result-object v1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z
    iget-object v1, v8, Lorg/telegram/ui/ko;->i0:Lorg/telegram/ui/ActionBar/x0;
    const/4 v5, 0x0
    iput-object v5, v1, Lorg/telegram/ui/ActionBar/x0;->r:Ljava/lang/CharSequence;
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    if-nez v1, :label_04a0
    goto :label_04a3
    :label_04a0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :label_04a3
    return-void
    :label_04a4
    iget-object v1, v8, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    iget-boolean v1, v1, Lorg/telegram/ui/vm;->M:Z
    const/16 v19, 0x1
    xor-int/lit8 v1, v1, 0x1
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ko;->ob(Z)V
    return-void
    :label_04b0
    move/from16 v19, v7
    iget-object v1, v8, Lorg/telegram/ui/ko;->J3:Lah/g;
    if-eqz v1, :label_04bf
    iget-object v1, v8, Lorg/telegram/ui/ko;->yc:Lid/b;
    iget-boolean v1, v1, Lid/b;->f:Z
    xor-int/lit8 v1, v1, 0x1
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ko;->Pb(Z)V
    :label_04bf
    return-void
    :label_04c0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    new-instance v1, Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    iget-wide v4, v8, Lorg/telegram/ui/ko;->r:J
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    new-instance v2, Lorg/telegram/ui/ProfileActivity;
    const/4 v5, 0x0
    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/hw0;)V
    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/r2;->presentFragment(Lorg/telegram/ui/ActionBar/r2;)Z
    return-void
    :label_04d7
    iget-object v9, v0, Lorg/telegram/ui/kf;->b:Lorg/telegram/ui/ko;
    iget-object v10, v9, Lorg/telegram/ui/ko;->C1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    iget-object v11, v9, Lorg/telegram/ui/ko;->D1:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    iget-wide v12, v9, Lorg/telegram/ui/ko;->S5:J
    const/4 v14, 0x0
    invoke-static/range {v9 .. v14}, Lnf/o0;->D1(Lorg/telegram/ui/ActionBar/r2;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)V
    return-void
    :payload_04e4_000e
    .packed-switch 0x0
        :label_04d7
        :label_04c0
        :label_04b0
        :label_04a4
        :label_0451
        :label_042a
        :label_0425
        :label_03fb
        :label_03dc
        :label_03bd
        :label_01a6
        :label_01a2
        :label_0194
        :label_016a
        :label_0166
        :label_0143
        :label_0125
        :label_00c8
        :label_00c4
        :label_00c0
        :label_00ab
        :label_00a7
        :label_00a3
        :label_009f
        :label_009b
        :label_0047
        :label_0043
        :label_0030
        :label_0024
    .end packed-switch
.end method

