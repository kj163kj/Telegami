package com.aoya.telegami.hooks.messages

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MessageActionGateTest {
    @Test
    fun confirmationAndCooldownPreventDuplicateExecution() {
        var now = 10L
        val gate = MessageActionGate<String>({ now }, 5L)
        assertTrue(gate.acquire("account/dialog/message"))
        assertFalse(gate.acquire("account/dialog/message"))
        assertTrue(gate.acquire("different-account"))
        gate.release("account/dialog/message", true)
        assertFalse(gate.acquire("account/dialog/message"))
        now = 15L
        assertTrue(gate.acquire("account/dialog/message"))
    }

    @Test
    fun cancelledConfirmationCanBeRetried() {
        val gate = MessageActionGate<Int>()
        assertTrue(gate.acquire(1))
        gate.release(1, false)
        assertTrue(gate.acquire(1))
    }
}
