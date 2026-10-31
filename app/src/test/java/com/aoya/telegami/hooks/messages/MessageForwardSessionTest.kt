package com.aoya.telegami.hooks.messages

import org.junit.Assert.*
import org.junit.Test

class MessageForwardSessionTest {
    private val first = MessageDestinationKey(-100, 42)
    private val second = MessageDestinationKey(-100, 43)

    @Test fun actionVisibilityOnlyDependsOnFeatureSwitchNotConversationProtection() {
        assertTrue(MessageForwardSession.visible(true))
        assertFalse(MessageForwardSession.visible(false))
    }

    @Test fun openingOrCancellingPickerCannotSubmit() {
        val session = MessageForwardSession()
        assertFalse(session.submit())
        assertNull(session.select(emptyList()))
        session.cancelConfirmation()
        assertFalse(session.submit())
    }

    @Test fun duplicateCallbacksCannotSubmitTwice() {
        val session = MessageForwardSession()
        assertTrue(session.acceptingSelection)
        assertEquals(listOf(first), session.select(listOf(first, first)))
        assertFalse(session.acceptingSelection)
        assertNull(session.select(listOf(second)))
        assertTrue(session.submit())
        assertFalse(session.acceptingSelection)
        assertFalse(session.submit())
        assertNull(session.select(listOf(first)))
    }

    @Test fun cancelledConfirmationAllowsReselectionWithoutSending() {
        val session = MessageForwardSession()
        session.select(listOf(first))
        session.cancelConfirmation()
        assertFalse(session.submit())
        assertEquals(listOf(second), session.select(listOf(second)))
        assertTrue(session.submit())
    }

    @Test fun dismissOrPartialFailureAfterSubmissionCannotRearmSession() {
        val session = MessageForwardSession()
        assertEquals(listOf(first, second), session.select(listOf(first, second, first)))
        assertTrue(session.submit())
        session.cancelConfirmation()
        assertFalse(session.submit())
        assertNull(session.select(listOf(first)))
    }

    @Test fun opensDestinationBeforeSendingAndDoesNotNavigateAgain() {
        val session = MessageForwardSession()
        val events = mutableListOf<String>()
        session.select(listOf(first))
        assertTrue(session.submitToDestination({ events += "destination" }, { events += "send" }))
        assertEquals(listOf("destination", "send"), events)
        assertFalse(session.submitToDestination({ events += "duplicate navigation" }, { events += "duplicate send" }))
        assertEquals(2, events.size)
    }

    @Test fun sendFailureKeepsDestinationAndCannotRearm() {
        val session = MessageForwardSession()
        var screen = "picker"
        session.select(listOf(first))
        assertThrows(IllegalStateException::class.java) {
            session.submitToDestination({ screen = "destination" }, { error("native send rejected") })
        }
        session.cancelConfirmation()
        assertEquals("destination", screen)
        assertFalse(session.acceptingSelection)
        assertFalse(session.submitToDestination({ screen = "picker" }, { fail("duplicate send") }))
    }

    @Test fun cancelledSelectionDoesNotNavigateOrSend() {
        val session = MessageForwardSession()
        session.select(listOf(first))
        session.cancelConfirmation()
        assertFalse(session.submitToDestination({ fail("unexpected navigation") }, { fail("unexpected send") }))
    }

    @Test fun failedNavigationNeverSends() {
        val session = MessageForwardSession()
        session.select(listOf(first))
        assertThrows(IllegalStateException::class.java) {
            session.submitToDestination({ error("Telegram cannot open destination") }, { fail("unexpected send") })
        }
        assertFalse(session.submit())
    }
}
