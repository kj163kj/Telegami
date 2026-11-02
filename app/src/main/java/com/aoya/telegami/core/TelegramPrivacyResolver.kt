package com.aoya.telegami.core

import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod

/** Verified against the supplied APK; see docs/24_PRIVACY_CHANNEL_HOOK_FIX.md. */
class TelegramPresenceResolver(private val loader: ClassLoader) {
    private fun type(name: String) = loader.loadClass(name)
    private val int = Int::class.javaPrimitiveType!!
    private val bool = Boolean::class.javaPrimitiveType!!
    private val userConfig = type("org.telegram.messenger.UserConfig")
    private val connections = type("org.telegram.tgnet.ConnectionsManager")
    val status = type("org.telegram.tgnet.tl.TL_account\$updateStatus")
    val statusConstructor = status.getDeclaredConstructor()
    val offline = status.exactField("offline", bool)
    val serialize = status.exactMethod(
        "serializeToStream", Void.TYPE, type("org.telegram.tgnet.OutputSerializedData"),
    )
    val maxAccounts = userConfig.exactMethod("getMaxAccountCount", int)
    val configInstance = userConfig.exactMethod("getInstance", userConfig, int)
    val activated = userConfig.exactMethod("isClientActivated", bool)
    val connectionInstance = connections.exactMethod("getInstance", connections, int)
    val sendRequest = connections.exactMethod(
        "sendRequest", int, type("org.telegram.tgnet.TLObject"), type("org.telegram.tgnet.RequestDelegate"),
    )
    val getObjectSize = type("org.telegram.tgnet.TLObject").exactMethod("getObjectSize", int)
    val sendInternal = connections.exactMethod(
        "sendRequestInternal", Void.TYPE, type("org.telegram.tgnet.TLObject"),
        type("org.telegram.tgnet.RequestDelegate"), type("org.telegram.tgnet.RequestDelegateTimestamp"),
        type("org.telegram.tgnet.QuickAckDelegate"), type("org.telegram.tgnet.WriteToSocketDelegate"),
        int, int, int, bool, int,
    )
}

class TelegramStoryPrivacyResolver(loader: ClassLoader) {
    private val bool = Boolean::class.javaPrimitiveType!!
    // Both methods construct story-view requests in classes4.dex.
    val markRead = loader.loadClass("xg.o5").exactMethod(
        "V", bool, loader.loadClass("org.telegram.tgnet.tl.TL_stories\$PeerStories"),
        loader.loadClass("org.telegram.tgnet.tl.TL_stories\$StoryItem"), bool,
    )
    val incrementViews = loader.loadClass("xg.g5").exactMethod(
        "r", bool, Int::class.javaPrimitiveType!!,
    )
}
