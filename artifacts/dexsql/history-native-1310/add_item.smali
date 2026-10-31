# file_id=2 method_idx=25046 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ActionBar/z;->a(II)Lorg/telegram/ui/ActionBar/x0;"
.method public final a(II)Lorg/telegram/ui/ActionBar/x0;
    .registers 13

    iget-boolean v0, v10, Lorg/telegram/ui/ActionBar/z;->c:Z
    iget-object v1, v10, Lorg/telegram/ui/ActionBar/z;->b:Lorg/telegram/ui/ActionBar/l;
    if-eqz v0, :label_000a
    iget v0, v1, Lorg/telegram/ui/ActionBar/l;->p0:I
    :label_0008
    move v5, v0
    goto :label_000d
    :label_000a
    iget v0, v1, Lorg/telegram/ui/ActionBar/l;->o0:I
    goto :label_0008
    :label_000d
    const/high16 v0, 0x42400000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    move-result v7
    const/4 v8, 0x0
    const/4 v4, 0x0
    const/4 v6, 0x0
    const/4 v9, 0x0
    move-object v1, v10
    move v2, v11
    move v3, v12
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/z;->b(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/j6;)Lorg/telegram/ui/ActionBar/x0;
    move-result-object v11
    return-object v11
.end method
