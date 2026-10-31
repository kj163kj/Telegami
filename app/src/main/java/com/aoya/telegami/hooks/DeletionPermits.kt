package com.aoya.telegami.hooks

import com.aoya.telegami.data.MessageKey

class DeletionPermits(
    private val clock: () -> Long = System::nanoTime,
    private val lifetimeNanos: Long = 60_000_000_000L,
) {
    private val deadlines = mutableMapOf<MessageKey, Long>()

    @Synchronized
    fun allow(keys: Collection<MessageKey>) {
        val now = clock()
        deadlines.entries.removeAll { now - it.value >= 0 }
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
    fun consume(key: MessageKey): Boolean {
        if (!contains(key)) return false
        deadlines.remove(key)
        return true
    }

    @Synchronized
    fun consumeMatching(keys: Collection<MessageKey>): Set<MessageKey> {
        val now = clock()
        deadlines.entries.removeAll { now - it.value >= 0 }
        return keys.filterTo(mutableSetOf()) { key ->
            deadlines.remove(key)?.let { now - it < 0 } == true
        }
    }

    @Synchronized
    fun discard(keys: Collection<MessageKey>) {
        keys.forEach(deadlines::remove)
    }

    @Synchronized
    fun consumeAll(keys: Collection<MessageKey>): Boolean {
        val now = clock()
        deadlines.entries.removeAll { now - it.value >= 0 }
        if (!keys.all { it in deadlines }) return false
        keys.forEach(deadlines::remove)
        return true
    }

}
