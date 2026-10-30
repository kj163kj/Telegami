package com.aoya.telegami.core

import org.junit.Assert.assertNotNull
import org.junit.Test

class TelegramTargetTest {
    @Test
    fun rejectsEveryUnverifiedBuildEvenWithTheRequestedVersionName() {
        for (code in listOf(Long.MIN_VALUE, 0L, 1L, 13_011L, Int.MAX_VALUE.toLong(), Long.MAX_VALUE)) {
            assertNotNull(TelegramTarget.rejectionReason("org.telegram.messenger", "13.1.1", code))
        }
    }

    @Test
    fun rejectsOtherVersionsAndMissingVersionNames() {
        for (version in listOf(null, "", "12.10.3", "13.1.0", "13.1.10", "13.1.1-beta", "13.1.1 ")) {
            assertNotNull(TelegramTarget.rejectionReason("org.telegram.messenger", version, 1L))
        }
    }

    @Test
    fun rejectsBetaWebForksAndSimilarPackageNames() {
        for (packageName in listOf(
            "org.telegram.messenger.beta",
            "org.telegram.messenger.web",
            "org.telegram.plus",
            "tw.nekomimi.nekogram",
            "org.telegram.messenger.fake",
            "",
        )) {
            assertNotNull(TelegramTarget.rejectionReason(packageName, "13.1.1", 1L))
        }
    }
}
