package com.aoya.telegami.core

import com.aoya.telegami.core.obfuscate.ResolverManager
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test

class TelegramTargetTest {
    @Test
    fun targetPackagesMatchOfficialScopeAndConfiguration() {
        val official = setOf("org.telegram.messenger", "org.telegram.messenger.web")
        assertEquals(official, TelegramTarget.PACKAGE_NAMES)
        assertEquals(official, Constants.SUPPORTED_TELEGRAM_PACKAGES_LIST.toSet())
    }

    @Test(expected = IllegalArgumentException::class)
    fun resolverRejectsUnsupportedPackageBeforeOpeningAssets() {
        ResolverManager.init("tw.nekomimi.nekogram", "/nonexistent/module.apk")
    }

    @Test
    fun acceptsBothAuthorizedPackagesOnThe13Point1StableLine() {
        for (packageName in TelegramTarget.PACKAGE_NAMES) {
            for (version in listOf("13.1.0", "13.1.1", "13.1.27")) {
                assertNull(TelegramTarget.rejectionReason(packageName, version, 1L))
            }
        }
    }

    @Test
    fun rejectsOtherVersionsAndMissingVersionNames() {
        for (version in listOf(null, "", "12.10.3", "13.2.0", "13.1", "13.1.1-beta", "13.1.1 ")) {
            assertNotNull(TelegramTarget.rejectionReason("org.telegram.messenger", version, 1L))
        }
    }

    @Test
    fun rejectsForksAndSimilarPackageNames() {
        for (packageName in listOf(
            "org.telegram.messenger.beta",
            "org.telegram.plus",
            "tw.nekomimi.nekogram",
            "it.octogram.android",
            "uz.unnarsx.cherrygram",
            "xyz.nextalone.nagram",
            "nu.gpu.nagram",
            "org.forkclient.messenger.beta",
            "org.forkgram.messenger",
            "org.telegram.group",
            "org.telegram.messenger.fake",
            "",
        )) {
            assertNotNull(TelegramTarget.rejectionReason(packageName, "13.1.1", 1L))
        }
    }

}
