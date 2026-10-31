# file_id=2 method_idx=24905 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/x0;->L(Z)Z"
.method public final L(Z)Z
    .registers 18

    move-object/from16 v0, v16
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/x0;->k()V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    const/4 v3, 0x0
    if-eqz v2, :label_01bc
    if-eqz v1, :label_0016
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/m5;->c()Z
    move-result v1
    if-nez v1, :label_0016
    goto/16 :label_01bc
    :label_0016
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    const/4 v2, 0x1
    if-eqz v1, :label_0025
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/m5;->g()Landroid/animation/Animator;
    move-result-object v1
    if-eqz v1, :label_0025
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V
    return v2
    :label_0025
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    move v4, v3
    :label_002b
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/x0;->c:Lorg/telegram/ui/ActionBar/z;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v6
    if-ge v4, v6, :label_0049
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
    instance-of v6, v5, Lorg/telegram/ui/ActionBar/x0;
    if-eqz v6, :label_0046
    check-cast v5, Lorg/telegram/ui/ActionBar/x0;
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/x0;->getIconView()Lorg/telegram/ui/Components/sk0;
    move-result-object v5
    if-eqz v5, :label_0046
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :label_0046
    add-int/lit8 v4, v4, 0x1
    goto :label_002b
    :label_0049
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v4
    const/4 v6, 0x2
    const-wide/16 v7, 0x96
    const/high16 v9, 0x3f800000
    const/4 v10, 0x0
    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;
    if-eqz v4, :label_011b
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    const/4 v12, 0x0
    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    if-eqz v4, :label_006b
    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V
    :label_006b
    new-instance v4, Landroid/animation/AnimatorSet;
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F
    move-result v13
    new-array v14, v6, [F
    aput v13, v14, v3
    aput v10, v14, v2
    invoke-static {v12, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v12
    new-array v13, v2, [Landroid/animation/Animator;
    aput-object v12, v13, v3
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    move v4, v3
    :label_008a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v12
    if-ge v4, v12, :label_00bf
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Landroid/view/View;
    invoke-virtual {v12, v10}, Landroid/view/View;->setAlpha(F)V
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Landroid/view/View;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F
    move-result v14
    new-array v15, v6, [F
    aput v14, v15, v3
    aput v9, v15, v2
    invoke-static {v13, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v13
    new-array v14, v2, [Landroid/animation/Animator;
    aput-object v13, v14, v3
    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_008a
    :label_00bf
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    new-instance v4, Lorg/telegram/ui/ActionBar/o0;
    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/ActionBar/o0;-><init>(Lorg/telegram/ui/ActionBar/x0;Ljava/util/ArrayList;I)V
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->f0:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :label_0106
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    if-eqz v2, :label_0106
    move v2, v3
    :label_00e8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v2, v4, :label_0106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lbf/h1;
    iget-boolean v4, v4, Lbf/h1;->h:Z
    if-eqz v4, :label_0103
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lbf/h1;
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/m5;->o(Lbf/h1;)V
    :label_0103
    add-int/lit8 v2, v2, 0x1
    goto :label_00e8
    :label_0106
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    if-eqz v1, :label_010d
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/m5;->m()V
    :label_010d
    if-eqz v17, :label_0114
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V
    :label_0114
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
    return v3
    :label_011b
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/r0;->setVisibility(I)V
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/r0;->setAlpha(F)V
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    if-eqz v4, :label_0131
    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V
    :label_0131
    new-instance v4, Landroid/animation/AnimatorSet;
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F
    move-result v12
    new-array v13, v6, [F
    aput v12, v13, v3
    aput v9, v13, v2
    invoke-static {v5, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v5
    new-array v9, v2, [Landroid/animation/Animator;
    aput-object v5, v9, v3
    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    move v4, v3
    :label_0150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v4, v5, :label_017c
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Landroid/view/View;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F
    move-result v12
    new-array v13, v6, [F
    aput v12, v13, v3
    aput v10, v13, v2
    invoke-static {v9, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object v9
    new-array v12, v2, [Landroid/animation/Animator;
    aput-object v9, v12, v3
    invoke-virtual {v5, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    add-int/lit8 v4, v4, 0x1
    goto :label_0150
    :label_017c
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    new-instance v4, Lorg/telegram/ui/ActionBar/o0;
    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/ActionBar/o0;-><init>(Lorg/telegram/ui/ActionBar/x0;Ljava/util/ArrayList;I)V
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->r0:Landroid/animation/AnimatorSet;
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/x0;->m()V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    const-string v3, ""
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    if-eqz v17, :label_01ab
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z
    :label_01ab
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/x0;->G:Lorg/telegram/ui/ActionBar/m5;
    if-eqz v1, :label_01bb
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/m5;->n()V
    :label_01bb
    return v2
    :label_01bc
    return v3
.end method
