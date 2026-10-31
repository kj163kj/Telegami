package com.aoya.telegami.data

import com.aoya.telegami.Telegami
import com.aoya.telegami.service.Config
import com.aoya.telegami.util.Logger
import java.io.File
import java.io.FileOutputStream

object MessageHistoryStorage {
    private val directory get() = File(Telegami.context.filesDir, "telegami/history")
    private val lock = Any()
    private var lastMaintenance = 0L

    fun persist(snapshots: List<HistorySnapshot>) = synchronized(lock) {
        if (!Config.isFeatureEnabled("enable_edit_history")) return@synchronized
        val dao = Telegami.db.messageHistoryDao()
        maintain(dao)
        val entries = snapshots.map { snapshot ->
            val preview = savePreview(snapshot)
            MessageHistoryEntry(
                snapshot.accountId, snapshot.dialogId, snapshot.messageId, 0, snapshot.capturedAt,
                snapshot.messageDate, snapshot.editDate, snapshot.text, snapshot.entitiesJson, snapshot.entitiesTl,
                snapshot.mediaType, snapshot.mediaMetadata, snapshot.mediaTl, snapshot.ownerTl, snapshot.contentHash, preview,
            )
        }
        val inserted = dao.append(entries, Config.historyMaxVersions())
        entries.firstOrNull()?.let {
            val revisions = entries.joinToString(",") { row ->
                "${row.editDate}:${HistoryContent.canonical(row).contentHash.take(12)}:${row.mediaType}"
            }
            Logger.i("History append mid=${it.messageId} dialog=${it.dialogId} candidates=${entries.size} inserted=$inserted revisions=[$revisions]", "EditHistory", xposed = true)
        }
        Unit
    }

    fun read(key: MessageKey): List<MessageHistoryEntry> = synchronized(lock) {
        val dao = Telegami.db.messageHistoryDao()
        maintain(dao, force = true)
        dao.trim(key.accountId, key.dialogId, key.messageId, Config.historyMaxVersions())
        val stored = dao.read(key.accountId, key.dialogId, key.messageId)
        val visible = HistoryRevisions.visible(stored)
        Logger.i("History read mid=${key.messageId} dialog=${key.dialogId} stored=${stored.size} visible=${visible.size}", "EditHistory", xposed = true)
        visible
    }

    private fun maintain(dao: MessageHistoryDao, force: Boolean = false) {
        val now = System.currentTimeMillis()
        if (!force && now - lastMaintenance in 0 until 3_600_000L) return
        val days = Config.historyRetentionDays()
        dao.expire(now - days * 86_400_000L)
        val referenced = dao.referencedPreviews().toHashSet()
        directory.listFiles()?.filter { it.isFile && it.name !in referenced }?.forEach { it.delete() }
        lastMaintenance = now
    }

    private fun savePreview(snapshot: HistorySnapshot): String? = runCatching {
        val source = snapshot.previewSource?.let(::File) ?: return null
        if (!source.isFile || source.length() !in 1..8_388_608L) return null
        val folder = directory
        if (!folder.exists() && !folder.mkdirs()) return null
        val name = "${snapshot.accountId}_${snapshot.dialogId}_${snapshot.messageId}_${snapshot.contentHash}.image"
        val destination = File(folder, name)
        if (destination.isFile) return name
        if (folder.listFiles().orEmpty().sumOf { it.length() } + source.length() > 134_217_728L) return null
        val temporary = File(folder, "$name.tmp")
        try {
            source.inputStream().use { input ->
                FileOutputStream(temporary).use { output ->
                    val buffer = ByteArray(8192)
                    var total = 0L
                    while (true) {
                        val count = input.read(buffer)
                        if (count < 0) break
                        total += count
                        check(total <= 8_388_608L) { "Preview exceeds size bound" }
                        output.write(buffer, 0, count)
                    }
                    output.fd.sync()
                }
            }
            check(temporary.renameTo(destination)) { "Cannot persist preview" }
            name
        } finally {
            temporary.delete()
        }
    }.onFailure { Logger.e("Local history preview unavailable", it, "EditHistory") }.getOrNull()

    fun previewFile(name: String): File? {
        if (!name.matches(Regex("[-_a-zA-Z0-9]+\\.image"))) return null
        return File(directory, name).takeIf { it.isFile }
    }
}
