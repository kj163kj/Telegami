# file_id=2 method_idx=49730 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->h7(Landroid/view/View;)Z"
.method public final h7(Landroid/view/View;)Z
    .registers 4

    iget-object v0, v2, Lorg/telegram/ui/ko;->X:Lorg/telegram/ui/wk;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;
    move-result-object v0
    if-eqz v0, :label_000d
    const/4 v1, 0x1
    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/ko;->Wb(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    return v1
    :label_000d
    const/4 v3, 0x0
    return v3
.end method

