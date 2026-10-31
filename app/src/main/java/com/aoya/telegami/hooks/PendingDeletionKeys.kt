package com.aoya.telegami.hooks

import com.aoya.telegami.data.MessageKey

class PendingDeletionKeys(
    private val clock: () -> Long = System::nanoTime,
    private val lifetimeNanos: Long = 30_000_000_000L,
) {
    private val deadlines = mutableMapOf<MessageKey, Long>()

    @Synchronized
    fun add(keys: Collection<MessageKey>) {
        val now = clock()
        removeExpired(now)
        keys.forEach { deadlines[it] = now + lifetimeNanos }
    }

    @Synchronized
    fun contains(key: MessageKey): Boolean {
        val deadline = deadlines[key] ?: return false
        if (clock() - deadline >= 0) {
            deadlines.remove(key)
            return false
        }
        return true
    }

    @Synchronized
    fun resolve(keys: Collection<MessageKey>) {
        keys.forEach(deadlines::remove)
    }

    private fun removeExpired(now: Long) {
        deadlines.entries.removeAll { now - it.value >= 0 }
    }
}
