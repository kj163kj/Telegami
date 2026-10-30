package com.aoya.telegami.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(entities = [DeletedMessage::class], version = 2, exportSchema = false)
abstract class AppDatabase : RoomDatabase() {
    abstract fun deletedMessageDao(): DeletedMessageDao

    companion object {
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
                        ).addMigrations(MIGRATION_1_2).build()
                dbInstance = instance
                instance
            }
    }
}
