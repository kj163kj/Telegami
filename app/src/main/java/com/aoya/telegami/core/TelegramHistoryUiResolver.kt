package com.aoya.telegami.core

import android.content.Context
import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import android.widget.ImageView
import com.aoya.telegami.Telegami
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod
import java.lang.reflect.Proxy

/** Host UI contracts recorded in artifacts/dexsql/history-native-1310. */
class TelegramHistoryUiResolver(val history: TelegramHistoryResolver) {
    private val c = history.c
    private val fragment = c.type("org.telegram.ui.ActionBar.r2")
    private val bar = c.type("org.telegram.ui.ActionBar.l")
    private val menu = c.type("org.telegram.ui.ActionBar.z")
    private val item = c.type("org.telegram.ui.ActionBar.x0")
    private val theme = c.type("org.telegram.ui.ActionBar.n6")
    private val actionCell = c.type("org.telegram.ui.Cells.x0")
    private val cell = Telegami.telegram.cell
    private val delegate = c.type("org.telegram.ui.Cells.l1")
    val createBar = fragment.exactMethod("createActionBar", bar, Context::class.java)
    val getBar = fragment.exactMethod("getActionBar", bar)
    val getTitle = bar.exactMethod("getTitle", String::class.java)
    val title = bar.exactMethod("setTitle", Void.TYPE, CharSequence::class.java)
    val subtitle = bar.exactMethod("setSubtitle", Void.TYPE, CharSequence::class.java)
    val backImage = bar.exactMethod("setBackButtonImage", Void.TYPE, c.int)
    val back = bar.exactMethod("getBackButton", ImageView::class.java)
    val occupyStatus = bar.exactMethod("setOccupyStatusBar", Void.TYPE, c.bool)
    val createMenu = bar.exactMethod("i", menu)
    val addItem = menu.exactMethod("a", item, c.int, c.int)
    // R8 inlined setIsSearchField(true); k() lazily constructs the native search views.
    val searchEnabled = item.exactField("F", c.bool)
    val initSearch = item.exactMethod("k", Void.TYPE)
    val searchField = item.exactMethod("getSearchField", c.type("org.telegram.ui.Components.EditTextBoldCursor"))
    val searchHint = item.exactMethod("setSearchFieldHint", Void.TYPE, CharSequence::class.java)
    val toggleSearch = item.exactMethod("L", c.bool, c.bool)
    val searchVisible = bar.exactMethod("w", Void.TYPE, c.bool)
    val wallpaper = theme.exactMethod("t0", Drawable::class.java)
    val actionConstructor = actionCell.getConstructor(Context::class.java)
    val actionText = actionCell.exactMethod("setCustomText", Void.TYPE, CharSequence::class.java)
    val cellConstructor = cell.getConstructor(Context::class.java, c.int)
    val fullyDraw = cell.exactMethod("setFullyDraw", Void.TYPE, c.bool)
    val assistant = cell.exactMethod("setAllowAssistant", Void.TYPE, c.bool)
    val isChat = cell.exactField("M7", c.bool)
    val setDelegate = cell.exactMethod("setDelegate", Void.TYPE, delegate)
    val photoImage = cell.exactMethod("getPhotoImage", c.type("org.telegram.messenger.ImageReceiver"))
    val setBitmap = c.type("org.telegram.messenger.ImageReceiver").exactMethod("setImageBitmap", Void.TYPE, Bitmap::class.java)
    private val editHide = c.owner.exactField("edit_hide", c.bool)
    private val reply = c.owner.exactField("reply_to", c.type("org.telegram.tgnet.TLRPC\$MessageReplyHeader"))
    private val messageConstructor = c.message.getConstructor(c.int, c.owner, c.bool, c.bool)

    fun readonlyDelegate(): Any = Proxy.newProxyInstance(c.loader, arrayOf(delegate)) { proxy, method, args ->
        when (method.name) {
            "equals" -> proxy === args?.firstOrNull()
            "hashCode" -> System.identityHashCode(proxy)
            "toString" -> "TelegamiReadonlyHistoryDelegate"
            else -> when (method.returnType) {
                java.lang.Boolean.TYPE -> false
                java.lang.Integer.TYPE -> 0
                java.lang.Long.TYPE -> 0L
                java.lang.Float.TYPE -> 0f
                java.lang.Double.TYPE -> 0.0
                java.lang.Byte.TYPE -> 0.toByte()
                java.lang.Short.TYPE -> 0.toShort()
                java.lang.Character.TYPE -> '\u0000'
                else -> null
            }
        }
    }

    fun message(bytes: ByteArray, slot: Int): Any {
        val owner = history.decodeOwner(bytes)
        editHide.setBoolean(owner, true)
        reply.set(owner, null)
        // Always detached; the live message, its caption and its edit marker are never changed.
        return messageConstructor.newInstance(slot, owner, false, true)
    }
}
