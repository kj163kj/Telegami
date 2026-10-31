package com.aoya.telegami.data

object HistoryRevisions {
    /** Non-destructive compatibility projection; never distinct-by-text across the whole history. */
    fun visible(entries: List<MessageHistoryEntry>): List<MessageHistoryEntry> {
        if (entries.isEmpty()) return emptyList()
        val first = entries.first()
        require(entries.all { it.accountId == first.accountId && it.dialogId == first.dialogId && it.messageId == first.messageId })
        val result = mutableListOf<MessageHistoryEntry>()
        entries.forEach { raw ->
            val entry = HistoryContent.canonical(raw)
            val last = result.lastOrNull()
            val originalReplay = entry.editDate == 0 && result.any { it.editDate == 0 && it.contentHash == entry.contentHash }
            if (!originalReplay && (last == null || (entry.editDate >= last.editDate && entry.contentHash != last.contentHash))) {
                result.add(entry)
            }
        }
        return result
    }
}
