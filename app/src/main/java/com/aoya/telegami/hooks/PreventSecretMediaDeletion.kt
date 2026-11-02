package com.aoya.telegami.hooks

import android.graphics.drawable.Drawable
import android.util.Log
import android.view.View
import android.widget.FrameLayout
import com.aoya.telegami.Telegami
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.SecretMedia
import com.aoya.telegami.util.findMethod
import com.aoya.telegami.util.exactMethod
import com.aoya.telegami.util.exactField
import com.aoya.telegami.virt.messenger.FileLoader
import com.aoya.telegami.virt.messenger.MediaController
import com.aoya.telegami.virt.ui.SecretMediaViewer
import com.aoya.telegami.virt.ui.components.BulletinFactory
import io.github.libxposed.api.XposedInterface

object PreventSecretMediaDeletion {
    const val CHAT_ACTIVITY_CN = "org.telegram.ui.ChatActivity"
    const val MESSAGES_STORAGE_CN = "org.telegram.messenger.MessagesStorage"
    const val SECRET_MEDIA_VIEWER_CN = "org.telegram.ui.SecretMediaViewer"

    val galleryDrawable: Drawable? by lazy {
        Telegami.getDrawableResource("msg_gallery")
    }

    fun install(
        xposed: XposedInterface,
        classLoader: ClassLoader,
    ) {
        if (!Config.isFeatureEnabled("PreventSecretMediaDeletion")) return
        val sendDelete = classLoader.findMethod(CHAT_ACTIVITY_CN, "sendSecretMediaDelete")
        xposed.hook(sendDelete).intercept { chain ->
            val args = chain.args.toMutableList()
            var result: Any? = null
            var hasResult = false
            try {
                hasResult = true
            } catch (throwable: Throwable) {
                Log.e("Telegami", "Hook callback failed before ${sendDelete.name}", throwable)
            }
            if (!hasResult) result = chain.proceed(args.toTypedArray())
            result
        }
        val emptyMedia = classLoader.findMethod(MESSAGES_STORAGE_CN, "emptyMessagesMedia")
        xposed.hook(emptyMedia).intercept { chain ->
            val args = chain.args.toMutableList()
            var result: Any? = null
            var hasResult = false
            try {
                val dialogId = args[0] as Long
                val mIds = args[1] as ArrayList<Int>
                val accountId = Telegami.telegram.accountIdForController(chain.thisObject!!)
                if (Globals.handleDeletedMessages(dialogId, mIds, accountId)) return@intercept chain.proceed(args.toTypedArray())
                hasResult = true
            } catch (throwable: Throwable) {
                Log.e("Telegami", "Hook callback failed before ${emptyMedia.name}", throwable)
            }
            if (!hasResult) result = chain.proceed(args.toTypedArray())
            result
        }
        // 13.1.1 inlines openMedia into the message-cell delegate, including the website APK.
        val viewerClass = classLoader.loadClass(SECRET_MEDIA_VIEWER_CN)
        val hasInstance = viewerClass.exactMethod("g", Boolean::class.javaPrimitiveType!!)
        val visible = viewerClass.exactField("s", Boolean::class.javaPrimitiveType!!)
        val currentMessage = viewerClass.exactField("g0", Telegami.telegram.message)
        val getViewer = viewerClass.exactMethod("f", viewerClass)
        val openMedia = classLoader.loadClass("org.telegram.ui.vn").exactMethod(
            "n0", Void.TYPE, Telegami.telegram.cell,
            Float::class.javaPrimitiveType!!, Float::class.javaPrimitiveType!!, Boolean::class.javaPrimitiveType!!,
        )
        xposed.hook(openMedia).intercept { chain ->
            val result = chain.proceed()
            try {
                if (hasInstance.invoke(null) != true) return@intercept result
                val nativeViewer = getViewer.invoke(null)!!
                if (!visible.getBoolean(nativeViewer)) return@intercept result
                if (currentMessage.get(nativeViewer) !== Telegami.telegram.boundMessage.get(chain.args[0])) {
                    return@intercept result
                }
                val viewer = SecretMediaViewer(nativeViewer)
                val msgObj = viewer.currentMessageObject ?: return@intercept result
                if (msgObj.isSecretMedia()) addDownloadItem(viewer, msgObj)
            } catch (throwable: Throwable) {
                Log.e("Telegami", "Failed to add secret-media download item", throwable)
            }
            result
        }
    }

    private fun addDownloadItem(
        viewer: SecretMediaViewer,
        msgObj: MessageObject,
    ) {
        val file = msgObj.messageOwner?.let { FileLoader.getInstance(viewer.currentAccount).getPathToMessage(it) } ?: return
        val menu = viewer.actionBar.menu ?: viewer.actionBar.createMenu()
        val downloadItem = (menu.getItem(1) ?: menu.addItem(1, galleryDrawable ?: return)) as FrameLayout
        downloadItem.setOnClickListener(
            View.OnClickListener {
                val decryptedFile = SecretMedia.decrypt(file, viewer.isVideo)
                MediaController.saveFile(
                    decryptedFile.toString(),
                    viewer.parentActivity,
                    0,
                    null,
                    null,
                ) {
                    decryptedFile?.delete()
                    BulletinFactory.createSaveToGalleryBulletin(viewer.containerView, viewer.isVideo, null).show()
                }
            },
        )
        (viewer.secretDeleteTimer as? View)?.visibility = View.GONE
    }
}
