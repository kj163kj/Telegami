# file_id=2 method_idx=24929 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/x0;->k()V"
.method public final k()V
    .registers 13

    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    if-nez v0, :label_020a
    iget-boolean v0, v12, Lorg/telegram/ui/ActionBar/x0;->F:Z
    if-eqz v0, :label_020a
    new-instance v0, Lorg/telegram/ui/ActionBar/r0;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0x0
    invoke-direct {v0, v12, v1, v2}, Lorg/telegram/ui/ActionBar/r0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget v1, v12, Lorg/telegram/ui/ActionBar/x0;->m0:I
    const/4 v2, 0x1
    const/4 v3, 0x0
    if-eqz v1, :label_001c
    move v1, v2
    goto :label_001d
    :label_001c
    move v1, v3
    :label_001d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V
    const/4 v0, 0x0
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->a:Landroid/widget/FrameLayout;
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget v1, v12, Lorg/telegram/ui/ActionBar/x0;->m0:I
    add-int/lit8 v7, v1, 0x6
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/high16 v4, 0x3f800000
    const/4 v5, 0x0
    const/4 v6, -0x1
    invoke-static/range {v4 .. v9}, Lt7/x5;->m(FIIIII)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v1
    iget-object v4, v12, Lorg/telegram/ui/ActionBar/x0;->c:Lorg/telegram/ui/ActionBar/z;
    invoke-virtual {v4, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/r0;->setVisibility(I)V
    new-instance v0, Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    const/high16 v5, 0x41900000
    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    sget v6, Lorg/telegram/ui/ActionBar/n6;->C8:I
    iget-object v7, v12, Lorg/telegram/ui/ActionBar/x0;->l0:Lorg/telegram/ui/ActionBar/j6;
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v8
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-eqz v1, :label_0075
    const/4 v1, 0x5
    goto :label_0076
    :label_0075
    const/4 v1, 0x3
    :label_0076
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
    new-instance v0, Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v8, 0x0
    invoke-direct {v0, v12, v1, v8}, Lorg/telegram/ui/ActionBar/s0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollContainer(Z)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    const/high16 v1, 0x3fc00000
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    sget v1, Lorg/telegram/ui/ActionBar/n6;->D8:I
    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/wu;->setTextColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I
    move-result v0
    const/high16 v1, 0x80000
    or-int/2addr v0, v1
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    new-instance v1, Lorg/telegram/ui/ActionBar/a0;
    invoke-direct {v1, v12}, Lorg/telegram/ui/ActionBar/a0;-><init>(Lorg/telegram/ui/ActionBar/x0;)V
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    new-instance v1, Lorg/telegram/ui/ActionBar/k0;
    invoke-direct {v1, v12}, Lorg/telegram/ui/ActionBar/k0;-><init>(Lorg/telegram/ui/ActionBar/x0;)V
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    const v1, 0xe000003
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    sget v1, Lorg/telegram/ui/ActionBar/n6;->uf:I
    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    sget v1, Lorg/telegram/ui/ActionBar/n6;->vf:I
    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/n6;->w0(ILorg/telegram/ui/ActionBar/j6;)I
    move-result v1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->n:Ljava/lang/CharSequence;
    if-eqz v0, :label_0113
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->n:Ljava/lang/CharSequence;
    invoke-virtual {v12, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :label_0113
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->r:Ljava/lang/CharSequence;
    if-eqz v0, :label_011c
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :label_011c
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->f:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->f:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z
    if-nez v0, :label_016b
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    const/4 v10, 0x0
    const/4 v11, 0x0
    const/4 v5, -0x2
    const/high16 v6, 0x42100000
    const/16 v7, 0x13
    const/4 v8, 0x0
    const/high16 v9, 0x40b00000
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    const/high16 v10, 0x42400000
    const/4 v5, -0x1
    const/16 v7, 0x10
    const/high16 v8, 0x40c00000
    const/4 v9, 0x0
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->f:Landroid/widget/LinearLayout;
    const/4 v5, -0x2
    const/high16 v6, 0x42000000
    const/4 v8, 0x0
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :label_019e
    :label_016b
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->f:Landroid/widget/LinearLayout;
    const/high16 v10, 0x42400000
    const/4 v11, 0x0
    const/4 v5, -0x2
    const/high16 v6, 0x42000000
    const/16 v7, 0x10
    const/4 v8, 0x0
    const/4 v9, 0x0
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->e:Lorg/telegram/ui/ActionBar/s0;
    const/4 v5, -0x1
    const/high16 v6, 0x42100000
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->h:Landroid/widget/TextView;
    const/4 v5, -0x2
    const/16 v7, 0x15
    const/high16 v9, 0x40b00000
    invoke-static/range {v5 .. v11}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v5
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :label_019e
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->f:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V
    new-instance v0, Lorg/telegram/ui/ActionBar/l0;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v3, 0x0
    invoke-direct {v0, v12, v1, v3}, Lorg/telegram/ui/ActionBar/l0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V
    iput-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    new-instance v1, Lorg/telegram/ui/ActionBar/m0;
    invoke-direct {v1, v3, v12}, Lorg/telegram/ui/ActionBar/m0;-><init>(ILandroid/widget/FrameLayout;)V
    iput-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->V:Lorg/telegram/ui/ActionBar/m0;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    iget-object v1, v4, Lorg/telegram/ui/ActionBar/z;->b:Lorg/telegram/ui/ActionBar/l;
    iget v1, v1, Lorg/telegram/ui/ActionBar/l;->p0:I
    const/4 v3, -0x1
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/n6;->g0(III)Lorg/telegram/ui/Cells/b0;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    const/high16 v2, 0x42340000
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    new-instance v1, Lorg/telegram/ui/ActionBar/b0;
    const/4 v2, 0x0
    invoke-direct {v1, v12, v2}, Lorg/telegram/ui/ActionBar/b0;-><init>(Lorg/telegram/ui/ActionBar/x0;I)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/x0;->E:Lorg/telegram/ui/ActionBar/r0;
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/x0;->s:Lorg/telegram/ui/ActionBar/l0;
    const/16 v2, 0x30
    const/16 v4, 0x15
    invoke-static {v2, v3, v4}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :label_020a
    return-void
.end method
