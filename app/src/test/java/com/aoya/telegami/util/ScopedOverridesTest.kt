package com.aoya.telegami.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

class ScopedOverridesTest {
    private class Request {
        @JvmField var offline = false
        @JvmField var noforwards = true
    }

    private val offline = Request::class.java.getDeclaredField("offline").apply { isAccessible = true }
    private val noforwards = Request::class.java.getDeclaredField("noforwards").apply { isAccessible = true }

    @Test
    fun serializationWritesOfflineWithoutLeavingTheOriginalRequestMutated() {
        val request = Request()
        val wireValue = withBooleanOverride(request, offline, true) { request.offline }
        assertTrue(wireValue)
        assertFalse(request.offline)
        // Native offline requests also keep their original value.
        request.offline = true
        withBooleanOverride(request, offline, true) { assertTrue(request.offline) }
        assertTrue(request.offline)
    }

    @Test
    fun nativeMenuCanReadUnlockedContentButTheSendStillSeesProtection() {
        val request = Request()
        withBooleanOverride(request, noforwards, false) {
            assertFalse(request.noforwards)
            withBooleanOverride(request, noforwards, false) { assertFalse(request.noforwards) }
            assertFalse(request.noforwards)
        }
        assertTrue(request.noforwards)
    }

    @Test
    fun throwingHostRestoresProtectionAndPresenceFields() {
        val request = Request()
        val failure = runCatching {
            withBooleanOverride(request, noforwards, false) {
                withBooleanOverride(request, offline, true) { error("host callback") }
            }
        }.exceptionOrNull()
        assertEquals("host callback", failure?.message)
        assertTrue(request.noforwards)
        assertFalse(request.offline)
    }

    @Test
    fun nestedOverrideRestoresEachLevelAndReturnsTheHostResult() {
        val request = Request()
        val result = withBooleanOverride(request, offline, true) {
            withBooleanOverride(request, offline, false) { assertFalse(request.offline) }
            assertTrue(request.offline)
            42
        }
        assertEquals(42, result)
        assertFalse(request.offline)
    }

    @Test
    fun nestedRawProtectionQueryDoesNotLeakItsBypassAfterFailure() {
        val bypass = HookBypass()
        assertFalse(bypass.active)
        bypass.run {
            assertTrue(bypass.active)
            runCatching { bypass.run<Unit> { error("query failed") } }
            assertTrue(bypass.active)
        }
        assertFalse(bypass.active)
    }

    @Test
    fun originalProtectionBypassDoesNotDisableOtherThreads() {
        val bypass = HookBypass()
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        var workerFailure: Throwable? = null
        val worker = Thread {
            try {
                bypass.run {
                    assertTrue(bypass.active)
                    entered.countDown()
                    check(release.await(5, TimeUnit.SECONDS))
                }
                assertFalse(bypass.active)
            } catch (error: Throwable) {
                workerFailure = error
                entered.countDown()
            }
        }
        worker.start()
        try {
            assertTrue(entered.await(5, TimeUnit.SECONDS))
            assertFalse(bypass.active)
        } finally {
            release.countDown()
            worker.join(5000)
        }
        assertFalse(worker.isAlive)
        workerFailure?.let { throw AssertionError(it) }
    }
}
