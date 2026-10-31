package com.aoya.telegami.core

import com.aoya.telegami.hooks.messages.ForwardMediaPolicy
import com.aoya.telegami.util.copyLocalMediaGraph
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod
import java.io.File

/** Native FileLoader/NotificationCenter/upload contracts in local-forward-1310. */
class TelegramMediaResolver(private val send: TelegramSendResolver) {
    private val c = send.common
    private val tlObject = c.type("org.telegram.tgnet.TLObject")
    private val fileLoader = c.type("org.telegram.messenger.FileLoader")
    private val document = c.type("org.telegram.tgnet.TLRPC\$Document")
    private val photo = c.type("org.telegram.tgnet.TLRPC\$Photo")
    private val photoSize = c.type("org.telegram.tgnet.TLRPC\$PhotoSize")
    private val fileLocation = c.type("org.telegram.tgnet.TLRPC\$FileLocation")
    private val imageLocation = c.type("org.telegram.messenger.ImageLocation")
    private val notificationCenter = c.type("org.telegram.messenger.NotificationCenter")
    val delegate = c.type("org.telegram.messenger.NotificationCenter\$NotificationCenterDelegate")
    val received = delegate.exactMethod(
        "didReceivedNotification", Void.TYPE, c.int, c.int, Array<Any>::class.java,
    )
    val centerInstance = notificationCenter.exactMethod("getInstance", notificationCenter, c.int)
    val addObserver = notificationCenter.exactMethod("addObserver", Void.TYPE, delegate, c.int)
    val removeObserver = notificationCenter.exactMethod("removeObserver", Void.TYPE, delegate, c.int)
    val loaded = notificationCenter.exactField("fileLoaded", c.int).getInt(null)
    val failed = notificationCenter.exactField("fileLoadFailed", c.int).getInt(null)
    private val loaderInstance = fileLoader.exactMethod("getInstance", fileLoader, c.int)
    private val attachName = fileLoader.exactMethod("getAttachFileName", String::class.java, tlObject)
    private val attachPath = fileLoader.exactMethod("getPathToAttach", File::class.java, tlObject, c.bool)
    private val messagePath = fileLoader.exactMethod("getPathToMessage", File::class.java, c.owner)
    private val loadDocument = fileLoader.exactMethod("loadFile", Void.TYPE, document, Any::class.java, c.int, c.int)
    private val loadPhoto = fileLoader.exactMethod(
        "loadFile", Void.TYPE, imageLocation, Any::class.java, String::class.java, c.int, c.int,
    )
    private val photoLocation = imageLocation.exactMethod("getForPhoto", imageLocation, photoSize, photo)
    private val closestPhoto = fileLoader.exactMethod("getClosestPhotoSizeWithSize", photoSize, c.list, c.int)
    private val photoSizes = photo.exactField("sizes", c.list)
    private val photoBytes = photoSize.exactField("size", c.int)
    private val messageBytes = c.message.exactMethod("getSize", c.long)
    private val documentBytes = document.exactField("size", c.long)
    private val generatePhoto = send.helper.exactMethod(
        "generatePhotoSizes", send.paramsPhoto.type, String::class.java, android.net.Uri::class.java,
    )
    private val documentId = document.exactField("id", c.long)
    private val accessHash = document.exactField("access_hash", c.long)
    private val reference = document.exactField("file_reference", ByteArray::class.java)
    private val dc = document.exactField("dc_id", c.int)
    private val flags = document.exactField("flags", c.int)
    private val thumbs = document.exactField("thumbs", c.list)
    private val videoThumbs = document.exactField("video_thumbs", c.list)

    data class Download(
        val attachment: Any,
        val photo: Any?,
        val name: String,
        val bytes: Long,
    )

    fun describe(message: Any): Download? {
        val owner = c.ownerField.get(message)!!
        val media = c.mediaField.get(owner) ?: return null
        return when (media.javaClass.simpleName) {
            "TL_messageMediaEmpty", "TL_messageMediaWebPage" -> null
            "TL_messageMediaDocument" -> {
                val value = send.mediaDocument.get(media) ?: error("Media document is unavailable")
                Download(value, null, attachName.invoke(null, value) as String, documentBytes.getLong(value))
            }
            "TL_messageMediaPhoto" -> {
                val value = send.mediaPhoto.get(media) ?: error("Media photo is unavailable")
                val size = closestPhoto.invoke(null, photoSizes.get(value), Int.MAX_VALUE)
                    ?: error("Photo size is unavailable")
                Download(
                    size, value, attachName.invoke(null, size) as String,
                    maxOf(photoBytes.getInt(size).toLong(), messageBytes.invoke(message) as Long),
                )
            }
            else -> error("\u6682\u4e0d\u652f\u6301\u4e0b\u8f7d\u6b64\u5a92\u4f53\u7c7b\u578b")
        }
    }

    fun completeFile(file: File?, expectedBytes: Long): Boolean =
        ForwardMediaPolicy.completeLocalFile(file, expectedBytes)

    fun findLocal(message: Any, download: Download): File? {
        val owner = c.ownerField.get(message)!!
        val loader = loaderInstance.invoke(null, c.messageAccount.getInt(message))
        val explicit = (c.attachPath.get(owner) as? String)?.takeIf { it.isNotBlank() }?.let(::File)
        return listOf(
            explicit,
            messagePath.invoke(loader, owner) as? File,
            attachPath.invoke(loader, download.attachment, true) as? File,
            attachPath.invoke(loader, download.attachment, false) as? File,
        ).firstOrNull { completeFile(it, download.bytes) }
    }

    fun load(message: Any, download: Download) {
        val loader = loaderInstance.invoke(null, c.messageAccount.getInt(message))
        // Cache type 1 keeps the full download in Telegram's cache; no gallery permission is needed.
        if (download.photo == null) {
            loadDocument.invoke(loader, download.attachment, message, 3, 1)
        } else {
            val location = photoLocation.invoke(null, download.attachment, download.photo)
                ?: error("Photo download location is unavailable")
            loadPhoto.invoke(loader, location, message, null, 3, 1)
        }
    }

    fun generateLocalPhoto(slot: Int, file: File): Any =
        generatePhoto.invoke(send.instance.invoke(null, slot), file.absolutePath, null)
            ?: error("\u65e0\u6cd5\u751f\u6210\u672c\u5730\u56fe\u7247\u53d1\u9001\u6570\u636e")

    fun copyLocalPhoto(value: Any): Any = copyLocalMediaGraph(value) {
        photo.isInstance(it) || photoSize.isInstance(it) || fileLocation.isInstance(it)
    }

    /** Only detached data reaches this method. access_hash=0 selects Telegram's upload branch. */
    fun makeLocalDocument(value: Any, file: File) {
        documentId.setLong(value, 0L)
        accessHash.setLong(value, 0L)
        reference.set(value, byteArrayOf())
        dc.setInt(value, 0)
        documentBytes.setLong(value, file.length())
        thumbs.set(value, arrayListOf<Any>())
        videoThumbs.set(value, arrayListOf<Any>())
        flags.setInt(value, flags.getInt(value) and 3.inv())
    }
}
