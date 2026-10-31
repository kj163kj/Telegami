package com.aoya.telegami.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(entities = [DeletedMessage::class, MessageHistoryEntry::class], version = 3, exportSchema = false)
abstract class AppDatabase : RoomDatabase() {
    abstract fun deletedMessageDao(): DeletedMessageDao
    abstract fun messageHistoryDao(): MessageHistoryDao

    companion object {
        val MIGRATION_2_3 = object : Migration(2, 3) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("CREATE TABLE IF NOT EXISTS MessageHistoryEntry (accountId INTEGER NOT NULL, dialogId INTEGER NOT NULL, messageId INTEGER NOT NULL, versionId INTEGER NOT NULL, capturedAt INTEGER NOT NULL, messageDate INTEGER NOT NULL, editDate INTEGER NOT NULL, messageText TEXT NOT NULL, messageEntities TEXT NOT NULL, entitiesTl BLOB NOT NULL, mediaType TEXT NOT NULL, mediaMetadata TEXT NOT NULL, mediaTl BLOB NOT NULL, ownerTl BLOB NOT NULL, contentHash TEXT NOT NULL, previewPath TEXT, PRIMARY KEY(accountId, dialogId, messageId, versionId))")
                db.execSQL("CREATE INDEX IF NOT EXISTS index_MessageHistoryEntry_capturedAt ON MessageHistoryEntry (capturedAt)")
            }
        }

        val MIGRATION_1_2 = object : Migration(1, 2) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("CREATE TABLE DeletedMessage_v2 (id INTEGER NOT NULL, dialogId INTEGER NOT NULL, createdAt INTEGER, accountId INTEGER NOT NULL, isChannel INTEGER NOT NULL, PRIMARY KEY(accountId, id, dialogId))")
                // v1 has no account evidence. Retain its rows without guessing an owner.
                db.execSQL("INSERT INTO DeletedMessage_v2 (id, dialogId, createdAt, accountId, isChannel) SELECT id, dialogId, coalesce(createdAt, strftime('%s','now') * 1000), -1, 0 FROM DeletedMessage")
                db.execSQL("DROP TABLE DeletedMessage")
                db.execSQL("ALTER TABLE DeletedMessage_v2 RENAME TO DeletedMessage")
                db.execSQL("CREATE INDEX index_DeletedMessage_accountId_dialogId ON DeletedMessage (accountId, dialogId)")
            }
        }

        @Volatile
        private var dbInstance: AppDatabase? = null

        fun getDatabase(context: Context): AppDatabase =
            dbInstance ?: synchronized(this) {
                val instance =
                    Room
                        .databaseBuilder(
                            context,
                            AppDatabase::class.java,
                            "telegami",
                        ).addMigrations(MIGRATION_1_2, MIGRATION_2_3).build()
                dbInstance = instance
                instance
            }
    }
}
