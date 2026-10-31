package com.aoya.telegami.data

import androidx.room.Entity
import androidx.room.Index

@Entity(
    primaryKeys = ["accountId", "id", "dialogId"],
    indices = [Index(value = ["accountId", "dialogId"])],
)
data class DeletedMessage(
    val id: Int,
    val dialogId: Long,
    val accountId: Long = -1,
    val createdAt: Long? = System.currentTimeMillis(),
    val isChannel: Boolean = false,
)
