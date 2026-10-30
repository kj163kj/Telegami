# file_id=2 method_idx=27253 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V"
.method private setMessageObjectInternal(Lorg/telegram/messenger/MessageObject;)V
    .registers 65

    move-object/from16 v1, v63
    move-object/from16 v10, v64
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->kb:[F
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit16 v3, v3, 0x400
    iget v12, v1, Lorg/telegram/ui/Cells/u1;->H7:I
    const/4 v13, 0x1
    if-nez v3, :label_0015
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;
    if-eqz v0, :label_0034
    :label_0015
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-nez v3, :label_0034
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-nez v0, :label_0034
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->viewsReloaded:Z
    if-nez v0, :label_0034
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->addToViewsQueue(Lorg/telegram/messenger/MessageObject;)V
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->viewsReloaded:Z
    :label_0034
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->o4()V
    invoke-virtual/range {v63 .. v64}, Lorg/telegram/ui/Cells/u1;->setAvatar(Lorg/telegram/messenger/MessageObject;)V
    invoke-virtual/range {v63 .. v64}, Lorg/telegram/ui/Cells/u1;->x3(Lorg/telegram/messenger/MessageObject;)V
    const/4 v14, 0x0
    iput v14, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isEphemeralAndNotWelcome()Z
    move-result v0
    const-string v15, "* "
    const/16 v4, 0x9
    const/16 v16, 0x4
    const/high16 v17, 0x41c80000
    const-string v6, ""
    const-wide/16 v7, 0x0
    const/16 v9, 0x21
    if-nez v0, :label_006d
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ephemeralAnchorMsgId:I
    if-nez v0, :label_006d
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v0
    if-eqz v0, :label_0067
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->welcomeTemplateFirst:Z
    if-eqz v0, :label_0067
    goto :label_006d
    :label_0067
    const/high16 v26, 0x43960000
    const/high16 v28, 0x41200000
    goto/16 :label_015f
    :label_006d
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isWelcomeAnchored()Z
    move-result v0
    if-nez v0, :label_0067
    new-instance v0, Lorg/telegram/ui/Components/ir;
    sget v11, Lorg/telegram/messenger/R$drawable;->mini_ephemeral_hidden_14:I
    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/ir;-><init>(I)V
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v11
    if-eqz v11, :label_0087
    sget v11, Lorg/telegram/ui/ActionBar/n6;->Xc:I
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Cells/u1;->K2(I)I
    move-result v11
    goto :label_00a3
    :label_0087
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v11
    if-eqz v11, :label_00a1
    iget-object v11, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    if-eqz v11, :label_0098
    invoke-interface {v11}, Lorg/telegram/ui/ActionBar/j6;->a()Z
    move-result v11
    if-eqz v11, :label_00a1
    goto :label_009e
    :label_0098
    invoke-static {}, Lorg/telegram/ui/ActionBar/n6;->f1()Z
    move-result v11
    if-eqz v11, :label_00a1
    :label_009e
    sget v11, Lorg/telegram/ui/ActionBar/n6;->hc:I
    goto :label_00a3
    :label_00a1
    sget v11, Lorg/telegram/ui/ActionBar/n6;->Ch:I
    :label_00a3
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/ir;->setColorKey(I)Lorg/telegram/ui/Components/ir;
    new-instance v11, Landroid/text/SpannableStringBuilder;
    invoke-direct {v11, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    const/high16 v26, 0x43960000
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v3, :label_00c3
    invoke-interface {v3}, Lorg/telegram/ui/Cells/l1;->R()I
    move-result v3
    if-ne v3, v4, :label_00c3
    sget v3, Lorg/telegram/messenger/R$string;->EphemeralMessageVisibleToYou:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    const/high16 v28, 0x41200000
    goto :label_0101
    :label_00c3
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOut()Z
    move-result v3
    if-eqz v3, :label_00f6
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getEphemeralReceiverBotId()J
    move-result-wide v18
    cmp-long v3, v18, v7
    if-eqz v3, :label_00e2
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v3
    goto :label_00e3
    :label_00e2
    move-object v3, v6
    :label_00e3
    if-nez v3, :label_00e6
    move-object v3, v6
    :label_00e6
    sget v4, Lorg/telegram/messenger/R$string;->EphemeralMessageVisibleToOther:I
    const/high16 v28, 0x41200000
    new-array v5, v13, [Ljava/lang/Object;
    aput-object v3, v5, v14
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    goto :label_0101
    :label_00f6
    const/high16 v28, 0x41200000
    sget v3, Lorg/telegram/messenger/R$string;->EphemeralMessageVisibleToYou:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :label_0101
    invoke-virtual {v11, v0, v14, v13, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->r0:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isReply()Z
    move-result v3
    if-eqz v3, :label_010f
    move/from16 v3, v16
    goto :label_0110
    :label_010f
    move v3, v14
    :label_0110
    int-to-float v3, v3
    sub-float v3, v17, v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->r0:I
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isReply()Z
    move-result v3
    if-eqz v3, :label_0125
    move/from16 v3, v16
    goto :label_0126
    :label_0125
    move v3, v14
    :label_0126
    int-to-float v3, v3
    sub-float v3, v17, v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    new-instance v18, Landroid/text/StaticLayout;
    sget-object v20, Lorg/telegram/ui/ActionBar/n6;->V2:Landroid/text/TextPaint;
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v21
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v24, 0x0
    const/16 v25, 0x0
    const/16 v23, 0x0
    move-object/from16 v19, v11
    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v18
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->cb:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_015c
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->cb:Landroid/text/StaticLayout;
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    float-to-int v0, v0
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v0
    goto :label_015d
    :label_015c
    move v3, v14
    :label_015d
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->db:I
    :label_015f
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v0
    const-string v3, "</b>"
    const-string v4, " <b>"
    const-string v5, "@"
    const-string v11, "ViaBot"
    const-string v9, " "
    move-wide/from16 v19, v7
    if-eqz v0, :label_01e4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isWelcomeAnchored()Z
    move-result v0
    if-nez v0, :label_01e4
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v0, :label_01e4
    invoke-interface {v0}, Lorg/telegram/ui/Cells/l1;->R()I
    move-result v0
    if-nez v0, :label_01e4
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_01e4
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    cmp-long v0, v7, v19
    if-eqz v0, :label_01e4
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v7
    if-eqz v0, :label_028b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :label_028b
    invoke-static {v5, v7}, Lu8/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    sget v7, Lorg/telegram/messenger/R$string;->ViaBot:I
    invoke-static {v11, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v7
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v7
    invoke-virtual {v4, v3, v14, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v4
    float-to-double v7, v4
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v7
    double-to-int v4, v7
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->hc:Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :label_028d
    :label_01e4
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    cmp-long v7, v7, v19
    if-eqz v7, :label_0240
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v7
    if-eqz v0, :label_028b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :label_028b
    invoke-static {v5, v7}, Lu8/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    sget v7, Lorg/telegram/messenger/R$string;->ViaBot:I
    invoke-static {v11, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v7
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v7
    invoke-virtual {v4, v3, v14, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v4
    float-to-double v7, v4
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v7
    double-to-int v4, v7
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->hc:Lorg/telegram/tgnet/TLRPC$User;
    goto :label_028d
    :label_0240
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_028b
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sget v5, Lorg/telegram/messenger/R$string;->ViaBot:I
    invoke-static {v11, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v5
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-virtual {v4, v3, v14, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v4
    float-to-double v4, v4
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v4, v4
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    move-object v5, v0
    goto :label_028d
    :label_028b
    const/4 v3, 0x0
    const/4 v5, 0x0
    :label_028d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->k3()Z
    move-result v0
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v7, :label_029d
    iget v7, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v8, 0xe
    if-ne v7, v8, :label_02a1
    :label_029d
    if-eqz v5, :label_02a1
    move v7, v13
    goto :label_02a2
    :label_02a1
    move v7, v14
    :label_02a2
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v4, :label_02a8
    move v4, v13
    goto :label_02a9
    :label_02a8
    move v4, v14
    :label_02a9
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->g7:Z
    const-string v14, "\n"
    const/high16 v23, 0x41900000
    const/16 v24, 0x2
    const/high16 v25, 0x41400000
    const/high16 v30, 0x40800000
    const/high16 v31, 0x40000000
    const/high16 v32, 0x41a00000
    const/high16 v33, 0x41000000
    const/4 v13, 0x5
    if-nez v8, :label_02c6
    if-nez v0, :label_02c4
    if-nez v7, :label_02c4
    if-eqz v4, :label_02c6
    :label_02c4
    const/4 v8, 0x1
    goto :label_02d4
    :label_02c6
    move-object/from16 v37, v2
    move-object/from16 v35, v3
    move-object/from16 v48, v6
    move-object/from16 v49, v11
    move v13, v12
    move-object/from16 v26, v14
    const/4 v4, 0x0
    goto/16 :label_088c
    :label_02d4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->Ya:Z
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v8
    if-nez v8, :label_0300
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->S7:Z
    if-nez v8, :label_02e4
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-eqz v8, :label_0300
    :label_02e4
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-eqz v8, :label_0300
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v8, :label_02f2
    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v8, v8, 0x4
    if-eqz v8, :label_0300
    :label_02f2
    iget v8, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v8, v13, :label_0300
    const/16 v13, 0xd
    if-eq v8, v13, :label_0300
    const/16 v13, 0xf
    if-eq v8, v13, :label_0300
    const/4 v8, 0x1
    goto :label_0301
    :label_0300
    const/4 v8, 0x0
    :label_0301
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v8
    iput v8, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    if-gez v8, :label_0313
    const/high16 v8, 0x42c80000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    iput v8, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0313
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    const v13, 0x420151ec
    if-eqz v8, :label_0324
    iget v8, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v34
    sub-int v8, v8, v34
    iput v8, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0324
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isWelcomeMessage()Z
    move-result v8
    if-eqz v8, :label_0339
    move-object/from16 v35, v3
    move/from16 v37, v4
    move/from16 v36, v7
    move/from16 v34, v13
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v7, 0x0
    move-object v13, v2
    const/4 v2, 0x0
    goto/16 :label_041f
    :label_0339
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->R7:Z
    if-eqz v8, :label_0375
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :label_0375
    move/from16 v34, v13
    iget-object v13, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    if-eqz v13, :label_0371
    move-object v13, v2
    move-object/from16 v35, v3
    iget-wide v2, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    move-wide/from16 v36, v2
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v2
    neg-long v2, v2
    cmp-long v2, v36, v2
    if-nez v2, :label_037a
    new-instance v2, Landroid/text/SpannableStringBuilder;
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;
    invoke-virtual {v3, v14, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :label_0368
    move/from16 v37, v4
    move/from16 v36, v7
    :label_036c
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v7, 0x0
    goto/16 :label_041f
    :label_0371
    move-object v13, v2
    move-object/from16 v35, v3
    goto :label_037a
    :label_0375
    move-object/from16 v35, v3
    move/from16 v34, v13
    move-object v13, v2
    :label_037a
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->R7:Z
    if-eqz v2, :label_0396
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v2, :label_0396
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z
    move-result v2
    if-eqz v2, :label_0396
    new-instance v2, Landroid/text/SpannableStringBuilder;
    sget v3, Lorg/telegram/messenger/R$string;->DiscussChannel:I
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    goto :label_0368
    :label_0396
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v2, :label_03a5
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v2, :label_039f
    goto :label_03a5
    :label_039f
    move/from16 v37, v4
    move/from16 v36, v7
    goto/16 :label_041c
    :label_03a5
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-nez v2, :label_039f
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v2
    if-nez v2, :label_039f
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v3, 0x5
    if-eq v2, v3, :label_039f
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v2, :label_039f
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    move v8, v4
    if-eqz v3, :label_03c8
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J
    goto :label_03cc
    :label_03c8
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    :label_03cc
    invoke-interface {v2, v3, v4}, Lorg/telegram/ui/Cells/l1;->u(J)Ljava/lang/String;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_rank:Ljava/lang/String;
    if-eqz v3, :label_03d7
    move-object v2, v3
    :label_03d7
    if-eqz v2, :label_0418
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    move/from16 v36, v7
    move/from16 v37, v8
    if-eqz v4, :label_03e6
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J
    goto :label_03ea
    :label_03e6
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    :label_03ea
    invoke-interface {v3, v7, v8}, Lorg/telegram/ui/Cells/l1;->C0(J)Z
    move-result v3
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :label_03f7
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J
    goto :label_03fb
    :label_03f7
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    :label_03fb
    invoke-interface {v4, v7, v8}, Lorg/telegram/ui/Cells/l1;->C1(J)Z
    move-result v4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-eqz v7, :label_0410
    if-eqz v3, :label_040a
    sget v2, Lorg/telegram/messenger/R$string;->ChatTagOwner:I
    goto :label_040c
    :label_040a
    sget v2, Lorg/telegram/messenger/R$string;->ChatTagAdmin:I
    :label_040c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    :label_0410
    new-instance v7, Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    move-object v2, v7
    const/4 v7, 0x1
    goto :label_041f
    :label_0418
    move/from16 v36, v7
    move/from16 v37, v8
    :label_041c
    const/4 v2, 0x0
    goto/16 :label_036c
    :label_041f
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_boosts_applied:I
    if-lez v8, :label_0467
    if-nez v2, :label_042e
    new-instance v2, Landroid/text/SpannableStringBuilder;
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V
    :label_042e
    move/from16 v38, v0
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    invoke-static {v1, v0, v8}, Lpf/a;->a(Lorg/telegram/ui/Cells/u1;Landroid/text/TextPaint;I)Landroid/util/Pair;
    move-result-object v0
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;
    check-cast v8, Lpf/a;
    iput-object v8, v1, Lorg/telegram/ui/Cells/u1;->Sa:Lpf/a;
    move/from16 v39, v4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z
    move-result v4
    iput-boolean v4, v8, Lpf/a;->c:Z
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->Sa:Lpf/a;
    if-nez v39, :label_044d
    if-eqz v3, :label_044b
    goto :label_044d
    :label_044b
    const/4 v8, 0x0
    goto :label_044e
    :label_044d
    const/4 v8, 0x1
    :label_044e
    iput-boolean v8, v4, Lpf/a;->d:Z
    iget-boolean v4, v4, Lpf/a;->c:Z
    if-eqz v4, :label_045d
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
    check-cast v0, Ljava/lang/CharSequence;
    const/4 v4, 0x0
    invoke-virtual {v2, v4, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    goto :label_0464
    :label_045d
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
    check-cast v0, Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :label_0464
    move-object/from16 v41, v2
    goto :label_046c
    :label_0467
    move/from16 v38, v0
    move/from16 v39, v4
    goto :label_0464
    :label_046c
    if-eqz v41, :label_049a
    new-instance v40, Landroid/text/StaticLayout;
    sget-object v42, Lorg/telegram/ui/ActionBar/n6;->U2:Landroid/text/TextPaint;
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v43
    sget-object v44, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v45, 0x0
    invoke-direct/range {v40 .. v47}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v40
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    float-to-int v0, v0
    if-nez v39, :label_048d
    if-eqz v3, :label_0493
    :label_048d
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    move v0, v2
    :label_0493
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    sub-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0498
    const/4 v2, 0x0
    goto :label_049c
    :label_049a
    const/4 v0, 0x0
    goto :label_0498
    :label_049c
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->dc:Ljava/lang/String;
    move-object v4, v13
    move-object/from16 v26, v14
    move-wide/from16 v13, v19
    iput-wide v13, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->customName:Ljava/lang/String;
    if-eqz v2, :label_04ae
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    goto :label_04c5
    :label_04ae
    if-eqz v38, :label_04c3
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getAuthorName()Ljava/lang/String;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getAuthorStatus()Ljava/lang/Object;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getAuthorBotVerificationId()J
    move-result-wide v13
    iput-wide v13, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    goto :label_04c5
    :label_04c3
    iput-object v6, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    :label_04c5
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v2
    if-eqz v2, :label_04d0
    const/high16 v2, -0x3e400000
    goto :label_04d1
    :label_04d0
    const/4 v2, 0x0
    :label_04d1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    const/16 v13, 0xa
    const/16 v14, 0x20
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v8
    const/16 v13, 0x200f
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v8
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    :label_04e9
    sget-object v13, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v13
    const/4 v14, 0x0
    invoke-static {v8, v13, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v8
    :label_04f4
    iget-object v13, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    if-eqz v13, :label_0503
    if-nez v36, :label_0503
    iget v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    sub-int/2addr v13, v14
    iput v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0503
    iget-wide v13, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    const-wide/16 v19, 0x0
    cmp-long v13, v13, v19
    if-eqz v13, :label_0514
    iget v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    sub-int/2addr v13, v14
    iput v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0514
    if-eqz v41, :label_051f
    iget v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    sub-int/2addr v13, v14
    iput v13, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_051f
    sget-object v13, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    iget v14, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    add-int/2addr v14, v2
    move/from16 v38, v0
    if-eqz v36, :label_052b
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    goto :label_052c
    :label_052b
    const/4 v0, 0x0
    :label_052c
    sub-int/2addr v14, v0
    int-to-float v0, v14
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v8, v13, v0, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v0
    if-eqz v37, :label_05b9
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v0
    if-eqz v0, :label_0541
    sget v0, Lorg/telegram/ui/ActionBar/n6;->Rc:I
    goto :label_054e
    :label_0541
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v0
    if-eqz v0, :label_054c
    sget v0, Lorg/telegram/ui/ActionBar/n6;->Za:I
    goto :label_054e
    :label_054c
    sget v0, Lorg/telegram/ui/ActionBar/n6;->Qc:I
    :label_054e
    new-instance v8, Landroid/text/SpannableStringBuilder;
    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V
    iget-object v13, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v42
    invoke-static/range {v42 .. v43}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;
    move-result-object v13
    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v13
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    sget v37, Lorg/telegram/messenger/R$string;->GuestBotFor:I
    move/from16 v40, v2
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v42
    invoke-static/range {v42 .. v43}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    new-instance v2, Lorg/telegram/ui/Components/c71;
    sget-object v37, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-direct {v2}, Lorg/telegram/ui/Components/c71;-><init>()V
    move-object/from16 v37, v4
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v4
    move-object/from16 v48, v6
    const/16 v6, 0x21
    invoke-virtual {v8, v2, v13, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    new-instance v2, Lorg/telegram/ui/Components/a20;
    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/a20;-><init>(I)V
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v0
    const/4 v4, 0x0
    invoke-virtual {v8, v2, v4, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    add-int v2, v2, v40
    int-to-float v2, v2
    invoke-static {v8, v0, v2, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v0
    move-object/from16 v51, v0
    move-object/from16 v49, v11
    move v13, v12
    goto/16 :label_06ed
    :label_05b9
    move/from16 v40, v2
    move-object/from16 v37, v4
    move-object/from16 v48, v6
    const/4 v4, 0x0
    if-eqz v36, :label_06e6
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-virtual {v2, v0, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v2
    move-object v4, v11
    move v13, v12
    float-to-double v11, v2
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v11
    double-to-int v2, v11
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    if-eqz v2, :label_05df
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v2
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    :label_05df
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-eqz v2, :label_05ee
    sget v2, Lorg/telegram/ui/ActionBar/n6;->Rc:I
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/u1;->K2(I)I
    move-result v2
    goto :label_05ff
    :label_05ee
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_05f9
    sget v2, Lorg/telegram/ui/ActionBar/n6;->Za:I
    goto :label_05fb
    :label_05f9
    sget v2, Lorg/telegram/ui/ActionBar/n6;->Qc:I
    :label_05fb
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/u1;->K2(I)I
    move-result v2
    :label_05ff
    sget v6, Lorg/telegram/messenger/R$string;->ViaBot:I
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v6
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    move-result v8
    if-lez v8, :label_0694
    new-instance v8, Landroid/text/SpannableStringBuilder;
    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v11
    invoke-virtual {v11, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v11
    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v11
    invoke-virtual {v11, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v11
    invoke-virtual {v11, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    new-instance v11, Lorg/telegram/ui/Components/c71;
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-direct {v11, v12, v2}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;I)V
    iput-object v11, v1, Lorg/telegram/ui/Cells/u1;->A8:Lorg/telegram/ui/Components/c71;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v12
    const/16 v29, 0x1
    add-int/lit8 v12, v12, 0x1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v42
    add-int/lit8 v42, v42, 0x1
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v43
    move-object/from16 v44, v0
    add-int v0, v43, v42
    move-object/from16 v49, v4
    const/16 v4, 0x21
    invoke-virtual {v8, v11, v12, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    if-eqz v0, :label_0674
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    const/high16 v4, 0x41e00000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v11, v0
    iput v11, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    new-instance v0, Lorg/telegram/ui/Cells/q2;
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/q2;-><init>(I)V
    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->length()I
    move-result v4
    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->length()I
    move-result v11
    const/16 v29, 0x1
    add-int/lit8 v11, v11, 0x1
    const/16 v12, 0x21
    invoke-virtual {v8, v0, v4, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_0674
    new-instance v0, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v4
    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;I)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->B8:Lorg/telegram/ui/Components/c71;
    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->length()I
    move-result v2
    add-int/lit8 v2, v2, 0x2
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v4
    add-int/2addr v4, v2
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v2
    const/16 v6, 0x21
    invoke-virtual {v8, v0, v4, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    goto :label_06d8
    :label_0694
    move-object/from16 v49, v4
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->z8:Z
    new-instance v0, Landroid/text/SpannableStringBuilder;
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v4
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v4
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    new-instance v4, Lorg/telegram/ui/Components/c71;
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-direct {v4, v11, v2}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;I)V
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->A8:Lorg/telegram/ui/Components/c71;
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v11
    add-int/2addr v11, v8
    move/from16 v29, v8
    const/4 v8, 0x0
    const/16 v12, 0x21
    invoke-virtual {v0, v4, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    new-instance v4, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v8
    invoke-direct {v4, v8, v2}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;I)V
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->B8:Lorg/telegram/ui/Components/c71;
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v2
    add-int/lit8 v2, v2, 0x1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v6
    invoke-virtual {v0, v4, v2, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    move-object v8, v0
    :label_06d8
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    add-int v2, v2, v40
    int-to-float v2, v2
    invoke-static {v8, v0, v2, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v0
    move-object/from16 v51, v0
    goto :label_06ed
    :label_06e6
    move-object/from16 v44, v0
    move-object/from16 v49, v11
    move v13, v12
    move-object/from16 v51, v44
    :label_06ed
    new-instance v50, Landroid/text/StaticLayout;
    sget-object v52, Lorg/telegram/ui/ActionBar/n6;->W2:Landroid/text/TextPaint;
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    add-int v0, v0, v40
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int v53, v0, v2
    sget-object v44, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v56, 0x0
    const/16 v57, 0x0
    const/high16 v55, 0x3f800000
    move-object/from16 v54, v44
    invoke-direct/range {v50 .. v57}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v50
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ja:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_0740
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ja:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    float-to-double v11, v0
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v11
    double-to-int v0, v11
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ka:I
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_0736
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    invoke-direct {v1}, Lorg/telegram/ui/Cells/u1;->getNameHeight()I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    goto :label_0736
    :label_0733
    move-exception v0
    goto/16 :label_0804
    :label_0736
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ja:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ua:F
    goto :label_0748
    :label_0740
    const/4 v4, 0x0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Ka:I
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    const/4 v2, 0x0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Ua:F
    :label_0748
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    if-eqz v0, :label_0758
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    const v2, 0x421151ec
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0758
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    if-eqz v0, :label_0767
    if-nez v36, :label_0767
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0767
    iget-wide v11, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    const-wide/16 v19, 0x0
    cmp-long v0, v11, v19
    if-eqz v0, :label_0778
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_0778
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    sub-int v0, v0, v40
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    if-eqz v41, :label_07f7
    new-instance v40, Landroid/text/StaticLayout;
    sget-object v42, Lorg/telegram/ui/ActionBar/n6;->U2:Landroid/text/TextPaint;
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int v43, v38, v0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/high16 v45, 0x3f800000
    invoke-direct/range {v40 .. v47}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v40
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Oa:Landroid/text/StaticLayout;
    if-nez v39, :label_079e
    if-eqz v3, :label_079c
    goto :label_079e
    :label_079c
    const/4 v2, 0x0
    goto :label_079f
    :label_079e
    const/4 v2, 0x1
    :label_079f
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->La:Z
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->Ma:Z
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/u1;->Na:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    if-nez v2, :label_07c8
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    int-to-float v2, v2
    const/4 v4, 0x0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->La:Z
    if-eqz v3, :label_07ba
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    goto :label_07bb
    :label_07ba
    const/4 v3, 0x0
    :label_07bb
    int-to-float v3, v3
    add-float/2addr v0, v3
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    add-float/2addr v0, v3
    add-float/2addr v0, v2
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    goto :label_07ef
    :label_07c8
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    int-to-float v0, v0
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Oa:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v3
    add-float/2addr v2, v3
    if-eqz v39, :label_07df
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    goto :label_07e0
    :label_07df
    const/4 v3, 0x0
    :label_07e0
    int-to-float v3, v3
    add-float/2addr v2, v3
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    add-float/2addr v2, v3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F
    move-result v0
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    :label_07ef
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ra:Landroid/graphics/RectF;
    goto :label_0807
    :label_07f7
    const/4 v2, 0x0
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Oa:Landroid/text/StaticLayout;
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->La:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Ma:Z
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->Na:Z
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->Ra:Landroid/graphics/RectF;
    :label_0803
    goto :label_0807
    :label_0804
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_0807
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ec:Lorg/telegram/ui/Components/q5;
    if-nez v0, :label_0822
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    if-eqz v0, :label_0822
    new-instance v0, Lorg/telegram/ui/Components/q5;
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    const/4 v8, 0x1
    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/Components/q5;-><init>(Landroid/view/View;IZ)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->ec:Lorg/telegram/ui/Components/q5;
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-eqz v2, :label_0822
    invoke-virtual {v0}, Lorg/telegram/ui/Components/q5;->a()V
    :label_0822
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ec:Lorg/telegram/ui/Components/q5;
    if-eqz v0, :label_0848
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->bc:Ljava/lang/Object;
    if-nez v2, :label_0830
    const/4 v3, 0x0
    const/4 v4, 0x0
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/q5;->g(Landroid/graphics/drawable/Drawable;Z)V
    goto :label_0848
    :label_0830
    const/4 v4, 0x0
    instance-of v3, v2, Ljava/lang/Long;
    if-eqz v3, :label_083f
    check-cast v2, Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    move-result-wide v2
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/q5;->j(JZ)Z
    goto :label_0848
    :label_083f
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;
    if-eqz v3, :label_0848
    check-cast v2, Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/q5;->g(Landroid/graphics/drawable/Drawable;Z)V
    :label_0848
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->fc:Lorg/telegram/ui/Components/q5;
    if-nez v0, :label_0867
    iget-wide v2, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    const-wide/16 v19, 0x0
    cmp-long v0, v2, v19
    if-eqz v0, :label_0867
    new-instance v0, Lorg/telegram/ui/Components/q5;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    const/4 v8, 0x1
    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/Components/q5;-><init>(Landroid/view/View;IZ)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->fc:Lorg/telegram/ui/Components/q5;
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-eqz v2, :label_0867
    invoke-virtual {v0}, Lorg/telegram/ui/Components/q5;->a()V
    :label_0867
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->fc:Lorg/telegram/ui/Components/q5;
    if-eqz v0, :label_087f
    iget-wide v2, v1, Lorg/telegram/ui/Cells/u1;->cc:J
    const-wide/16 v19, 0x0
    cmp-long v4, v2, v19
    if-nez v4, :label_0879
    const/4 v4, 0x0
    const/4 v14, 0x0
    invoke-virtual {v0, v4, v14}, Lorg/telegram/ui/Components/q5;->g(Landroid/graphics/drawable/Drawable;Z)V
    goto :label_0880
    :label_0879
    const/4 v4, 0x0
    const/4 v14, 0x0
    invoke-virtual {v0, v2, v3, v14}, Lorg/telegram/ui/Components/q5;->j(JZ)Z
    goto :label_0880
    :label_087f
    const/4 v4, 0x0
    :label_0880
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :label_088a
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    :label_088a
    const/4 v14, 0x0
    goto :label_0896
    :label_088c
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->ac:Ljava/lang/String;
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->Ja:Landroid/text/StaticLayout;
    const/4 v14, 0x0
    iput v14, v1, Lorg/telegram/ui/Cells/u1;->Ta:I
    const/4 v2, 0x0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Ua:F
    :label_0896
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    aput-object v4, v2, v14
    const/16 v29, 0x1
    aput-object v4, v2, v29
    iput-boolean v14, v1, Lorg/telegram/ui/Cells/u1;->lc:Z
    iput v14, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z
    move-result v0
    if-eqz v0, :label_0906
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    if-eqz v3, :label_08d1
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    goto :label_0906
    :label_08d1
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;
    if-eqz v3, :label_08ec
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    goto :label_0906
    :label_08ec
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v0, :label_0906
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    :label_0906
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const v4, 0x3f9d70a4
    const v6, -0x41570a3d
    const-string v7, ")"
    const-string v8, " ("
    const-string v11, "A "
    const/16 v14, 0x17
    const/high16 v34, 0x42100000
    if-eq v0, v14, :label_0937
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-eqz v0, :label_092d
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v0
    if-eqz v0, :label_092d
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_0937
    iget-byte v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-nez v0, :label_092d
    goto :label_0937
    :label_092d
    move/from16 v38, v4
    move/from16 v39, v6
    move-object/from16 v41, v15
    const-wide/16 v19, 0x0
    goto/16 :label_0ca4
    :label_0937
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v0, v14, :label_0945
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;
    if-eqz v3, :label_0945
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    :label_0945
    if-eq v0, v14, :label_0953
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :label_0953
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v0, :label_0953
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    if-eqz v0, :label_092d
    :label_0953
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    if-nez v0, :label_0965
    new-instance v0, Lorg/telegram/ui/l5;
    invoke-direct {v0, v13, v1}, Lorg/telegram/ui/l5;-><init>(ILandroid/view/View;)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    iput v3, v0, Lorg/telegram/ui/l5;->r:F
    :label_0965
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
    move-result v3
    float-to-int v3, v3
    int-to-float v3, v3
    mul-float/2addr v3, v4
    sget v38, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float v3, v3, v38
    move/from16 v38, v4
    iget-object v4, v0, Lorg/telegram/ui/l5;->b:Lorg/telegram/messenger/ImageReceiver;
    move/from16 v39, v6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    iput v3, v0, Lorg/telegram/ui/l5;->d:F
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-ne v0, v14, :label_0a1c
    sget v0, Lorg/telegram/messenger/R$string;->ForwardedStory:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v3
    const-wide/16 v19, 0x0
    cmp-long v5, v3, v19
    if-lez v5, :label_09b5
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v12
    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v12
    iput-object v12, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v6, v12}, Lorg/telegram/ui/l5;->e(Lorg/telegram/tgnet/TLRPC$User;)V
    move-object/from16 v41, v15
    goto :label_09cb
    :label_09b5
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v12
    move-object/from16 v41, v15
    neg-long v14, v3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v14
    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v12
    iput-object v12, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v6, v12}, Lorg/telegram/ui/l5;->b(Lorg/telegram/tgnet/TLRPC$Chat;)V
    :label_09cb
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/u1;->D2(J)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-gez v5, :label_09e3
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v4, :label_09e3
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I
    const-string v4, "ChannelPrivate"
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x0
    goto :label_09e4
    :label_09e3
    const/4 v4, 0x1
    :label_09e4
    new-instance v5, Landroid/text/SpannableStringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    if-eqz v4, :label_09ef
    move-object v12, v11
    goto :label_09f1
    :label_09ef
    move-object/from16 v12, v48
    :label_09f1
    invoke-static {v6, v12, v3}, La2/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    new-instance v3, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v6
    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v6
    const/16 v12, 0x21
    const/4 v14, 0x0
    invoke-virtual {v5, v3, v14, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    if-eqz v4, :label_0a13
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    const/4 v4, 0x1
    invoke-virtual {v5, v3, v14, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_0a13
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v3
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    const/4 v14, 0x0
    goto/16 :label_0ba1
    :label_0a1c
    move-object/from16 v41, v15
    const-wide/16 v19, 0x0
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :label_0a8e
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :label_0a4d
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v0, v3}, Lorg/telegram/ui/l5;->e(Lorg/telegram/tgnet/TLRPC$User;)V
    goto :label_0a9f
    :label_0a4d
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :label_0a82
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v0, v3}, Lorg/telegram/ui/l5;->b(Lorg/telegram/tgnet/TLRPC$Chat;)V
    goto :label_0a9f
    :label_0a82
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-virtual {v3, v0}, Lorg/telegram/ui/l5;->b(Lorg/telegram/tgnet/TLRPC$Chat;)V
    goto :label_0a9f
    :label_0a8e
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :label_0aa1
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v0, v3}, Lorg/telegram/ui/l5;->e(Lorg/telegram/tgnet/TLRPC$User;)V
    :label_0a9f
    const/4 v0, 0x1
    goto :label_0aa6
    :label_0aa1
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    const/4 v0, 0x0
    :label_0aa6
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v3
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-virtual/range {v63 .. v64}, Lorg/telegram/ui/Cells/u1;->A2(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    move-result-object v3
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->g7:Z
    if-eqz v4, :label_0abd
    iget v4, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int/2addr v4, v6
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    :label_0abd
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    if-eqz v0, :label_0ac6
    move-object v6, v11
    goto :label_0ac8
    :label_0ac6
    move-object/from16 v6, v48
    :label_0ac8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    const/16 v12, 0xa
    const/16 v14, 0x20
    invoke-virtual {v6, v12, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    iget v12, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    iget v14, v1, Lorg/telegram/ui/Cells/u1;->x8:I
    sub-int/2addr v12, v14
    if-eqz v0, :label_0ae9
    const v14, 0x418aa3d7
    goto :label_0aea
    :label_0ae9
    const/4 v14, 0x0
    :label_0aea
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    sub-int/2addr v12, v14
    int-to-float v12, v12
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v4, v6, v12, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v4
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-eqz v35, :label_0b51
    new-instance v12, Landroid/text/SpannableStringBuilder;
    sget v14, Lorg/telegram/messenger/R$string;->ViaBot:I
    move-object/from16 v15, v49
    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v14
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    invoke-direct {v12, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    sget-object v14, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v6
    float-to-double v14, v6
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v14
    double-to-int v6, v14
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->y8:I
    new-instance v6, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v14
    invoke-direct {v6, v14}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v14
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v5
    sub-int/2addr v14, v5
    const/4 v5, 0x1
    sub-int/2addr v14, v5
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v15
    const/16 v5, 0x21
    invoke-virtual {v12, v6, v14, v15, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    goto :label_0b58
    :label_0b51
    const/16 v5, 0x21
    new-instance v12, Landroid/text/SpannableStringBuilder;
    invoke-direct {v12, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :label_0b58
    if-eqz v0, :label_0b68
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v0
    const/4 v6, 0x1
    if-le v0, v6, :label_0b68
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    const/4 v14, 0x0
    invoke-virtual {v12, v0, v14, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    goto :label_0b69
    :label_0b68
    const/4 v14, 0x0
    :label_0b69
    sget-object v0, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-virtual {v0, v4, v14, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v0
    float-to-double v4, v0
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v0, v4
    div-int/lit8 v0, v0, 0x2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->G1:I
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    if-eqz v0, :label_0b8c
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v0, :label_0b8a
    goto :label_0b8c
    :label_0b8a
    const/4 v14, 0x0
    goto :label_0b9f
    :label_0b8c
    new-instance v0, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v4
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v4
    const/16 v6, 0x21
    const/4 v14, 0x0
    invoke-virtual {v12, v0, v14, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_0b9f
    move-object v0, v3
    move-object v5, v12
    :label_0ba1
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    invoke-static {v5, v3, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v5
    :label_0bab
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    iget v4, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    int-to-float v4, v4
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v5, v3, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v50
    :label_0bb6
    new-instance v49, Landroid/text/StaticLayout;
    sget-object v51, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int v52, v3, v4
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v55, 0x0
    const/16 v56, 0x0
    const/high16 v54, 0x3f800000
    invoke-direct/range {v49 .. v56}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    const/16 v29, 0x1
    aput-object v49, v2, v29
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    iget v4, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    int-to-float v4, v4
    invoke-static {v0, v3, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v54
    move-object/from16 v57, v53
    new-instance v53, Landroid/text/StaticLayout;
    sget-object v55, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int v56, v0, v3
    const/16 v59, 0x0
    const/16 v60, 0x0
    const/high16 v58, 0x3f800000
    invoke-direct/range {v53 .. v60}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    const/16 v22, 0x0
    aput-object v53, v2, v22
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->r1:Lorg/telegram/ui/Components/e20;
    if-nez v0, :label_0c08
    new-instance v0, Lorg/telegram/ui/Components/e20;
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/e20;-><init>(Lorg/telegram/ui/Cells/u1;)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->r1:Lorg/telegram/ui/Components/e20;
    goto :label_0c08
    :label_0c05
    move-exception v0
    goto/16 :label_0ca1
    :label_0c08
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->r1:Lorg/telegram/ui/Components/e20;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    if-nez v3, :label_0c20
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->Ya:Z
    if-eqz v3, :label_0c1a
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->Ja:Landroid/text/StaticLayout;
    if-nez v3, :label_0c20
    :label_0c1a
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->D:Z
    if-eqz v3, :label_0c20
    const/4 v3, 0x1
    goto :label_0c21
    :label_0c20
    const/4 v3, 0x0
    :label_0c21
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/e20;->c([Landroid/text/StaticLayout;Z)V
    const/4 v4, 0x0
    aget-object v0, v2, v4
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v0
    float-to-double v5, v0
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v0, v5
    const/16 v29, 0x1
    aget-object v3, v2, v29
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v3
    float-to-double v3, v3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v3, v3
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->g7:Z
    if-eqz v3, :label_0c50
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    :label_0c50
    const/4 v4, 0x0
    aget-object v0, v2, v4
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v0
    aput v0, v37, v4
    const/16 v29, 0x1
    aget-object v0, v2, v29
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v0
    aput v0, v37, v29
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v0, :label_0c6b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    if-eqz v0, :label_0c7c
    :label_0c6b
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v3, 0x5
    if-eq v0, v3, :label_0c76
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-eqz v0, :label_0c7c
    :label_0c76
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x13
    if-ne v0, v3, :label_0ca4
    :label_0c7c
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    int-to-float v0, v0
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F
    move-result v4
    move/from16 v5, v31
    invoke-static {v4, v5, v3, v0}, Lorg/telegram/ui/va;->B(FFFF)F
    move-result v0
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    iget v3, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v4, 0x13
    if-ne v3, v4, :label_0ca4
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v0, v3
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_0ca0
    goto :label_0ca4
    :label_0ca1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_0ca4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z
    move-result v0
    const/high16 v3, 0x41500000
    const/high16 v4, 0x40a00000
    const-string v14, "Loading"
    if-nez v0, :label_0cd4
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-eqz v0, :label_0cce
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    if-nez v0, :label_0cce
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v0, :label_0cce
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->S7:Z
    invoke-virtual {v10, v0}, Lorg/telegram/messenger/MessageObject;->getReplyTopMsgId(Z)I
    move-result v0
    if-nez v0, :label_0cce
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->U7:Z
    if-nez v0, :label_0cce
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-eqz v0, :label_0cd4
    :label_0cce
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z
    move-result v0
    if-nez v0, :label_0cff
    :label_0cd4
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v0, :label_0ce0
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isDice()Z
    move-result v0
    if-nez v0, :label_0cff
    :label_0ce0
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v0, :label_0cfb
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I
    if-nez v5, :label_0cff
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :label_0cff
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v0, :label_0cfb
    goto :label_0cff
    :label_0cfb
    const/high16 v35, 0x40c00000
    goto/16 :label_1a02
    :label_0cff
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_0cfb
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_0d10
    iget-byte v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-nez v0, :label_0d0c
    goto :label_0d10
    :label_0d0c
    const/high16 v35, 0x40c00000
    goto/16 :label_1ad1
    :label_0d10
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v0, :label_0d18
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    if-eqz v0, :label_0d29
    :label_0d18
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_0d23
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v0, v5, :label_0d29
    :label_0d23
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v5, 0x13
    if-ne v0, v5, :label_0d5e
    :label_0d29
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    int-to-float v0, v0
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    int-to-float v5, v5
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F
    move-result v6
    sget-object v15, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F
    move-result v15
    add-float/2addr v15, v6
    add-float/2addr v15, v5
    add-float/2addr v15, v0
    float-to-int v0, v15
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    iget v5, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v6, 0x13
    if-ne v5, v6, :label_0d55
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-nez v6, :label_0d55
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    goto :label_0d5e
    :label_0d55
    if-eqz v5, :label_0d5e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v0
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_0d5e
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-eqz v0, :label_0d73
    const/16 v22, 0x0
    aget-object v0, v2, v22
    if-eqz v0, :label_0d73
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    const/high16 v31, 0x40000000
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_0d73
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v0
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-nez v2, :label_0daa
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_0d84
    goto :label_0d86
    :label_0d84
    move/from16 v32, v28
    :label_0d86
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-nez v2, :label_0d95
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawShareButton()Z
    move-result v2
    if-eqz v2, :label_0db4
    :label_0d95
    iget-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->isSaved:Z
    if-eqz v2, :label_0da2
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_0da2
    const/high16 v5, 0x420c0000
    goto :label_0da4
    :label_0da2
    move/from16 v5, v28
    :label_0da4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    goto :label_0db4
    :label_0daa
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v2, v5, :label_0db4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    :label_0db4
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_0dc6
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    and-int/lit8 v3, v3, 0x40
    if-eqz v3, :label_0dc6
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;
    if-eqz v3, :label_0dc6
    const/4 v3, 0x1
    goto :label_0dc7
    :label_0dc6
    const/4 v3, 0x0
    :label_0dc7
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    if-eqz v3, :label_0dd1
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z
    if-eqz v3, :label_0dd1
    const/4 v3, 0x1
    goto :label_0dd2
    :label_0dd1
    const/4 v3, 0x0
    :label_0dd2
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v3, :label_0ddc
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z
    if-eqz v2, :label_0ddc
    const/4 v15, 0x1
    goto :label_0ddd
    :label_0ddc
    const/4 v15, 0x0
    :label_0ddd
    if-eqz v3, :label_0dfc
    if-eqz v15, :label_0dfc
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->u9:Landroid/graphics/drawable/Drawable;
    if-nez v2, :label_0dfc
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Lorg/telegram/messenger/R$drawable;->mini_quote:I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v2
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->u9:Landroid/graphics/drawable/Drawable;
    const/4 v2, -0x1
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->r9:I
    :label_0dfc
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_0e09
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-eqz v2, :label_0e09
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->a3:Landroid/text/TextPaint;
    goto :label_0e0b
    :label_0e09
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    :label_0e0b
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    const/high16 v25, 0x40e00000
    const/high16 v28, 0x41800000
    const/high16 v32, 0x40400000
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->E9:Lorg/telegram/messenger/ImageReceiver;
    if-eqz v3, :label_0e72
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I
    if-eqz v5, :label_0e72
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->peer:Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    move-result-wide v5
    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Cells/u1;->D2(J)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-eqz v3, :label_0e5c
    instance-of v5, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;
    if-eqz v5, :label_0e36
    goto :label_0e5c
    :label_0e36
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    invoke-static {v4, v3}, Lxg/f6;->y(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    invoke-static {}, Lxg/f6;->f()Landroid/text/SpannableStringBuilder;
    move-result-object v3
    int-to-float v0, v0
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F
    move-result v5
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F
    move-result v6
    add-float/2addr v6, v5
    add-float/2addr v6, v4
    sub-float/2addr v0, v6
    float-to-int v0, v0
    :label_0e54
    move-object v4, v2
    move-object v2, v3
    move-object/from16 v61, v9
    :label_0e58
    const/high16 v35, 0x40c00000
    goto/16 :label_16eb
    :label_0e5c
    if-nez v3, :label_0e66
    sget v3, Lorg/telegram/messenger/R$string;->Loading:I
    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x0
    goto :label_0e6f
    :label_0e66
    sget v3, Lorg/telegram/messenger/R$string;->ExpiredStory:I
    const/4 v4, 0x0
    new-array v5, v4, [Ljava/lang/Object;
    invoke-static {v3, v4, v5}, Lxg/f6;->e(IZ[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    move-result-object v3
    :label_0e6f
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    goto :label_0e54
    :label_0e72
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-eqz v3, :label_0e90
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-nez v3, :label_0e90
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v3
    if-nez v3, :label_0e90
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->O7:Z
    if-nez v3, :label_0e90
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->S7:Z
    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessageObject;->getReplyTopMsgId(Z)I
    move-result v3
    if-nez v3, :label_0e90
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->U7:Z
    if-eqz v3, :label_0e96
    :label_0e90
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z
    move-result v3
    if-nez v3, :label_0ea4
    :label_0e96
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    if-nez v3, :label_0ea4
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v3, :label_0ea8
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v3, :label_0ea8
    :label_0ea4
    const/16 v11, 0x21
    goto/16 :label_1036
    :label_0ea8
    const/4 v3, 0x0
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    const/4 v4, 0x1
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->lc:Z
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v3, :label_0f14
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    if-eqz v4, :label_0ed5
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v3
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    goto :label_0f0a
    :label_0ed5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;
    if-eqz v4, :label_0ef0
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v3
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    goto :label_0f0a
    :label_0ef0
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    if-eqz v3, :label_0f0a
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v3
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    :label_0f0a
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;
    if-eqz v3, :label_0f14
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    :label_0f14
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :label_0f28
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v3, :label_0f28
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    if-eqz v3, :label_0f21
    goto :label_0f28
    :label_0f21
    move-object v4, v2
    move-object/from16 v61, v9
    const/4 v2, 0x0
    const/4 v7, 0x0
    goto/16 :label_0e58
    :label_0f28
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    if-nez v3, :label_0f3a
    new-instance v3, Lorg/telegram/ui/l5;
    invoke-direct {v3, v13, v1}, Lorg/telegram/ui/l5;-><init>(ILandroid/view/View;)V
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    iput v4, v3, Lorg/telegram/ui/l5;->r:F
    :label_0f3a
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->X2:Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F
    move-result v4
    float-to-int v4, v4
    int-to-float v4, v4
    mul-float v4, v4, v38
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F
    div-float/2addr v4, v5
    iget-object v5, v3, Lorg/telegram/ui/l5;->b:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    iput v4, v3, Lorg/telegram/ui/l5;->d:F
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->ic:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :label_0f8b
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :label_0f81
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v3, v4}, Lorg/telegram/ui/l5;->e(Lorg/telegram/tgnet/TLRPC$User;)V
    goto :label_0f9c
    :label_0f81
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    iput-object v4, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    invoke-virtual {v4, v3}, Lorg/telegram/ui/l5;->b(Lorg/telegram/tgnet/TLRPC$Chat;)V
    goto :label_0f9c
    :label_0f8b
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :label_0f9e
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v3
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->gc:Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v3, v4}, Lorg/telegram/ui/l5;->e(Lorg/telegram/tgnet/TLRPC$User;)V
    :label_0f9c
    const/4 v3, 0x1
    goto :label_0fa3
    :label_0f9e
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    iput-object v3, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    const/4 v3, 0x0
    :label_0fa3
    invoke-virtual/range {v63 .. v64}, Lorg/telegram/ui/Cells/u1;->A2(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    move-result-object v7
    iget-object v4, v1, Lorg/telegram/ui/Cells/u1;->kc:Ljava/lang/String;
    if-nez v4, :label_0fae
    move-object/from16 v4, v48
    goto :label_0fb6
    :label_0fae
    const/16 v13, 0xa
    const/16 v14, 0x20
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v4
    :label_0fb6
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    if-eqz v3, :label_0fbe
    goto :label_0fc0
    :label_0fbe
    move-object/from16 v11, v48
    :label_0fc0
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    if-eqz v3, :label_0fd2
    const v36, 0x418aa3d7
    goto :label_0fd4
    :label_0fd2
    const/16 v36, 0x0
    :label_0fd4
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    sub-int v6, v0, v6
    int-to-float v6, v6
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v4, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v4
    new-instance v5, Landroid/text/SpannableStringBuilder;
    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    if-eqz v3, :label_0ff7
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v3
    const/4 v6, 0x1
    if-le v3, v6, :label_0ff7
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->q1:Lorg/telegram/ui/l5;
    const/16 v11, 0x21
    const/4 v14, 0x0
    invoke-virtual {v5, v3, v14, v6, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_0ff7
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->jc:Ljava/lang/String;
    if-eqz v3, :label_1008
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v3, :label_1004
    goto :label_1008
    :label_1004
    const/16 v11, 0x21
    const/4 v14, 0x0
    goto :label_101b
    :label_1008
    new-instance v3, Lorg/telegram/ui/Components/c71;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v6
    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/c71;-><init>(Landroid/graphics/Typeface;)V
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    move-result v6
    const/16 v11, 0x21
    const/4 v14, 0x0
    invoke-virtual {v5, v3, v14, v6, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :label_101b
    int-to-float v3, v0
    invoke-static {v5, v2, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v3
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-virtual {v5, v4, v14, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v4
    float-to-double v4, v4
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v4, v4
    div-int/lit8 v4, v4, 0x2
    iput v4, v1, Lorg/telegram/ui/Cells/u1;->G1:I
    goto/16 :label_0e54
    :label_1036
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-nez v3, :label_103c
    const/4 v5, 0x0
    goto :label_103e
    :label_103c
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :label_103e
    iput-object v5, v1, Lorg/telegram/ui/Cells/u1;->f7:Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v5, 0x140
    if-eqz v3, :label_1159
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z
    move-result v3
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;
    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v6
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;
    const/16 v8, 0x28
    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v7
    iget-object v11, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/high16 v35, 0x40c00000
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->photoThumbsObject2:Lorg/telegram/tgnet/TLObject;
    if-nez v6, :label_1094
    iget-boolean v6, v11, Lorg/telegram/messenger/MessageObject;->mediaExists:Z
    if-eqz v6, :label_1079
    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I
    move-result v7
    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v6
    if-eqz v6, :label_1075
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I
    goto :label_1076
    :label_1075
    const/4 v7, 0x0
    :label_1076
    move v11, v7
    const/4 v7, 0x0
    goto :label_1081
    :label_1079
    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v6
    const/4 v7, 0x1
    const/4 v11, 0x0
    :label_1081
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;
    invoke-static {v12, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v12
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;
    move-object/from16 v62, v12
    move-object v12, v5
    move v5, v7
    move-object/from16 v7, v62
    goto :label_1096
    :label_1094
    const/4 v5, 0x1
    const/4 v11, 0x0
    :label_1096
    if-nez v6, :label_1142
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v8
    move-object/from16 v38, v2
    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v2, :label_113f
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->attached_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->poll_option:[B
    move-object/from16 v39, v2
    if-eqz v8, :label_10bd
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2, v8}, Lorg/telegram/messenger/MessageObject;->findPollItem(Lorg/telegram/messenger/MessageObject;[B)Lorg/telegram/tgnet/TLRPC$PollAnswer;
    move-result-object v2
    if-eqz v2, :label_10bd
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :label_10bf
    :label_10bd
    move-object/from16 v2, v39
    :label_10bf
    if-eqz v2, :label_113f
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v8, :label_111a
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v8
    if-nez v8, :label_10d6
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    move-result v8
    if-eqz v8, :label_10d4
    goto :label_10d6
    :label_10d4
    const/4 v8, 0x0
    goto :label_10d7
    :label_10d6
    const/4 v8, 0x1
    :label_10d7
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    move/from16 v39, v3
    const/4 v3, 0x1
    invoke-static {v12, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    move-result v12
    if-nez v8, :label_10ff
    if-eqz v12, :label_10e5
    goto :label_10ff
    :label_10e5
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v7, 0x28
    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v7
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v6, 0x140
    const/4 v8, 0x0
    const/4 v12, 0x0
    invoke-static {v2, v6, v12, v8, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    move-object v6, v2
    const/4 v2, 0x0
    const/4 v3, 0x0
    goto :label_110f
    :label_10ff
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    sget v8, Lorg/telegram/ui/ActionBar/n6;->lc:I
    const/high16 v12, 0x3f800000
    invoke-static {v3, v8, v12}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    move-result-object v3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    :label_110f
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v62, v3
    move-object v3, v2
    move-object v2, v7
    move-object/from16 v7, v62
    goto :label_1149
    :label_111a
    move/from16 v39, v3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v3, :label_1145
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v7, 0x28
    invoke-static {v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    const/16 v6, 0x140
    const/4 v7, 0x1
    const/4 v8, 0x0
    const/4 v12, 0x0
    invoke-static {v2, v6, v12, v8, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    move-object v8, v6
    const/4 v7, 0x0
    move-object v6, v2
    move-object v2, v3
    const/4 v3, 0x0
    goto :label_1149
    :label_113f
    move/from16 v39, v3
    goto :label_1145
    :label_1142
    move-object/from16 v38, v2
    goto :label_113f
    :label_1145
    move-object v2, v7
    move-object v8, v12
    const/4 v3, 0x0
    const/4 v7, 0x0
    :label_1149
    move-object/from16 v50, v3
    move/from16 v58, v5
    if-ne v2, v6, :label_1154
    move-object v2, v6
    move-object/from16 v52, v7
    const/4 v3, 0x0
    goto :label_1169
    :label_1154
    move-object/from16 v52, v7
    move-object v3, v2
    move-object v2, v6
    goto :label_1169
    :label_1159
    move-object/from16 v38, v2
    const/high16 v35, 0x40c00000
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v8, 0x0
    const/4 v11, 0x0
    const/16 v39, 0x0
    const/16 v50, 0x0
    const/16 v52, 0x0
    const/16 v58, 0x1
    :label_1169
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    const-string v6, "50_50_b"
    const-string v7, "50_50_b4"
    const-string v12, "50_50"
    const-string v37, "5_5_b"
    if-eqz v5, :label_11fa
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v5, :label_11fa
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v5, :label_11fa
    move-object/from16 v42, v6
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v6, :label_118d
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;
    const/16 v5, 0x140
    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    move-object v8, v6
    goto :label_119a
    :label_118d
    const/16 v6, 0x140
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v5, :label_119a
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;
    invoke-static {v2, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-result-object v2
    move-object v8, v5
    :label_119a
    if-nez v2, :label_11a7
    const/4 v5, 0x0
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    move-object v12, v5
    move-object/from16 v61, v9
    goto :label_11f6
    :label_11a7
    const/4 v5, 0x0
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->V9:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v2, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v2
    if-eqz v39, :label_11b2
    move-object/from16 v12, v37
    :label_11b2
    invoke-static {v3, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v3
    if-eqz v39, :label_11ba
    move-object v6, v7
    goto :label_11bc
    :label_11ba
    move-object/from16 v6, v42
    :label_11bc
    int-to-long v7, v11
    move-object v11, v9
    const/4 v9, 0x0
    move-object/from16 v21, v5
    move-object/from16 v18, v11
    move/from16 v11, v58
    const/16 v27, 0x9
    move-object v5, v3
    move-object v3, v2
    move-object v2, v4
    move-object v4, v12
    const/16 v12, 0x21
    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    int-to-float v0, v0
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_11db
    move/from16 v2, v32
    goto :label_11dd
    :label_11db
    move/from16 v2, v25
    :label_11dd
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
    move-result v3
    add-float/2addr v3, v2
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F
    move-result v2
    add-float/2addr v2, v3
    sub-float/2addr v0, v2
    float-to-int v0, v0
    move-object/from16 v61, v18
    move-object/from16 v12, v21
    :label_11f6
    move-object/from16 v4, v38
    goto/16 :label_12b1
    :label_11fa
    move-object/from16 v42, v6
    move-object/from16 v61, v9
    move-object v5, v12
    const/16 v6, 0x9
    const/4 v12, 0x0
    move-object v9, v4
    move-object/from16 v4, v38
    if-nez v2, :label_120d
    if-eqz v50, :label_120a
    goto :label_120d
    :label_120a
    move-object v2, v9
    goto/16 :label_12ab
    :label_120d
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :label_120a
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v6
    if-nez v6, :label_120a
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v6
    if-eqz v6, :label_1223
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z
    move-result v6
    if-eqz v6, :label_120a
    :label_1223
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z
    move-result v6
    if-nez v6, :label_120a
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z
    move-result v6
    if-eqz v6, :label_1234
    goto :label_120a
    :label_1234
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v6
    if-eqz v6, :label_1246
    const/high16 v6, 0x42000000
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v9, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    goto :label_124d
    :label_1246
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v9, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V
    :label_124d
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->V9:Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v50, :label_1264
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const-wide/16 v53, 0x0
    const/16 v55, 0x0
    const-string v51, "50_50"
    move-object/from16 v56, v2
    move-object/from16 v49, v9
    move/from16 v57, v58
    invoke-virtual/range {v49 .. v57}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    :label_1262
    const/4 v8, 0x1
    goto :label_1289
    :label_1264
    move-object/from16 v49, v9
    invoke-static {v2, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v50
    if-eqz v39, :label_126f
    move-object/from16 v51, v37
    goto :label_1271
    :label_126f
    move-object/from16 v51, v5
    :label_1271
    invoke-static {v3, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;
    move-result-object v52
    if-eqz v39, :label_127a
    move-object/from16 v53, v7
    goto :label_127c
    :label_127a
    move-object/from16 v53, v42
    :label_127c
    int-to-long v2, v11
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/16 v56, 0x0
    move-wide/from16 v54, v2
    move-object/from16 v57, v5
    invoke-virtual/range {v49 .. v58}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    goto :label_1262
    :label_1289
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    int-to-float v0, v0
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_1293
    move/from16 v2, v32
    goto :label_1295
    :label_1293
    move/from16 v2, v25
    :label_1295
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
    move-result v3
    add-float/2addr v3, v2
    sget-object v2, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F
    move-result v2
    add-float/2addr v2, v3
    sub-float/2addr v0, v2
    float-to-int v0, v0
    goto :label_12b1
    :label_12ab
    invoke-virtual {v2, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    const/4 v8, 0x0
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    :label_12b1
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v2
    if-eqz v2, :label_1307
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_12d7
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_12d7
    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_12d7
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v5
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I
    move-result v3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-result-object v2
    if-eqz v2, :label_1403
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v3
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_1307
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    if-eqz v2, :label_131b
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z
    move-result v2
    if-nez v2, :label_131b
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getReplyQuoteNameWithIcon()Ljava/lang/CharSequence;
    move-result-object v7
    goto/16 :label_1404
    :label_131b
    iget-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z
    if-eqz v2, :label_1373
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_135d
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    cmp-long v2, v2, v19
    if-eqz v2, :label_1343
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_1403
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_1343
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_135d
    invoke-static {v13}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;
    move-result-object v2
    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_1373
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;
    if-eqz v2, :label_137d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto/16 :label_1404
    :label_137d
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-nez v2, :label_1391
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v3, :label_1391
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v3, :label_1391
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getReplyQuoteNameWithIcon()Ljava/lang/CharSequence;
    move-result-object v7
    goto/16 :label_1404
    :label_1391
    if-eqz v2, :label_1403
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->gb:Z
    if-eqz v3, :label_13a0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getForwardedName()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto :label_13a1
    :label_13a0
    move-object v7, v12
    :label_13a1
    if-nez v7, :label_1404
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J
    move-result-wide v2
    cmp-long v5, v2, v19
    if-lez v5, :label_13c4
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    move-result-object v2
    if-eqz v2, :label_1404
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto :label_1404
    :label_13c4
    if-gez v5, :label_13dc
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v5
    neg-long v2, v2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_1404
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto :label_1404
    :label_13dc
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v2, :label_1404
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_1404
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    move-result-object v2
    if-eqz v2, :label_1404
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    goto :label_1404
    :label_1403
    move-object v7, v12
    :label_1404
    if-nez v7, :label_140d
    sget v2, Lorg/telegram/messenger/R$string;->Loading:I
    invoke-static {v14, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v2
    move-object v7, v2
    :label_140d
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    const/high16 v3, 0x3f000000
    const/16 v5, 0xc
    if-eqz v2, :label_149c
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I
    and-int/lit16 v2, v2, 0x800
    if-eqz v2, :label_149c
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_149c
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    if-eqz v2, :label_149c
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->todo_item_id:I
    invoke-static {v2, v6}, Lorg/telegram/messenger/MessageObject;->findTodoItem(Lorg/telegram/messenger/MessageObject;I)Lorg/telegram/tgnet/TLRPC$TodoItem;
    move-result-object v2
    if-eqz v2, :label_1482
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->z9:Z
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v8
    invoke-static {v6, v8, v4}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLandroid/text/TextPaint;)Ljava/lang/CharSequence;
    move-result-object v6
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    if-nez v8, :label_1468
    new-instance v8, Lorg/telegram/ui/Components/CheckBoxBase;
    iget-object v9, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-direct {v8, v5, v1, v9}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/j6;)V
    iput-object v8, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    iput v3, v8, Lorg/telegram/ui/Components/CheckBoxBase;->e:F
    const/4 v14, 0x0
    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/CheckBoxBase;->k(Z)V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    const/16 v5, 0x9
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBoxBase;->d(I)V
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-eqz v3, :label_1468
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    const/4 v8, 0x1
    iput-boolean v8, v3, Lorg/telegram/ui/Components/CheckBoxBase;->l:Z
    goto :label_1469
    :label_1468
    const/4 v8, 0x1
    :label_1469
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    invoke-static {}, Lorg/telegram/ui/ActionBar/n6;->f1()Z
    move-result v5
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBoxBase;->j(Z)V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I
    invoke-static {v5, v2}, Lorg/telegram/messenger/MessageObject;->isCompleted(Lorg/telegram/messenger/MessageObject;I)Z
    move-result v2
    invoke-virtual {v3, v2, v8}, Lorg/telegram/ui/Components/CheckBoxBase;->g(ZZ)V
    move-object v2, v6
    goto/16 :label_16eb
    :label_1482
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;
    if-eqz v2, :label_16a3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    if-eqz v2, :label_16a3
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLandroid/text/TextPaint;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_149c
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_151c
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->poll_option:[B
    if-eqz v2, :label_151c
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_151c
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v2, :label_151c
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->poll_option:[B
    invoke-static {v2, v6}, Lorg/telegram/messenger/MessageObject;->findPollItem(Lorg/telegram/messenger/MessageObject;[B)Lorg/telegram/tgnet/TLRPC$PollAnswer;
    move-result-object v2
    if-eqz v2, :label_1502
    const/4 v8, 0x1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->z9:Z
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v6
    invoke-static {v2, v6, v4}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLandroid/text/TextPaint;)Ljava/lang/CharSequence;
    move-result-object v2
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    if-nez v6, :label_14f1
    new-instance v6, Lorg/telegram/ui/Components/CheckBoxBase;
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    invoke-direct {v6, v5, v1, v8}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/j6;)V
    iput-object v6, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    iput v3, v6, Lorg/telegram/ui/Components/CheckBoxBase;->e:F
    const/4 v14, 0x0
    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/CheckBoxBase;->k(Z)V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    const/16 v5, 0x9
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBoxBase;->d(I)V
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->L0:Z
    if-eqz v3, :label_14f1
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    const/4 v8, 0x1
    iput-boolean v8, v3, Lorg/telegram/ui/Components/CheckBoxBase;->l:Z
    goto :label_14f2
    :label_14f1
    const/4 v8, 0x1
    :label_14f2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    invoke-static {}, Lorg/telegram/ui/ActionBar/n6;->f1()Z
    move-result v5
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBoxBase;->j(Z)V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->A9:Lorg/telegram/ui/Components/CheckBoxBase;
    invoke-virtual {v3, v8, v8}, Lorg/telegram/ui/Components/CheckBoxBase;->g(ZZ)V
    goto/16 :label_16eb
    :label_1502
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    if-eqz v2, :label_16a3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    if-eqz v2, :label_16a3
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v3
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLandroid/text/TextPaint;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_151c
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    if-nez v2, :label_16a5
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_1530
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;
    if-eqz v3, :label_1530
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v3, :label_1530
    goto/16 :label_16a5
    :label_1530
    if-eqz v2, :label_1573
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_1573
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    if-eqz v2, :label_1573
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    new-instance v3, Landroid/text/SpannableStringBuilder;
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V
    move-object/from16 v5, v41
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    new-instance v5, Lorg/telegram/ui/Components/ir;
    sget v6, Lorg/telegram/messenger/R$drawable;->mini_reply_poll_16:I
    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ir;-><init>(I)V
    const/4 v8, 0x1
    const/16 v12, 0x21
    const/4 v14, 0x0
    invoke-virtual {v3, v5, v14, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z
    if-eqz v2, :label_1567
    sget v2, Lorg/telegram/messenger/R$string;->QuizPoll:I
    goto :label_1569
    :label_1567
    sget v2, Lorg/telegram/messenger/R$string;->Poll:I
    :label_1569
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :label_1570
    move-object v2, v3
    goto/16 :label_16eb
    :label_1573
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    if-eqz v2, :label_1587
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    if-eqz v3, :label_1587
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v2, :label_1587
    invoke-virtual {v10, v2}, Lorg/telegram/messenger/MessageObject;->getMediaTitle(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_1587
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_1590
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageTextForReply:Ljava/lang/CharSequence;
    if-eqz v3, :label_1590
    goto :label_1570
    :label_1590
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;
    if-eqz v2, :label_15b4
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    const/4 v14, 0x0
    invoke-static {v2, v3, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    int-to-float v3, v0
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_15b4
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    if-eqz v2, :label_15d8
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    const/4 v14, 0x0
    invoke-static {v2, v3, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    int-to-float v3, v0
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_15d8
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    const/16 v3, 0x96
    if-eqz v2, :label_163b
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :label_163b
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v5
    if-le v5, v3, :label_15f9
    const/4 v14, 0x0
    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    :label_15f9
    const/16 v13, 0xa
    const/16 v14, 0x20
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    const/4 v8, 0x1
    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :label_161a
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v5
    invoke-static {v2, v3, v5, v8}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;
    move-result-object v2
    :label_161a
    int-to-float v3, v0
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    instance-of v6, v2, Landroid/text/Spannable;
    if-eqz v6, :label_16eb
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v8, :label_16eb
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;
    move-object v9, v2
    check-cast v9, Landroid/text/Spannable;
    invoke-static {v8, v6, v9}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    goto/16 :label_16eb
    :label_163b
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_16a3
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    if-eqz v2, :label_16a3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v2
    if-lez v2, :label_16a3
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
    move-result v5
    if-le v5, v3, :label_1658
    const/4 v14, 0x0
    invoke-interface {v2, v14, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    move-result-object v2
    :label_1658
    instance-of v3, v2, Landroid/text/SpannableStringBuilder;
    if-nez v3, :label_1662
    new-instance v3, Landroid/text/SpannableStringBuilder;
    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    move-object v2, v3
    :label_1662
    const-class v3, Lorg/telegram/ui/Components/kk0;
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeSpans(Ljava/lang/CharSequence;Ljava/lang/Class;)Ljava/lang/CharSequence;
    move-result-object v2
    const-class v3, Lorg/telegram/ui/Components/jk0;
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeSpans(Ljava/lang/CharSequence;Ljava/lang/Class;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    const/4 v8, 0x1
    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :label_168b
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v5
    invoke-static {v2, v3, v5, v8}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;
    move-result-object v2
    :label_168b
    int-to-float v3, v0
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    instance-of v6, v2, Landroid/text/Spannable;
    if-eqz v6, :label_16eb
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    move-object v8, v2
    check-cast v8, Landroid/text/Spannable;
    invoke-static {v6, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;)V
    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
    goto :label_16eb
    :label_16a3
    move-object v2, v12
    goto :label_16eb
    :label_16a5
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;
    const/16 v13, 0xa
    const/16 v14, 0x20
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Landroid/text/SpannableStringBuilder;
    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v2
    const/4 v14, 0x0
    invoke-static {v3, v2, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;
    if-eqz v3, :label_16eb
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v5
    const/4 v8, 0x1
    invoke-static {v2, v3, v5, v8}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;
    move-result-object v41
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v43
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v44, 0x0
    move-object/from16 v42, v2
    invoke-static/range {v41 .. v46}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z
    move-object/from16 v2, v41
    :label_16eb
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v3
    const/4 v14, 0x0
    invoke-static {v7, v3, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v7
    :label_16f6
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v3, :label_1701
    const/high16 v3, 0x41c00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v0, v3
    :label_1701
    move v3, v0
    if-nez v7, :label_1707
    move-object/from16 v42, v48
    goto :label_171a
    :label_1707
    move-object/from16 v5, v26
    move-object/from16 v11, v61
    invoke-static {v5, v7, v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v0
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    int-to-float v6, v3
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v0, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v6
    move-object/from16 v42, v6
    :label_171a
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    if-nez v0, :label_1729
    new-instance v0, Lorg/telegram/ui/Components/in0;
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/in0;-><init>(Landroid/view/View;)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    goto :label_1729
    :label_1726
    move-exception v0
    goto/16 :label_17fb
    :label_1729
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->Xb:Lorg/telegram/tgnet/TLRPC$User;
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->Yb:Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v8, v1, Lorg/telegram/ui/Cells/u1;->Hd:Lorg/telegram/ui/ActionBar/j6;
    const/16 v48, 0x0
    move-object/from16 v43, v0
    move-object/from16 v44, v5
    move-object/from16 v45, v6
    move-object/from16 v46, v7
    move-object/from16 v47, v8
    invoke-virtual/range {v43 .. v48}, Lorg/telegram/ui/Components/in0;->a(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/j6;I)I
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    iget-wide v5, v0, Lorg/telegram/ui/Components/in0;->w:J
    cmp-long v0, v5, v19
    if-eqz v0, :label_174c
    const/4 v0, 0x1
    goto :label_174d
    :label_174c
    const/4 v0, 0x0
    :label_174d
    const/high16 v5, 0x42180000
    if-eqz v0, :label_1756
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    sub-int/2addr v3, v0
    :label_1756
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    if-eqz v6, :label_1770
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F
    move-result v7
    sget-object v8, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F
    move-result v8
    add-float/2addr v7, v8
    float-to-int v7, v7
    add-int/2addr v6, v7
    goto :label_1771
    :label_1770
    const/4 v6, 0x0
    :label_1771
    add-int/2addr v0, v6
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    if-eqz v42, :label_17b6
    new-instance v41, Landroid/text/StaticLayout;
    sget-object v43, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    add-int v44, v3, v0
    sget-object v45, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/high16 v46, 0x3f800000
    invoke-direct/range {v41 .. v48}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v0, v41
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_17b6
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    const/4 v14, 0x0
    invoke-virtual {v6, v14}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v6
    float-to-double v6, v6
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v6
    double-to-int v6, v6
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v6, v7
    add-int/2addr v6, v0
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    const/4 v14, 0x0
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v0
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->J9:I
    :label_17b6
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v0, :label_17db
    if-eqz v15, :label_17db
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->u9:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :label_17db
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/u1;->H:Z
    if-nez v6, :label_17c7
    goto :label_17c9
    :label_17c7
    const/16 v24, 0x0
    :label_17c9
    add-int/lit8 v6, v24, 0x6
    int-to-float v6, v6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    iget-object v7, v1, Lorg/telegram/ui/Cells/u1;->u9:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v7
    add-int/2addr v6, v7
    add-int/2addr v6, v0
    iput v6, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    goto :label_17e4
    :label_17db
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v0, v6
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    :label_17e4
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->aa:Lorg/telegram/ui/Components/in0;
    iget-wide v6, v0, Lorg/telegram/ui/Components/in0;->w:J
    cmp-long v0, v6, v19
    if-eqz v0, :label_17ee
    const/4 v0, 0x1
    goto :label_17ef
    :label_17ee
    const/4 v0, 0x0
    :label_17ef
    if-eqz v0, :label_17fe
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v0, v5
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    :label_17fa
    goto :label_17fe
    :label_17fb
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :label_17fe
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    if-eqz v5, :label_1810
    const/high16 v5, 0x42040000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    goto :label_1811
    :label_180d
    move-exception v0
    goto/16 :label_19fd
    :label_1810
    const/4 v5, 0x0
    :label_1811
    add-int/2addr v0, v5
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    if-eqz v2, :label_19e3
    new-instance v0, Landroid/text/SpannableStringBuilder;
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v2
    const-class v5, Lorg/telegram/ui/Components/m21;
    const/4 v14, 0x0
    invoke-virtual {v0, v14, v2, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [Lorg/telegram/ui/Components/m21;
    array-length v5, v2
    const/4 v6, 0x0
    const/4 v7, 0x0
    :label_182b
    if-ge v6, v5, :label_1840
    aget-object v8, v2, v6
    invoke-virtual {v8}, Lorg/telegram/ui/Components/m21;->b()Lorg/telegram/ui/Components/l21;
    move-result-object v9
    iget v9, v9, Lorg/telegram/ui/Components/l21;->a:I
    and-int/lit8 v9, v9, 0x4
    if-eqz v9, :label_183d
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V
    const/4 v7, 0x1
    :label_183d
    add-int/lit8 v6, v6, 0x1
    goto :label_182b
    :label_1840
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z
    move-result v2
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->N9:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_1857
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-nez v2, :label_1857
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v3, v2
    :label_1857
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_1899
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    if-eqz v5, :label_1899
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/u1;->N9:Z
    if-nez v5, :label_1899
    if-eqz v2, :label_1867
    move/from16 v25, v32
    :label_1867
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F
    move-result v5
    add-float/2addr v2, v5
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F
    move-result v5
    add-float/2addr v2, v5
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;
    float-to-int v6, v2
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    add-int/2addr v6, v8
    const/4 v14, 0x0
    invoke-direct {v5, v6, v14}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
    move-result v6
    const/16 v12, 0x21
    invoke-virtual {v0, v5, v14, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    iget v5, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    int-to-float v5, v5
    sub-float/2addr v5, v2
    float-to-int v5, v5
    iput v5, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    int-to-float v3, v3
    add-float/2addr v3, v2
    float-to-int v3, v3
    :label_1899
    if-nez v7, :label_18a2
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-nez v2, :label_18a0
    goto :label_18a2
    :label_18a0
    const/4 v14, 0x0
    goto :label_18aa
    :label_18a2
    int-to-float v2, v3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v0, v4, v2, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v0
    goto :label_18a0
    :label_18aa
    iput v14, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v2
    invoke-static {v0, v14, v2, v4, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    move-result-object v0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    move-result-object v0
    invoke-virtual {v0, v14}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    move-result-object v0
    invoke-virtual {v0, v14}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->y9:Z
    if-eqz v2, :label_18d5
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->replyTextRevealed:Z
    if-nez v2, :label_18d5
    const/4 v3, 0x5
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;
    move-result-object v2
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    :label_18d5
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->replyTextRevealed:Z
    if-nez v3, :label_18fc
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_18f9
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    const/16 v29, 0x1
    add-int/lit8 v3, v3, -0x1
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getEllipsisCount(I)I
    move-result v0
    if-lez v0, :label_18f9
    const/4 v0, 0x1
    goto :label_18fa
    :label_18f9
    const/4 v0, 0x0
    :label_18fa
    iput-boolean v0, v2, Lorg/telegram/messenger/MessageObject;->replyTextEllipsized:Z
    :label_18fc
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->L9:I
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v0, :label_190c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    if-eqz v0, :label_191d
    :label_190c
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_1917
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v3, 0x5
    if-ne v0, v3, :label_191d
    :label_1917
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x13
    if-ne v0, v3, :label_193b
    :label_191d
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    int-to-float v0, v0
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->L9:I
    const v3, 0x406a3d71
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    int-to-float v2, v2
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
    move-result v3
    sub-float/2addr v2, v3
    const/4 v3, 0x0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    add-float/2addr v0, v2
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_193b
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_199c
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    const/4 v0, 0x0
    const/4 v2, 0x0
    :label_194d
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    if-ge v0, v3, :label_1992
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v3
    float-to-double v3, v3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v3, v3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
    move-result v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v3
    float-to-double v3, v3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v3, v3
    if-lez v0, :label_1987
    iget v4, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    if-nez v4, :label_1979
    const/4 v4, 0x1
    goto :label_197a
    :label_1979
    const/4 v4, 0x0
    :label_197a
    if-nez v3, :label_197e
    const/4 v5, 0x1
    goto :label_197f
    :label_197e
    const/4 v5, 0x0
    :label_197f
    if-eq v4, v5, :label_1987
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I
    move-result v2
    :label_1987
    iget v4, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I
    move-result v3
    iput v3, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    add-int/lit8 v0, v0, 0x1
    goto :label_194d
    :label_1992
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v2, v3
    add-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    :label_199c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->z9:Z
    if-eqz v0, :label_19a9
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    :label_19a9
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Kd:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->x9:Z
    if-nez v0, :label_19c4
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_19d3
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z
    if-nez v0, :label_19d3
    :label_19c4
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iget v3, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    add-int v4, v3, v0
    iget-object v5, v1, Lorg/telegram/ui/Cells/u1;->Ld:Ljava/util/Stack;
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->Kd:Ljava/util/ArrayList;
    invoke-static/range {v1 .. v6}, Lrg/g;->b(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V
    :label_19d3
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->pc:Lorg/telegram/ui/Components/x5;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    const/4 v8, 0x1
    new-array v3, v8, [Landroid/text/Layout;
    const/4 v14, 0x0
    aput-object v2, v3, v14
    invoke-static {v14, v1, v14, v0, v3}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/x5;[Landroid/text/Layout;)Lorg/telegram/ui/Components/x5;
    move-result-object v0
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->pc:Lorg/telegram/ui/Components/x5;
    :label_19e3
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->K9:I
    if-le v0, v2, :label_1ad1
    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I
    int-to-float v2, v2
    div-float v2, v2, v30
    const/high16 v5, 0x40000000
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    :label_19fb
    goto/16 :label_1ad1
    :label_19fd
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    goto/16 :label_1ad1
    :label_1a02
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->V7:Z
    if-eqz v0, :label_1a10
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    if-nez v0, :label_1a10
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->T7:Z
    if-eqz v0, :label_1ad1
    :label_1a10
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I
    move-result v0
    if-eqz v0, :label_1ad1
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z
    move-result v0
    if-nez v0, :label_1ad1
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v0, :label_1ad1
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :label_1a32
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
    if-nez v2, :label_1ad1
    if-eqz v0, :label_1a32
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;
    if-nez v0, :label_1ad1
    :label_1a32
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v0, :label_1a3c
    invoke-interface {v0, v10}, Lorg/telegram/ui/Cells/l1;->P0(Lorg/telegram/messenger/MessageObject;)Z
    move-result v0
    if-eqz v0, :label_1ad1
    :label_1a3c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->E8:Z
    if-eqz v0, :label_1a44
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    if-eqz v0, :label_1a4f
    :label_1a44
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v0
    if-nez v0, :label_1a74
    iget v0, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-eq v0, v5, :label_1a74
    :label_1a4f
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    int-to-float v0, v0
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    sget-object v5, Lorg/telegram/ui/ActionBar/n6;->Z2:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F
    move-result v5
    sget-object v6, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F
    move-result v6
    add-float/2addr v6, v5
    add-float/2addr v6, v2
    add-float/2addr v6, v0
    float-to-int v0, v6
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v2, :label_1a74
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v0
    iput v2, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    :label_1a74
    const/4 v4, 0x0
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/u1;->O9:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v0
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z
    move-result v2
    if-nez v2, :label_1a87
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v0, v2
    goto :label_1a91
    :label_1a87
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I
    const/4 v5, 0x5
    if-ne v2, v5, :label_1a91
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v0, v2
    :label_1a91
    new-instance v2, Landroid/text/StaticLayout;
    sget v3, Lorg/telegram/messenger/R$string;->Loading:I
    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    sget-object v4, Lorg/telegram/ui/ActionBar/n6;->Y2:Landroid/text/TextPaint;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v0
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/high16 v7, 0x3f800000
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    iput-object v2, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I
    move-result v0
    if-lez v0, :label_1ad1
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    const/4 v14, 0x0
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineWidth(I)F
    move-result v2
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    move/from16 v3, v33
    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->I9:I
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineLeft(I)F
    move-result v0
    float-to-int v0, v0
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->J9:I
    :label_1ad1
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->summarized:Z
    if-eqz v0, :label_1adf
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_1add
    iget-byte v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B
    if-nez v0, :label_1adf
    :label_1add
    const/4 v8, 0x1
    goto :label_1ae1
    :label_1adf
    const/4 v14, 0x0
    goto :label_1b52
    :label_1ae1
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/u1;->ga:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    if-nez v0, :label_1b09
    new-instance v0, Lorg/telegram/ui/Components/d21;
    sget v2, Lorg/telegram/messenger/R$string;->SummaryTitle:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v3
    const/high16 v4, 0x41600000
    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    new-instance v0, Lorg/telegram/ui/Components/d21;
    sget v2, Lorg/telegram/messenger/R$string;->SummarySubtitle:I
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v2
    const/high16 v3, 0x41600000
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/d21;-><init>(Ljava/lang/String;F)V
    iput-object v0, v1, Lorg/telegram/ui/Cells/u1;->la:Lorg/telegram/ui/Components/d21;
    :label_1b09
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    const/4 v2, 0x3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/d21;->n(I)V
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v2
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    int-to-float v2, v2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/d21;->q(F)V
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->la:Lorg/telegram/ui/Components/d21;
    const/4 v2, 0x3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/d21;->n(I)V
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMaxNameWidth()I
    move-result v2
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    int-to-float v2, v2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/d21;->q(F)V
    iget v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    int-to-float v0, v0
    const/high16 v33, 0x41000000
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->ka:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/d21;->j()F
    move-result v3
    add-float/2addr v3, v2
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->la:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/d21;->j()F
    move-result v2
    add-float/2addr v2, v3
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    add-float/2addr v2, v3
    add-float/2addr v2, v0
    float-to-int v0, v2
    iput v0, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    goto :label_1b54
    :label_1b52
    iput-boolean v14, v1, Lorg/telegram/ui/Cells/u1;->ga:Z
    :label_1b54
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->requestLayout()V
    return-void
    .catch Ljava/lang/Exception; {:label_04e9 .. :label_04f4} :label_04f4
    .catch Ljava/lang/Exception; {:label_06ed .. :label_0803} :label_0733
    .catch Ljava/lang/Exception; {:label_0ba1 .. :label_0bab} :label_0bab
    .catch Ljava/lang/Exception; {:label_0bb6 .. :label_0ca0} :label_0c05
    .catch Ljava/lang/Exception; {:label_16eb .. :label_16f6} :label_16f6
    .catch Ljava/lang/Exception; {:label_171a .. :label_17fa} :label_1726
    .catch Ljava/lang/Exception; {:label_17fe .. :label_19fb} :label_180d
.end method

