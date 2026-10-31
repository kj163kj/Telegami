package com.aoya.telegami.ui.components

import com.aoya.telegami.service.ModuleStatusInfo
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ModuleStatusCardTest {
    @Test
    fun resolve_returnsDisabledModelWhenNotEnabledInLsposed() {
        val model =
            ModuleStatusCardPresentation.resolve(
                serviceAvailable = false,
                statusInfo = ModuleStatusInfo(isModuleEnabled = false),
            )

        assertFalse(model.isWorking)
        assertEquals("LSPosed", model.frameworkName)
        assertNull(model.frameworkVersion)
        assertEquals(102, model.apiVersion)
        assertFalse(model.showScopeWarning)
    }

    @Test
    fun resolve_returnsWorkingModelWithLiveFrameworkMetadataWhenEnabledAndScoped() {
        val model =
            ModuleStatusCardPresentation.resolve(
                serviceAvailable = true,
                statusInfo =
                    ModuleStatusInfo(
                        isModuleEnabled = true,
                        frameworkName = "LSPosed",
                        frameworkVersion = "1.10.2",
                        frameworkVersionCode = 7189L,
                        apiVersion = 102,
                        isTelegramInScope = true,
                    ),
            )

        assertTrue(model.isWorking)
        assertEquals("LSPosed", model.frameworkName)
        assertEquals("1.10.2", model.frameworkVersion)
        assertEquals(102, model.apiVersion)
        assertFalse(model.showScopeWarning)
    }

    @Test
    fun resolve_flagsScopeWarningWhenEnabledInLsposedWithoutTelegramScope() {
        val model =
            ModuleStatusCardPresentation.resolve(
                serviceAvailable = true,
                statusInfo =
                    ModuleStatusInfo(
                        isModuleEnabled = true,
                        frameworkName = "LSPosed",
                        frameworkVersion = "1.10.2",
                        apiVersion = 102,
                        isTelegramInScope = false,
                    ),
            )

        assertTrue(model.isWorking)
        assertTrue(model.showScopeWarning)
    }
}
