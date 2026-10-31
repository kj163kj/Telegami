# file_id=2 method_idx=27686 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/x0;->setCustomText(Ljava/lang/CharSequence;)V"
.method public setCustomText(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object v1, v0, Lorg/telegram/ui/Cells/x0;->Q0:Ljava/lang/CharSequence;
    if-eqz v1, :label_0008
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/x0;->b0(Z)V
    :label_0008
    return-void
.end method
