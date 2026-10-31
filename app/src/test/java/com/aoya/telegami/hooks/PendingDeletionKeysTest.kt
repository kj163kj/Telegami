package com.aoya.telegami.hooks

import com.aoya.telegami.data.MessageKey
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class PendingDeletionKeysTest {
    @Test
    fun pendingKeysAreScopedAndResolvedIndividually() {
        val pending = PendingDeletionKeys(clock = { 10L }, lifetimeNanos = 100L)
        val key = MessageKey(accountId = 4, dialogId = -5, messageId = 6)
        val otherAccount = key.copy(accountId = 7)
        pending.add(listOf(key, otherAccount))

        assertTrue(pending.contains(key))
        assertTrue(pending.contains(otherAccount))
        pending.resolve(listOf(key))
        assertFalse(pending.contains(key))
        assertTrue(pending.contains(otherAccount))
    }

    @Test
    fun pendingKeysExpire() {
        var now = 10L
        val pending = PendingDeletionKeys(clock = { now }, lifetimeNanos = 5L)
        val key = MessageKey(1, 2, 3)
        pending.add(listOf(key))

        now = 15L
        assertFalse(pending.contains(key))
    }
}
