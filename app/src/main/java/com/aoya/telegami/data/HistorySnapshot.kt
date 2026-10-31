package com.aoya.telegami.data

import java.nio.ByteBuffer
import java.security.MessageDigest

data class HistorySnapshot(
    val accountId: Long,
    val dialogId: Long,
    val messageId: Int,
    val capturedAt: Long,
    val messageDate: Int,
    val editDate: Int,
    val text: String,
    val entitiesJson: String,
    val entitiesTl: ByteArray,
    val mediaType: String,
    val mediaMetadata: String,
    val mediaTl: ByteArray,
    val ownerTl: ByteArray,
    val contentHash: String,
    val previewSource: String?,
)

object HistoryContent {
    private const val NO_MEDIA = "{\"type\":\"none\",\"invert\":false,\"spoiler\":false}"

    fun contentHash(text: String, entities: ByteArray, mediaType: String, metadata: String): String = hash(
        text.toByteArray(Charsets.UTF_8), entities,
        (if (mediaType == "none" || mediaType == "TL_messageMediaEmpty") NO_MEDIA else metadata).toByteArray(Charsets.UTF_8),
    )

    /** Older rows hashed null and TL_messageMediaEmpty differently. Keep their raw TL untouched. */
    fun canonical(entry: MessageHistoryEntry): MessageHistoryEntry = if (
        entry.mediaType == "none" || entry.mediaType == "TL_messageMediaEmpty"
    ) entry.copy(contentHash = contentHash(entry.messageText, entry.entitiesTl, entry.mediaType, entry.mediaMetadata)) else entry

    /** Length delimiters avoid collisions between differently partitioned fields. */
    fun hash(vararg parts: ByteArray): String {
        val digest = MessageDigest.getInstance("SHA-256")
        parts.forEach {
            digest.update(ByteBuffer.allocate(4).putInt(it.size).array())
            digest.update(it)
        }
        return digest.digest().joinToString("") { "%02x".format(it.toInt() and 255) }
    }

    fun appendHashes(previous: String?, candidates: List<String>): List<String> {
        var last = previous
        return candidates.filter { next ->
            (next != last).also { if (it) last = next }
        }
    }
}
