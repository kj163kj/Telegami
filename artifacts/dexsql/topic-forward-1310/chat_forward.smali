# file_id=2 method_idx=49977 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->x8(Ljava/util/ArrayList;ZZZIJ)V"
.method public final x8(Ljava/util/ArrayList;ZZZIJ)V
    .registers 27

    move-object/from16 v0, v19
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :label_0009
    goto :label_005a
    :label_0009
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->i7()Z
    move-result v1
    if-nez v1, :label_0010
    goto :label_005a
    :label_0010
    const/4 v1, 0x0
    const/4 v2, 0x1
    if-eqz v24, :label_0016
    move v3, v2
    goto :label_0017
    :label_0016
    move v3, v1
    :label_0017
    iget v4, v0, Lorg/telegram/ui/ko;->Q3:I
    if-ne v4, v2, :label_001c
    move v1, v2
    :label_001c
    if-ne v3, v1, :label_0027
    iput-boolean v2, v0, Lorg/telegram/ui/ko;->n9:Z
    iget-object v1, v0, Lorg/telegram/ui/ko;->z0:Lorg/telegram/ui/vm;
    if-eqz v1, :label_0027
    invoke-virtual {v1, v2}, Lorg/telegram/ui/vm;->K(Z)V
    :label_0027
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/r2;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    move-result-object v3
    iget-wide v5, v0, Lorg/telegram/ui/ko;->S5:J
    iget-object v12, v0, Lorg/telegram/ui/ko;->W3:Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/ui/ko;->S8()J
    move-result-wide v16
    iget-object v1, v0, Lorg/telegram/ui/ko;->f5:Lorg/telegram/messenger/MessageSuggestionParams;
    const/4 v11, 0x0
    const/4 v13, -0x1
    move-object/from16 v4, v20
    move/from16 v7, v21
    move/from16 v8, v22
    move/from16 v9, v23
    move/from16 v10, v24
    move-wide/from16 v14, v25
    move-object/from16 v18, v1
    invoke-virtual/range {v3 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I
    move-result v1
    iget-object v2, v0, Lorg/telegram/ui/ko;->da:Lorg/telegram/ui/io;
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/g5;->s0(ILorg/telegram/ui/ActionBar/r2;Lorg/telegram/ui/ActionBar/j6;)V
    if-eqz v1, :label_005a
    new-instance v1, Lorg/telegram/ui/zf;
    const/16 v2, 0x19
    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/zf;-><init>(Lorg/telegram/ui/ko;I)V
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :label_005a
    return-void
.end method
