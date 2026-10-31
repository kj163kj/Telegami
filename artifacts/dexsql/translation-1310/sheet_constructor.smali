# file_id=2 method_idx=37477 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Components/r51;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/tgnet/tl/TL_iv$RichMessage;)V"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/tgnet/tl/TL_iv$RichMessage;)V
    .registers 16

    const/4 v0, 0x1
    const/4 v1, 0x0
    const/4 v2, 0x0
    invoke-direct {v7, v0, v8, v1, v2}, Lorg/telegram/ui/ActionBar/k3;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/j6;Z)V
    iput-boolean v0, v7, Lorg/telegram/ui/Components/r51;->N:Z
    iput v2, v7, Lorg/telegram/ui/ActionBar/k3;->backgroundPaddingLeft:I
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/k3;->fixNavigationBar()V
    iput-object v11, v7, Lorg/telegram/ui/Components/r51;->c:Ljava/lang/CharSequence;
    iput-object v12, v7, Lorg/telegram/ui/Components/r51;->d:Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput v13, v7, Lorg/telegram/ui/Components/r51;->e:I
    iput-boolean v14, v7, Lorg/telegram/ui/Components/r51;->f:Z
    iput-object v15, v7, Lorg/telegram/ui/Components/r51;->h:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->s:Ljava/lang/String;
    iput-object v10, v7, Lorg/telegram/ui/Components/r51;->v:Ljava/lang/String;
    new-instance v9, Lmf/i1;
    invoke-direct {v9, v7, v8}, Lmf/i1;-><init>(Lorg/telegram/ui/Components/r51;Landroid/content/Context;)V
    iput-object v9, v7, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    new-instance v10, Lorg/telegram/ui/Components/g6;
    const-wide/16 v12, 0x140
    sget-object v14, Lorg/telegram/ui/Components/ms;->h:Lorg/telegram/ui/Components/ms;
    invoke-direct {v10, v9, v12, v13, v14}, Lorg/telegram/ui/Components/g6;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    iput-object v10, v7, Lorg/telegram/ui/Components/r51;->O:Lorg/telegram/ui/Components/g6;
    new-instance v9, Lch/o;
    const/4 v10, 0x6
    invoke-direct {v9, v8, v10}, Lch/o;-><init>(Landroid/content/Context;I)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->y:Lch/o;
    const/high16 v10, 0x41b00000
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v12
    const/high16 v13, 0x41400000
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    const/high16 v3, 0x40c00000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-virtual {v9, v12, v14, v15, v4}, Landroid/view/View;->setPadding(IIII)V
    sget v12, Lorg/telegram/messenger/SharedConfig;->fontSize:I
    int-to-float v12, v12
    invoke-virtual {v9, v0, v12}, Landroid/widget/TextView;->setTextSize(IF)V
    sget v12, Lorg/telegram/ui/ActionBar/n6;->j5:I
    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v14
    invoke-virtual {v9, v14}, Lch/o;->setTextColor(I)V
    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v14
    const v15, 0x3e4ccccd
    invoke-static {v15, v14}, Lorg/telegram/ui/ActionBar/n6;->m1(FI)I
    move-result v14
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V
    if-nez v11, :label_0070
    const-string v11, ""
    goto :label_0074
    :label_0070
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v11
    :label_0074
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v14
    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v14
    invoke-static {v11, v14, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    move-result-object v11
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v9, Lorg/telegram/ui/Components/c51;
    invoke-direct {v9, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->D:Lorg/telegram/ui/Components/c51;
    new-instance v9, Lorg/telegram/ui/Components/qa0;
    invoke-direct {v9, v8, v1}, Lorg/telegram/ui/Components/qa0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->E:Lorg/telegram/ui/Components/qa0;
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/qa0;->setDisablePaddingsOffsetY(Z)V
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v14
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-virtual {v9, v11, v14, v15, v4}, Landroid/view/View;->setPadding(IIII)V
    sget v11, Lorg/telegram/messenger/SharedConfig;->fontSize:I
    int-to-float v11, v11
    invoke-virtual {v9, v0, v11}, Landroid/widget/TextView;->setTextSize(IF)V
    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v11
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V
    sget v11, Lorg/telegram/ui/ActionBar/n6;->gc:I
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v11
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLinkTextColor(I)V
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    sget v11, Lorg/telegram/ui/ActionBar/n6;->uf:I
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v11
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setHighlightColor(I)V
    sget v11, Lorg/telegram/ui/ActionBar/n6;->vf:I
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v11
    :label_00cf
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v14, 0x1d
    if-lt v12, v14, :label_00f1
    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z
    move-result v12
    if-nez v12, :label_00f1
    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;
    move-result-object v12
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v12, v11, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V
    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;
    move-result-object v12
    invoke-virtual {v12, v11, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :label_00f1
    iget-object v9, v7, Lorg/telegram/ui/Components/r51;->D:Lorg/telegram/ui/Components/c51;
    iget-object v11, v7, Lorg/telegram/ui/Components/r51;->E:Lorg/telegram/ui/Components/qa0;
    const/high16 v12, -0x40800000
    const/4 v14, -0x1
    invoke-static {v12, v14}, Lt7/x5;->c(FI)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v15
    invoke-virtual {v9, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v9, v7, Lorg/telegram/ui/Components/r51;->h:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    if-eqz v9, :label_0143
    new-instance v9, Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    iget v11, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-direct {v9, v8, v11, v1}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->n:Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    invoke-virtual {v9, v11, v15, v4, v5}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;->setPadding(IIII)V
    iget-object v11, v7, Lorg/telegram/ui/Components/r51;->h:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    invoke-virtual {v9, v11}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;->set(Lorg/telegram/tgnet/tl/TL_iv$RichMessage;)V
    invoke-virtual {v9, v0}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;->setTranslationLoading(Z)V
    new-instance v9, Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    iget v11, v7, Lorg/telegram/ui/ActionBar/k3;->currentAccount:I
    invoke-direct {v9, v8, v11, v1}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/j6;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->r:Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v13
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v15
    invoke-virtual {v9, v11, v13, v10, v15}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;->setPadding(IIII)V
    :label_0143
    new-instance v9, Lorg/telegram/ui/Components/d51;
    invoke-direct {v9, v7, v8}, Lorg/telegram/ui/Components/d51;-><init>(Lorg/telegram/ui/Components/r51;Landroid/content/Context;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->G:Lorg/telegram/ui/Components/d51;
    invoke-virtual {v9, v0}, Landroid/view/View;->setOverScrollMode(I)V
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I
    const/high16 v11, 0x42600000
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v11
    add-int/2addr v11, v10
    const/high16 v10, 0x42a00000
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v10
    invoke-virtual {v9, v2, v11, v2, v10}, Landroid/view/View;->setPadding(IIII)V
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V
    new-instance v10, Ln4/h0;
    invoke-direct {v10}, Ln4/h0;-><init>()V
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Ln4/t0;)V
    new-instance v11, Lorg/telegram/ui/Components/q51;
    iget-object v13, v7, Lorg/telegram/ui/Components/r51;->h:Lorg/telegram/tgnet/tl/TL_iv$RichMessage;
    if-eqz v13, :label_0173
    iget-object v13, v7, Lorg/telegram/ui/Components/r51;->n:Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    goto :label_0175
    :label_0173
    iget-object v13, v7, Lorg/telegram/ui/Components/r51;->y:Lch/o;
    :label_0175
    invoke-direct {v11}, Ln4/m0;-><init>()V
    iput v0, v11, Lorg/telegram/ui/Components/q51;->e:I
    iput-object v8, v11, Lorg/telegram/ui/Components/q51;->c:Landroid/content/Context;
    iput-object v13, v11, Lorg/telegram/ui/Components/q51;->d:Landroid/view/View;
    iput-object v11, v7, Lorg/telegram/ui/Components/r51;->H:Lorg/telegram/ui/Components/q51;
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/bn0;->setAdapter(Ln4/m0;)V
    new-instance v11, Lorg/telegram/ui/Components/e51;
    invoke-direct {v11, v7}, Lorg/telegram/ui/Components/e51;-><init>(Lorg/telegram/ui/Components/r51;)V
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/bn0;->setOnScrollListener(Ln4/x0;)V
    new-instance v11, Lorg/telegram/ui/Components/f51;
    invoke-direct {v11, v7}, Lorg/telegram/ui/Components/f51;-><init>(Lorg/telegram/ui/Components/r51;)V
    const-wide/16 v3, 0xb4
    invoke-virtual {v11, v3, v4}, Ln4/r0;->n(J)V
    new-instance v13, Landroid/view/animation/LinearInterpolator;
    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual {v11, v13}, Ln4/r0;->o(Landroid/animation/TimeInterpolator;)V
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/bn0;->setItemAnimator(Ln4/r0;)V
    iget-object v11, v7, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    const/16 v13, 0x50
    const/4 v15, -0x2
    invoke-static {v14, v15, v13}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v13
    invoke-virtual {v11, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v11, Lorg/telegram/ui/Cells/o9;
    invoke-direct {v11}, Lorg/telegram/ui/Cells/o9;-><init>()V
    iput-object v11, v7, Lorg/telegram/ui/Components/r51;->I:Lorg/telegram/ui/Cells/o9;
    invoke-virtual {v11, v9}, Lorg/telegram/ui/Cells/ba;->S(Landroid/view/ViewGroup;)V
    iput-object v10, v11, Lorg/telegram/ui/Cells/o9;->z0:Ln4/h0;
    invoke-virtual {v11, v8}, Lorg/telegram/ui/Cells/ba;->n(Landroid/content/Context;)Lorg/telegram/ui/Cells/aa;
    move-result-object v9
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->J:Lorg/telegram/ui/Cells/aa;
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    const/16 v13, 0x77
    invoke-static {v14, v14, v13}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v13
    invoke-virtual {v10, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v9, v7, Lorg/telegram/ui/Components/r51;->r:Lorg/telegram/messenger/RichMessageLayout$PreviewView;
    if-eqz v9, :label_01d3
    invoke-virtual {v9, v11}, Lorg/telegram/messenger/RichMessageLayout$PreviewView;->setTextSelectionHelper(Lorg/telegram/ui/Cells/o9;)V
    :label_01d3
    new-instance v9, Lorg/telegram/ui/Components/p51;
    invoke-direct {v9, v7, v8}, Lorg/telegram/ui/Components/p51;-><init>(Lorg/telegram/ui/Components/r51;Landroid/content/Context;)V
    iput-object v9, v7, Lorg/telegram/ui/Components/r51;->x:Lorg/telegram/ui/Components/p51;
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    const/16 v11, 0x4e
    const/16 v13, 0x37
    invoke-static {v14, v11, v13}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v11
    invoke-virtual {v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v9, Landroid/widget/FrameLayout;
    invoke-direct {v9, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    sget v10, Lorg/telegram/ui/ActionBar/n6;->h5:I
    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v10
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V
    new-instance v10, Landroid/view/View;
    invoke-direct {v10, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    iput-object v10, v7, Lorg/telegram/ui/Components/r51;->K:Landroid/view/View;
    sget v11, Lorg/telegram/ui/ActionBar/n6;->V5:I
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/k3;->getThemedColor(I)I
    move-result v11
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V
    const/4 v11, 0x0
    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I
    move-result v11
    int-to-float v11, v11
    const/high16 v3, 0x3f800000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F
    move-result v3
    div-float/2addr v11, v3
    invoke-static {v12, v11, v13}, Lt7/x5;->a(FFI)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v11
    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v10, Landroid/widget/TextView;
    invoke-direct {v10, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLines(I)V
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setSingleLine(Z)V
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    const/16 v8, 0x11
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V
    sget v8, Lorg/telegram/ui/ActionBar/n6;->Sh:I
    invoke-static {v1, v8, v2}, Lorg/telegram/ui/ActionBar/n6;->x0([ZIZ)I
    move-result v8
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;
    move-result-object v8
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    const/high16 v8, 0x41600000
    invoke-virtual {v10, v0, v8}, Landroid/widget/TextView;->setTextSize(IF)V
    sget v8, Lorg/telegram/messenger/R$string;->CloseTranslation:I
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    sget v8, Lorg/telegram/ui/ActionBar/n6;->Oh:I
    invoke-static {v1, v8, v2}, Lorg/telegram/ui/ActionBar/n6;->x0([ZIZ)I
    move-result v8
    new-array v11, v0, [F
    const/high16 v12, 0x41c00000
    aput v12, v11, v2
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/d6;->e([FI)Lorg/telegram/ui/Cells/b0;
    move-result-object v8
    invoke-virtual {v10, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    new-instance v8, Lorg/telegram/ui/Components/n90;
    const/16 v11, 0x16
    invoke-direct {v8, v7, v11}, Lorg/telegram/ui/Components/n90;-><init>(Ljava/lang/Object;I)V
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/high16 v5, 0x41800000
    const/high16 v6, 0x41800000
    const/4 v0, -0x1
    const/high16 v1, 0x42400000
    const/16 v2, 0x57
    const/high16 v3, 0x41800000
    const/high16 v4, 0x41800000
    invoke-static/range {v0 .. v6}, Lt7/x5;->d(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v8
    invoke-virtual {v9, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v8, v7, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    const/16 v10, 0x57
    invoke-static {v14, v15, v10}, Lt7/x5;->e(III)Landroid/widget/FrameLayout$LayoutParams;
    move-result-object v10
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {v7}, Lorg/telegram/ui/Components/r51;->N()V
    return-void
    .catch Ljava/lang/Exception; {:label_00cf .. :label_00f1} :label_00f1
.end method

