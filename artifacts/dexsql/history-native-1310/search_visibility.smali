# file_id=2 method_idx=24115 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/l;->w(Z)V"
.method public w(Z)V
    .registers 15

    iput-boolean v14, v13, Lorg/telegram/ui/ActionBar/l;->m0:Z
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/l;->g()V
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    if-eqz v0, :label_000c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :label_000c
    new-instance v0, Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V
    iput-object v0, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/l;->v()Z
    move-result v1
    const/4 v2, 0x0
    if-nez v1, :label_0043
    iget-object v3, v13, Lorg/telegram/ui/ActionBar/l;->n:[Lorg/telegram/ui/ActionBar/p5;
    aget-object v3, v3, v2
    if-eqz v3, :label_0028
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0028
    iget-object v3, v13, Lorg/telegram/ui/ActionBar/l;->r:Lorg/telegram/ui/ActionBar/p5;
    if-eqz v3, :label_0043
    iget-object v3, v13, Lorg/telegram/ui/ActionBar/l;->z0:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :label_0043
    iget-object v3, v13, Lorg/telegram/ui/ActionBar/l;->r:Lorg/telegram/ui/ActionBar/p5;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    iget-object v3, v13, Lorg/telegram/ui/ActionBar/l;->r:Lorg/telegram/ui/ActionBar/p5;
    if-eqz v14, :label_003f
    const/4 v4, 0x4
    goto :label_0040
    :label_003f
    move v4, v2
    :label_0040
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :label_0043
    iget v3, v13, Lorg/telegram/ui/ActionBar/l;->n0:F
    const/4 v4, 0x0
    const/high16 v5, 0x3f800000
    if-eqz v14, :label_004c
    move v6, v5
    goto :label_004d
    :label_004c
    move v6, v4
    :label_004d
    const/4 v7, 0x2
    new-array v8, v7, [F
    aput v3, v8, v2
    const/4 v3, 0x1
    aput v6, v8, v3
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
    move-result-object v6
    new-instance v8, Lorg/telegram/ui/ActionBar/a;
    invoke-direct {v8, v13, v7}, Lorg/telegram/ui/ActionBar/a;-><init>(Lorg/telegram/ui/ActionBar/l;I)V
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    iget-object v7, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    new-array v8, v3, [Landroid/animation/Animator;
    aput-object v6, v8, v2
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    move v6, v2
    :label_006b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v7
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;
    if-ge v6, v7, :label_00d2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroid/view/View;
    const v9, 0x3f733333
    if-nez v14, :label_008a
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleX(F)V
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V
    :label_008a
    iget-object v10, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    if-eqz v14, :label_0090
    move v11, v4
    goto :label_0091
    :label_0090
    move v11, v5
    :label_0091
    new-array v12, v3, [F
    aput v11, v12, v2
    invoke-static {v7, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v8
    new-array v11, v3, [Landroid/animation/Animator;
    aput-object v8, v11, v2
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    iget-object v8, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    if-eqz v14, :label_00a6
    move v10, v9
    goto :label_00a7
    :label_00a6
    move v10, v5
    :label_00a7
    new-array v11, v3, [F
    aput v10, v11, v2
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;
    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v10
    new-array v11, v3, [Landroid/animation/Animator;
    aput-object v10, v11, v2
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    iget-object v8, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    if-eqz v14, :label_00bd
    goto :label_00be
    :label_00bd
    move v9, v5
    :label_00be
    new-array v10, v3, [F
    aput v9, v10, v2
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v7
    new-array v9, v3, [Landroid/animation/Animator;
    aput-object v7, v9, v2
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    add-int/lit8 v6, v6, 0x1
    goto :label_006b
    :label_00d2
    iget-object v6, v13, Lorg/telegram/ui/ActionBar/l;->f:Lorg/telegram/ui/Components/y9;
    if-eqz v6, :label_00f1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V
    iget-object v6, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    iget-object v7, v13, Lorg/telegram/ui/ActionBar/l;->f:Lorg/telegram/ui/Components/y9;
    if-eqz v14, :label_00e1
    move v9, v5
    goto :label_00e2
    :label_00e1
    move v9, v4
    :label_00e2
    new-array v10, v3, [F
    aput v9, v10, v2
    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v7
    new-array v8, v3, [Landroid/animation/Animator;
    aput-object v7, v8, v2
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    :label_00f1
    iput-boolean v3, v13, Lorg/telegram/ui/ActionBar/l;->y0:Z
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/l;->requestLayout()V
    iget-object v2, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    new-instance v6, Lorg/telegram/ui/ActionBar/f;
    invoke-direct {v6, v13, v0, v14, v1}, Lorg/telegram/ui/ActionBar/f;-><init>(Lorg/telegram/ui/ActionBar/l;Ljava/util/ArrayList;ZZ)V
    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/l;->U0:Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0x96
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;
    move-result-object v0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/l;->e:Landroid/widget/ImageView;
    if-eqz v0, :label_0121
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/k5;
    if-eqz v1, :label_0121
    check-cast v0, Lorg/telegram/ui/ActionBar/k5;
    iput-boolean v3, v0, Lorg/telegram/ui/ActionBar/k5;->h:Z
    if-eqz v14, :label_011e
    move v4, v5
    :label_011e
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/k5;->a(FZ)V
    :label_0121
    return-void
.end method
