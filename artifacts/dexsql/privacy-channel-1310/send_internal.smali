# file_id=2 method_idx=12183 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/ConnectionsManager;->sendRequestInternal(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V"
.method private sendRequestInternal(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    .registers 26

    move-object/from16 v2, v16
    move/from16 v7, v25
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-eqz v0, :label_0021
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "send request "
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " with token = "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :label_0021
    new-instance v14, Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I
    move-result v0
    invoke-direct {v14, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    invoke-virtual {v2, v14}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->freeResources()V
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z
    if-eqz v0, :label_003c
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    if-nez v0, :label_0040
    goto :label_003c
    :label_0039
    move-exception v0
    goto/16 :label_00a7
    :label_003c
    and-int/lit8 v0, v23, 0x2
    if-eqz v0, :label_0046
    :label_0040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    :label_0044
    move-wide v4, v0
    goto :label_0049
    :label_0046
    const-wide/16 v0, 0x0
    goto :label_0044
    :label_0049
    new-instance v0, Lorg/telegram/tgnet/d;
    move-object v1, v15
    move-object/from16 v6, v17
    move-object/from16 v8, v19
    move-object/from16 v9, v20
    move/from16 v10, v21
    move/from16 v11, v22
    move/from16 v3, v23
    move/from16 v12, v24
    move v13, v7
    move-object/from16 v7, v18
    invoke-direct/range {v0 .. v13}, Lorg/telegram/tgnet/d;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZI)V
    move v7, v13
    move-object/from16 v8, v19
    move-object/from16 v1, v20
    invoke-direct {v15, v7, v0, v8, v1}, Lorg/telegram/tgnet/ConnectionsManager;->listen(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;)V
    const/high16 v0, 0x40000
    and-int v0, v21, v0
    if-eqz v0, :label_0095
    const v0, 0xffff
    and-int v0, v23, v0
    const/4 v1, 0x2
    if-ne v0, v1, :label_0095
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    if-eqz v0, :label_0081
    move-object v0, v2
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I
    :label_007f
    move v8, v0
    goto :label_0097
    :label_0081
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    if-eqz v0, :label_008b
    move-object v0, v2
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I
    goto :label_007f
    :label_008b
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;
    if-eqz v0, :label_0095
    move-object v0, v2
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I
    goto :label_007f
    :label_0095
    const/4 v0, 0x0
    goto :label_007f
    :label_0097
    iget v0, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I
    iget-wide v1, v14, Lorg/telegram/tgnet/NativeByteBuffer;->address:J
    move/from16 v3, v21
    move/from16 v4, v22
    move/from16 v5, v23
    move/from16 v6, v24
    invoke-static/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->native_sendRequest(IJIIIZII)V
    :label_00a6
    return-void
    :label_00a7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    return-void
    .catch Ljava/lang/Exception; {:label_0021 .. :label_00a6} :label_0039
.end method
