# file_id=2 method_idx=37494 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Components/r51;->dismiss()V"
.method public dismiss()V
    .registers 3

    invoke-super {v2}, Lorg/telegram/ui/ActionBar/k3;->dismiss()V
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloaded:I
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloading:I
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    return-void
.end method

