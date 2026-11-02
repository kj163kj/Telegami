package com.aoya.telegami.core

import android.content.Context
import android.text.TextPaint
import android.view.View
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod
import java.util.ArrayList

/** Exact contracts revalidated against the supplied 13.1.1 APK; see docs/26_TELEGRAM_1311_HOOK_UPGRADE.md. */
class Telegram131Resolver(loader: ClassLoader) {
    private val classLoader = loader
    private fun type(name: String) = classLoader.loadClass(name)

    private val intType = Int::class.javaPrimitiveType!!
    private val longType = Long::class.javaPrimitiveType!!
    private val boolType = Boolean::class.javaPrimitiveType!!
    private val voidType = Void.TYPE
    private val listType = ArrayList::class.java

    val message = type("org.telegram.messenger.MessageObject")
    private val grouped = type("org.telegram.messenger.MessageObject\$GroupedMessages")
    private val controller = type("org.telegram.messenger.MessagesController")
    private val storage = type("org.telegram.messenger.MessagesStorage")
    private val baseController = type("org.telegram.messenger.BaseController")
    private val userConfig = type("org.telegram.messenger.UserConfig")
    private val localeController = type("org.telegram.messenger.LocaleController")
    private val queue = type("org.telegram.messenger.DispatchQueue")
    private val database = type("org.telegram.SQLite.SQLiteDatabase")
    private val cursor = type("org.telegram.SQLite.SQLiteCursor")
    private val dialogArrayMap = type("z.f")
    private val longSparseIntArray = type("org.telegram.messenger.support.LongSparseIntArray")
    private val sparseIntArray = type("android.util.SparseIntArray")
    val cell = type("org.telegram.ui.Cells.u1")
    val chat = type("org.telegram.ui.ko")
    private val theme = type("org.telegram.ui.ActionBar.n6")
    private val notifications = type("org.telegram.messenger.NotificationCenter")
    val ownDelete = controller.exactMethod(
        "deleteMessages", voidType, listType, listType, type("org.telegram.tgnet.TLRPC\$EncryptedChat"),
        longType, boolType, intType, boolType, longType, type("org.telegram.tgnet.TLObject"), intType, boolType, intType,
    )
    val processUpdateUiDeletion = controller.exactMethod(
        "lambda\$processUpdateArray\$419", voidType,
        longSparseIntArray, longSparseIntArray, sparseIntArray,
        dialogArrayMap, dialogArrayMap, dialogArrayMap, dialogArrayMap, dialogArrayMap,
        longSparseIntArray,
    )
    val dialogMapSize = dialogArrayMap.exactMethod("m", intType)
    val dialogMapKey = dialogArrayMap.exactMethod("j", longType, intType)
    val dialogMapValue = dialogArrayMap.exactMethod("n", Any::class.java, intType)
    val storageDelete = storage.exactMethod(
        "markMessagesAsDeletedInternal", listType, longType, listType, boolType, intType, intType,
    )
    val chatNotification = chat.exactMethod("a8", voidType, intType, Array<Any>::class.java)
    val fillMenu = chat.exactMethod("q8", voidType, message, listType, listType, listType)
    val chatCreateView = chat.exactMethod("createView", View::class.java, Context::class.java)
    val chatDialog = chat.exactField("S5", longType)
    val chatAccount = chat.exactField("currentAccount", intType)

    val measureTime = cell.exactMethod("x3", voidType, message)
    val bindMessage = cell.exactMethod("V3", voidType, message, grouped, boolType, boolType, boolType, boolType)
    val timeText = cell.exactField("sb", CharSequence::class.java)
    val timeTextWidth = cell.exactField("pb", intType)
    val timeWidth = cell.exactField("ob", intType)
    val edited = cell.exactField("Zc", boolType)
    val boundMessage = cell.exactField("x7", message)
    val timePaint = theme.exactField("T2", TextPaint::class.java)

    val messageAccount = message.exactField("currentAccount", intType)
    val messageId = message.exactMethod("getId", intType)
    val messageDialog = message.exactMethod("getDialogId", longType)
    val getUserConfig = baseController.exactMethod("getUserConfig", userConfig)
    private val configInstance = userConfig.exactMethod("getInstance", userConfig, intType)
    private val clientUserId = userConfig.exactMethod("getClientUserId", longType)
    val localizedString = localeController.exactMethod("getString", String::class.java, intType)
    val getQueue = storage.exactMethod("getStorageQueue", queue)
    val storageDatabase = storage.exactField("database", database)
    val query = database.exactMethod("queryFinalized", cursor, String::class.java, Array<Any>::class.java)
    val cursorNext = cursor.exactMethod("next", boolType)
    val cursorLong = cursor.exactMethod("longValue", longType, intType)
    val cursorInt = cursor.exactMethod("intValue", intType, intType)
    val cursorDispose = cursor.exactMethod("dispose", voidType)
    val deletedEvent = notifications.exactField("messagesDeleted", intType)

    init {
        require(Thread::class.java.isAssignableFrom(queue)) { "Storage queue is not a Thread" }
    }

    fun accountIdForController(instance: Any): Long =
        clientUserId.invoke(getUserConfig.invoke(instance)) as Long

    fun accountIdForSlot(slot: Int): Long =
        clientUserId.invoke(configInstance.invoke(null, slot)) as Long
}
