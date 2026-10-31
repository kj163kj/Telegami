# file_id=2 method_idx=23284 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->o()Lorg/telegram/ui/ActionBar/f2;"
.method public final o()Lorg/telegram/ui/ActionBar/f2;
    .registers 5

    iget-object v0, v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->a:Lorg/telegram/ui/ActionBar/f2;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/f2;->show()V
    const/4 v1, 0x0
    :label_0006
    iget-object v2, v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->b:[Z
    array-length v3, v2
    if-ge v1, v3, :label_0027
    aget-boolean v2, v2, v1
    if-nez v2, :label_0010
    goto :label_0024
    :label_0010
    add-int/lit8 v2, v1, 0x1
    neg-int v2, v2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/f2;->d(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/TextView;
    if-eqz v2, :label_0024
    sget v3, Lorg/telegram/ui/ActionBar/n6;->q7:I
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/f2;->f(I)I
    move-result v3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :label_0024
    add-int/lit8 v1, v1, 0x1
    goto :label_0006
    :label_0027
    return-object v0
.end method
