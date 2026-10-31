package com.aoya.telegami.translation

import android.content.ContentProvider
import android.content.ContentValues
import android.content.pm.PackageManager
import android.database.Cursor
import android.net.Uri
import android.os.Binder
import android.os.Build
import android.os.Bundle
import android.os.Process
import com.aoya.telegami.service.PrefManager
import kotlinx.coroutines.*
import java.security.MessageDigest

/** The exported API is deliberately restricted: no key/config retrieval or arbitrary HTTP proxy. */
class TranslationBroker : ContentProvider() {
    private val jobs = mutableMapOf<String, Deferred<Bundle>>()
    private val cancelled = linkedMapOf<String, Long>()
    override fun onCreate() = true

    override fun call(method: String, arg: String?, extras: Bundle?): Bundle {
        val uid = Binder.getCallingUid()
        if (!authorized(uid)) throw SecurityException("Translation caller rejected")
        if (arg == null || !arg.matches(Regex("[a-f0-9-]{36}"))) return failure(TranslationError.INVALID_CONFIG)
        val token = "$uid:$arg"
        if (method == "cancel") {
            synchronized(jobs) {
                jobs[token]?.cancel()
                cancelled[token] = System.nanoTime()
                while (cancelled.size > 64) cancelled.remove(cancelled.keys.first())
            }
            return Bundle()
        }
        val identity = Binder.clearCallingIdentity()
        return try {
            runBlocking {
                withTimeout(35_000) {
                    withTimeout(3_000) { while (!PrefManager.serviceAvailable.value) delay(50) }
                    if (!PrefManager.getBoolean(TranslationSettings.ENABLED, true)) return@withTimeout failure(TranslationError.UNAVAILABLE)
                    val work = async(start = CoroutineStart.LAZY) {
                        when (method) {
                            "select" -> {
                                val provider = extras?.getString("provider").orEmpty()
                                val language = extras?.getString("language").orEmpty()
                                if (provider !in TranslationProviderRegistry.ids || !TranslationPreferences.validLanguage(language))
                                    return@async failure(TranslationError.INVALID_CONFIG)
                                Bundle().apply { putBoolean("success", TranslationPreferences.save(strings = mapOf(
                                    TranslationSettings.PROVIDER to provider, TranslationSettings.TARGET to language))) }
                            }
                            "translate" -> {
                                val source = extras?.getString("text").orEmpty()
                                val language = extras?.getString("language").orEmpty()
                                if (source.isBlank() || source.length > 64_000 || !TranslationPreferences.validLanguage(language))
                                    return@async failure(TranslationError.INVALID_CONFIG)
                                val result = TranslationPreferences.translateAi(TranslationRequest(TranslationText(source), language))
                                Bundle().apply { putString("text", result.text) }
                            }
                            else -> failure(TranslationError.INVALID_CONFIG)
                        }
                    }
                    synchronized(jobs) {
                        cancelled.entries.removeAll { System.nanoTime() - it.value > 60_000_000_000L }
                        if (jobs.size >= 2 || jobs.containsKey(token)) { work.cancel(); return@withTimeout failure(TranslationError.RATE_LIMIT) }
                        if (cancelled.remove(token) != null) { work.cancel(); return@withTimeout failure(TranslationError.CANCELLED) }
                        jobs[token] = work
                    }
                    try { work.await() } finally { synchronized(jobs) { jobs.remove(token) } }
                }
            }
        } catch (_: TimeoutCancellationException) { failure(TranslationError.TIMEOUT) }
        catch (_: CancellationException) { failure(TranslationError.CANCELLED) }
        catch (e: TranslationException) { failure(e.code) }
        catch (_: Exception) { failure(TranslationError.UNAVAILABLE) }
        finally { Binder.restoreCallingIdentity(identity) }
    }

    private fun authorized(uid: Int): Boolean {
        if (uid == Process.myUid()) return true
        val manager = context?.packageManager ?: return false
        return runCatching {
            val packages = manager.getPackagesForUid(uid)?.toList().orEmpty()
            TranslationCallerPolicy.accepts(packages.associateWith { name ->
                val signatures = if (Build.VERSION.SDK_INT >= 28) {
                    manager.getPackageInfo(name, PackageManager.GET_SIGNING_CERTIFICATES).signingInfo?.apkContentsSigners.orEmpty()
                } else {
                    @Suppress("DEPRECATION")
                    manager.getPackageInfo(name, PackageManager.GET_SIGNATURES).signatures.orEmpty()
                }
                signatures.map { signature -> MessageDigest.getInstance("SHA-256").digest(signature.toByteArray())
                    .joinToString("") { "%02x".format(it) } }.toSet()
            })
        }.getOrDefault(false)
    }

    private fun failure(code: TranslationError) = Bundle().apply { putString("error", code.name) }
    override fun query(uri: Uri, projection: Array<out String>?, selection: String?, selectionArgs: Array<out String>?, sortOrder: String?): Cursor? = null
    override fun getType(uri: Uri): String? = null
    override fun insert(uri: Uri, values: ContentValues?): Uri? = null
    override fun delete(uri: Uri, selection: String?, selectionArgs: Array<out String>?) = 0
    override fun update(uri: Uri, values: ContentValues?, selection: String?, selectionArgs: Array<out String>?) = 0
}
