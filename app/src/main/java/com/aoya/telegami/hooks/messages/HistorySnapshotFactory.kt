package com.aoya.telegami.hooks.messages

import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.data.HistoryContent
import com.aoya.telegami.data.HistorySnapshot
import com.aoya.telegami.util.exactField
import com.google.gson.Gson
import java.io.ByteArrayOutputStream
import java.io.DataOutputStream
import java.io.File

class HistorySnapshotFactory(private val target: TelegramHistoryResolver) {
    private val c = target.c
    private val gson = Gson()
    private val photo = c.type("org.telegram.tgnet.TLRPC\$Photo")
    private val document = c.type("org.telegram.tgnet.TLRPC\$Document")
    private val mediaPhoto = c.media.exactField("photo", photo)
    private val mediaDocument = c.media.exactField("document", document)
    private val photoId = photo.exactField("id", c.long)
    private val documentId = document.exactField("id", c.long)
    private val mime = document.exactField("mime_type", String::class.java)
    private val size = document.exactField("size", c.long)
    private val attributes = document.exactField("attributes", c.list)
    private val spoiler = c.media.exactField("spoiler", c.bool)
    private val invert = c.owner.exactField("invert_media", c.bool)

    fun snapshot(owner: Any, slot: Int, accountId: Long): HistorySnapshot? {
        val dialogId = c.dialogForOwner.invoke(null, owner) as Long
        val media = c.mediaField.get(owner)
        if (accountId <= 0 || dialogId == 0L || c.id.getInt(owner) <= 0 ||
            c.encryptedDialog.invoke(null, dialogId) == true ||
            c.action.get(owner) != null || MessageSendPolicy.isSelfDestructing(
                c.ttl.getInt(owner), media?.let(c.mediaTtl::getInt) ?: 0, c.ttlPeriod.getInt(owner),
            )) return null
        val text = c.text.get(owner) as? String ?: ""
        val entityBytes = pack((c.entities.get(owner) as? List<*>)?.filterNotNull().orEmpty())
        val mediaType = media?.javaClass?.simpleName ?: "none"
        val mediaBytes = media?.let(target::encode) ?: byteArrayOf()
        val metadata = linkedMapOf<String, Any?>(
            "type" to mediaType, "invert" to invert.getBoolean(owner),
            "spoiler" to (media?.let(spoiler::getBoolean) ?: false),
        )
        val photoObject = media?.let(mediaPhoto::get)
        val documentObject = media?.let(mediaDocument::get)
        when {
            photoObject != null -> metadata["photoId"] = photoId.getLong(photoObject)
            documentObject != null -> {
                metadata["documentId"] = documentId.getLong(documentObject)
                metadata["mime"] = mime.get(documentObject)
                metadata["size"] = size.getLong(documentObject)
                metadata["attributesHash"] = HistoryContent.hash(
                    pack((attributes.get(documentObject) as? List<*>)?.filterNotNull().orEmpty()),
                )
            }
            // Unknown media remains lossless; don't silently equate distinct payloads.
            media != null -> metadata["payloadHash"] = HistoryContent.hash(mediaBytes)
        }
        val metadataJson = gson.toJson(metadata)
        val preview = if (mediaType == "TL_messageMediaPhoto") {
            (target.messageFile.invoke(target.fileLoaderInstance.invoke(null, slot), owner) as File)
                .takeIf { it.isFile }?.absolutePath
        } else null
        return HistorySnapshot(
            accountId, dialogId, c.id.getInt(owner), System.currentTimeMillis(),
            c.date.getInt(owner), c.editDate.getInt(owner), text,
            gson.toJson(MessageText.entities(c, owner)), entityBytes, mediaType, metadataJson,
            mediaBytes, target.encode(owner),
            HistoryContent.contentHash(text, entityBytes, mediaType, metadataJson),
            preview,
        )
    }

    private fun pack(objects: List<Any>): ByteArray {
        val buffer = ByteArrayOutputStream()
        DataOutputStream(buffer).use { stream ->
            stream.writeInt(objects.size)
            objects.forEach {
                val bytes = target.encode(it)
                stream.writeInt(bytes.size)
                stream.write(bytes)
            }
        }
        return buffer.toByteArray()
    }
}
