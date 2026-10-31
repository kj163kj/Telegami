"""Exercise actual migration SQL on SQLite; Android Room validation is separate."""

from pathlib import Path
from contextlib import closing
import re
import sqlite3
import tempfile


source = Path("app/src/main/java/com/aoya/telegami/data/AppDatabase.kt").read_text(encoding="utf-8")
start = source.index("val MIGRATION_2_3")
end = source.index("val MIGRATION_1_2")
sql = re.findall(r'db.execSQL\("([^"]+)"\)', source[start:end])
assert len(sql) == 2
with tempfile.TemporaryDirectory() as temporary:
    database = Path(temporary) / "history.db"
    with closing(sqlite3.connect(database)) as connection, connection:
        connection.execute("CREATE TABLE DeletedMessage (id INTEGER NOT NULL, dialogId INTEGER NOT NULL, createdAt INTEGER, accountId INTEGER NOT NULL, isChannel INTEGER NOT NULL, PRIMARY KEY(accountId,id,dialogId))")
        connection.execute("INSERT INTO DeletedMessage VALUES (12,-34,56,78,0)")
        before = connection.execute("SELECT * FROM DeletedMessage").fetchall()
        for command in sql:
            connection.execute(command)
        assert connection.execute("SELECT * FROM DeletedMessage").fetchall() == before
        insert = "INSERT INTO MessageHistoryEntry VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
        for account, dialog, message in [(1, -2, 3), (9, -2, 3), (1, -4, 3), (1, -2, 5)]:
            for version in range(1, 5):
                connection.execute(insert, (account, dialog, message, version, 1000 + version, 100, 100 + version, f"text{version}", "[]", b"", "none", "{}", b"", b"tl", str(version), None))
        connection.execute("DELETE FROM MessageHistoryEntry WHERE accountId=? AND dialogId=? AND messageId=? AND versionId NOT IN (SELECT versionId FROM MessageHistoryEntry WHERE accountId=? AND dialogId=? AND messageId=? ORDER BY versionId DESC LIMIT ?)", (1, -2, 3, 1, -2, 3, 2))
        assert connection.execute("SELECT count(*) FROM MessageHistoryEntry").fetchone()[0] == 14
        try:
            connection.execute(insert, (1, -2, 3, 4, 1004, 100, 104, "duplicate", "[]", b"", "none", "{}", b"", b"", "4", None))
        except sqlite3.IntegrityError:
            pass
        else:
            raise AssertionError("composite key did not prevent duplicate")
    with closing(sqlite3.connect(database)) as reopened:
        assert reopened.execute("SELECT versionId FROM MessageHistoryEntry WHERE accountId=1 AND dialogId=-2 AND messageId=3 ORDER BY versionId").fetchall() == [(3,), (4,)]
        assert reopened.execute("SELECT * FROM DeletedMessage").fetchall() == before
print("PASS: v2->v3 preserves deletions; scoped retention, composite key and reopen durability")
print("UNVERIFIED: Android Room on-device migration and Telegram process restart")
