# file_id=2 method_idx=27205 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->onLayout(ZIIII)V"
.method public onLayout(ZIIII)V
    .registers 30

    move-object/from16 v0, v24
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-nez v1, :label_0008
    goto/16 :label_098f
    :label_0008
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
    move-result v1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    shl-int/lit8 v2, v2, 0x10
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->ne:I
    const/4 v4, 0x7
    const/high16 v5, 0x447a0000
    const/high16 v6, 0x40800000
    const/high16 v8, 0x41700000
    const/4 v9, 0x1
    const/high16 v10, 0x40000000
    const/4 v11, 0x0
    const/high16 v12, 0x428e0000
    const/high16 v13, 0x42400000
    const/high16 v14, 0x41200000
    if-ne v2, v1, :label_003b
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->l8:Z
    if-eqz v2, :label_003b
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->m8:Z
    if-eqz v2, :label_0031
    goto :label_003b
    :label_0031
    move/from16 v27, v5
    move/from16 v28, v6
    const/high16 v25, 0x41d00000
    const/high16 v29, 0x40c00000
    goto/16 :label_02d7
    :label_003b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    iget v15, v0, Lorg/telegram/ui/Cells/u1;->q8:I
    sub-int/2addr v2, v15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I
    move-result v15
    sub-int/2addr v2, v15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I
    move-result v15
    sub-int/2addr v2, v15
    iget v15, v0, Lorg/telegram/ui/Cells/u1;->me:I
    sub-int/2addr v2, v15
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->L8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    if-gez v2, :label_0061
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    :label_0061
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    const/4 v15, 0x0
    if-eqz v2, :label_008a
    new-instance v16, Landroid/text/StaticLayout;
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->sb:Ljava/lang/CharSequence;
    sget-object v18, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    const/high16 v25, 0x41d00000
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->pb:I
    const/high16 v17, 0x42c80000
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v17
    add-int v19, v17, v3
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/high16 v21, 0x3f800000
    move-object/from16 v17, v2
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v16
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    goto :label_008e
    :label_008a
    const/high16 v25, 0x41d00000
    iput-object v15, v0, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    :label_008e
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v2, :label_0143
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_00b0
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    const/high16 v26, 0x42280000
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v2, v3
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    move/from16 v27, v5
    move/from16 v28, v6
    const/high16 v29, 0x40c00000
    goto/16 :label_0128
    :label_00b0
    const/high16 v26, 0x42280000
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v2
    if-eqz v2, :label_00d2
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
    move-result v2
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_00d2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v2
    if-eqz v2, :label_00e2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    goto :label_00ef
    :label_00e2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_00ef
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_00ef
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_0111
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-eqz v2, :label_0111
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    int-to-float v2, v2
    div-float/2addr v2, v5
    move/from16 v27, v5
    invoke-direct {v0}, Lorg/telegram/ui/Cells/u1;->getGroupPhotosWidth()I
    move-result v5
    int-to-float v5, v5
    mul-float/2addr v2, v5
    move/from16 v28, v6
    const/high16 v29, 0x40c00000
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v2, v5
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    goto :label_0117
    :label_0111
    move/from16 v27, v5
    move/from16 v28, v6
    const/high16 v29, 0x40c00000
    :label_0117
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_0128
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_0128
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_0128
    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I
    const/16 v3, 0xa
    if-lt v2, v3, :label_01ae
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v2, :label_01ae
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->J1:I
    if-eq v2, v4, :label_01ae
    const/4 v3, 0x6
    if-eq v2, v3, :label_01ae
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    goto :label_01ae
    :label_0143
    move/from16 v27, v5
    move/from16 v28, v6
    const/high16 v26, 0x42280000
    const/high16 v29, 0x40c00000
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    if-eqz v2, :label_0162
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v2, v3
    const/high16 v3, 0x421a0000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    goto :label_01ae
    :label_0162
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    const/high16 v3, 0x41100000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->ob:I
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z
    move-result v2
    if-eqz v2, :label_0180
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I
    move-result v2
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_0180
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v2
    if-eqz v2, :label_0190
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    goto :label_019d
    :label_0190
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_019d
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_019d
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v2
    if-eqz v2, :label_01ae
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    const/high16 v3, 0x40e00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_01ae
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    invoke-direct {v0}, Lorg/telegram/ui/Cells/u1;->getExtraTimeX()I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    iget-wide v5, v0, Lorg/telegram/ui/Cells/u1;->h0:J
    const-wide/16 v16, 0x0
    cmp-long v3, v5, v16
    if-eqz v3, :label_01c8
    const/high16 v3, 0x41900000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->qb:I
    :label_01c8
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Ic:Lorg/telegram/ui/Cells/l1;
    if-eqz v2, :label_01d6
    invoke-interface {v2}, Lorg/telegram/ui/Cells/l1;->R()I
    move-result v2
    const/16 v3, 0x9
    if-ne v2, v3, :label_01d6
    move v2, v9
    goto :label_01d7
    :label_01d6
    move v2, v11
    :label_01d7
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    and-int/lit16 v3, v3, 0x400
    if-eqz v3, :label_0203
    if-nez v2, :label_0203
    new-instance v16, Landroid/text/StaticLayout;
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Tb:Ljava/lang/String;
    if-nez v2, :label_01eb
    const-string v2, ""
    :label_01eb
    move-object/from16 v17, v2
    sget-object v18, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Sb:I
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/high16 v21, 0x3f800000
    move/from16 v19, v2
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v16
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->Rb:Landroid/text/StaticLayout;
    goto :label_0205
    :label_0203
    iput-object v15, v0, Lorg/telegram/ui/Cells/u1;->Rb:Landroid/text/StaticLayout;
    :label_0205
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Wb:Ljava/lang/String;
    if-eqz v2, :label_022b
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-nez v2, :label_022b
    new-instance v16, Landroid/text/StaticLayout;
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Wb:Ljava/lang/String;
    sget-object v18, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->Vb:I
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/high16 v21, 0x3f800000
    move-object/from16 v17, v2
    move/from16 v19, v3
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v16
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->Ub:Landroid/text/StaticLayout;
    goto :label_022d
    :label_022b
    iput-object v15, v0, Lorg/telegram/ui/Cells/u1;->Ub:Landroid/text/StaticLayout;
    :label_022d
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_0269
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v2, :label_0239
    move v2, v8
    goto :label_023b
    :label_0239
    move/from16 v2, v29
    :label_023b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->l9:Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v5
    iget-object v6, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v6, :label_024f
    const/high16 v6, 0x42100000
    goto :label_0251
    :label_024f
    move/from16 v6, v26
    :label_0251
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    int-to-float v6, v6
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v7, :label_025f
    const/high16 v16, 0x42100000
    goto :label_0261
    :label_025f
    move/from16 v16, v26
    :label_0261
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    invoke-virtual {v3, v2, v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_0269
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x14
    if-ne v2, v3, :label_02d1
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Nb:Ljava/lang/String;
    if-eqz v2, :label_02d1
    new-instance v16, Landroid/text/StaticLayout;
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->Nb:Ljava/lang/String;
    sget-object v18, Lorg/telegram/ui/ActionBar/n6;->v2:Landroid/text/TextPaint;
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->Mb:I
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/high16 v21, 0x3f800000
    move-object/from16 v17, v2
    move/from16 v19, v3
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v16
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->Lb:Landroid/text/StaticLayout;
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I
    if-eqz v2, :label_02ce
    invoke-static {v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;
    move-result-object v2
    sget-object v3, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v3
    float-to-double v5, v3
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v5
    double-to-int v3, v5
    iput v3, v0, Lorg/telegram/ui/Cells/u1;->o2:I
    new-instance v16, Landroid/text/StaticLayout;
    sget-object v18, Lorg/telegram/ui/ActionBar/n6;->J2:Landroid/text/TextPaint;
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->o2:I
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/high16 v21, 0x3f800000
    move-object/from16 v17, v2
    move/from16 v19, v3
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v2, v16
    iput-object v2, v0, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    goto :label_02d3
    :label_02ce
    iput-object v15, v0, Lorg/telegram/ui/Cells/u1;->K2:Landroid/text/StaticLayout;
    goto :label_02d3
    :label_02d1
    iput-object v15, v0, Lorg/telegram/ui/Cells/u1;->Lb:Landroid/text/StaticLayout;
    :label_02d3
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/u1;->l8:Z
    iput-boolean v11, v0, Lorg/telegram/ui/Cells/u1;->m8:Z
    :label_02d7
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->ne:I
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/high16 v3, 0x41600000
    const/high16 v5, 0x41500000
    const/high16 v6, 0x42300000
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->Yc:Lorg/telegram/ui/Cells/t1;
    if-eqz v1, :label_02eb
    const/16 v15, 0x24
    if-ne v1, v15, :label_037c
    :label_02eb
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v15, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v15
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v1
    if-eqz v1, :label_0306
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    add-int/2addr v15, v1
    iput v15, v0, Lorg/telegram/ui/Cells/u1;->o0:I
    goto :label_0347
    :label_0306
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-eqz v1, :label_0337
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    add-int/2addr v15, v1
    iput v15, v0, Lorg/telegram/ui/Cells/u1;->o0:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    iget v15, v0, Lorg/telegram/ui/Cells/u1;->l2:I
    invoke-static {v5, v15, v1}, Lorg/telegram/messenger/h4;->B(FII)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-eqz v1, :label_0347
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-nez v1, :label_0347
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGiveawayOrGiveawayResults()Z
    move-result v1
    if-nez v1, :label_0347
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    add-int/2addr v15, v1
    iput v15, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    goto :label_0347
    :label_0337
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    iget-object v15, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15, v7}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v15
    add-int/2addr v15, v1
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    add-int/2addr v1, v15
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->o0:I
    :label_0347
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->s1:Z
    if-eqz v1, :label_035a
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->q0:I
    iget-object v15, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15, v7}, Lorg/telegram/messenger/MessageObject;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v15
    add-int/2addr v15, v1
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    :label_0358
    add-int/2addr v1, v15
    goto :label_037a
    :label_035a
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->o0:I
    iget v15, v0, Lorg/telegram/ui/Cells/u1;->l2:I
    add-int/2addr v1, v15
    iget-boolean v15, v0, Lorg/telegram/ui/Cells/u1;->Q2:Z
    if-eqz v15, :label_0366
    const/high16 v15, 0x42380000
    goto :label_0367
    :label_0366
    const/4 v15, 0x0
    :label_0367
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    add-int/2addr v15, v1
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->l2:I
    if-lez v1, :label_0373
    move/from16 v1, v28
    goto :label_0375
    :label_0373
    const/high16 v1, -0x3f000000
    :label_0375
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    goto :label_0358
    :label_037a
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->p0:I
    :label_037c
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    const/high16 v15, 0x40400000
    if-eqz v1, :label_03da
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_03a8
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v1, :label_039b
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    const/high16 v26, 0x42380000
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    goto :label_03d0
    :label_039b
    const/high16 v26, 0x42380000
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_03a6
    add-int/2addr v1, v2
    goto :label_03d0
    :label_03a8
    const/high16 v26, 0x42380000
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v2
    if-eqz v2, :label_03b9
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_03a6
    :label_03b9
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-nez v2, :label_03c3
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-eqz v2, :label_03d0
    :label_03c3
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_03d0
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-nez v2, :label_03d0
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_03a6
    :label_03d0
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->E7:Lorg/telegram/ui/Cells/l4;
    iput v1, v2, Lorg/telegram/ui/Cells/l4;->d:I
    goto :label_03dc
    :label_03da
    const/high16 v26, 0x42380000
    :label_03dc
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->pd:Z
    if-eqz v1, :label_03e3
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q4()V
    :label_03e3
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v2, 0x3
    const v16, 0x40c9999a
    const/high16 v17, 0x42a20000
    const/high16 v18, 0x42980000
    const/high16 v19, 0x42860000
    move/from16 v28, v3
    const/4 v3, 0x5
    const/high16 v20, 0x41b80000
    const/high16 v21, 0x3f800000
    move/from16 v22, v5
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->N0:Lorg/telegram/ui/Components/RadialProgress2;
    move/from16 v23, v6
    iget-object v6, v0, Lorg/telegram/ui/Cells/u1;->R0:Lcf/n1;
    if-eq v1, v2, :label_0774
    if-ne v1, v4, :label_0404
    goto/16 :label_0774
    :label_0404
    if-ne v1, v3, :label_04f9
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_0435
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    const/high16 v2, 0x42600000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    goto :label_048c
    :label_0435
    const/high16 v1, 0x42820000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v1
    if-eqz v1, :label_046b
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    goto :label_048c
    :label_046b
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v1
    if-eqz v1, :label_048c
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    :label_048c
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v1, :label_04ab
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    :label_04ab
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->v4()V
    const/high16 v1, 0x41e80000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->m2:I
    add-int/2addr v1, v2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_04c7
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_04c7
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v2
    goto :label_04c8
    :label_04c7
    move v2, v11
    :label_04c8
    add-int/2addr v1, v2
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J5:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->m2:I
    add-int/2addr v1, v2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_04e1
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_04e1
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v11
    :label_04e1
    add-int/2addr v1, v11
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v4, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v6
    add-int/2addr v6, v4
    invoke-virtual {v5, v2, v1, v3, v6}, Lorg/telegram/ui/Components/RadialProgress2;->q(IIII)V
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q4()V
    return-void
    :label_04f9
    if-ne v1, v9, :label_0589
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->L1:Z
    if-nez v1, :label_0589
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_0514
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    goto :label_0536
    :label_0514
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v1
    if-eqz v1, :label_0523
    const/high16 v1, 0x42bc0000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    goto :label_0536
    :label_0523
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v1
    if-eqz v1, :label_0530
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    goto :label_0536
    :label_0530
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    :label_0536
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v1, :label_0543
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    :label_0543
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->m2:I
    add-int/2addr v1, v2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_0559
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_0559
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v11
    :label_0559
    add-int/2addr v1, v11
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v4, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v4
    invoke-virtual {v5, v2, v1, v3, v7}, Lorg/telegram/ui/Components/RadialProgress2;->q(IIII)V
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    int-to-float v1, v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v2, v3
    int-to-float v2, v2
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v3
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F
    move-result v4
    invoke-virtual {v6, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    return-void
    :label_0589
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0xc
    const/high16 v4, 0x41c00000
    if-ne v2, v3, :label_05d8
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_05a4
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    goto :label_05c1
    :label_05a4
    const/high16 v1, 0x420c0000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v1
    if-eqz v1, :label_05b6
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    :label_05b4
    add-int/2addr v2, v1
    goto :label_05c1
    :label_05b6
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v1
    if-eqz v1, :label_05c1
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    goto :label_05b4
    :label_05c1
    int-to-float v1, v2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v2, v3
    int-to-float v2, v2
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v6, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    return-void
    :label_05d8
    if-nez v2, :label_0621
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v2, :label_05e6
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-nez v2, :label_05e6
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v2, :label_0621
    :label_05e6
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v1, :label_05f2
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    goto :label_0605
    :label_05f2
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v1, :label_05fe
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_05fc
    add-int/2addr v1, v2
    goto :label_0605
    :label_05fe
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_05fc
    :label_0605
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-eqz v2, :label_0611
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    add-int/2addr v1, v2
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_0634
    :label_0611
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v2, :label_061b
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    neg-int v2, v2
    goto :label_061f
    :label_061b
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_061f
    add-int/2addr v1, v2
    goto :label_067c
    :label_0621
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_0641
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v1, :label_0636
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_0634
    sub-int/2addr v1, v2
    goto :label_067c
    :label_0636
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v1, v2
    goto :label_067c
    :label_0641
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v2
    if-eqz v2, :label_0652
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_064f
    add-int/2addr v2, v1
    move v1, v2
    goto :label_066f
    :label_0652
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-nez v2, :label_0662
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z
    if-nez v3, :label_0662
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-eqz v2, :label_066f
    :label_0662
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_066f
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-nez v2, :label_066f
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_064f
    :label_066f
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_067c
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-nez v2, :label_067c
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_0634
    :label_067c
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_06a0
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/2addr v2, v9
    if-nez v2, :label_068a
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    :label_068a
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-eqz v2, :label_06a0
    int-to-float v2, v2
    div-float v2, v2, v27
    invoke-direct {v0}, Lorg/telegram/ui/Cells/u1;->getGroupPhotosWidth()I
    move-result v3
    int-to-float v3, v3
    mul-float/2addr v2, v3
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    add-int/2addr v1, v2
    :label_06a0
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v2, :label_06ab
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    :label_06ab
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->a3:I
    const/16 v3, 0x11
    if-ne v2, v3, :label_06c3
    int-to-float v1, v1
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->o3:I
    int-to-float v3, v3
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v8
    sub-float/2addr v3, v8
    div-float/2addr v3, v10
    add-float/2addr v3, v2
    add-float/2addr v3, v1
    float-to-int v1, v3
    :label_06c3
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->f0:Z
    if-eqz v2, :label_06cb
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->o:Z
    if-eqz v2, :label_06dd
    :label_06cb
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/t1;->o:Z
    int-to-float v2, v1
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v3
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v7
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F
    move-result v8
    invoke-virtual {v6, v2, v3, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_06dd
    int-to-float v1, v1
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v2
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    invoke-static {v2, v3, v10, v1}, Lcom/google/android/recaptcha/internal/a;->y(FFFF)F
    move-result v1
    float-to-int v1, v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v1
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F
    move-result v2
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    invoke-static {v2, v3, v10, v1}, Lcom/google/android/recaptcha/internal/a;->y(FFFF)F
    move-result v1
    float-to-int v1, v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v7, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v8
    add-int/2addr v8, v7
    invoke-virtual {v5, v2, v1, v3, v8}, Lorg/telegram/ui/Components/RadialProgress2;->q(IIII)V
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    const/high16 v2, 0x40a00000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v1
    int-to-float v1, v3
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v3
    int-to-float v2, v2
    iget v3, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    const/high16 v5, 0x422c0000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    add-int/2addr v7, v3
    int-to-float v3, v7
    iget v7, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int/2addr v5, v7
    int-to-float v5, v5
    iget-object v7, v0, Lorg/telegram/ui/Cells/u1;->a5:Landroid/graphics/RectF;
    invoke-virtual {v7, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v2, 0x4
    if-eq v1, v2, :label_0744
    const/4 v2, 0x2
    if-ne v1, v2, :label_098f
    :label_0744
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F
    move-result v1
    const/high16 v2, 0x41000000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    add-float/2addr v1, v3
    float-to-int v1, v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->L4:I
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    int-to-float v2, v2
    add-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->M4:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->L4:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    add-int/2addr v3, v2
    iget v5, v0, Lorg/telegram/ui/Cells/u1;->M4:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int/2addr v4, v5
    iget-object v5, v0, Lorg/telegram/ui/Cells/u1;->O0:Lorg/telegram/ui/Components/RadialProgress2;
    invoke-virtual {v5, v2, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->q(IIII)V
    return-void
    :label_0774
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_07a3
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    const/high16 v2, 0x42640000
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    goto :label_07fa
    :label_07a3
    const/high16 v1, 0x42840000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v1
    if-eqz v1, :label_07d9
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    goto :label_07fa
    :label_07d9
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->z3()Z
    move-result v1
    if-eqz v1, :label_07fa
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    :label_07fa
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v1, :label_0819
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->I5:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v2, v1
    iput v2, v0, Lorg/telegram/ui/Cells/u1;->R5:I
    :label_0819
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->v4()V
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->m2:I
    add-int/2addr v1, v2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_0833
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_0833
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v2
    goto :label_0834
    :label_0833
    move v2, v11
    :label_0834
    add-int/2addr v1, v2
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->J5:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    add-int/2addr v1, v2
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->m2:I
    add-int/2addr v1, v2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->t1:Z
    if-eqz v2, :label_084e
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v2, :label_084e
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight(Lorg/telegram/ui/Cells/t1;)I
    move-result v2
    goto :label_084f
    :label_084e
    move v2, v11
    :label_084f
    add-int/2addr v1, v2
    iput v1, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->J4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v18
    move/from16 v25, v8
    add-int v8, v18, v2
    move/from16 v26, v9
    iget v9, v0, Lorg/telegram/ui/Cells/u1;->K4:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v18
    add-int v9, v18, v9
    invoke-virtual {v5, v2, v1, v8, v9}, Lorg/telegram/ui/Components/RadialProgress2;->q(IIII)V
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q4()V
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->J1:I
    if-ne v1, v4, :label_098f
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I
    if-nez v2, :label_08be
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-nez v2, :label_0882
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-nez v2, :label_0882
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v2, :label_08be
    :label_0882
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->i2:Z
    if-eqz v1, :label_088e
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    goto :label_08a1
    :label_088e
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v1, :label_089a
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_0898
    add-int/2addr v1, v2
    goto :label_08a1
    :label_089a
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->n0:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_0898
    :label_08a1
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->u1:Z
    if-eqz v2, :label_08ad
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    add-int/2addr v1, v2
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_08d1
    :label_08ad
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->j2:Z
    if-eqz v2, :label_08b7
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    neg-int v2, v2
    goto :label_08bb
    :label_08b7
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_08bb
    add-int/2addr v1, v2
    goto/16 :label_092e
    :label_08be
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    if-eqz v1, :label_08de
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/u1;->j8:Z
    if-eqz v1, :label_08d3
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_08d1
    sub-int/2addr v1, v2
    goto :label_092e
    :label_08d3
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->K8:I
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->I8:I
    sub-int/2addr v1, v2
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v1, v2
    goto :label_092e
    :label_08de
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/u1;->q3()Z
    move-result v2
    if-eqz v2, :label_08ef
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    :label_08ec
    add-int/2addr v2, v1
    move v1, v2
    goto :label_0921
    :label_08ef
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->M7:Z
    if-nez v2, :label_090c
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0901
    iget-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z
    if-nez v4, :label_090c
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->guestchat_via_from:Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v4, :label_090c
    :label_0901
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J
    move-result-wide v4
    const-wide/32 v8, 0x77628
    cmp-long v2, v4, v8
    if-nez v2, :label_0921
    :label_090c
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->n8:Z
    if-eqz v2, :label_0921
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-eqz v2, :label_091c
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v2
    if-eqz v2, :label_0921
    :label_091c
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_08ec
    :label_0921
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_092e
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z
    if-nez v2, :label_092e
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    goto :label_08d1
    :label_092e
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v2, :label_0953
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v2, 0x1
    if-nez v2, :label_093d
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    :label_093d
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I
    if-eqz v2, :label_0953
    int-to-float v2, v2
    div-float v2, v2, v27
    invoke-direct {v0}, Lorg/telegram/ui/Cells/u1;->getGroupPhotosWidth()I
    move-result v4
    int-to-float v4, v4
    mul-float/2addr v2, v4
    float-to-double v4, v2
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v2, v4
    add-int/2addr v1, v2
    :label_0953
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    if-eqz v2, :label_095e
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    sub-int/2addr v1, v2
    :label_095e
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z
    move-result v2
    if-eqz v2, :label_096b
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v2
    add-int/2addr v1, v2
    :label_096b
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->f0:Z
    if-eqz v2, :label_0973
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->o:Z
    if-eqz v2, :label_098f
    :label_0973
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/t1;->o:Z
    int-to-float v1, v1
    iget-object v2, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    if-eq v2, v3, :label_0980
    iget v2, v0, Lorg/telegram/ui/Cells/u1;->o0:I
    int-to-float v2, v2
    goto :label_0984
    :label_0980
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v2
    :label_0984
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v3
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F
    move-result v4
    invoke-virtual {v6, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_098f
    return-void
.end method
