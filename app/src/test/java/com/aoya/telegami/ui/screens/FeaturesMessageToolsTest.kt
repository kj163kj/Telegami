package com.aoya.telegami.ui.screens

import com.aoya.telegami.service.MessageToolSettings
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class FeaturesMessageToolsTest {
    private class FakeMessageToolsPort(
        var allowWrites: Boolean = true,
    ) : MessageToolsConfigPort {
        val booleans = mutableMapOf<String, Boolean>()
        val integers = mutableMapOf<String, Int>()

        override fun getBoolean(
            key: String,
            defaultValue: Boolean,
        ): Boolean = booleans[key] ?: defaultValue

        override fun getInt(
            key: String,
            defaultValue: Int,
        ): Int = integers[key] ?: defaultValue

        override suspend fun update(
            booleans: Map<String, Boolean>,
            integers: Map<String, Int>,
        ): Boolean {
            if (!MessageToolSettings.booleanDefaults.keys.containsAll(booleans.keys) ||
                !MessageToolSettings.integerDefaults.keys.containsAll(integers.keys)
            ) {
                return false
            }
            if (!allowWrites) return false
            this.booleans.putAll(booleans)
            integers.forEach { (key, value) ->
                this.integers[key] = MessageToolSettings.bounded(key, value)
            }
            return true
        }
    }

    @Test
    fun readAndWriteAllSevenSettings_matchesContractKeysDefaultsAndBounds() =
        runBlocking {
            val port = FakeMessageToolsPort()

            // 1. Initial read uses exact contract defaults (including true for both confirmations)
            val initial = readMessageToolsSnapshot(port)
            assertFalse(initial.enableMessageRepeat)
            assertFalse(initial.enableMessageCopy)
            assertFalse(initial.enableSourcelessForward)
            assertFalse(initial.enableEditHistory)
            assertTrue(initial.enableRepeatConfirmation)
            assertTrue(initial.enableCopyConfirmation)
            assertEquals(30, initial.editHistoryRetentionDays)
            assertEquals(100, initial.editHistoryMaxVersions)

            // 2. Write all 6 Boolean switches and verify exact remote keys & reloaded state
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.REPEAT, true).saved)
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.COPY, true).saved)
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.SOURCELESS_FORWARD, true).saved)
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.HISTORY, true).saved)
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.REPEAT_CONFIRM, false).saved)
            assertTrue(persistMessageToolBoolean(port, MessageToolSettings.COPY_CONFIRM, false).saved)

            // 3. Write both Integer settings and verify exact remote keys & reloaded state
            assertTrue(persistMessageToolInt(port, MessageToolSettings.RETENTION, 180).saved)
            val finalWrite = persistMessageToolInt(port, MessageToolSettings.MAX_VERSIONS, 500)
            assertTrue(finalWrite.saved)

            assertEquals(true, port.booleans["enable_message_repeat"])
            assertEquals(true, port.booleans["enable_message_copy"])
            assertEquals(true, port.booleans["enable_sourceless_forward"])
            assertEquals(true, port.booleans["enable_edit_history"])
            assertEquals(false, port.booleans["enable_repeat_confirmation"])
            assertEquals(false, port.booleans["enable_copy_confirmation"])
            assertEquals(180, port.integers["edit_history_retention_days"])
            assertEquals(500, port.integers["edit_history_max_versions"])

            val reloaded = finalWrite.snapshot
            assertTrue(reloaded.enableMessageRepeat)
            assertTrue(reloaded.enableMessageCopy)
            assertTrue(reloaded.enableSourcelessForward)
            assertTrue(reloaded.enableEditHistory)
            assertFalse(reloaded.enableRepeatConfirmation)
            assertFalse(reloaded.enableCopyConfirmation)
            assertEquals(180, reloaded.editHistoryRetentionDays)
            assertEquals(500, reloaded.editHistoryMaxVersions)
        }

    @Test
    fun failedWriteAndMalformedBounds_preservePreviousValuesAndClampSafely() =
        runBlocking {
            val port = FakeMessageToolsPort()
            persistMessageToolBoolean(port, MessageToolSettings.REPEAT, true)
            persistMessageToolInt(port, MessageToolSettings.RETENTION, 60)

            // Simulate remote service commit failure: saved=false and previous persisted state is preserved
            port.allowWrites = false
            val failedBool = persistMessageToolBoolean(port, MessageToolSettings.REPEAT, false)
            assertFalse(failedBool.saved)
            assertTrue(failedBool.snapshot.enableMessageRepeat)

            val failedInt = persistMessageToolInt(port, MessageToolSettings.RETENTION, 365)
            assertFalse(failedInt.saved)
            assertEquals(60, failedInt.snapshot.editHistoryRetentionDays)

            // Out-of-bounds values in storage are clamped on read
            port.integers[MessageToolSettings.RETENTION] = 99999
            port.integers[MessageToolSettings.MAX_VERSIONS] = 1
            val clamped = readMessageToolsSnapshot(port)
            assertEquals(3650, clamped.editHistoryRetentionDays)
            assertEquals(2, clamped.editHistoryMaxVersions)
        }

    @Test
    fun validateIntInput_enforcesRetentionAndMaxVersionsBoundsAndRejectsInvalidInputs() {
        // Retention days: 1..3650
        assertEquals(IntInputValidation.Valid(1), validateIntInput("1", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.Valid(30), validateIntInput(" 30 ", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.Valid(3650), validateIntInput("3650", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.Empty, validateIntInput("", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.Empty, validateIntInput("   ", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.NotInteger, validateIntInput("12.5", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.NotInteger, validateIntInput("abc", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.NotInteger, validateIntInput("+30", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("0", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("-7", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("3651", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX))
        assertEquals(
            IntInputValidation.OutOfRange,
            validateIntInput("999999999999999", RETENTION_DAYS_MIN, RETENTION_DAYS_MAX),
        )

        // Max versions: 2..1000
        assertEquals(IntInputValidation.Valid(2), validateIntInput("2", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.Valid(100), validateIntInput("100", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.Valid(1000), validateIntInput("1000", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.Empty, validateIntInput("", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.NotInteger, validateIntInput("3.14", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("1", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("0", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("-2", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
        assertEquals(IntInputValidation.OutOfRange, validateIntInput("1001", MAX_VERSIONS_MIN, MAX_VERSIONS_MAX))
    }

    @Test
    fun masterSubLinkage_disablesSubItemsWhenMasterOffWithoutClearingSavedSubValues() =
        runBlocking {
            val port = FakeMessageToolsPort()

            // Initially all masters are false -> all 4 sub-settings are disabled
            val defaultSnap = readMessageToolsSnapshot(port)
            assertFalse(defaultSnap.repeatConfirmationEnabled(canEdit = true))
            assertFalse(defaultSnap.copyConfirmationEnabled(canEdit = true))
            assertFalse(defaultSnap.retentionDaysEnabled(canEdit = true))
            assertFalse(defaultSnap.maxVersionsEnabled(canEdit = true))

            // Enabling standalone forced copy does NOT enable copyConfirmation (which belongs to sourceless forward)
            persistMessageToolBoolean(port, MessageToolSettings.COPY, true)
            val copyOnlySnap = readMessageToolsSnapshot(port)
            assertFalse(copyOnlySnap.copyConfirmationEnabled(canEdit = true))

            // Turn on all parent masters and customize all 4 sub-settings
            persistMessageToolBoolean(port, MessageToolSettings.REPEAT, true)
            persistMessageToolBoolean(port, MessageToolSettings.SOURCELESS_FORWARD, true)
            persistMessageToolBoolean(port, MessageToolSettings.HISTORY, true)
            persistMessageToolBoolean(port, MessageToolSettings.REPEAT_CONFIRM, false)
            persistMessageToolBoolean(port, MessageToolSettings.COPY_CONFIRM, false)
            persistMessageToolInt(port, MessageToolSettings.RETENTION, 90)
            val activeSnap = persistMessageToolInt(port, MessageToolSettings.MAX_VERSIONS, 250).snapshot

            assertTrue(activeSnap.repeatConfirmationEnabled(canEdit = true))
            assertTrue(activeSnap.copyConfirmationEnabled(canEdit = true))
            assertTrue(activeSnap.retentionDaysEnabled(canEdit = true))
            assertTrue(activeSnap.maxVersionsEnabled(canEdit = true))
            assertFalse(activeSnap.repeatConfirmationEnabled(canEdit = false))

            // Turn OFF parent masters -> sub-settings disable, but stored values remain untouched
            persistMessageToolBoolean(port, MessageToolSettings.REPEAT, false)
            persistMessageToolBoolean(port, MessageToolSettings.SOURCELESS_FORWARD, false)
            val disabledSnap = persistMessageToolBoolean(port, MessageToolSettings.HISTORY, false).snapshot

            assertFalse(disabledSnap.repeatConfirmationEnabled(canEdit = true))
            assertFalse(disabledSnap.copyConfirmationEnabled(canEdit = true))
            assertFalse(disabledSnap.retentionDaysEnabled(canEdit = true))
            assertFalse(disabledSnap.maxVersionsEnabled(canEdit = true))
            assertFalse(disabledSnap.enableRepeatConfirmation)
            assertFalse(disabledSnap.enableCopyConfirmation)
            assertEquals(90, disabledSnap.editHistoryRetentionDays)
            assertEquals(250, disabledSnap.editHistoryMaxVersions)

            // Turn masters back ON -> all 4 sub-settings re-enable with their original saved values restored
            persistMessageToolBoolean(port, MessageToolSettings.REPEAT, true)
            persistMessageToolBoolean(port, MessageToolSettings.SOURCELESS_FORWARD, true)
            val restoredSnap = persistMessageToolBoolean(port, MessageToolSettings.HISTORY, true).snapshot

            assertTrue(restoredSnap.repeatConfirmationEnabled(canEdit = true))
            assertTrue(restoredSnap.copyConfirmationEnabled(canEdit = true))
            assertTrue(restoredSnap.retentionDaysEnabled(canEdit = true))
            assertTrue(restoredSnap.maxVersionsEnabled(canEdit = true))
            assertFalse(restoredSnap.enableRepeatConfirmation)
            assertFalse(restoredSnap.enableCopyConfirmation)
            assertEquals(90, restoredSnap.editHistoryRetentionDays)
            assertEquals(250, restoredSnap.editHistoryMaxVersions)
        }
}
