# file_id=2 method_idx=24569 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/r2;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/l;"
.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/l;
    .registers 5

    new-instance v0, Lorg/telegram/ui/ActionBar/l;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/r2;->getResourceProvider()Lorg/telegram/ui/ActionBar/j6;
    move-result-object v1
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ActionBar/l;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/j6;)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->s8:I
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/l;->setBackgroundColor(I)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->t8:I
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    const/4 v1, 0x0
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/l;->C(IZ)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->z8:I
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    const/4 v2, 0x1
    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/ActionBar/l;->C(IZ)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->v8:I
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/l;->D(IZ)V
    sget v4, Lorg/telegram/ui/ActionBar/n6;->y8:I
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/r2;->getThemedColor(I)I
    move-result v4
    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/ActionBar/l;->D(IZ)V
    iget-boolean v4, v3, Lorg/telegram/ui/ActionBar/r2;->inPreviewMode:Z
    if-nez v4, :label_004c
    iget-boolean v4, v3, Lorg/telegram/ui/ActionBar/r2;->inBubbleMode:Z
    if-nez v4, :label_004c
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/r2;->parentLayout:Lorg/telegram/ui/ActionBar/j5;
    if-eqz v4, :label_004b
    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;
    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->L0:Z
    if-eqz v4, :label_004b
    goto :label_004c
    :label_004b
    return-object v0
    :label_004c
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/l;->setOccupyStatusBar(Z)V
    return-object v0
.end method
