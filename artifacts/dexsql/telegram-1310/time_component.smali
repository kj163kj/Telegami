# file_id=2 method_idx=26831 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;-><init>(Lorg/telegram/ui/Cells/u1;)V"
.method public constructor <init>(Lorg/telegram/ui/Cells/u1;)V
    .registers 3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    iput-object v2, v1, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    const/4 v2, 0x4
    new-array v2, v2, [I
    iput-object v2, v1, Lorg/telegram/ui/Cells/t1;->t0:[I
    const/high16 v2, 0x3f800000
    iput v2, v1, Lorg/telegram/ui/Cells/t1;->u0:F
    iput v2, v1, Lorg/telegram/ui/Cells/t1;->z0:F
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    iput-object v0, v1, Lorg/telegram/ui/Cells/t1;->D0:Landroid/graphics/Rect;
    iput v2, v1, Lorg/telegram/ui/Cells/t1;->K1:F
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, v1, Lorg/telegram/ui/Cells/t1;->L1:Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, v1, Lorg/telegram/ui/Cells/t1;->M1:Ljava/util/ArrayList;
    const/4 v0, 0x0
    iput v0, v1, Lorg/telegram/ui/Cells/t1;->Q1:F
    iput v2, v1, Lorg/telegram/ui/Cells/t1;->R1:F
    const/4 v2, -0x1
    iput v2, v1, Lorg/telegram/ui/Cells/t1;->a2:I
    const/4 v2, 0x2
    new-array v0, v2, [Landroid/text/StaticLayout;
    iput-object v0, v1, Lorg/telegram/ui/Cells/t1;->x2:[Landroid/text/StaticLayout;
    new-array v2, v2, [Landroid/text/StaticLayout;
    iput-object v2, v1, Lorg/telegram/ui/Cells/t1;->y2:[Landroid/text/StaticLayout;
    return-void
.end method

# file_id=2 method_idx=26832 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->a(Lorg/telegram/ui/Cells/t1;)F"
.method public static synthetic a(Lorg/telegram/ui/Cells/t1;)F
    .registers 1

    iget v0, v0, Lorg/telegram/ui/Cells/t1;->V1:F
    return v0
.end method

# file_id=2 method_idx=26833 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->b(Lorg/telegram/ui/Cells/t1;)V"
.method public static b(Lorg/telegram/ui/Cells/t1;)V
    .registers 6

    iget v0, v5, Lorg/telegram/ui/Cells/t1;->K1:F
    const/high16 v1, 0x3f800000
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
    move-result v0
    const/4 v2, 0x0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F
    move-result v0
    sub-float/2addr v1, v0
    float-to-double v1, v1
    const-wide/high16 v3, 0x3fe0000000000000L
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    move-result-wide v1
    double-to-float v1, v1
    iput v1, v5, Lorg/telegram/ui/Cells/t1;->Q1:F
    float-to-double v0, v0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D
    move-result-wide v0
    double-to-float v0, v0
    iput v0, v5, Lorg/telegram/ui/Cells/t1;->R1:F
    return-void
.end method

# file_id=2 method_idx=26834 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->c(Lorg/telegram/ui/Cells/t1;)Landroid/text/StaticLayout;"
.method public static synthetic c(Lorg/telegram/ui/Cells/t1;)Landroid/text/StaticLayout;
    .registers 1

    iget-object v0, v0, Lorg/telegram/ui/Cells/t1;->R0:Landroid/text/StaticLayout;
    return-object v0
.end method

# file_id=2 method_idx=26835 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->d(Lorg/telegram/ui/Cells/t1;)Lorg/telegram/ui/Components/x5;"
.method public static synthetic d(Lorg/telegram/ui/Cells/t1;)Lorg/telegram/ui/Components/x5;
    .registers 1

    iget-object v0, v0, Lorg/telegram/ui/Cells/t1;->S0:Lorg/telegram/ui/Components/x5;
    return-object v0
.end method

# file_id=2 method_idx=26836 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->e(Lorg/telegram/ui/Cells/t1;)Lorg/telegram/ui/Components/x5;"
.method public static synthetic e(Lorg/telegram/ui/Cells/t1;)Lorg/telegram/ui/Components/x5;
    .registers 1

    iget-object v0, v0, Lorg/telegram/ui/Cells/t1;->l3:Lorg/telegram/ui/Components/x5;
    return-object v0
.end method

# file_id=2 method_idx=26837 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->f()Z"
.method public final f()Z
    .registers 26

    move-object/from16 v0, v25
    iget-object v2, v0, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    iget-object v7, v2, Lorg/telegram/ui/Cells/u1;->M:Lvf/q0;
    iget-object v8, v2, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->v0:Z
    const/4 v9, 0x0
    if-nez v1, :label_000e
    return v9
    :label_000e
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->v1:Z
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->F0:Z
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->E0:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->F8:Z
    const/4 v10, 0x1
    if-eq v1, v3, :label_001d
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->F0:Z
    move v4, v10
    goto :label_001e
    :label_001d
    move v4, v9
    :label_001e
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->G0:Z
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    iget-object v11, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    const/4 v12, 0x0
    if-eq v6, v11, :label_0112
    iget v5, v5, Lorg/telegram/messenger/MessageObject;->textWidth:I
    iget v13, v0, Lorg/telegram/ui/Cells/t1;->J0:I
    if-eq v5, v13, :label_0033
    if-eq v1, v3, :label_0033
    move v1, v9
    goto :label_0034
    :label_0033
    move v1, v10
    :label_0034
    if-eqz v6, :label_00e3
    if-eqz v11, :label_00e3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v3
    iget-object v5, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ne v3, v5, :label_00e3
    move v3, v9
    :label_0045
    iget-object v5, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v3, v5, :label_00e4
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    if-nez v5, :label_005d
    move-object v5, v12
    goto :label_0071
    :label_005d
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v5
    :label_0071
    iget-object v6, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    if-nez v6, :label_007f
    move-object v6, v12
    goto :label_0091
    :label_007f
    iget-object v6, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v6
    :label_0091
    if-nez v5, :label_0095
    if-nez v6, :label_00e3
    :label_0095
    if-eqz v5, :label_0099
    if-eqz v6, :label_00e3
    :label_0099
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :label_00a0
    goto :label_00e3
    :label_00a0
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    if-eqz v5, :label_00df
    iget-object v6, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    iget-object v11, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    iget-object v5, v5, Lorg/telegram/ui/Components/x5;->b:Ljava/util/HashMap;
    if-eqz v11, :label_00df
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lorg/telegram/ui/Components/z5;
    if-eqz v11, :label_00df
    iget-object v13, v11, Lorg/telegram/ui/Components/z5;->b:Ljava/util/ArrayList;
    iput-object v6, v11, Lorg/telegram/ui/Components/z5;->a:Landroid/text/Layout;
    move v14, v9
    :label_00cb
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    move-result v15
    if-ge v14, v15, :label_00dc
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lorg/telegram/ui/Components/w5;
    iput-object v6, v15, Lorg/telegram/ui/Components/w5;->c:Landroid/text/Layout;
    add-int/lit8 v14, v14, 0x1
    goto :label_00cb
    :label_00dc
    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :label_00df
    add-int/lit8 v3, v3, 0x1
    goto/16 :label_0045
    :label_00e3
    move v1, v9
    :label_00e4
    if-nez v1, :label_0106
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->G0:Z
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->H0:Ljava/util/ArrayList;
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->o2:F
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->N0:F
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->O0:Lorg/telegram/ui/Components/x5;
    invoke-static {v9, v2, v3, v1, v10}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;Lorg/telegram/ui/Components/x5;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->O0:Lorg/telegram/ui/Components/x5;
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-static {v9, v2, v1, v3}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;Lorg/telegram/ui/Components/x5;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    move v4, v10
    goto :label_0112
    :label_0106
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    invoke-static {v9, v2, v1, v3}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;Lorg/telegram/ui/Components/x5;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    :label_0112
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v1, :label_0123
    iget-boolean v3, v1, Lorg/telegram/messenger/RichMessageLayout;->detailsAnimating:Z
    if-nez v3, :label_0120
    iget-boolean v3, v1, Lorg/telegram/messenger/RichMessageLayout;->blockquoteAnimating:Z
    if-eqz v3, :label_0123
    :label_0120
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->v1:Z
    move v4, v10
    :label_0123
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->K0:Z
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->M0:Lorg/telegram/messenger/RichMessageLayout;
    if-eq v1, v3, :label_0158
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->he:Lorg/telegram/ui/xj0;
    if-eqz v1, :label_0133
    iget-boolean v1, v1, Lorg/telegram/ui/xj0;->h:Z
    if-eqz v1, :label_0133
    move v1, v10
    goto :label_0134
    :label_0133
    move v1, v9
    :label_0134
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->L0:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v3, :label_013d
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/RichMessageLayout;->detach(Landroid/view/View;)V
    iput-object v12, v0, Lorg/telegram/ui/Cells/t1;->L0:Lorg/telegram/messenger/RichMessageLayout;
    :label_013d
    if-eqz v1, :label_014d
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v1, :label_0158
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->M0:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v3, :label_0158
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/RichMessageLayout;->layout(Lorg/telegram/messenger/RichMessageLayout;)V
    goto :label_0158
    :label_014d
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->K0:Z
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->M0:Lorg/telegram/messenger/RichMessageLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->L0:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v1, :label_0158
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/RichMessageLayout;->attach(Landroid/view/View;)V
    :label_0158
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->O2:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->Ya:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->M2:Z
    if-eq v1, v3, :label_0163
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->O2:Z
    move v4, v10
    :label_0163
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->P2:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->Za:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->N2:Z
    if-eq v1, v3, :label_016e
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->P2:Z
    move v4, v10
    :label_016e
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->E2:Landroid/text/StaticLayout;
    if-eq v1, v3, :label_01a9
    if-eqz v1, :label_017b
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    goto :label_017c
    :label_017b
    move-object v1, v12
    :label_017c
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->E2:Landroid/text/StaticLayout;
    if-eqz v3, :label_0185
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v3
    goto :label_0186
    :label_0185
    move-object v3, v12
    :label_0186
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :label_01a9
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->P0:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->Q0:F
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->E2:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->R0:Landroid/text/StaticLayout;
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->I2:I
    int-to-float v3, v3
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->J2:F
    iget-object v4, v0, Lorg/telegram/ui/Cells/t1;->S0:Lorg/telegram/ui/Components/x5;
    new-array v6, v10, [Landroid/text/Layout;
    aput-object v1, v6, v9
    const/4 v3, 0x0
    const/4 v5, 0x1
    const/4 v1, 0x0
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/x5;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->S0:Lorg/telegram/ui/Components/x5;
    move v4, v10
    :label_01a9
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->Zc:Z
    if-eqz v1, :label_024a
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->Z0:Z
    if-nez v3, :label_024a
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    if-eqz v3, :label_024a
    sget v1, Lorg/telegram/messenger/R$string;->EditedMessage:I
    const-string v3, "EditedMessage"
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v14
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v3
    if-ltz v3, :label_0247
    if-nez v3, :label_0232
    new-instance v13, Landroid/text/StaticLayout;
    sget-object v15, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->pb:I
    const/high16 v4, 0x42c80000
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v5
    add-int v16, v5, v3
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/16 v19, 0x0
    const/16 v20, 0x0
    const/high16 v18, 0x3f800000
    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    iput-object v13, v0, Lorg/telegram/ui/Cells/t1;->U0:Landroid/text/StaticLayout;
    new-instance v3, Landroid/text/SpannableStringBuilder;
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V
    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-virtual {v14}, Ljava/lang/String;->length()I
    move-result v5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-interface {v1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    new-instance v1, Lorg/telegram/ui/Components/g00;
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/g00;-><init>(Z)V
    invoke-virtual {v14}, Ljava/lang/String;->length()I
    move-result v5
    invoke-virtual {v3, v1, v9, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    move-object/from16 v21, v17
    new-instance v17, Landroid/text/StaticLayout;
    sget-object v19, Lorg/telegram/ui/ActionBar/n6;->T2:Landroid/text/TextPaint;
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->pb:I
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v4
    add-int v20, v4, v1
    const/16 v23, 0x0
    const/16 v24, 0x0
    const/high16 v22, 0x3f800000
    move-object/from16 v18, v3
    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    move-object/from16 v1, v17
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->V0:Landroid/text/StaticLayout;
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->ob:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->X0:I
    sub-int/2addr v1, v3
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->Y0:I
    goto :label_023a
    :label_0232
    iput v9, v0, Lorg/telegram/ui/Cells/t1;->Y0:I
    iput-object v12, v0, Lorg/telegram/ui/Cells/t1;->U0:Landroid/text/StaticLayout;
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->i2:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->V0:Landroid/text/StaticLayout;
    :label_023a
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->T0:Z
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->X0:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->W0:I
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f1:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->g1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->h1:Z
    move v4, v10
    :label_0247
    iput-object v12, v2, Lorg/telegram/ui/Cells/u1;->B3:Landroid/text/SpannableStringBuilder;
    goto :label_026a
    :label_024a
    if-nez v1, :label_026a
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->Z0:Z
    if-eqz v1, :label_026a
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    if-eqz v1, :label_026a
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->i2:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->V0:Landroid/text/StaticLayout;
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->ob:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->X0:I
    sub-int/2addr v1, v3
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->Y0:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->T0:Z
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->W0:I
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f1:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->g1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->h1:Z
    move v4, v10
    :label_026a
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->l1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->p8:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->k1:Z
    if-eq v1, v3, :label_0275
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->l1:Z
    move v4, v10
    :label_0275
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->s1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->u1:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->u:Z
    if-eq v1, v3, :label_0296
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->s1:Z
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->c:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->o1:F
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->d:F
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->p1:F
    iget v4, v0, Lorg/telegram/ui/Cells/t1;->a:F
    const/high16 v5, 0x40000000
    div-float/2addr v1, v5
    add-float/2addr v1, v4
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->q1:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->b:F
    div-float/2addr v3, v5
    add-float/2addr v3, v1
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->r1:F
    move v4, v10
    :label_0296
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->u1:Z
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->e0:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->v:I
    if-eq v1, v3, :label_02a5
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->v1:Z
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->t1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->u1:Z
    move v4, v10
    :label_02a5
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->y1:Z
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->U:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->w:I
    if-eq v1, v3, :label_02b2
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->x1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->y1:Z
    move v4, v10
    :label_02b2
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->w1:Z
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    if-eqz v1, :label_02ba
    move v1, v10
    goto :label_02bb
    :label_02ba
    move v1, v9
    :label_02bb
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->y:Z
    if-eq v1, v3, :label_02c2
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->w1:Z
    move v4, v10
    :label_02c2
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->B1:Z
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->c0:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->x:I
    if-eq v1, v3, :label_02cf
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->A1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->B1:Z
    move v4, v10
    :label_02cf
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->z1:Z
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    if-eqz v1, :label_02d7
    move v1, v10
    goto :label_02d8
    :label_02d7
    move v1, v9
    :label_02d8
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->z:Z
    if-eq v1, v3, :label_02df
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->z1:Z
    move v4, v10
    :label_02df
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->L2:Z
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x1b
    if-ne v1, v3, :label_02f5
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->v:Lorg/telegram/ui/Cells/q0;
    if-eqz v1, :label_02f5
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/q0;->d()Z
    move-result v1
    if-eqz v1, :label_02f5
    move v1, v10
    goto :label_02f6
    :label_02f5
    move v1, v9
    :label_02f6
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->K2:Z
    if-eq v1, v3, :label_02fd
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->L2:Z
    move v4, v10
    :label_02fd
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->D1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->s1:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->C1:Z
    if-eq v1, v3, :label_0308
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->D1:Z
    move v4, v10
    :label_0308
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->F1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->t1:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->E1:Z
    if-eq v1, v3, :label_0313
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->F1:Z
    move v4, v10
    :label_0313
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->I1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->g2:Z
    if-eqz v1, :label_0324
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->l2:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->G1:I
    if-eq v1, v3, :label_0324
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->I1:Z
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->H1:I
    move v4, v10
    :label_0324
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->n1:Z
    iget-boolean v1, v2, Lorg/telegram/ui/Cells/u1;->K5:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->m1:Z
    if-eq v1, v3, :label_032f
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->n1:Z
    move v4, v10
    :label_032f
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_0336
    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->summarized:Z
    goto :label_0337
    :label_0336
    move v1, v9
    :label_0337
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v5, v0, Lorg/telegram/ui/Cells/t1;->c1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eq v3, v5, :label_03d8
    if-nez v5, :label_0341
    move-object v3, v12
    goto :label_0347
    :label_0341
    iget-object v3, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v3
    :label_0347
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v5, :label_034d
    move-object v5, v12
    goto :label_0353
    :label_034d
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v5
    :label_0353
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/t1;->E0:Z
    iget-boolean v11, v2, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-ne v6, v11, :label_035d
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/t1;->d1:Z
    if-eq v6, v1, :label_036f
    :label_035d
    iget-object v6, v2, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v6, :label_0363
    move v6, v9
    goto :label_0365
    :label_0363
    iget v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    :label_0365
    iget-object v11, v0, Lorg/telegram/ui/Cells/t1;->c1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v11, :label_036b
    move v11, v9
    goto :label_036d
    :label_036b
    iget v11, v11, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I
    :label_036d
    if-ne v6, v11, :label_03a1
    :label_036f
    if-nez v5, :label_0373
    move v6, v10
    goto :label_0374
    :label_0373
    move v6, v9
    :label_0374
    if-nez v3, :label_0378
    move v11, v10
    goto :label_0379
    :label_0378
    move v11, v9
    :label_0379
    if-ne v6, v11, :label_03a1
    if-eqz v3, :label_0384
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :label_0384
    goto :label_03a1
    :label_0384
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->n4()V
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->e:F
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->o4:F
    cmpl-float v3, v1, v3
    if-nez v3, :label_0397
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->f:F
    iget v5, v2, Lorg/telegram/ui/Cells/u1;->p4:F
    cmpl-float v3, v3, v5
    if-eqz v3, :label_03f8
    :label_0397
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->s0:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->q0:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->r0:F
    :label_039f
    move v4, v10
    goto :label_03f8
    :label_03a1
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->a1:Z
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->c1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput-object v3, v0, Lorg/telegram/ui/Cells/t1;->b1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v3, :label_03ab
    move-object v3, v12
    goto :label_03ad
    :label_03ab
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;
    :label_03ad
    invoke-static {v9, v2, v12, v3}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;Lorg/telegram/ui/Components/x5;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/x5;
    move-result-object v3
    iput-object v3, v0, Lorg/telegram/ui/Cells/t1;->O0:Lorg/telegram/ui/Components/x5;
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    iget-object v4, v2, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-nez v4, :label_03bb
    move-object v4, v12
    goto :label_03bd
    :label_03bb
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;
    :label_03bd
    invoke-static {v9, v2, v3, v4}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;Lorg/telegram/ui/Components/x5;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/x5;
    move-result-object v3
    iput-object v3, v2, Lorg/telegram/ui/Cells/u1;->oc:Lorg/telegram/ui/Components/x5;
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->E0:Z
    iget-boolean v4, v2, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-ne v3, v4, :label_03cd
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->d1:Z
    if-eq v3, v1, :label_039f
    :label_03cd
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->s0:Z
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->e:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->q0:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->r0:F
    goto :label_039f
    :label_03d8
    if-eqz v3, :label_03f8
    if-eqz v5, :label_03f8
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->n4()V
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->e:F
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->o4:F
    cmpl-float v3, v1, v3
    if-nez v3, :label_03ef
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->f:F
    iget v5, v2, Lorg/telegram/ui/Cells/u1;->p4:F
    cmpl-float v3, v3, v5
    if-eqz v3, :label_03f8
    :label_03ef
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->s0:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->q0:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->r0:F
    goto :label_039f
    :label_03f8
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->L1:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-eqz v3, :label_0406
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v3
    if-nez v3, :label_0470
    :label_0406
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-eq v3, v5, :label_0412
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->D2:Z
    :label_0412
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->D2:Z
    if-nez v3, :label_0467
    move v3, v9
    :label_0417
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v3, v5, :label_0467
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lorg/telegram/ui/Cells/g0;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lorg/telegram/ui/Cells/g0;
    iget-boolean v11, v5, Lorg/telegram/ui/Cells/g0;->b:Z
    if-nez v11, :label_0464
    iget-boolean v11, v6, Lorg/telegram/ui/Cells/g0;->b:Z
    if-eqz v11, :label_0432
    goto :label_0464
    :label_0432
    iget v11, v5, Lorg/telegram/ui/Cells/g0;->c:F
    iget v13, v6, Lorg/telegram/ui/Cells/g0;->c:F
    sub-float/2addr v11, v13
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    move-result v11
    const v13, 0x3c23d70a
    cmpl-float v11, v11, v13
    if-gtz v11, :label_0461
    iget v11, v5, Lorg/telegram/ui/Cells/g0;->e:F
    iget v14, v6, Lorg/telegram/ui/Cells/g0;->e:F
    sub-float/2addr v11, v14
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    move-result v11
    cmpl-float v11, v11, v13
    if-gtz v11, :label_0461
    iget-object v5, v5, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/d21;->k()Ljava/lang/CharSequence;
    move-result-object v5
    iget-object v6, v6, Lorg/telegram/ui/Cells/g0;->h:Lorg/telegram/ui/Components/d21;
    invoke-virtual {v6}, Lorg/telegram/ui/Components/d21;->k()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :label_0464
    :label_0461
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->D2:Z
    goto :label_0467
    :label_0464
    add-int/lit8 v3, v3, 0x1
    goto :label_0417
    :label_0467
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->D2:Z
    if-eqz v3, :label_0470
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->M1:Ljava/util/ArrayList;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :label_0470
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->P1:I
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->r7:I
    if-eq v1, v3, :label_047a
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->O1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->N1:Z
    :label_047a
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->J1:I
    const/4 v3, 0x5
    if-eq v1, v3, :label_0484
    const/4 v3, 0x3
    if-eq v1, v3, :label_0484
    if-ne v1, v10, :label_049f
    :label_0484
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->J4:I
    int-to-float v1, v1
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->S1:F
    cmpl-float v1, v1, v3
    if-nez v1, :label_0496
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->K4:I
    int-to-float v1, v1
    iget v5, v0, Lorg/telegram/ui/Cells/t1;->T1:F
    cmpl-float v1, v1, v5
    if-eqz v1, :label_049f
    :label_0496
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->U1:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->T1:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->V1:F
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->W1:Z
    move v4, v10
    :label_049f
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->m2:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->X1:I
    if-eq v1, v3, :label_04aa
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->Y1:I
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->Z1:Z
    move v4, v10
    :label_04aa
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->A:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->X7:Z
    if-eq v1, v3, :label_04b7
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->B:Z
    iput-object v12, v2, Lorg/telegram/ui/Cells/u1;->B3:Landroid/text/SpannableStringBuilder;
    move v1, v10
    move v4, v1
    goto :label_04b8
    :label_04b7
    move v1, v9
    :label_04b8
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->G:Landroid/text/StaticLayout;
    if-nez v3, :label_04c0
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->Ub:Landroid/text/StaticLayout;
    if-eqz v3, :label_04d2
    :label_04c0
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->E:I
    invoke-static {v2}, Lorg/telegram/ui/Cells/u1;->z(Lorg/telegram/ui/Cells/u1;)I
    move-result v5
    if-eq v3, v5, :label_04d2
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->G:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->H:Landroid/text/StaticLayout;
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->F:Z
    iput-object v12, v2, Lorg/telegram/ui/Cells/u1;->B3:Landroid/text/SpannableStringBuilder;
    move v1, v10
    move v4, v1
    :label_04d2
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->c2:Landroid/text/StaticLayout;
    if-eqz v3, :label_04ea
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->b2:I
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v5
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    if-eq v3, v5, :label_04ea
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->c2:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->d2:Landroid/text/StaticLayout;
    iput-object v12, v2, Lorg/telegram/ui/Cells/u1;->B3:Landroid/text/SpannableStringBuilder;
    move v1, v10
    move v4, v1
    :label_04ea
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    if-eqz v3, :label_052c
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->M:I
    invoke-static {v2}, Lorg/telegram/ui/Cells/u1;->z(Lorg/telegram/ui/Cells/u1;)I
    move-result v5
    if-eq v3, v5, :label_052c
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->T:Landroid/text/StaticLayout;
    if-eqz v3, :label_050f
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v3
    iget-object v4, v2, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;
    move-result-object v4
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :label_050f
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->T:Landroid/text/StaticLayout;
    iput-object v3, v0, Lorg/telegram/ui/Cells/t1;->V:Landroid/text/StaticLayout;
    goto :label_0511
    :label_050f
    iput-object v12, v0, Lorg/telegram/ui/Cells/t1;->V:Landroid/text/StaticLayout;
    :label_0511
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->N:I
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->X:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->R:F
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->W:F
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->O:I
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->Y:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->P:I
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->Z:I
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->Q:Z
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->a0:Z
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->S:Z
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->b0:Z
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->U:Z
    move v4, v10
    :label_052c
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->e0:Ljava/lang/String;
    iget-object v5, v2, Lorg/telegram/ui/Cells/u1;->e7:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :label_053d
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->c0:Z
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->Va:F
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->d0:F
    move v4, v10
    :label_053d
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->e1:Z
    iget-boolean v5, v2, Lorg/telegram/ui/Cells/u1;->ub:Z
    if-ne v3, v5, :label_0549
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->J1:Z
    iput-object v12, v0, Lorg/telegram/ui/Cells/t1;->d2:Landroid/text/StaticLayout;
    :label_0547
    move v4, v10
    goto :label_058b
    :label_0549
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->e2:Z
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v5
    if-eq v3, v5, :label_0562
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/t1;->T0:Z
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->f2:Z
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f1:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->g1:I
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->i2:Landroid/text/StaticLayout;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->V0:Landroid/text/StaticLayout;
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->X0:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->W0:I
    goto :label_0547
    :label_0562
    if-nez v1, :label_0575
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->qb:I
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->f1:I
    sub-int/2addr v1, v3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    move-result v1
    if-le v1, v10, :label_058b
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->E0:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->F8:Z
    if-ne v1, v3, :label_058b
    :label_0575
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->h1:Z
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->X0:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->W0:I
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->f1:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->g1:I
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->L:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->K:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->J:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->I:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->C:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->D:F
    :label_058b
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->g2:Z
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->e4()Z
    move-result v3
    if-eq v1, v3, :label_0595
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->h2:Z
    :label_0595
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->j:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->V3:Z
    if-eq v1, v3, :label_059d
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->i:Z
    :label_059d
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->j2:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->qd:Z
    if-eq v1, v3, :label_05a6
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->k2:Z
    move v4, v10
    :label_05a6
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->m2:F
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->q0:I
    int-to-float v3, v3
    cmpl-float v3, v1, v3
    if-eqz v3, :label_05b4
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->l2:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->n2:F
    move v4, v10
    :label_05b4
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->p2:I
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->o0:I
    if-eq v1, v3, :label_05bf
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->r2:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->q2:I
    move v4, v10
    :label_05bf
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->V2:I
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->d2:I
    if-eq v1, v3, :label_05ca
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->U2:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->W2:I
    move v4, v10
    :label_05ca
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->S2:I
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->e2:I
    if-eq v1, v3, :label_05d5
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->X2:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->T2:I
    move v4, v10
    :label_05d5
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->Y2:Z
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v3
    if-eqz v3, :label_05e7
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v3
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z
    if-eqz v3, :label_05e7
    move v3, v10
    goto :label_05e8
    :label_05e7
    move v3, v9
    :label_05e8
    if-eq v1, v3, :label_05ed
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->Z2:Z
    move v4, v10
    :label_05ed
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->Q2:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->M1:Z
    if-eq v1, v3, :label_05f6
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->R2:Z
    move v4, v10
    :label_05f6
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->a3:Z
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->ga:Z
    if-eq v1, v3, :label_05ff
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->b3:Z
    move v4, v10
    :label_05ff
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->c3:Ljava/util/HashSet;
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_0607
    iget-object v12, v3, Lorg/telegram/messenger/MessageObject;->expandedQuotes:Ljava/util/HashSet;
    :label_0607
    invoke-static {v1, v12}, Lorg/telegram/messenger/MessageObject;->expandedQuotesEquals(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    move-result v1
    if-nez v1, :label_0614
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->e3:Z
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->c3:Ljava/util/HashSet;
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->d3:Ljava/util/HashSet;
    move v4, v10
    :label_0614
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->f3:Z
    iget-object v3, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :label_0620
    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->expandedExplanation:Z
    if-eqz v5, :label_0620
    move v5, v10
    goto :label_0621
    :label_0620
    move v5, v9
    :label_0621
    if-eq v1, v5, :label_0628
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->h3:Z
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->g3:Z
    move v4, v10
    :label_0628
    if-eqz v3, :label_064e
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/t1;->w2:Z
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v3
    if-eq v1, v3, :label_064e
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->t2:Z
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->x2:[Landroid/text/StaticLayout;
    aget-object v3, v1, v9
    iget-object v4, v0, Lorg/telegram/ui/Cells/t1;->y2:[Landroid/text/StaticLayout;
    aput-object v3, v4, v9
    aget-object v1, v1, v10
    aput-object v1, v4, v10
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->A2:F
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->z2:F
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->v2:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->u2:I
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->C2:I
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->B2:I
    :label_064c
    move v4, v10
    goto :label_0659
    :label_064e
    iget v1, v0, Lorg/telegram/ui/Cells/t1;->H2:I
    iget v3, v2, Lorg/telegram/ui/Cells/u1;->Kc:I
    if-eq v1, v3, :label_0659
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->F2:Z
    iput v1, v0, Lorg/telegram/ui/Cells/t1;->G2:I
    goto :label_064c
    :label_0659
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/u1;->t4()V
    invoke-virtual {v7}, Lvf/q0;->a()Z
    move-result v1
    if-eqz v1, :label_0663
    move v4, v10
    :label_0663
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z
    move-result v1
    if-eqz v1, :label_0690
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->L8:I
    iget-boolean v3, v2, Lorg/telegram/ui/Cells/u1;->I:Z
    if-eqz v3, :label_0673
    const/4 v3, 0x2
    goto :label_0674
    :label_0673
    move v3, v9
    :label_0674
    rsub-int/lit8 v3, v3, 0x1c
    int-to-float v3, v3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v3
    sub-int/2addr v1, v3
    int-to-float v1, v1
    iget-boolean v3, v7, Lvf/q0;->s:Z
    if-nez v3, :label_0685
    iget v3, v7, Lvf/q0;->p:I
    int-to-float v3, v3
    sub-float/2addr v1, v3
    :label_0685
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->q:F
    cmpl-float v1, v1, v3
    if-eqz v1, :label_0690
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/t1;->p:Z
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->r:F
    move v4, v10
    :label_0690
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    if-eqz v1, :label_06a5
    iget v1, v2, Lorg/telegram/ui/Cells/u1;->F9:I
    int-to-float v1, v1
    iget v3, v0, Lorg/telegram/ui/Cells/t1;->s:F
    cmpl-float v1, v1, v3
    if-eqz v1, :label_06a5
    const/4 v1, 0x0
    cmpl-float v1, v3, v1
    if-eqz v1, :label_06a5
    iput v3, v0, Lorg/telegram/ui/Cells/t1;->t:F
    move v4, v10
    :label_06a5
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_06af
    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->translated:Z
    if-eqz v1, :label_06af
    move v1, v10
    goto :label_06b0
    :label_06af
    move v1, v9
    :label_06b0
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/t1;->i3:Z
    if-eq v1, v3, :label_06cb
    iget-object v1, v2, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    if-eqz v1, :label_06cb
    iget-object v1, v0, Lorg/telegram/ui/Cells/t1;->j3:Landroid/text/StaticLayout;
    if-eqz v1, :label_06cb
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->k3:Landroid/text/StaticLayout;
    iget-object v3, v0, Lorg/telegram/ui/Cells/t1;->l3:Lorg/telegram/ui/Components/x5;
    new-array v4, v10, [Landroid/text/Layout;
    aput-object v1, v4, v9
    invoke-static {v9, v2, v9, v3, v4}, Lorg/telegram/ui/Components/b6;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/x5;[Landroid/text/Layout;)Lorg/telegram/ui/Components/x5;
    move-result-object v1
    iput-object v1, v0, Lorg/telegram/ui/Cells/t1;->l3:Lorg/telegram/ui/Components/x5;
    return v10
    :label_06cb
    return v4
.end method

# file_id=2 method_idx=26838 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->g()I"
.method public final g()I
    .registers 10

    iget-object v0, v9, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v1
    const/16 v2, 0x8
    const/4 v3, 0x4
    const/4 v4, 0x1
    const/4 v5, 0x0
    if-eqz v1, :label_006f
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v1
    if-nez v1, :label_004b
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v1
    if-eqz v1, :label_0020
    goto :label_004b
    :label_0020
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v1
    if-eqz v1, :label_002d
    move v7, v4
    move v1, v5
    move v4, v1
    move v6, v4
    goto :label_004f
    :label_002d
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSent()Z
    move-result v1
    if-eqz v1, :label_0047
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v6, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z
    if-nez v6, :label_0043
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isUnread()Z
    move-result v1
    if-nez v1, :label_0043
    move v1, v4
    goto :label_0044
    :label_0043
    move v1, v5
    :label_0044
    move v6, v5
    :label_0045
    move v7, v6
    goto :label_004f
    :label_0047
    move v1, v5
    move v4, v1
    move v6, v4
    goto :label_0045
    :label_004b
    move v6, v4
    move v1, v5
    move v4, v1
    move v7, v4
    :label_004f
    iget-object v0, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v8, v0, Lorg/telegram/messenger/MessageObject;->notime:Z
    if-nez v8, :label_005b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z
    move-result v0
    if-eqz v0, :label_005e
    :label_005b
    move v1, v5
    move v4, v1
    move v6, v4
    :label_005e
    if-eqz v4, :label_0062
    const/4 v0, 0x2
    goto :label_0063
    :label_0062
    move v0, v5
    :label_0063
    or-int/2addr v0, v1
    if-eqz v6, :label_0067
    goto :label_0068
    :label_0067
    move v3, v5
    :label_0068
    or-int/2addr v0, v3
    if-eqz v7, :label_006c
    goto :label_006d
    :label_006c
    move v2, v5
    :label_006d
    or-int/2addr v0, v2
    return v0
    :label_006f
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z
    move-result v1
    if-nez v1, :label_0081
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isEditing()Z
    move-result v1
    if-eqz v1, :label_0080
    goto :label_0081
    :label_0080
    move v4, v5
    :label_0081
    iget-object v0, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSendError()Z
    move-result v0
    if-eqz v4, :label_008a
    goto :label_008b
    :label_008a
    move v3, v5
    :label_008b
    if-eqz v0, :label_008e
    goto :label_008f
    :label_008e
    move v2, v5
    :label_008f
    or-int v0, v3, v2
    return v0
.end method

# file_id=2 method_idx=26839 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->h()V"
.method public final h()V
    .registers 8

    const/4 v0, 0x1
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/t1;->v0:Z
    iget-object v1, v7, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->n7:Ljava/util/ArrayList;
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->R0:Lcf/n1;
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F
    move-result v4
    iput v4, v7, Lorg/telegram/ui/Cells/t1;->a:F
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F
    move-result v4
    iput v4, v7, Lorg/telegram/ui/Cells/t1;->b:F
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F
    move-result v4
    iput v4, v7, Lorg/telegram/ui/Cells/t1;->c:F
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F
    move-result v4
    iput v4, v7, Lorg/telegram/ui/Cells/t1;->d:F
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I
    move-result-object v3
    const/4 v4, 0x4
    const/4 v5, 0x0
    iget-object v6, v7, Lorg/telegram/ui/Cells/t1;->t0:[I
    invoke-static {v3, v5, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->s8:Lorg/telegram/ui/ActionBar/l5;
    if-eqz v3, :label_0039
    iget-object v4, v7, Lorg/telegram/ui/Cells/t1;->D0:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v3
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :label_0039
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/u1;->F8:Z
    iput-boolean v3, v7, Lorg/telegram/ui/Cells/t1;->E0:Z
    iget-object v3, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x0
    if-eqz v3, :label_0045
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;
    goto :label_0046
    :label_0045
    move-object v6, v4
    :label_0046
    iput-object v6, v7, Lorg/telegram/ui/Cells/t1;->I0:Ljava/util/ArrayList;
    if-eqz v3, :label_004d
    iget v6, v3, Lorg/telegram/messenger/MessageObject;->textWidth:I
    goto :label_004e
    :label_004d
    move v6, v5
    :label_004e
    iput v6, v7, Lorg/telegram/ui/Cells/t1;->J0:I
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/u1;->Zc:Z
    iput-boolean v6, v7, Lorg/telegram/ui/Cells/t1;->Z0:Z
    if-eqz v3, :label_0059
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->richLayout:Lorg/telegram/messenger/RichMessageLayout;
    goto :label_005a
    :label_0059
    move-object v6, v4
    :label_005a
    iput-object v6, v7, Lorg/telegram/ui/Cells/t1;->M0:Lorg/telegram/messenger/RichMessageLayout;
    iget v6, v1, Lorg/telegram/ui/Cells/u1;->o4:F
    iput v6, v7, Lorg/telegram/ui/Cells/t1;->e:F
    iget v6, v1, Lorg/telegram/ui/Cells/u1;->p4:F
    iput v6, v7, Lorg/telegram/ui/Cells/t1;->f:F
    iget-object v6, v1, Lorg/telegram/ui/Cells/u1;->b4:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iput-object v6, v7, Lorg/telegram/ui/Cells/t1;->c1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    if-eqz v3, :label_006d
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->summarized:Z
    goto :label_006e
    :label_006d
    move v3, v5
    :label_006e
    iput-boolean v3, v7, Lorg/telegram/ui/Cells/t1;->d1:Z
    iget-object v3, v7, Lorg/telegram/ui/Cells/t1;->L1:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v6
    if-nez v6, :label_007e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :label_007e
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->u1:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->u:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->e0:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->v:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->U:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->w:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->c0:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->x:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->R:Lorg/telegram/ui/Components/d21;
    if-eqz v2, :label_0094
    move v2, v0
    goto :label_0095
    :label_0094
    move v2, v5
    :label_0095
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->y:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->W:Lorg/telegram/ui/Components/d21;
    if-eqz v2, :label_009d
    move v2, v0
    goto :label_009e
    :label_009d
    move v2, v5
    :label_009e
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->z:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->l2:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->G1:I
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->s1:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->C1:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->t1:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->E1:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_00c2
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I
    const/16 v3, 0x1b
    if-ne v2, v3, :label_00c2
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->v:Lorg/telegram/ui/Cells/q0;
    if-eqz v2, :label_00c2
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/q0;->d()Z
    move-result v2
    if-eqz v2, :label_00c2
    move v2, v0
    goto :label_00c3
    :label_00c2
    move v2, v5
    :label_00c3
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->K2:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    if-eqz v2, :label_00ec
    invoke-static {v1}, Lorg/telegram/ui/Cells/u1;->z(Lorg/telegram/ui/Cells/u1;)I
    move-result v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->M:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->g9:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->N:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Y8:Landroid/text/StaticLayout;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->T:Landroid/text/StaticLayout;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->b9:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->O:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->c9:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->P:I
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->d9:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->Q:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->f9:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->R:F
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->a9:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->S:Z
    :label_00ec
    invoke-static {v1}, Lorg/telegram/ui/Cells/u1;->z(Lorg/telegram/ui/Cells/u1;)I
    move-result v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->E:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->views:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->b2:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Ub:Landroid/text/StaticLayout;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->G:Landroid/text/StaticLayout;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->Rb:Landroid/text/StaticLayout;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->c2:Landroid/text/StaticLayout;
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->X7:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->A:Z
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->e7:Ljava/lang/String;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->e0:Ljava/lang/String;
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->p8:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->k1:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->K5:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->m1:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->J4:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->S1:F
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->K4:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->T1:F
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->m2:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->X1:I
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->ub:Z
    xor-int/2addr v2, v0
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->e1:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->qb:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->f1:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->nb:Landroid/text/StaticLayout;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->i2:Landroid/text/StaticLayout;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->ob:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->X0:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->f4()Z
    move-result v2
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->e2:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getTopMediaOffset()I
    move-result v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->s2:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->e4()Z
    move-result v2
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->g2:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->V3:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->j:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->qd:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->j2:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->q0:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->m2:F
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->o0:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->p2:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->r7:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->P1:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    aget-object v3, v2, v5
    iget-object v6, v7, Lorg/telegram/ui/Cells/t1;->x2:[Landroid/text/StaticLayout;
    aput-object v3, v6, v5
    aget-object v2, v2, v0
    aput-object v2, v6, v0
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0172
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v2
    if-eqz v2, :label_0172
    move v2, v0
    goto :label_0173
    :label_0172
    move v2, v5
    :label_0173
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->w2:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->hb:F
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->A2:F
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->Kc:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->v2:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->H2:I
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->fb:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->C2:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getCurrentBackgroundLeft()I
    move-result v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->i1:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->s8:Lorg/telegram/ui/ActionBar/l5;
    if-eqz v2, :label_0195
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v2
    iget v2, v2, Landroid/graphics/Rect;->right:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->j1:I
    :label_0195
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0
    if-eqz v2, :label_019d
    iget v2, v2, Lorg/telegram/messenger/MessageObject;->textXOffset:F
    goto :label_019e
    :label_019d
    move v2, v3
    :label_019e
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->o2:F
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->L9:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->P0:F
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->C9:Landroid/text/StaticLayout;
    iput-object v2, v7, Lorg/telegram/ui/Cells/t1;->E2:Landroid/text/StaticLayout;
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->M9:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->I2:I
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->M:Lvf/q0;
    invoke-virtual {v2}, Lvf/q0;->r()V
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->B9:Landroid/text/StaticLayout;
    if-eqz v2, :label_01bc
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->G9:I
    int-to-float v2, v2
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->s:F
    goto :label_01be
    :label_01bc
    iput v3, v7, Lorg/telegram/ui/Cells/t1;->s:F
    :label_01be
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->Ya:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->M2:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->Za:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->N2:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->e2:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->S2:I
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    if-eqz v2, :label_01da
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z
    if-eqz v2, :label_01da
    move v2, v0
    goto :label_01db
    :label_01da
    move v2, v5
    :label_01db
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->Y2:Z
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->M1:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->Q2:Z
    iget v2, v1, Lorg/telegram/ui/Cells/u1;->d2:I
    iput v2, v7, Lorg/telegram/ui/Cells/t1;->V2:I
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/u1;->ga:Z
    iput-boolean v2, v7, Lorg/telegram/ui/Cells/t1;->a3:Z
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    if-eqz v2, :label_01f5
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/u1;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    move-result-object v2
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->expandedQuotes:Ljava/util/HashSet;
    :label_01f5
    iput-object v4, v7, Lorg/telegram/ui/Cells/t1;->c3:Ljava/util/HashSet;
    iget-object v2, v1, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :label_0201
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->expandedExplanation:Z
    if-eqz v3, :label_0201
    move v3, v0
    goto :label_0202
    :label_0201
    move v3, v5
    :label_0202
    iput-boolean v3, v7, Lorg/telegram/ui/Cells/t1;->f3:Z
    if-eqz v2, :label_020b
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->translated:Z
    if-eqz v2, :label_020b
    goto :label_020c
    :label_020b
    move v0, v5
    :label_020c
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/t1;->i3:Z
    iget-object v0, v1, Lorg/telegram/ui/Cells/u1;->I2:Landroid/text/StaticLayout;
    iput-object v0, v7, Lorg/telegram/ui/Cells/t1;->j3:Landroid/text/StaticLayout;
    return-void
.end method

# file_id=2 method_idx=26840 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->i()V"
.method public final i()V
    .registers 6

    iget-object v0, v5, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->eb:[Landroid/text/StaticLayout;
    const/4 v2, 0x0
    aget-object v3, v1, v2
    iget-object v4, v5, Lorg/telegram/ui/Cells/t1;->x2:[Landroid/text/StaticLayout;
    aput-object v3, v4, v2
    const/4 v2, 0x1
    aget-object v1, v1, v2
    aput-object v1, v4, v2
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z
    move-result v1
    iput-boolean v1, v5, Lorg/telegram/ui/Cells/t1;->w2:Z
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->hb:F
    iput v1, v5, Lorg/telegram/ui/Cells/t1;->A2:F
    iget v1, v0, Lorg/telegram/ui/Cells/u1;->Kc:I
    iput v1, v5, Lorg/telegram/ui/Cells/t1;->v2:I
    iput v1, v5, Lorg/telegram/ui/Cells/t1;->H2:I
    iget v0, v0, Lorg/telegram/ui/Cells/u1;->fb:I
    iput v0, v5, Lorg/telegram/ui/Cells/t1;->C2:I
    return-void
.end method

# file_id=2 method_idx=26841 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/t1;->j()V"
.method public final j()V
    .registers 9

    iget-object v0, v8, Lorg/telegram/ui/Cells/t1;->m3:Lorg/telegram/ui/Cells/u1;
    iget-object v1, v0, Lorg/telegram/ui/Cells/u1;->R0:Lcf/n1;
    const/4 v2, 0x0
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->g:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->B:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->w0:Z
    const/4 v3, 0x0
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->g0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->h0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->i0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->j0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->k0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->l0:F
    iget-boolean v4, v8, Lorg/telegram/ui/Cells/t1;->f0:Z
    if-eqz v4, :label_002f
    iget v4, v8, Lorg/telegram/ui/Cells/t1;->o0:F
    cmpl-float v5, v4, v3
    if-eqz v5, :label_002f
    iget v5, v8, Lorg/telegram/ui/Cells/t1;->p0:F
    cmpl-float v6, v5, v3
    if-eqz v6, :label_002f
    iget v6, v8, Lorg/telegram/ui/Cells/t1;->m0:F
    iget v7, v8, Lorg/telegram/ui/Cells/t1;->n0:F
    invoke-virtual {v1, v6, v7, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V
    :label_002f
    iget-boolean v4, v8, Lorg/telegram/ui/Cells/t1;->B0:Z
    if-eqz v4, :label_0038
    iget-object v4, v8, Lorg/telegram/ui/Cells/t1;->A0:[I
    invoke-virtual {v1, v4}, Lcf/n1;->setRoundRadius([I)V
    :label_0038
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->m0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->n0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->o0:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->p0:F
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->f0:Z
    const/high16 v1, 0x3f800000
    iput v1, v8, Lorg/telegram/ui/Cells/t1;->z0:F
    iput v1, v8, Lorg/telegram/ui/Cells/t1;->u0:F
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->B0:Z
    iput v1, v8, Lorg/telegram/ui/Cells/t1;->K1:F
    iput v3, v8, Lorg/telegram/ui/Cells/t1;->Q1:F
    iput v1, v8, Lorg/telegram/ui/Cells/t1;->R1:F
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->G0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->K0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->F0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->O2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->P2:Z
    const/4 v1, 0x0
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->H0:Ljava/util/ArrayList;
    iget-object v3, v8, Lorg/telegram/ui/Cells/t1;->L0:Lorg/telegram/messenger/RichMessageLayout;
    if-eqz v3, :label_0064
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/RichMessageLayout;->detach(Landroid/view/View;)V
    :label_0064
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->L0:Lorg/telegram/messenger/RichMessageLayout;
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->U0:Landroid/text/StaticLayout;
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->V0:Landroid/text/StaticLayout;
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->T0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->a1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->C0:Z
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->b1:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    iget-object v3, v8, Lorg/telegram/ui/Cells/t1;->O0:Lorg/telegram/ui/Components/x5;
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/b6;->release(Landroid/view/View;Lorg/telegram/ui/Components/x5;)V
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->O0:Lorg/telegram/ui/Components/x5;
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->s0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->J1:Z
    iget-object v3, v8, Lorg/telegram/ui/Cells/t1;->M1:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->W1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->D2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->N1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->Z1:Z
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->R0:Landroid/text/StaticLayout;
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->F:Z
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->H:Landroid/text/StaticLayout;
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->U:Z
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->V:Landroid/text/StaticLayout;
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->d2:Landroid/text/StaticLayout;
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->f2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->h2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->h1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->l1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->c0:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->s1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->u1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->y1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->w1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->z1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->B1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->v1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->D1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->F1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->L2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->J1:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->i:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->k2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->l2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->r2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->X2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->Z2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->e3:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->h3:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->R2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->b3:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->t2:Z
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->F2:Z
    iget-object v3, v8, Lorg/telegram/ui/Cells/t1;->y2:[Landroid/text/StaticLayout;
    aput-object v1, v3, v2
    const/4 v4, 0x1
    aput-object v1, v3, v4
    iput-boolean v2, v8, Lorg/telegram/ui/Cells/t1;->p:Z
    iget-object v3, v0, Lorg/telegram/ui/Cells/u1;->M:Lvf/q0;
    iget-object v4, v3, Lvf/q0;->v:Ljava/util/ArrayList;
    iget-object v5, v3, Lvf/q0;->w:Ljava/util/ArrayList;
    move v6, v2
    :label_00de
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    move-result v7
    if-ge v6, v7, :label_00f0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lvf/n0;
    invoke-virtual {v7}, Lvf/n0;->b()V
    add-int/lit8 v6, v6, 0x1
    goto :label_00de
    :label_00f0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    iput-boolean v2, v3, Lvf/q0;->j:Z
    iput-boolean v2, v3, Lvf/q0;->k:Z
    iput-boolean v2, v3, Lvf/q0;->l:Z
    move v3, v2
    :label_00fa
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v3, v5, :label_010b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lvf/n0;
    iput v2, v5, Lvf/n0;->c:I
    add-int/lit8 v3, v3, 0x1
    goto :label_00fa
    :label_010b
    iput-object v1, v8, Lorg/telegram/ui/Cells/t1;->k3:Landroid/text/StaticLayout;
    iget-object v1, v8, Lorg/telegram/ui/Cells/t1;->l3:Lorg/telegram/ui/Components/x5;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/b6;->release(Landroid/view/View;Lorg/telegram/ui/Components/x5;)V
    return-void
.end method

