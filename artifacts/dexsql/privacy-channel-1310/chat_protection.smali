# file_id=2 method_idx=49308 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->D9()Z"
.method public final D9()Z
    .registers 3

    iget-object v0, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :label_000f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->e:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    move-result v0
    return v0
    :label_000f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/r2;->getMessagesController()Lorg/telegram/messenger/MessagesController;
    move-result-object v0
    iget-object v1, v2, Lorg/telegram/ui/ko;->Z7:Lorg/telegram/tgnet/TLRPC$UserFull;
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isUserNoForwards(Lorg/telegram/tgnet/TLRPC$UserFull;)Z
    move-result v0
    return v0
.end method
