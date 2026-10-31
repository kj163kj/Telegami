package com.aoya.telegami.hooks.messages

import com.aoya.telegami.service.MessageToolSettings
import org.junit.Assert.assertEquals
import org.junit.Test

class MessageToolSettingsTest {
    @Test fun defaultsRequireOptInAndKeepConfirmations() {
        val defaults = MessageToolSettings.booleanDefaults
        assertEquals(false, defaults[MessageToolSettings.REPEAT])
        assertEquals(false, defaults[MessageToolSettings.COPY])
        assertEquals(false, defaults[MessageToolSettings.HISTORY])
        assertEquals(true, defaults[MessageToolSettings.REPEAT_CONFIRM])
        assertEquals(true, defaults[MessageToolSettings.COPY_CONFIRM])
    }

    @Test fun boundsAvoidDisablingDedupAndUnboundedRetention() {
        assertEquals(2, MessageToolSettings.bounded(MessageToolSettings.MAX_VERSIONS, Int.MIN_VALUE))
        assertEquals(1000, MessageToolSettings.bounded(MessageToolSettings.MAX_VERSIONS, Int.MAX_VALUE))
        assertEquals(1, MessageToolSettings.bounded(MessageToolSettings.RETENTION, -1))
        assertEquals(3650, MessageToolSettings.bounded(MessageToolSettings.RETENTION, Int.MAX_VALUE))
        assertEquals(30, MessageToolSettings.bounded(MessageToolSettings.RETENTION, 30))
    }
}
