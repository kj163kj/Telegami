# file_id=2 method_idx=26936 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Cells/u1;->M0(Lorg/telegram/messenger/MessageObject;)Z"
.method public final M0(Lorg/telegram/messenger/MessageObject;)Z
    .registers 6

    iget-boolean v0, v4, Lorg/telegram/ui/Cells/u1;->Z7:Z
    const/4 v1, 0x0
    if-eqz v0, :label_0006
    return v1
    :label_0006
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z
    if-eqz v2, :label_0011
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deletedByThanos:Z
    if-nez v2, :label_0011
    return v1
    :label_0011
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z
    move-result v0
    if-eqz v0, :label_0018
    return v1
    :label_0018
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->x7:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEphemeral()Z
    move-result v0
    if-eqz v0, :label_0021
    return v1
    :label_0021
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    if-eqz v0, :label_0047
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->K:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    if-eqz v0, :label_0047
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I
    and-int/lit8 v2, v0, 0x8
    if-eqz v2, :label_003d
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z
    move-result v2
    const/4 v3, 0x1
    if-eqz v2, :label_0038
    move v2, v3
    goto :label_0039
    :label_0038
    const/4 v2, 0x2
    :label_0039
    and-int/2addr v0, v2
    if-eqz v0, :label_003d
    goto :label_003e
    :label_003d
    move v3, v1
    :label_003e
    iget-object v0, v4, Lorg/telegram/ui/Cells/u1;->J:Lorg/telegram/messenger/MessageObject$GroupedMessages;
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z
    if-nez v0, :label_0047
    if-nez v3, :label_0047
    return v1
    :label_0047
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needDrawShareButton()Z
    move-result v5
    return v5
.end method
