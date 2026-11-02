# file_id=3 method_idx=20755 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes4.dex" descriptor="Lxg/m2;->b(Landroid/graphics/Canvas;)V"
.method public final b(Landroid/graphics/Canvas;)V
    .registers 35

    move-object/from16 v0, v33
    move-object/from16 v1, v34
    iget-object v2, v0, Lxg/m2;->x:Lxg/f3;
    iget v3, v2, Lxg/f3;->H1:F
    iget-object v4, v2, Lxg/f3;->i1:Lxg/k2;
    iget-object v5, v2, Lxg/f3;->L2:Lf2/q0;
    iget-object v6, v2, Lxg/f3;->N1:Lxg/e3;
    iget-object v7, v2, Lxg/f3;->d1:Lcf/n1;
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z
    move-result v8
    const/4 v9, 0x0
    const/4 v10, 0x1
    if-nez v8, :label_0028
    iget-boolean v8, v6, Lxg/e3;->e:Z
    if-eqz v8, :label_0020
    iget-boolean v8, v5, Lf2/q0;->b:Z
    if-nez v8, :label_0028
    :label_0020
    iget-boolean v8, v6, Lxg/e3;->f:Z
    if-eqz v8, :label_00b2
    iget-boolean v8, v5, Lf2/q0;->b:Z
    if-eqz v8, :label_00b2
    :label_0028
    iget-object v8, v6, Lxg/e3;->k:Lxg/f3;
    iget-object v11, v8, Lxg/f3;->t1:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    iget-object v12, v8, Lxg/f3;->I0:Lxg/y7;
    if-nez v11, :label_004a
    iget-object v11, v8, Lxg/f3;->R1:Lxg/o5;
    iget-wide v13, v8, Lxg/f3;->A1:J
    invoke-virtual {v11, v13, v14}, Lxg/o5;->y(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    move-result-object v11
    if-nez v11, :label_004a
    iget v13, v8, Lxg/f3;->B2:I
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;
    move-result-object v13
    iget-wide v14, v8, Lxg/f3;->A1:J
    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    move-result-object v13
    if-eqz v13, :label_004a
    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    :label_004a
    iget-boolean v13, v8, Lxg/f3;->J1:Z
    if-eqz v13, :label_009c
    iget-object v13, v6, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-eqz v13, :label_009c
    if-eqz v11, :label_009c
    invoke-static {v13}, Lxg/f6;->v(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    move-result v13
    if-nez v13, :label_006e
    iget-object v13, v6, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    iget v13, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I
    iget v11, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I
    if-gt v13, v11, :label_0072
    iget-object v11, v8, Lxg/f3;->R1:Lxg/o5;
    iget-object v11, v11, Lxg/o5;->f:Lorg/telegram/messenger/support/LongSparseIntArray;
    iget-wide v14, v8, Lxg/f3;->A1:J
    invoke-virtual {v11, v14, v15, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I
    move-result v11
    if-gt v13, v11, :label_0072
    :label_006e
    iget-boolean v11, v8, Lxg/f3;->B1:Z
    if-eqz v11, :label_009c
    :label_0072
    iget-object v11, v12, Lxg/y7;->P0:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    if-eqz v11, :label_0083
    iget-object v8, v8, Lxg/f3;->R1:Lxg/o5;
    iget-object v13, v6, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    invoke-virtual {v8, v11, v13, v10}, Lxg/o5;->V(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z
    move-result v8
    if-eqz v8, :label_00b2
    iput-boolean v10, v12, Lxg/y7;->b1:Z
    goto :label_00b2
    :label_0083
    iget-object v11, v8, Lxg/f3;->R1:Lxg/o5;
    iget-wide v13, v8, Lxg/f3;->A1:J
    iget-object v8, v6, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    invoke-virtual {v11, v13, v14}, Lxg/o5;->y(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    move-result-object v15
    if-nez v15, :label_0093
    invoke-virtual {v11, v13, v14}, Lxg/o5;->z(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    move-result-object v15
    :label_0093
    invoke-virtual {v11, v15, v8, v9}, Lxg/o5;->V(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z
    move-result v8
    if-eqz v8, :label_00b2
    iput-boolean v10, v12, Lxg/y7;->b1:Z
    goto :label_00b2
    :label_009c
    iget-boolean v8, v8, Lxg/f3;->J1:Z
    if-eqz v8, :label_00b2
    iget-object v8, v6, Lxg/e3;->a:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    if-eqz v8, :label_00b2
    iget-object v11, v12, Lxg/y7;->N0:Lxg/g5;
    if-eqz v11, :label_00b2
    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I
    invoke-virtual {v11, v8}, Lxg/g5;->r(I)Z
    move-result v8
    if-eqz v8, :label_00b2
    iput-boolean v10, v12, Lxg/y7;->b1:Z
    :label_00b2
    invoke-static {v2}, Lxg/f3;->c0(Lxg/f3;)F
    move-result v8
    iget-boolean v11, v6, Lxg/e3;->e:Z
    const/4 v12, 0x0
    const/high16 v13, 0x3f800000
    if-eqz v11, :label_00df
    iget-object v7, v5, Lf2/q0;->c:Ljava/lang/Object;
    check-cast v7, Lxg/x7;
    if-eqz v7, :label_00d7
    iget-wide v14, v2, Lxg/f3;->Q2:J
    invoke-virtual {v7, v14, v15}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getPlaybackProgress(J)F
    move-result v7
    invoke-static {v7, v13, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v7
    iget-boolean v11, v5, Lf2/q0;->b:Z
    if-eqz v11, :label_00d8
    if-eqz v4, :label_00d8
    invoke-virtual {v4}, Lxg/c7;->e()V
    goto :label_00d8
    :label_00d7
    move v7, v12
    :label_00d8
    invoke-virtual {v0}, Lxg/q;->invalidate()V
    move/from16 v20, v8
    goto/16 :label_014b
    :label_00df
    iget-boolean v11, v2, Lxg/f3;->Q1:Z
    if-nez v11, :label_013d
    iget-boolean v11, v2, Lxg/f3;->J1:Z
    if-eqz v11, :label_013d
    iget-boolean v11, v2, Lxg/f3;->S1:Z
    if-nez v11, :label_013d
    iget-boolean v11, v2, Lxg/f3;->T1:Z
    if-nez v11, :label_013d
    iget-boolean v11, v2, Lxg/f3;->U1:Z
    if-nez v11, :label_013d
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z
    move-result v7
    if-eqz v7, :label_013d
    const v7, 0x461c4000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v14
    move/from16 v16, v7
    move v11, v8
    iget-wide v7, v2, Lxg/f3;->W0:J
    const-wide/16 v17, 0x0
    cmp-long v19, v7, v17
    if-eqz v19, :label_012c
    iget-boolean v9, v2, Lxg/f3;->i3:Z
    if-nez v9, :label_012c
    move/from16 v20, v11
    iget-wide v10, v2, Lxg/f3;->V0:J
    cmp-long v10, v10, v17
    if-gtz v10, :label_0122
    sub-long v7, v14, v7
    cmp-long v7, v7, v17
    if-lez v7, :label_0122
    if-eqz v4, :label_0122
    invoke-virtual {v4}, Lxg/c7;->e()V
    :label_0122
    iget-wide v7, v2, Lxg/f3;->W0:J
    sub-long v7, v14, v7
    iget-wide v10, v2, Lxg/f3;->V0:J
    add-long/2addr v10, v7
    iput-wide v10, v2, Lxg/f3;->V0:J
    goto :label_012e
    :label_012c
    move/from16 v20, v11
    :label_012e
    iput-wide v14, v2, Lxg/f3;->W0:J
    iget-wide v7, v2, Lxg/f3;->V0:J
    long-to-float v4, v7
    div-float v4, v4, v16
    invoke-static {v4, v13, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v7
    invoke-virtual {v0}, Lxg/q;->invalidate()V
    goto :label_014b
    :label_013d
    move/from16 v20, v8
    const v16, 0x461c4000
    iget-wide v7, v2, Lxg/f3;->V0:J
    long-to-float v4, v7
    div-float v4, v4, v16
    invoke-static {v4, v13, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v7
    :label_014b
    if-eqz v5, :label_015a
    iget-object v4, v5, Lf2/q0;->c:Ljava/lang/Object;
    check-cast v4, Lxg/x7;
    if-eqz v4, :label_015a
    iget v4, v4, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F
    cmpl-float v8, v4, v12
    if-ltz v8, :label_015a
    goto :label_015b
    :label_015a
    move v4, v7
    :label_015b
    iget-boolean v8, v2, Lxg/f3;->X0:Z
    if-nez v8, :label_017b
    cmpl-float v8, v7, v13
    if-nez v8, :label_017b
    iget-boolean v8, v6, Lxg/e3;->e:Z
    if-eqz v8, :label_016b
    iget-boolean v8, v2, Lxg/f3;->i3:Z
    if-nez v8, :label_017b
    :label_016b
    iget-boolean v8, v2, Lxg/f3;->K2:Z
    if-nez v8, :label_017b
    const/4 v9, 0x1
    iput-boolean v9, v2, Lxg/f3;->X0:Z
    new-instance v8, Lxg/x0;
    const/4 v10, 0x2
    invoke-direct {v8, v0, v10}, Lxg/x0;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :label_017b
    iget-object v8, v0, Lxg/m2;->w:Lxg/y7;
    iget-object v10, v8, Lxg/y7;->N0:Lxg/g5;
    if-eqz v10, :label_0269
    iget v10, v10, Lxg/g5;->e:I
    const/4 v9, 0x3
    if-eq v10, v9, :label_0269
    iget-object v9, v2, Lxg/f3;->p1:Le6/f;
    if-nez v9, :label_0193
    new-instance v9, Le6/f;
    const/16 v10, 0xb
    invoke-direct {v9, v10}, Le6/f;-><init>(I)V
    iput-object v9, v2, Lxg/f3;->p1:Le6/f;
    :label_0193
    iget-object v10, v2, Lxg/f3;->p1:Le6/f;
    mul-float v9, v20, v3
    const/high16 v17, 0x40800000
    iget v11, v2, Lxg/f3;->c4:F
    sub-float v11, v13, v11
    mul-float/2addr v11, v9
    iget v9, v2, Lxg/f3;->K1:I
    move/from16 v18, v13
    iget-object v13, v8, Lxg/y7;->N0:Lxg/g5;
    invoke-virtual {v13}, Lxg/g5;->g()I
    move-result v13
    const/high16 v20, 0x40000000
    iget-object v14, v2, Lxg/f3;->n1:Lxg/c3;
    const/high16 v21, 0x41000000
    iget-object v15, v10, Le6/f;->d:Ljava/lang/Object;
    check-cast v15, Lorg/telegram/ui/Components/q6;
    shl-int/lit8 v22, v13, 0xc
    add-int v12, v22, v9
    iget v0, v10, Le6/f;->a:I
    if-eq v0, v12, :label_01ef
    iput v12, v10, Le6/f;->a:I
    new-instance v0, Landroid/text/SpannableStringBuilder;
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
    const/16 v16, 0x1
    add-int/lit8 v12, v9, 0x1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v12
    invoke-virtual {v0, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v12
    iget-object v9, v10, Le6/f;->b:Ljava/lang/Object;
    check-cast v9, Landroid/text/SpannableStringBuilder;
    invoke-virtual {v12, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v9
    const-string v12, "/"
    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v9
    iget-object v10, v10, Le6/f;->c:Ljava/lang/Object;
    check-cast v10, Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v9
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    const/4 v9, 0x0
    const/4 v10, 0x1
    invoke-virtual {v15, v0, v9, v10}, Lorg/telegram/ui/Components/q6;->t(Ljava/lang/CharSequence;ZZ)V
    :label_01ef
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I
    invoke-virtual {v14}, Landroid/view/View;->getY()F
    move-result v0
    iget-object v10, v14, Lxg/c3;->b:Lorg/telegram/ui/Cells/g4;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I
    move-result v12
    int-to-float v12, v12
    add-float/2addr v0, v12
    iget v12, v15, Lorg/telegram/ui/Components/q6;->e:F
    div-float v12, v12, v20
    add-float/2addr v12, v0
    sub-float v12, v12, v18
    invoke-virtual {v15}, Lorg/telegram/ui/Components/q6;->c()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/p5;->setRightPadding(I)V
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v13
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I
    move-result v14
    add-int/2addr v14, v13
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I
    move-result v13
    add-int/2addr v13, v14
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/p5;->getTextWidth()I
    move-result v14
    add-int/2addr v14, v13
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/p5;->getRightDrawableWidth()I
    move-result v13
    add-int/2addr v13, v14
    int-to-float v13, v13
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/p5;->getTextWidth()I
    move-result v14
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/p5;->getRightDrawableWidth()I
    move-result v16
    add-int v16, v16, v14
    add-int v16, v16, v0
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I
    move-result v10
    sub-int v10, v16, v10
    const/4 v14, 0x0
    invoke-static {v10, v0, v14}, Lorg/telegram/messenger/Utilities;->clamp(III)I
    move-result v0
    int-to-float v0, v0
    sub-float/2addr v13, v0
    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    int-to-float v10, v10
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;
    neg-float v13, v0
    neg-float v14, v10
    invoke-virtual {v15}, Lorg/telegram/ui/Components/q6;->c()F
    move-result v16
    add-float v0, v16, v0
    iget v9, v15, Lorg/telegram/ui/Components/q6;->e:F
    add-float/2addr v9, v10
    invoke-virtual {v12, v13, v14, v0, v9}, Landroid/graphics/RectF;->set(FFFF)V
    const/high16 v0, 0x43200000
    mul-float/2addr v11, v0
    float-to-int v0, v11
    iput v0, v15, Lorg/telegram/ui/Components/q6;->B:I
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/q6;->draw(Landroid/graphics/Canvas;)V
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V
    goto :label_0271
    :label_0269
    move/from16 v18, v13
    const/high16 v17, 0x40800000
    const/high16 v20, 0x40000000
    const/high16 v21, 0x41000000
    :label_0271
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    int-to-float v9, v9
    iget v10, v2, Lxg/f3;->c4:F
    mul-float/2addr v9, v10
    sub-float/2addr v0, v9
    const/4 v9, 0x0
    invoke-virtual {v1, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V
    iget-boolean v0, v6, Lxg/e3;->e:Z
    if-eqz v0, :label_0298
    iget-object v0, v5, Lf2/q0;->c:Ljava/lang/Object;
    check-cast v0, Lxg/x7;
    if-eqz v0, :label_0298
    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->isBuffering()Z
    move-result v0
    if-eqz v0, :label_0298
    const/4 v9, 0x1
    goto :label_0299
    :label_0298
    const/4 v9, 0x0
    :label_0299
    iget-boolean v0, v2, Lxg/f3;->K2:Z
    if-eqz v0, :label_02a9
    if-eqz v6, :label_02a9
    iget-boolean v5, v6, Lxg/e3;->e:Z
    if-eqz v5, :label_02a9
    iget-boolean v5, v8, Lxg/y7;->j0:Z
    if-eqz v5, :label_02a9
    const/4 v5, 0x1
    goto :label_02aa
    :label_02a9
    const/4 v5, 0x0
    :label_02aa
    iget-object v6, v2, Lxg/f3;->O2:Lorg/telegram/ui/Components/g6;
    if-eqz v0, :label_02b3
    if-eqz v5, :label_02b1
    goto :label_02b3
    :label_02b1
    const/4 v0, 0x0
    goto :label_02b4
    :label_02b3
    const/4 v0, 0x1
    :label_02b4
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/g6;->e(Z)F
    move-result v0
    iget-object v6, v2, Lxg/f3;->o1:Lxg/z6;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    iget v10, v2, Lxg/f3;->L1:I
    iget v11, v2, Lxg/f3;->M1:I
    iget v2, v2, Lxg/f3;->c4:F
    sub-float v13, v18, v2
    mul-float/2addr v13, v3
    iget-object v2, v6, Lxg/z6;->c:Landroid/text/TextPaint;
    if-gtz v11, :label_02cd
    goto/16 :label_052a
    :label_02cd
    if-eqz v9, :label_02d3
    if-nez v5, :label_02d3
    const/4 v3, 0x1
    goto :label_02d4
    :label_02d3
    const/4 v3, 0x0
    :label_02d4
    iget v9, v6, Lxg/z6;->i:I
    if-eq v9, v10, :label_02de
    const/4 v9, 0x0
    iput v9, v6, Lxg/z6;->g:F
    const/4 v9, 0x1
    iput-boolean v9, v6, Lxg/z6;->h:Z
    :label_02de
    iput v10, v6, Lxg/z6;->i:I
    iget-object v12, v6, Lxg/z6;->a:Lxg/d3;
    iget-object v14, v12, Lxg/d3;->a:Landroid/graphics/Paint;
    iget-object v12, v12, Lxg/d3;->b:Landroid/graphics/Paint;
    const/16 v15, 0x64
    if-le v11, v15, :label_02ec
    const/4 v15, 0x1
    goto :label_02f9
    :label_02ec
    const/16 v15, 0x32
    if-lt v11, v15, :label_02f5
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    goto :label_02f9
    :label_02f5
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    :label_02f9
    const/high16 v16, 0x41200000
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v16
    sub-int v16, v8, v16
    add-int/lit8 v21, v11, -0x1
    mul-int v21, v21, v15
    sub-int v9, v16, v21
    int-to-float v9, v9
    move/from16 v16, v0
    int-to-float v0, v11
    div-float v0, v9, v0
    const/high16 v21, 0x40a00000
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    div-float v9, v0, v20
    move/from16 v24, v0
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v0
    int-to-float v0, v0
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F
    move-result v0
    iget-object v9, v6, Lxg/z6;->b:Lorg/telegram/ui/Components/g6;
    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/g6;->e(Z)F
    move-result v5
    const/16 v23, 0x0
    cmpl-float v25, v5, v23
    const/high16 v26, 0x437f0000
    if-lez v25, :label_037a
    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I
    mul-float v4, v5, v26
    float-to-int v4, v4
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V
    const/high16 v4, 0x40400000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    int-to-float v4, v4
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    int-to-float v9, v9
    move/from16 v27, v3
    const/high16 v3, 0x30000000
    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/n6;->m1(FI)I
    move-result v3
    move/from16 v28, v7
    const/4 v7, 0x0
    invoke-virtual {v2, v4, v7, v9, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
    int-to-float v2, v8
    iget v3, v6, Lxg/z6;->f:F
    sub-float/2addr v2, v3
    div-float v2, v2, v20
    iget v3, v6, Lxg/z6;->e:F
    sub-float/2addr v2, v3
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    const/high16 v4, 0x41800000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V
    iget-object v2, v6, Lxg/z6;->d:Landroid/text/StaticLayout;
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V
    move/from16 v7, v28
    goto :label_037c
    :label_037a
    move/from16 v27, v3
    :label_037c
    const/4 v2, 0x0
    :label_037d
    if-ge v2, v11, :label_052a
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    int-to-float v3, v3
    const/high16 v4, -0x80000000
    add-float/2addr v3, v4
    mul-int v4, v15, v2
    int-to-float v4, v4
    add-float/2addr v3, v4
    int-to-float v4, v2
    mul-float v4, v4, v24
    add-float/2addr v4, v3
    int-to-float v3, v8
    cmpl-float v3, v4, v3
    if-gtz v3, :label_03a0
    add-float v3, v4, v24
    const/16 v23, 0x0
    cmpg-float v9, v3, v23
    if-ltz v9, :label_050e
    cmpg-float v9, v13, v23
    if-gtz v9, :label_03af
    :label_03a0
    move/from16 v17, v0
    move-object/from16 v32, v6
    move/from16 v28, v7
    move/from16 v29, v8
    move/from16 v19, v11
    const/4 v9, 0x0
    :label_03ab
    const/16 v30, 0x1
    goto/16 :label_051c
    :label_03af
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v9
    invoke-static {v0, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v9
    if-gt v2, v10, :label_0478
    if-ne v2, v10, :label_0478
    move/from16 v17, v0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;
    move/from16 v28, v7
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v7
    move/from16 v29, v8
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v8
    move/from16 v30, v9
    if-ne v10, v2, :label_03d1
    const/4 v9, 0x1
    goto :label_03d2
    :label_03d1
    const/4 v9, 0x0
    :label_03d2
    int-to-float v9, v9
    mul-float/2addr v9, v5
    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v7
    const/4 v9, 0x0
    invoke-virtual {v0, v4, v9, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V
    if-eqz v27, :label_0414
    iget-boolean v7, v6, Lxg/z6;->h:Z
    const v8, 0x3cda740e
    if-eqz v7, :label_03f8
    iget v7, v6, Lxg/z6;->g:F
    add-float/2addr v7, v8
    iput v7, v6, Lxg/z6;->g:F
    const/high16 v8, 0x3f000000
    cmpl-float v7, v7, v8
    if-lez v7, :label_03f6
    const/4 v7, 0x0
    iput-boolean v7, v6, Lxg/z6;->h:Z
    :label_03f3
    move/from16 v8, v30
    goto :label_0408
    :label_03f6
    const/4 v7, 0x0
    goto :label_03f3
    :label_03f8
    const/4 v7, 0x0
    iget v9, v6, Lxg/z6;->g:F
    sub-float/2addr v9, v8
    iput v9, v6, Lxg/z6;->g:F
    const/high16 v8, -0x41000000
    cmpg-float v8, v9, v8
    if-gez v8, :label_03f3
    const/4 v9, 0x1
    iput-boolean v9, v6, Lxg/z6;->h:Z
    goto :label_03f3
    :label_0408
    const/high16 v19, 0x424c0000
    mul-float v19, v19, v13
    mul-float v19, v19, v16
    iget v7, v6, Lxg/z6;->g:F
    mul-float v7, v7, v19
    float-to-int v7, v7
    goto :label_0417
    :label_0414
    move/from16 v8, v30
    const/4 v7, 0x0
    :label_0417
    const/high16 v19, 0x42aa0000
    mul-float v19, v19, v13
    mul-float v9, v19, v16
    float-to-int v9, v9
    add-int/2addr v9, v7
    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V
    if-lez v25, :label_0470
    iget v7, v0, Landroid/graphics/RectF;->left:F
    sub-int v9, v2, v10
    mul-int v19, v9, v29
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v31
    move-object/from16 v32, v6
    add-int v6, v31, v19
    int-to-float v6, v6
    invoke-static {v7, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v6
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int v7, v29, v7
    int-to-float v7, v7
    move/from16 v19, v9
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    int-to-float v9, v9
    invoke-static {v6, v7, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v6
    iput v6, v0, Landroid/graphics/RectF;->left:F
    iget v6, v0, Landroid/graphics/RectF;->right:F
    const/4 v9, 0x1
    add-int/lit8 v7, v19, 0x1
    mul-int v7, v7, v29
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v19
    sub-int v7, v7, v19
    int-to-float v7, v7
    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v6
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int v7, v29, v7
    int-to-float v7, v7
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v9
    int-to-float v9, v9
    invoke-static {v6, v7, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v6
    iput v6, v0, Landroid/graphics/RectF;->right:F
    goto :label_0472
    :label_0470
    move-object/from16 v32, v6
    :label_0472
    invoke-virtual {v1, v0, v8, v8, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    move/from16 v0, v28
    goto :label_0483
    :label_0478
    move/from16 v17, v0
    move-object/from16 v32, v6
    move/from16 v28, v7
    move/from16 v29, v8
    move v8, v9
    move/from16 v0, v18
    :label_0483
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v7
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v9
    move/from16 v19, v11
    if-ne v10, v2, :label_0493
    const/4 v11, 0x1
    goto :label_0494
    :label_0493
    const/4 v11, 0x0
    :label_0494
    int-to-float v11, v11
    mul-float/2addr v11, v5
    invoke-static {v7, v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v7
    const/4 v9, 0x0
    invoke-virtual {v6, v4, v9, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V
    if-lez v25, :label_04e7
    iget v3, v6, Landroid/graphics/RectF;->left:F
    sub-int v4, v2, v10
    mul-int v7, v4, v29
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v11, v7
    int-to-float v7, v11
    invoke-static {v3, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v3
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int v7, v29, v7
    int-to-float v7, v7
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    int-to-float v11, v11
    invoke-static {v3, v7, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v3
    iput v3, v6, Landroid/graphics/RectF;->left:F
    iget v3, v6, Landroid/graphics/RectF;->right:F
    const/16 v30, 0x1
    add-int/lit8 v4, v4, 0x1
    mul-int v4, v4, v29
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    sub-int/2addr v4, v7
    int-to-float v4, v4
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v3
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    sub-int v4, v29, v4
    int-to-float v4, v4
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    int-to-float v7, v7
    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F
    move-result v3
    iput v3, v6, Landroid/graphics/RectF;->right:F
    goto :label_04e9
    :label_04e7
    const/16 v30, 0x1
    :label_04e9
    iget v3, v6, Landroid/graphics/RectF;->left:F
    iget v4, v6, Landroid/graphics/RectF;->right:F
    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F
    move-result v0
    iput v0, v6, Landroid/graphics/RectF;->right:F
    if-gt v2, v10, :label_04ff
    mul-float v0, v13, v26
    mul-float v0, v0, v16
    float-to-int v0, v0
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V
    move-object v0, v12
    goto :label_050a
    :label_04ff
    const/16 v0, 0x55
    int-to-float v0, v0
    mul-float/2addr v0, v13
    mul-float v0, v0, v16
    float-to-int v0, v0
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V
    move-object v0, v14
    :label_050a
    invoke-virtual {v1, v6, v8, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    goto :label_051c
    :label_050e
    move/from16 v17, v0
    move-object/from16 v32, v6
    move/from16 v28, v7
    move/from16 v29, v8
    move/from16 v19, v11
    move/from16 v9, v23
    goto/16 :label_03ab
    :label_051c
    add-int/lit8 v2, v2, 0x1
    move/from16 v0, v17
    move/from16 v11, v19
    move/from16 v7, v28
    move/from16 v8, v29
    move-object/from16 v6, v32
    goto/16 :label_037d
    :label_052a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V
    return-void
.end method
