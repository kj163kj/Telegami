package com.aoya.telegami.hooks.messages

class MessageActionGate<K>(
    private val clock: () -> Long = System::nanoTime,
    private val cooldownNanos: Long = 1_500_000_000L,
) {
    private val active = mutableSetOf<K>()
    private val completed = mutableMapOf<K, Long>()

    @Synchronized
    fun acquire(key: K): Boolean {
        val now = clock()
        completed.entries.removeAll { now - it.value >= cooldownNanos }
        if (key in active || key in completed) return false
        active.add(key)
        return true
    }

    @Synchronized
    fun release(key: K, performed: Boolean) {
        active.remove(key)
        if (performed) completed[key] = clock()
    }
}
