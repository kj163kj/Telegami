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
