package com.aoya.telegami.hooks.messages

import android.app.Dialog
import android.os.Handler
import android.os.Looper
import com.aoya.telegami.core.TelegramMediaResolver
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.util.Logger
import java.io.File
import java.lang.reflect.Proxy
import java.util.concurrent.Executors

data class LocalForwardMedia(val file: File, val photo: Any? = null)

data class PreparedForward(
    val selection: MessageMenuActions.Selection,
    val localMedia: LocalForwardMedia? = null,
    val textOnly: Boolean = false,
)

/** Prepare the entire batch before queuing a comment or a message for any destination. */
class ProtectedMediaPreparation(private val target: TelegramSendResolver) {
    private val c = target.common
    private val native by lazy { TelegramMediaResolver(target) }
    private val dialogs by lazy { NativeMessageDialogs(c) }
    private val sender = MessageSender(target)

    companion object {
        private val worker = Executors.newSingleThreadExecutor { task ->
            Thread(task, "TelegamiMediaPreparation").apply { isDaemon = true }
        }
    }

    fun prepare(
        selections: List<MessageMenuActions.Selection>,
        validate: () -> Unit,
        onReady: (List<PreparedForward>) -> Unit,
        onFailure: (Throwable) -> Unit,
        onCancel: () -> Unit = {},
    ) {
        check(Looper.myLooper() == Looper.getMainLooper()) { "Media preparation requires the main thread" }
        val first = selections.first()
        val main = Handler(Looper.getMainLooper())
        val state = ForwardPreparationState()
        val prepared = arrayListOf<PreparedForward>()
        var dialog: Dialog? = null
        var stopWaiting: (() -> Unit)? = null
        lateinit var watch: Runnable

        fun closeDialog() {
            dialog?.let {
                it.setOnDismissListener(null)
                runCatching { it.dismiss() }
            }
            dialog = null
        }

        fun cleanup() {
            main.removeCallbacks(watch)
            stopWaiting?.invoke()
            stopWaiting = null
            closeDialog()
        }

        fun fail(error: Throwable) {
            if (state.finish(ForwardPreparationState.State.FAILED)) {
                cleanup()
                onFailure(error)
            }
        }

        fun cancel() {
            if (state.finish(ForwardPreparationState.State.CANCELLED)) {
                cleanup()
                onCancel()
            }
        }

        fun checkActive(): Boolean {
            if (!state.active) return false
            return try {
                validate()
                true
            } catch (error: Throwable) {
                fail(error)
                false
            }
        }

        watch = Runnable { if (checkActive()) main.postDelayed(watch, 1000L) }
        main.postDelayed(watch, 1000L)

        fun showLoading() {
            closeDialog()
            dialog = dialogs.show(
                first.activity, first.chat, "\u65e0\u6765\u6e90\u8f6c\u53d1",
                "\u6b63\u5728\u4e0b\u8f7d\u5e76\u51c6\u5907\u5a92\u4f53\uff0c\u5b8c\u6210\u540e\u81ea\u52a8\u53d1\u9001\u2026",
                onNegative = ::cancel, onCancel = ::cancel,
            )
        }

        lateinit var next: (Int) -> Unit

        fun buildLocal(index: Int, selection: MessageMenuActions.Selection, file: File, photo: Boolean) {
            if (!checkActive()) return
            worker.execute {
                val result = runCatching {
                    val slot = c.messageAccount.getInt(selection.message)
                    LocalForwardMedia(file, if (photo) native.generateLocalPhoto(slot, file) else null)
                }
                main.post {
                    if (!checkActive()) return@post
                    result.fold(
                        onSuccess = {
                            prepared += PreparedForward(selection, it)
                            next(index + 1)
                        },
                        onFailure = ::fail,
                    )
                }
            }
        }

        fun download(index: Int, selection: MessageMenuActions.Selection, info: TelegramMediaResolver.Download) {
            if (!checkActive()) return
            showLoading()
            val cached = native.findLocal(selection.message, info)
            Logger.i("Protected media transfer=local bytes=${info.bytes} cached=${cached != null}", "MessageTools", xposed = true)
            if (cached != null) {
                buildLocal(index, selection, cached, info.photo != null)
                return
            }
            val slot = c.messageAccount.getInt(selection.message)
            val center = native.centerInstance.invoke(null, slot)!!
            val registered = arrayListOf<Int>()
            var waiting = true
            lateinit var observer: Any
            fun detach() {
                waiting = false
                registered.forEach { event ->
                    runCatching { native.removeObserver.invoke(center, observer, event) }
                        .onFailure { Logger.e("Unable to detach media observer", it, "MessageTools") }
                }
                registered.clear()
            }
            observer = Proxy.newProxyInstance(c.loader, arrayOf(native.delegate)) { proxy, method, args ->
                if (method == native.received) {
                    val event = args?.get(0) as? Int
                    val account = args?.get(1) as? Int
                    val values = args?.get(2) as? Array<*>
                    if (account == slot && values?.getOrNull(0) == info.name) {
                        main.post {
                            if (waiting && checkActive()) {
                                try {
                                    detach()
                                    stopWaiting = null
                                    if (event == native.loaded) {
                                        val file = (values.getOrNull(1) as? File)
                                            ?.takeIf { native.completeFile(it, info.bytes) }
                                            ?: native.findLocal(selection.message, info)
                                        if (file != null) buildLocal(index, selection, file, info.photo != null)
                                        else fail(IllegalStateException("\u5a92\u4f53\u4e0b\u8f7d\u672a\u5b8c\u6574\uff0c\u672a\u53d1\u9001"))
                                    } else fail(IllegalStateException("\u5a92\u4f53\u4e0b\u8f7d\u5931\u8d25\u6216\u88ab\u53d6\u6d88\uff0c\u672a\u53d1\u9001"))
                                } catch (error: Throwable) { fail(error) }
                            }
                        }
                    }
                    null
                } else when (method.name) {
                    "toString" -> "TelegamiMediaDownloadObserver"
                    "hashCode" -> System.identityHashCode(proxy)
                    "equals" -> proxy === args?.firstOrNull()
                    else -> null
                }
            }
            stopWaiting = ::detach
            for (event in listOf(native.loaded, native.failed)) {
                native.addObserver.invoke(center, observer, event)
                registered += event
            }
            // Recheck after registering to cover completion between the initial check and subscription.
            val completed = native.findLocal(selection.message, info)
            if (completed != null) {
                detach()
                stopWaiting = null
                buildLocal(index, selection, completed, info.photo != null)
            } else {
                Logger.i("Waiting for protected media slot=$slot bytes=${info.bytes}", "MessageTools", xposed = true)
                native.load(selection.message, info)
            }
        }

        next = step@{ index ->
            if (!checkActive()) return@step
            try {
                if (index == selections.size) {
                    if (state.finish(ForwardPreparationState.State.SUCCEEDED)) {
                        cleanup()
                        onReady(prepared.toList())
                    }
                    return@step
                }
                val selection = selections[index]
                sender.validateSource(selection.message)
                if (!sender.isProtectedSource(selection.message)) {
                    Logger.i("Sourceless source transfer=remote protected=false", "MessageTools", xposed = true)
                    prepared += PreparedForward(selection)
                    next(index + 1)
                    return@step
                }
                val info = native.describe(selection.message)
                if (info == null) {
                    prepared += PreparedForward(selection)
                    next(index + 1)
                    return@step
                }
                val bytes = maxOf(info.bytes, native.findLocal(selection.message, info)?.length() ?: 0)
                if (ForwardMediaPolicy.transfer(true, true, bytes) == ForwardMediaPolicy.Transfer.ASK) {
                    closeDialog()
                    val size = if (bytes > 0) "%.1f MiB".format(bytes / 1048576.0) else "\u5927\u5c0f\u672a\u77e5"
                    dialog = dialogs.show(
                        first.activity, first.chat, "\u4fdd\u5b58\u5a92\u4f53\u540e\u8f6c\u53d1\uff1f",
                        "\u5a92\u4f53 $size\uff0c\u8d85\u8fc7 100 MiB \u6216\u5927\u5c0f\u672a\u77e5\u3002\u662f\u5426\u4fdd\u5b58\u5230\u672c\u5730\u540e\u8f6c\u53d1\uff1f\u9009\u62e9\u5426\u5219\u4ec5\u8f6c\u53d1\u6587\u672c\u6216 Caption\u3002",
                        positiveText = "\u662f\uff0c\u4fdd\u5b58\u5e76\u8f6c\u53d1",
                        negativeText = "\u5426\uff0c\u4ec5\u8f6c\u53d1\u6587\u672c",
                        onPositive = {
                            try { download(index, selection, info) } catch (error: Throwable) { fail(error) }
                        },
                        onNegative = {
                            if (checkActive()) {
                                Logger.i("Protected media transfer=text-only by user choice", "MessageTools", xposed = true)
                                prepared += PreparedForward(selection, textOnly = true)
                                next(index + 1)
                            }
                        },
                        onCancel = ::cancel,
                    )
                } else download(index, selection, info)
            } catch (error: Throwable) {
                if (state.active) fail(error) else onFailure(error)
            }
        }
        next(0)
    }
}
