package com.aoya.telegami.hooks

import com.aoya.telegami.data.MessageKey
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DeletionPermitsTest {
    @Test
    fun permitsAreScopedToAccountDialogAndMessage() {
        var now = 100L
        val permits = DeletionPermits(clock = { now }, lifetimeNanos = 50L)
        val key = MessageKey(accountId = 10, dialogId = -20, messageId = 30)
        permits.allow(listOf(key))

        assertFalse(permits.consumeAll(listOf(key.copy(accountId = 11))))
        assertFalse(permits.consumeAll(listOf(key.copy(dialogId = -21))))
        assertFalse(permits.consumeAll(listOf(key.copy(messageId = 31))))
        assertTrue(permits.consumeAll(listOf(key)))
        assertFalse(permits.consumeAll(listOf(key)))
    }

    @Test
    fun partialBatchDoesNotConsumeAnOtherwiseValidPermit() {
        val permits = DeletionPermits(clock = { 5L }, lifetimeNanos = 20L)
        val key = MessageKey(10, 20, 30)
        permits.allow(listOf(key))

        assertFalse(permits.consumeAll(listOf(key, key.copy(messageId = 31))))
        assertTrue(permits.consumeAll(listOf(key)))
    }

    @Test
    fun permitsExpireWithoutAuthorizingLaterMessages() {
        var now = 10L
        val permits = DeletionPermits(clock = { now }, lifetimeNanos = 5L)
        val key = MessageKey(1, 2, 3)
        permits.allow(listOf(key))
        now = 15L

        assertFalse(permits.contains(key))
        assertFalse(permits.consumeAll(listOf(key)))
    }

    @Test
    fun discardingMissingRowsDoesNotTouchOtherDialogPermits() {
        val permits = DeletionPermits(clock = { 10L }, lifetimeNanos = 50L)
        val firstDialog = MessageKey(4, 5, 6)
        val secondDialog = firstDialog.copy(dialogId = 7)
        permits.allow(listOf(firstDialog, secondDialog))

        permits.discard(listOf(firstDialog))

        assertFalse(permits.contains(firstDialog))
        assertTrue(permits.contains(secondDialog))
    }

    @Test
    fun mixedBatchesConsumeOnlyMatchingPermitsOnce() {
        val permits = DeletionPermits(clock = { 10L }, lifetimeNanos = 50L)
        val permitted = MessageKey(1, 2, 3)
        val unrelated = permitted.copy(dialogId = 4)
        permits.allow(listOf(permitted, unrelated))

        assertEquals(setOf(permitted), permits.consumeMatching(listOf(permitted, permitted, permitted.copy(accountId = 5))))
        assertFalse(permits.contains(permitted))
        assertTrue(permits.contains(unrelated))
    }
}
