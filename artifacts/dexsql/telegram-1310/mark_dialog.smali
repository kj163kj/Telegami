# file_id=0 method_idx=42182 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/MessagesController;->markDialogMessageAsDeleted(JLjava/util/ArrayList;)V"
.method public markDialogMessageAsDeleted(JLjava/util/ArrayList;)V
    .registers 9

    iget-object v0, v5, Lorg/telegram/messenger/MessagesController;->dialogMessage:Lz/f;
    invoke-virtual {v0, v6, v7}, Lz/f;->f(J)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/ArrayList;
    if-eqz v6, :label_003b
    const/4 v7, 0x0
    move v0, v7
    :label_000c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :label_003b
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/telegram/messenger/MessageObject;
    if-eqz v1, :label_0038
    move v2, v7
    :label_001b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v2, v3, :label_0038
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I
    move-result v4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    if-ne v4, v3, :label_0035
    const/4 v2, 0x1
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->deleted:Z
    goto :label_0038
    :label_0035
    add-int/lit8 v2, v2, 0x1
    goto :label_001b
    :label_0038
    add-int/lit8 v0, v0, 0x1
    goto :label_000c
    :label_003b
    return-void
.end method
