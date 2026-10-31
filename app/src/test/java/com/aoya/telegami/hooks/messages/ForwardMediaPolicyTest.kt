package com.aoya.telegami.hooks.messages

import org.junit.Assert.*
import org.junit.Test
import java.nio.file.Files
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

class ForwardMediaPolicyTest {
    @Test fun unrestrictedMediaAlwaysKeepsItsRemoteReferenceRegardlessOfSize() {
        for (bytes in listOf(-1L, 0L, 1L, ForwardMediaPolicy.AUTO_DOWNLOAD_LIMIT, 5L * 1024 * 1024 * 1024)) {
            assertEquals(ForwardMediaPolicy.Transfer.REMOTE, ForwardMediaPolicy.transfer(false, true, bytes))
        }
    }

    @Test fun protectedTextDoesNotDownloadOrAskForStorage() {
        assertEquals(ForwardMediaPolicy.Transfer.REMOTE, ForwardMediaPolicy.transfer(true, false, 0))
    }

    @Test fun protectedMediaDownloadsAutomaticallyUpToAndIncluding100MiB() {
        assertEquals(104857600L, ForwardMediaPolicy.AUTO_DOWNLOAD_LIMIT)
        for (bytes in listOf(1L, ForwardMediaPolicy.AUTO_DOWNLOAD_LIMIT - 1, ForwardMediaPolicy.AUTO_DOWNLOAD_LIMIT)) {
            assertEquals(ForwardMediaPolicy.Transfer.LOCAL, ForwardMediaPolicy.transfer(true, true, bytes))
        }
    }

    @Test fun protectedMediaAboveTheLimitOrWithUnknownSizeRequiresConsent() {
        for (bytes in listOf(-1L, 0L, ForwardMediaPolicy.AUTO_DOWNLOAD_LIMIT + 1, Long.MAX_VALUE)) {
            assertEquals(ForwardMediaPolicy.Transfer.ASK, ForwardMediaPolicy.transfer(true, true, bytes))
        }
    }

    @Test fun nativeForwardOnlyReroutesWithUnlockingAndAProtectedSource() {
        assertFalse(ForwardMediaPolicy.rerouteNative(false, false))
        assertFalse(ForwardMediaPolicy.rerouteNative(false, true))
        assertFalse(ForwardMediaPolicy.rerouteNative(true, false))
        assertTrue(ForwardMediaPolicy.rerouteNative(true, true))
    }

    @Test fun partialEmptyMissingOrDirectoryPathsCannotBeUploaded() {
        val directory = Files.createTempDirectory("telegami-download-check").toFile()
        val file = java.io.File(directory, "media.bin")
        try {
            assertFalse(ForwardMediaPolicy.completeLocalFile(null, 0))
            assertFalse(ForwardMediaPolicy.completeLocalFile(file, 0))
            assertFalse(ForwardMediaPolicy.completeLocalFile(directory, 0))
            file.writeBytes(byteArrayOf())
            assertFalse(ForwardMediaPolicy.completeLocalFile(file, 0))
            file.writeBytes(byteArrayOf(1, 2, 3))
            assertFalse(ForwardMediaPolicy.completeLocalFile(file, 4))
            assertTrue(ForwardMediaPolicy.completeLocalFile(file, 3))
            assertTrue(ForwardMediaPolicy.completeLocalFile(file, 0))
        } finally {
            file.delete()
            directory.delete()
        }
    }

    @Test fun cancellationRejectsLateDownloadAndDialogCallbacks() {
        val state = ForwardPreparationState()
        assertTrue(state.active)
        assertTrue(state.finish(ForwardPreparationState.State.CANCELLED))
        assertFalse(state.active)
        assertFalse(state.finish(ForwardPreparationState.State.SUCCEEDED))
        assertFalse(state.finish(ForwardPreparationState.State.FAILED))
        assertEquals(ForwardPreparationState.State.CANCELLED, state.state)
    }

    @Test fun failedDownloadCannotBecomeSuccessfulAndSuccessfulBatchCannotResubmit() {
        for (terminal in listOf(ForwardPreparationState.State.FAILED, ForwardPreparationState.State.SUCCEEDED)) {
            val state = ForwardPreparationState()
            assertTrue(state.finish(terminal))
            assertFalse(state.finish(ForwardPreparationState.State.SUCCEEDED))
            assertFalse(state.finish(ForwardPreparationState.State.CANCELLED))
            assertEquals(terminal, state.state)
        }
    }

    @Test fun downloadAndCancellationRaceHasExactlyOneWinner() {
        val state = ForwardPreparationState()
        val start = CountDownLatch(1)
        val completed = CountDownLatch(2)
        val results = java.util.Collections.synchronizedList(arrayListOf<Boolean>())
        val threads = listOf(ForwardPreparationState.State.SUCCEEDED, ForwardPreparationState.State.CANCELLED).map {
            Thread {
                try {
                    if (start.await(5, TimeUnit.SECONDS)) results += state.finish(it)
                } finally { completed.countDown() }
            }.apply { start() }
        }
        start.countDown()
        assertTrue(completed.await(5, TimeUnit.SECONDS))
        threads.forEach { it.join(5000) }
        assertEquals(2, results.size)
        assertEquals(1, results.count { it })
        assertFalse(state.active)
    }
}
