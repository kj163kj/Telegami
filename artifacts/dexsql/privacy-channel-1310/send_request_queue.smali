# file_id=2 method_idx=12181 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I"
.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .registers 23

    iget-object v0, v13, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    move-result v12
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;
    new-instance v1, Lorg/telegram/tgnet/g;
    move-object v2, v13
    move-object v3, v14
    move-object v4, v15
    move-object/from16 v5, v16
    move-object/from16 v6, v17
    move-object/from16 v7, v18
    move/from16 v8, v19
    move/from16 v9, v20
    move/from16 v10, v21
    move/from16 v11, v22
    invoke-direct/range {v1 .. v12}, Lorg/telegram/tgnet/g;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    return v12
.end method
