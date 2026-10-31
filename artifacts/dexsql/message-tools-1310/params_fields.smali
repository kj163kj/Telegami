# file_id=0 method_idx=45301 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZ)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
.method public static of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZ)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .registers 30

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    invoke-direct {v0}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;-><init>()V
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->message:Ljava/lang/String;
    iput-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->caption:Ljava/lang/String;
    iput-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->photo:Lorg/telegram/tgnet/TLRPC$TL_photo;
    iput-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    iput-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->user:Lorg/telegram/tgnet/TLRPC$User;
    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->document:Lorg/telegram/tgnet/TLRPC$TL_document;
    iput-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->game:Lorg/telegram/tgnet/TLRPC$TL_game;
    iput-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->poll:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
    iput-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invoice:Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    iput-wide v11, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->peer:J
    iput-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->path:Ljava/lang/String;
    iput-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToMsg:Lorg/telegram/messenger/MessageObject;
    iput-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToTopMsg:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v1, v16
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->webPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    move/from16 v1, v17
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->searchLinks:Z
    move-object/from16 v1, v18
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->retryMessageObject:Lorg/telegram/messenger/MessageObject;
    move-object/from16 v1, v19
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;
    move-object/from16 v1, v20
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyMarkup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    move-object/from16 v1, v21
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->params:Ljava/util/HashMap;
    move/from16 v1, v22
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->notify:Z
    move/from16 v1, v23
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->scheduleDate:I
    move/from16 v1, v24
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->scheduleRepeatPeriod:I
    move/from16 v1, v25
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->ttl:I
    move-object/from16 v1, v26
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->parentObject:Ljava/lang/Object;
    move-object/from16 v1, v27
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;
    move/from16 v1, v28
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->updateStickersOrder:Z
    move/from16 v1, v29
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->hasMediaSpoilers:Z
    return-object v0
.end method
