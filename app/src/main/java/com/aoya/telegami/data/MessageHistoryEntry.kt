package com.aoya.telegami.data

import androidx.room.Entity
import androidx.room.Index

@Entity(
    primaryKeys = ["accountId", "dialogId", "messageId", "versionId"],
    indices = [Index(value = ["capturedAt"])],
)
data class MessageHistoryEntry(
    val accountId: Long,
    val dialogId: Long,
    val messageId: Int,
    val versionId: Long,
    val capturedAt: Long,
    val messageDate: Int,
    val editDate: Int,
    val messageText: String,
    val messageEntities: String,
    val entitiesTl: ByteArray,
    val mediaType: String,
    val mediaMetadata: String,
    val mediaTl: ByteArray,
    val ownerTl: ByteArray,
    val contentHash: String,
    val previewPath: String?,
)
