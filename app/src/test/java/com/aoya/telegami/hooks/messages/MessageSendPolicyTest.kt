package com.aoya.telegami.hooks.messages

import org.junit.Assert.*
import org.junit.Test

class MessageSendPolicyTest {
    @Test fun autoDeleteRetentionDoesNotBlockRepeat() {
        assertFalse(MessageSendPolicy.isSelfDestructing(0, 0, 86400))
        assertFalse(MessageSendPolicy.isSelfDestructing(0, 0, 0))
        assertTrue(MessageSendPolicy.isSelfDestructing(10, 0, 0))
        assertTrue(MessageSendPolicy.isSelfDestructing(0, Int.MAX_VALUE, 86400))
    }

    @Test fun onlyForwardableUnprotectedMessagesUseForwardRequest() {
        assertFalse(MessageSendPolicy.requiresCopy(false, false, true))
        assertTrue(MessageSendPolicy.requiresCopy(true, false, true))
        assertTrue(MessageSendPolicy.requiresCopy(false, true, true))
        assertTrue(MessageSendPolicy.requiresCopy(false, false, false))
    }

    @Test fun confirmationIdentityIncludesTopicAndMonoForumPeer() {
        val original = MessageDestinationKey(-100, 42)
        assertEquals(original, MessageDestinationKey(-100, 42))
        assertNotEquals(original, MessageDestinationKey(-100, 43))
        assertNotEquals(original, MessageDestinationKey(-200, 42))
        assertNotEquals(original, MessageDestinationKey(-100, 42, 999))
    }
}
