# file_id=0 method_idx=46549 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/UserConfig;->getMaxAccountCount()I"
.method public static getMaxAccountCount()I
    .registers 1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z
    move-result v0
    if-eqz v0, :label_0008
    const/4 v0, 0x5
    return v0
    :label_0008
    const/4 v0, 0x3
    return v0
.end method
