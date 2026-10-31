# file_id=0 method_idx=36638 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;"
.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .registers 10

    const/4 v2, 0x0
    const/4 v5, 0x1
    move-object v0, v6
    move-object v1, v7
    move-object v3, v8
    move v4, v9
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;
    move-result-object v7
    return-object v7
.end method
