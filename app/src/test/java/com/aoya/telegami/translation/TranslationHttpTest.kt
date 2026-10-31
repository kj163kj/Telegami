package com.aoya.telegami.translation

import kotlinx.coroutines.*
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.SocketPolicy
import org.junit.Assert.*
import org.junit.Test
import java.util.concurrent.TimeUnit

class TranslationHttpTest {
    @Test fun timeoutCancelsSocketAndIsSanitized() = runBlocking {
        val server = MockWebServer()
        server.enqueue(MockResponse().setSocketPolicy(SocketPolicy.NO_RESPONSE))
        try {
            val http = TranslationHttp(TranslationHttp.defaultClient().newBuilder().readTimeout(100, TimeUnit.MILLISECONDS).build())
            try { http.execute(Request.Builder().url(server.url("/slow")).build()); fail() }
            catch (e: TranslationException) { assertEquals(TranslationError.TIMEOUT, e.code) }
        } finally { server.shutdown() }
    }

    @Test fun coroutineCancellationReleasesCall() = runBlocking {
        val server = MockWebServer()
        server.enqueue(MockResponse().setSocketPolicy(SocketPolicy.NO_RESPONSE))
        try {
            val http = TranslationHttp()
            val job = async(start = CoroutineStart.UNDISPATCHED) { http.execute(Request.Builder().url(server.url("/slow")).build()) }
            assertNotNull(withContext(Dispatchers.IO) { server.takeRequest(2, TimeUnit.SECONDS) })
            job.cancelAndJoin()
            withTimeout(2000) { while (http.client.dispatcher.runningCallsCount() != 0) delay(10) }
            assertTrue(job.isCancelled)
        } finally { server.shutdown() }
    }

    @Test fun redirectsAreNeverFollowed() = runBlocking {
        val server = MockWebServer()
        server.enqueue(MockResponse().setResponseCode(302).addHeader("Location", server.url("/must-not-follow")))
        server.enqueue(MockResponse().setBody("must not be returned"))
        try {
            try { TranslationHttp().execute(Request.Builder().url(server.url("/redirect")).header("Authorization", "Bearer fake-key").build()); fail() }
            catch (e: TranslationException) { assertEquals(302, e.httpStatus) }
            assertEquals(1, server.requestCount)
        } finally { server.shutdown() }
    }
}
