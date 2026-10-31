package com.aoya.telegami.core

import com.aoya.telegami.BuildConfig
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ApplicationIdentityTest {
    @Test
    fun applicationIdsUseTechskyPackage() {
        assertEquals("com.techsky.telegami", Constants.APP_ID)
        assertEquals("${Constants.APP_ID}.debug", Constants.APP_DEBUG_ID)
        assertTrue(BuildConfig.APPLICATION_ID in setOf(Constants.APP_ID, Constants.APP_DEBUG_ID))
    }

    @Test
    fun launcherAliasRetainsItsActualClassNamespace() {
        assertEquals("com.aoya.telegami.MainActivityLauncher", Constants.COMPONENT_NAME_DEFAULT)
    }
}
