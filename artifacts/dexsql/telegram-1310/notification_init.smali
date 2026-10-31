# file_id=0 method_idx=43560 source="Telegram.apk" entry="classes.dex" descriptor="Lorg/telegram/messenger/NotificationCenter;-><clinit>()V"
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1
    add-int/2addr v0, v0
    add-int/lit8 v1, v0, 0x1
    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I
    add-int/lit8 v2, v0, 0x2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I
    add-int/lit8 v1, v0, 0x3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I
    add-int/lit8 v2, v0, 0x4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->closeChatActivity:I
    add-int/lit8 v1, v0, 0x5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->closeProfileActivity:I
    add-int/lit8 v2, v0, 0x6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I
    add-int/lit8 v1, v0, 0x7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->historyCleared:I
    add-int/lit8 v2, v0, 0x8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I
    add-int/lit8 v1, v0, 0x9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->threadMessagesRead:I
    add-int/lit8 v2, v0, 0xa
    sput v1, Lorg/telegram/messenger/NotificationCenter;->monoForumMessagesRead:I
    add-int/lit8 v1, v0, 0xb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->commentsRead:I
    add-int/lit8 v2, v0, 0xc
    sput v1, Lorg/telegram/messenger/NotificationCenter;->changeRepliesCounter:I
    add-int/lit8 v1, v0, 0xd
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I
    add-int/lit8 v2, v0, 0xe
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadSponsoredMessages:I
    add-int/lit8 v1, v0, 0xf
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didLoadSendAsPeers:I
    add-int/lit8 v2, v0, 0x10
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateDefaultSendAsPeer:I
    add-int/lit8 v1, v0, 0x11
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoadWithoutProcess:I
    add-int/lit8 v2, v0, 0x12
    sput v1, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I
    add-int/lit8 v1, v0, 0x13
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I
    add-int/lit8 v2, v0, 0x14
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I
    add-int/lit8 v1, v0, 0x15
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer2:I
    add-int/lit8 v2, v0, 0x16
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I
    add-int/lit8 v1, v0, 0x17
    sput v2, Lorg/telegram/messenger/NotificationCenter;->forceImportContactsStart:I
    add-int/lit8 v2, v0, 0x18
    sput v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I
    add-int/lit8 v1, v0, 0x19
    sput v2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I
    add-int/lit8 v2, v0, 0x1a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I
    add-int/lit8 v1, v0, 0x1b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I
    add-int/lit8 v2, v0, 0x1c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I
    add-int/lit8 v1, v0, 0x1d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I
    add-int/lit8 v2, v0, 0x1e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I
    add-int/lit8 v1, v0, 0x1f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I
    add-int/lit8 v2, v0, 0x20
    sput v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I
    add-int/lit8 v1, v0, 0x21
    sput v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I
    add-int/lit8 v2, v0, 0x22
    sput v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I
    add-int/lit8 v1, v0, 0x23
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I
    add-int/lit8 v2, v0, 0x24
    sput v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I
    add-int/lit8 v1, v0, 0x25
    sput v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I
    add-int/lit8 v2, v0, 0x26
    sput v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I
    add-int/lit8 v1, v0, 0x27
    sput v2, Lorg/telegram/messenger/NotificationCenter;->folderBecomeEmpty:I
    add-int/lit8 v2, v0, 0x28
    sput v1, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I
    add-int/lit8 v1, v0, 0x29
    sput v2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I
    add-int/lit8 v2, v0, 0x2a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I
    add-int/lit8 v1, v0, 0x2b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I
    add-int/lit8 v2, v0, 0x2c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I
    add-int/lit8 v1, v0, 0x2d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I
    add-int/lit8 v2, v0, 0x2e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I
    add-int/lit8 v1, v0, 0x2f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I
    add-int/lit8 v2, v0, 0x30
    sput v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I
    add-int/lit8 v1, v0, 0x31
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I
    add-int/lit8 v2, v0, 0x32
    sput v1, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I
    add-int/lit8 v1, v0, 0x33
    sput v2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I
    add-int/lit8 v2, v0, 0x34
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I
    add-int/lit8 v1, v0, 0x35
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I
    add-int/lit8 v2, v0, 0x36
    sput v1, Lorg/telegram/messenger/NotificationCenter;->replyMessagesDidLoad:I
    add-int/lit8 v1, v0, 0x37
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I
    add-int/lit8 v2, v0, 0x38
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I
    add-int/lit8 v1, v0, 0x39
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpages:I
    add-int/lit8 v2, v0, 0x3a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I
    add-int/lit8 v1, v0, 0x3b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I
    add-int/lit8 v2, v0, 0x3c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I
    add-int/lit8 v1, v0, 0x3d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I
    add-int/lit8 v2, v0, 0x3e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I
    add-int/lit8 v1, v0, 0x3f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I
    add-int/lit8 v2, v0, 0x40
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I
    add-int/lit8 v1, v0, 0x41
    sput v2, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoad:I
    add-int/lit8 v2, v0, 0x42
    sput v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I
    add-int/lit8 v1, v0, 0x43
    sput v2, Lorg/telegram/messenger/NotificationCenter;->pinnedInfoDidLoad:I
    add-int/lit8 v2, v0, 0x44
    sput v1, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoad:I
    add-int/lit8 v1, v0, 0x45
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I
    add-int/lit8 v2, v0, 0x46
    sput v1, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I
    add-int/lit8 v1, v0, 0x47
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsLoading:I
    add-int/lit8 v2, v0, 0x48
    sput v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I
    add-int/lit8 v1, v0, 0x49
    sput v2, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I
    add-int/lit8 v2, v0, 0x4a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I
    add-int/lit8 v1, v0, 0x4b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->needShowPlayServicesAlert:I
    add-int/lit8 v2, v0, 0x4c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateMessagesViews:I
    add-int/lit8 v1, v0, 0x4d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I
    add-int/lit8 v2, v0, 0x4e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->peerSettingsDidLoad:I
    add-int/lit8 v1, v0, 0x4f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I
    add-int/lit8 v2, v0, 0x50
    sput v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I
    add-int/lit8 v1, v0, 0x51
    sput v2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I
    add-int/lit8 v2, v0, 0x52
    sput v1, Lorg/telegram/messenger/NotificationCenter;->reloadGuestBotHints:I
    add-int/lit8 v1, v0, 0x53
    sput v2, Lorg/telegram/messenger/NotificationCenter;->reloadWebappsHints:I
    add-int/lit8 v2, v0, 0x54
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newDraftReceived:I
    add-int/lit8 v1, v0, 0x55
    sput v2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I
    add-int/lit8 v2, v0, 0x56
    sput v1, Lorg/telegram/messenger/NotificationCenter;->needAddArchivedStickers:I
    add-int/lit8 v1, v0, 0x57
    sput v2, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I
    add-int/lit8 v2, v0, 0x58
    sput v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I
    add-int/lit8 v1, v0, 0x59
    sput v2, Lorg/telegram/messenger/NotificationCenter;->channelRightsUpdated:I
    add-int/lit8 v2, v0, 0x5a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->openArticle:I
    add-int/lit8 v1, v0, 0x5b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I
    add-int/lit8 v2, v0, 0x5c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateMentionsCount:I
    add-int/lit8 v1, v0, 0x5d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePollResults:I
    add-int/lit8 v2, v0, 0x5e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatOnlineCountDidLoad:I
    add-int/lit8 v1, v0, 0x5f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->videoLoadingStateChanged:I
    add-int/lit8 v2, v0, 0x60
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I
    add-int/lit8 v1, v0, 0x61
    sput v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I
    add-int/lit8 v2, v0, 0x62
    sput v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I
    add-int/lit8 v1, v0, 0x63
    sput v2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I
    add-int/lit8 v2, v0, 0x64
    sput v1, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I
    add-int/lit8 v1, v0, 0x65
    sput v2, Lorg/telegram/messenger/NotificationCenter;->sendingMessagesChanged:I
    add-int/lit8 v2, v0, 0x66
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateReactions:I
    add-int/lit8 v1, v0, 0x67
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateExtendedMedia:I
    add-int/lit8 v2, v0, 0x68
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didVerifyMessagesStickers:I
    add-int/lit8 v1, v0, 0x69
    sput v2, Lorg/telegram/messenger/NotificationCenter;->scheduledMessagesUpdated:I
    add-int/lit8 v2, v0, 0x6a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I
    add-int/lit8 v1, v0, 0x6b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didLoadChatInviter:I
    add-int/lit8 v2, v0, 0x6c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadChatAdmins:I
    add-int/lit8 v1, v0, 0x6d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I
    add-int/lit8 v2, v0, 0x6e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I
    add-int/lit8 v1, v0, 0x6f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->stickersImportComplete:I
    add-int/lit8 v2, v0, 0x70
    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I
    add-int/lit8 v1, v0, 0x71
    sput v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I
    add-int/lit8 v2, v0, 0x72
    sput v1, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I
    add-int/lit8 v1, v0, 0x73
    sput v2, Lorg/telegram/messenger/NotificationCenter;->animatedEmojiDocumentLoaded:I
    add-int/lit8 v2, v0, 0x74
    sput v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I
    add-int/lit8 v1, v0, 0x75
    sput v2, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I
    add-int/lit8 v2, v0, 0x76
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateTranscriptionLock:I
    add-int/lit8 v1, v0, 0x77
    sput v2, Lorg/telegram/messenger/NotificationCenter;->businessMessagesUpdated:I
    add-int/lit8 v2, v0, 0x78
    sput v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I
    add-int/lit8 v1, v0, 0x79
    sput v2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesDeleted:I
    add-int/lit8 v2, v0, 0x7a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->bookmarkAdded:I
    add-int/lit8 v1, v0, 0x7b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starReactionAnonymousUpdate:I
    add-int/lit8 v2, v0, 0x7c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I
    add-int/lit8 v1, v0, 0x7d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->businessLinkCreated:I
    add-int/lit8 v2, v0, 0x7e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteBusinessLink:I
    add-int/lit8 v1, v0, 0x7f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I
    add-int/lit16 v2, v0, 0x80
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messageTranslating:I
    add-int/lit16 v1, v0, 0x81
    sput v2, Lorg/telegram/messenger/NotificationCenter;->dialogIsTranslatable:I
    add-int/lit16 v2, v0, 0x82
    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I
    add-int/lit16 v1, v0, 0x83
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I
    add-int/lit16 v2, v0, 0x84
    sput v1, Lorg/telegram/messenger/NotificationCenter;->walletPendingTransactionsChanged:I
    add-int/lit16 v1, v0, 0x85
    sput v2, Lorg/telegram/messenger/NotificationCenter;->walletSyncProgressChanged:I
    add-int/lit16 v2, v0, 0x86
    sput v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I
    add-int/lit16 v1, v0, 0x87
    sput v2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I
    add-int/lit16 v2, v0, 0x88
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I
    add-int/lit16 v1, v0, 0x89
    sput v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I
    add-int/lit16 v2, v0, 0x8a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I
    add-int/lit16 v1, v0, 0x8b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I
    add-int/lit16 v2, v0, 0x8c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I
    add-int/lit16 v1, v0, 0x8d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I
    add-int/lit16 v2, v0, 0x8e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I
    add-int/lit16 v1, v0, 0x8f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I
    add-int/lit16 v2, v0, 0x90
    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I
    add-int/lit16 v1, v0, 0x91
    sput v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I
    add-int/lit16 v2, v0, 0x92
    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I
    add-int/lit16 v1, v0, 0x93
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I
    add-int/lit16 v2, v0, 0x94
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I
    add-int/lit16 v1, v0, 0x95
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I
    add-int/lit16 v2, v0, 0x96
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I
    add-int/lit16 v1, v0, 0x97
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I
    add-int/lit16 v2, v0, 0x98
    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingGoingToStop:I
    add-int/lit16 v1, v0, 0x99
    sput v2, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I
    add-int/lit16 v2, v0, 0x9a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I
    add-int/lit16 v1, v0, 0x9b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I
    add-int/lit16 v2, v0, 0x9c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I
    add-int/lit16 v1, v0, 0x9d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->recordPaused:I
    add-int/lit16 v2, v0, 0x9e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->recordResumed:I
    add-int/lit16 v1, v0, 0x9f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->screenshotTook:I
    add-int/lit16 v2, v0, 0xa0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I
    add-int/lit16 v1, v0, 0xa1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I
    add-int/lit16 v2, v0, 0xa2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I
    add-int/lit16 v1, v0, 0xa3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I
    add-int/lit16 v2, v0, 0xa4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I
    add-int/lit16 v1, v0, 0xa5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I
    add-int/lit16 v2, v0, 0xa6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storyGroupCallUpdated:I
    add-int/lit16 v1, v0, 0xa7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I
    add-int/lit16 v2, v0, 0xa8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I
    add-int/lit16 v1, v0, 0xa9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->activeGroupCallsUpdated:I
    add-int/lit16 v2, v0, 0xaa
    sput v1, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I
    add-int/lit16 v1, v0, 0xab
    sput v2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I
    add-int/lit16 v2, v0, 0xac
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I
    add-int/lit16 v1, v0, 0xad
    sput v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I
    add-int/lit16 v2, v0, 0xae
    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I
    add-int/lit16 v1, v0, 0xaf
    sput v2, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I
    add-int/lit16 v2, v0, 0xb0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryMessageUpdate:I
    add-int/lit16 v1, v0, 0xb1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I
    add-int/lit16 v2, v0, 0xb2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->configLoaded:I
    add-int/lit16 v1, v0, 0xb3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I
    add-int/lit16 v2, v0, 0xb4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I
    add-int/lit16 v1, v0, 0xb5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I
    add-int/lit16 v2, v0, 0xb6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I
    add-int/lit16 v1, v0, 0xb7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I
    add-int/lit16 v2, v0, 0xb8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->filterSettingsUpdated:I
    add-int/lit16 v1, v0, 0xb9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I
    add-int/lit16 v2, v0, 0xba
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateBotMenuButton:I
    add-int/lit16 v1, v0, 0xbb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->giftsToUserSent:I
    add-int/lit16 v2, v0, 0xbc
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I
    add-int/lit16 v1, v0, 0xbd
    sput v2, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I
    add-int/lit16 v2, v0, 0xbe
    sput v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I
    add-int/lit16 v1, v0, 0xbf
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I
    add-int/lit16 v2, v0, 0xc0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I
    add-int/lit16 v1, v0, 0xc1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftFieldIcon:I
    add-int/lit16 v2, v0, 0xc2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I
    add-int/lit16 v1, v0, 0xc3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I
    add-int/lit16 v2, v0, 0xc4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I
    add-int/lit16 v1, v0, 0xc5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I
    add-int/lit16 v2, v0, 0xc6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I
    add-int/lit16 v1, v0, 0xc7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I
    add-int/lit16 v2, v0, 0xc8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I
    add-int/lit16 v1, v0, 0xc9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I
    add-int/lit16 v2, v0, 0xca
    sput v1, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I
    add-int/lit16 v1, v0, 0xcb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I
    add-int/lit16 v2, v0, 0xcc
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storyAlbumsCollectionsUpdate:I
    add-int/lit16 v1, v0, 0xcd
    sput v2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesForwarded:I
    add-int/lit16 v2, v0, 0xce
    sput v1, Lorg/telegram/messenger/NotificationCenter;->emojiKeywordsLoaded:I
    add-int/lit16 v1, v0, 0xcf
    sput v2, Lorg/telegram/messenger/NotificationCenter;->smsJobStatusUpdate:I
    add-int/lit16 v2, v0, 0xd0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I
    add-int/lit16 v1, v0, 0xd1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->openBoostForUsersDialog:I
    add-int/lit16 v2, v0, 0xd2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupRestrictionsUnlockedByBoosts:I
    add-int/lit16 v1, v0, 0xd3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I
    add-int/lit16 v2, v0, 0xd4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I
    add-int/lit16 v1, v0, 0xd5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->timezonesUpdated:I
    add-int/lit16 v2, v0, 0xd6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I
    add-int/lit16 v1, v0, 0xd7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->premiumFloodWaitReceived:I
    add-int/lit16 v2, v0, 0xd8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I
    add-int/lit16 v1, v0, 0xd9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I
    add-int/lit16 v2, v0, 0xda
    sput v1, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I
    add-int/lit16 v1, v0, 0xdb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I
    add-int/lit16 v2, v0, 0xdc
    sput v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I
    add-int/lit16 v1, v0, 0xdd
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I
    add-int/lit16 v2, v0, 0xde
    sput v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I
    add-int/lit16 v1, v0, 0xdf
    sput v2, Lorg/telegram/messenger/NotificationCenter;->factCheckLoaded:I
    add-int/lit16 v2, v0, 0xe0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I
    add-int/lit16 v1, v0, 0xe1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I
    add-int/lit16 v2, v0, 0xe2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->channelStarsUpdated:I
    add-int/lit16 v1, v0, 0xe3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->updateAllMessages:I
    add-int/lit16 v2, v0, 0xe4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I
    add-int/lit16 v1, v0, 0xe5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I
    add-int/lit16 v2, v0, 0xe6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I
    add-int/lit16 v1, v0, 0xe7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I
    add-int/lit16 v2, v0, 0xe8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateStories:I
    add-int/lit16 v1, v0, 0xe9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I
    add-int/lit16 v2, v0, 0xea
    sput v1, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I
    add-int/lit16 v1, v0, 0xeb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I
    add-int/lit16 v2, v0, 0xec
    sput v1, Lorg/telegram/messenger/NotificationCenter;->adminedChannelsLoaded:I
    add-int/lit16 v1, v0, 0xed
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagesFeeUpdated:I
    add-int/lit16 v2, v0, 0xee
    sput v1, Lorg/telegram/messenger/NotificationCenter;->commonChatsLoaded:I
    add-int/lit16 v1, v0, 0xef
    sput v2, Lorg/telegram/messenger/NotificationCenter;->appConfigUpdated:I
    add-int/lit16 v2, v0, 0xf0
    sput v1, Lorg/telegram/messenger/NotificationCenter;->activeAuctionsUpdated:I
    add-int/lit16 v1, v0, 0xf1
    sput v2, Lorg/telegram/messenger/NotificationCenter;->conferenceEmojiUpdated:I
    add-int/lit16 v2, v0, 0xf2
    sput v1, Lorg/telegram/messenger/NotificationCenter;->contentSettingsLoaded:I
    add-int/lit16 v1, v0, 0xf3
    sput v2, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I
    add-int/lit16 v2, v0, 0xf4
    sput v1, Lorg/telegram/messenger/NotificationCenter;->musicIdsLoaded:I
    add-int/lit16 v1, v0, 0xf5
    sput v2, Lorg/telegram/messenger/NotificationCenter;->profileMusicUpdated:I
    add-int/lit16 v2, v0, 0xf6
    sput v1, Lorg/telegram/messenger/NotificationCenter;->updatedChatRanks:I
    add-int/lit16 v1, v0, 0xf7
    sput v2, Lorg/telegram/messenger/NotificationCenter;->joinedGroup:I
    add-int/lit16 v2, v0, 0xf8
    sput v1, Lorg/telegram/messenger/NotificationCenter;->loadedAiComposeTones:I
    add-int/lit16 v1, v0, 0xf9
    sput v2, Lorg/telegram/messenger/NotificationCenter;->updatedChatbot:I
    add-int/lit16 v2, v0, 0xfa
    sput v1, Lorg/telegram/messenger/NotificationCenter;->walletUpdate:I
    add-int/lit16 v1, v0, 0xfb
    sput v2, Lorg/telegram/messenger/NotificationCenter;->walletTransactionsUpdate:I
    add-int/lit16 v2, v0, 0xfc
    sput v1, Lorg/telegram/messenger/NotificationCenter;->activeAccountChanged:I
    add-int/lit16 v1, v0, 0xfd
    sput v2, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I
    add-int/lit16 v2, v0, 0xfe
    sput v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I
    add-int/lit16 v1, v0, 0xff
    sput v2, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I
    add-int/lit16 v2, v0, 0x100
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I
    add-int/lit16 v1, v0, 0x101
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I
    add-int/lit16 v2, v0, 0x102
    sput v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I
    add-int/lit16 v1, v0, 0x103
    sput v2, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I
    add-int/lit16 v2, v0, 0x104
    sput v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I
    add-int/lit16 v1, v0, 0x105
    sput v2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I
    add-int/lit16 v2, v0, 0x106
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I
    add-int/lit16 v1, v0, 0x107
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I
    add-int/lit16 v2, v0, 0x108
    sput v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I
    add-int/lit16 v1, v0, 0x109
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didApplyNewTheme:I
    add-int/lit16 v2, v0, 0x10a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I
    add-int/lit16 v1, v0, 0x10b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I
    add-int/lit16 v2, v0, 0x10c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I
    add-int/lit16 v1, v0, 0x10d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I
    add-int/lit16 v2, v0, 0x10e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->goingToPreviewTheme:I
    add-int/lit16 v1, v0, 0x10f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I
    add-int/lit16 v2, v0, 0x110
    sput v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I
    add-int/lit16 v1, v0, 0x111
    sput v2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I
    add-int/lit16 v2, v0, 0x112
    sput v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I
    add-int/lit16 v1, v0, 0x113
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I
    add-int/lit16 v2, v0, 0x114
    sput v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I
    add-int/lit16 v1, v0, 0x115
    sput v2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I
    add-int/lit16 v2, v0, 0x116
    sput v1, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I
    add-int/lit16 v1, v0, 0x117
    sput v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I
    add-int/lit16 v2, v0, 0x118
    sput v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I
    add-int/lit16 v1, v0, 0x119
    sput v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I
    add-int/lit16 v2, v0, 0x11a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I
    add-int/lit16 v1, v0, 0x11b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I
    add-int/lit16 v2, v0, 0x11c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->closeSearchByActiveAction:I
    add-int/lit16 v1, v0, 0x11d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I
    add-int/lit16 v2, v0, 0x11e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->screenStateChanged:I
    add-int/lit16 v1, v0, 0x11f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I
    add-int/lit16 v2, v0, 0x120
    sput v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I
    add-int/lit16 v1, v0, 0x121
    sput v2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I
    add-int/lit16 v2, v0, 0x122
    sput v1, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I
    add-int/lit16 v1, v0, 0x123
    sput v2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I
    add-int/lit16 v2, v0, 0x124
    sput v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I
    add-int/lit16 v1, v0, 0x125
    sput v2, Lorg/telegram/messenger/NotificationCenter;->appUpdateLoading:I
    add-int/lit16 v2, v0, 0x126
    sput v1, Lorg/telegram/messenger/NotificationCenter;->onDatabaseMigration:I
    add-int/lit16 v1, v0, 0x127
    sput v2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I
    add-int/lit16 v2, v0, 0x128
    sput v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I
    add-int/lit16 v1, v0, 0x129
    sput v2, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I
    add-int/lit16 v2, v0, 0x12a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I
    add-int/lit16 v1, v0, 0x12b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I
    add-int/lit16 v2, v0, 0x12c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadReactionsCounterChanged:I
    add-int/lit16 v1, v0, 0x12d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadPollVotesCounterChanged:I
    add-int/lit16 v2, v0, 0x12e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->onDatabaseOpened:I
    add-int/lit16 v1, v0, 0x12f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I
    add-int/lit16 v2, v0, 0x130
    sput v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I
    add-int/lit16 v1, v0, 0x131
    sput v2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I
    add-int/lit16 v2, v0, 0x132
    sput v1, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I
    add-int/lit16 v1, v0, 0x133
    sput v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I
    add-int/lit16 v2, v0, 0x134
    sput v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I
    add-int/lit16 v1, v0, 0x135
    sput v2, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I
    add-int/lit16 v2, v0, 0x136
    sput v1, Lorg/telegram/messenger/NotificationCenter;->currentUserShowLimitReachedDialog:I
    add-int/lit16 v1, v0, 0x137
    sput v2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I
    add-int/lit16 v2, v0, 0x138
    sput v1, Lorg/telegram/messenger/NotificationCenter;->billingConfirmPurchaseError:I
    add-int/lit16 v1, v0, 0x139
    sput v2, Lorg/telegram/messenger/NotificationCenter;->premiumStickersPreviewLoaded:I
    add-int/lit16 v2, v0, 0x13a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I
    add-int/lit16 v1, v0, 0x13b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->requestPermissions:I
    add-int/lit16 v2, v0, 0x13c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->permissionsGranted:I
    add-int/lit16 v1, v0, 0x13d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->activityPermissionsGranted:I
    add-int/lit16 v2, v0, 0x13e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I
    add-int/lit16 v1, v0, 0x13f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I
    add-int/lit16 v2, v0, 0x140
    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I
    add-int/lit16 v1, v0, 0x141
    sput v2, Lorg/telegram/messenger/NotificationCenter;->onDatabaseReset:I
    add-int/lit16 v2, v0, 0x142
    sput v1, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I
    add-int/lit16 v1, v0, 0x143
    sput v2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I
    add-int/lit16 v2, v0, 0x144
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storyDeleted:I
    add-int/lit16 v1, v0, 0x145
    sput v2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I
    add-int/lit16 v2, v0, 0x146
    sput v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I
    add-int/lit16 v1, v0, 0x147
    sput v2, Lorg/telegram/messenger/NotificationCenter;->chatlistFolderUpdate:I
    add-int/lit16 v2, v0, 0x148
    sput v1, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I
    add-int/lit16 v1, v0, 0x149
    sput v2, Lorg/telegram/messenger/NotificationCenter;->uploadStoryEnd:I
    add-int/lit16 v2, v0, 0x14a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I
    add-int/lit16 v1, v0, 0x14b
    sput v2, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I
    add-int/lit16 v2, v0, 0x14c
    sput v1, Lorg/telegram/messenger/NotificationCenter;->onReceivedChannelDifference:I
    add-int/lit16 v1, v0, 0x14d
    sput v2, Lorg/telegram/messenger/NotificationCenter;->storiesReadUpdated:I
    add-int/lit16 v2, v0, 0x14e
    sput v1, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I
    add-int/lit16 v1, v0, 0x14f
    sput v2, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloading:I
    add-int/lit16 v2, v0, 0x150
    sput v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloaded:I
    add-int/lit16 v1, v0, 0x151
    sput v2, Lorg/telegram/messenger/NotificationCenter;->botForumTopicDidCreate:I
    add-int/lit16 v2, v0, 0x152
    sput v1, Lorg/telegram/messenger/NotificationCenter;->botForumDraftUpdate:I
    add-int/lit16 v1, v0, 0x153
    sput v2, Lorg/telegram/messenger/NotificationCenter;->botForumDraftDelete:I
    add-int/lit16 v2, v0, 0x154
    sput v1, Lorg/telegram/messenger/NotificationCenter;->tlSchemeParseException:I
    add-int/lit16 v1, v0, 0x155
    sput v2, Lorg/telegram/messenger/NotificationCenter;->memoryLeakFoundException:I
    add-int/lit16 v2, v0, 0x156
    sput v1, Lorg/telegram/messenger/NotificationCenter;->callTabsVisibleToggled:I
    add-int/lit16 v1, v0, 0x157
    sput v2, Lorg/telegram/messenger/NotificationCenter;->contactsPermissionBadgeCheck:I
    add-int/lit16 v2, v0, 0x158
    sput v1, Lorg/telegram/messenger/NotificationCenter;->guardBotDecisionResult:I
    add-int/lit16 v1, v0, 0x159
    sput v2, Lorg/telegram/messenger/NotificationCenter;->webBrowserSettingsUpdate:I
    add-int/lit16 v2, v0, 0x15a
    sput v1, Lorg/telegram/messenger/NotificationCenter;->communityPendingRequestsUpdate:I
    add-int/lit16 v0, v0, 0x15b
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I
    sput v2, Lorg/telegram/messenger/NotificationCenter;->communitySwitchedCollapsed:I
    const/4 v0, 0x4
    new-array v0, v0, [Lorg/telegram/messenger/NotificationCenter;
    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;
    return-void
.end method
