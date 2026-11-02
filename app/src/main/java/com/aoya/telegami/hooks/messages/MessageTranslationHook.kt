package com.aoya.telegami.hooks.messages

import android.app.Dialog
import android.content.Context
import android.content.DialogInterface
import android.widget.Toast
import com.aoya.telegami.translation.*
import com.aoya.telegami.translation.providers.*
import com.aoya.telegami.util.Logger
import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod
import io.github.libxposed.api.XposedInterface
import kotlinx.coroutines.*
import java.util.WeakHashMap

/** Replaces only text requests of Telegram's own TranslateAlert2, not chat-wide/poll/story translation. */
class MessageTranslationHook(
    private val settings: () -> TranslationHookSettings,
    private val ai: TranslationProvider,
    private val persistSelection: suspend (String, String) -> Boolean,
) {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private data class Opening(val request: TranslationRequest, val provider: String, val force: Boolean)
    private data class State(val opening: Opening, var job: Job? = null, var generation: Int = 0)
    private val opening = ThreadLocal<Opening?>()
    private val states = WeakHashMap<Any, State>()

    fun install(xposed: XposedInterface) {
        val c = MessageMenuActions.target
        val t = TelegramTranslationResolver(c)
        val sheet = c.type("org.telegram.ui.Components.s51")
        val start = sheet.exactMethod("N", Void.TYPE)
        val source = sheet.exactField("c", CharSequence::class.java)
        val toLanguage = sheet.exactField("v", String::class.java)
        val summarize = sheet.exactField("f", c.bool)
        val rich = sheet.exactField("h", c.type("org.telegram.tgnet.tl.TL_iv\$RichMessage"))
        val account = c.type("org.telegram.ui.ActionBar.k3").exactField("currentAccount", c.int)
        val render = sheet.exactMethod("o", Void.TYPE, sheet, t.textType, t.textType, t.errorType)
        val constructor = sheet.getConstructor(Context::class.java, String::class.java, String::class.java,
            CharSequence::class.java, c.type("org.telegram.tgnet.TLRPC\$InputPeer"), c.int, c.bool,
            c.type("org.telegram.tgnet.tl.TL_iv\$RichMessage"))
        val extract = c.type("org.telegram.messenger.MediaDataController").exactMethod(
            "getEntities", c.list, Array<CharSequence>::class.java, c.bool,
        )
        val http = TranslationHttp()
        val manager = TranslationManager(listOf(GoogleTranslator(http), YandexTranslator(http), BingTranslator(http),
            TelegramNativeTranslator(t), ai)) { settings().config }

        fun notify(instance: Any, message: String) {
            (instance as? Dialog)?.context?.let { Toast.makeText(it, message, Toast.LENGTH_LONG).show() }
        }

        xposed.hook(start).intercept { chain ->
            val instance = chain.thisObject!!
            if (!settings().enabled || summarize.getBoolean(instance) || rich.get(instance) != null) {
                states.remove(instance)?.job?.cancel()
                return@intercept chain.proceed()
            }
            val current = states.getOrPut(instance) {
                val selection = opening.get() ?: run {
                    val raw = arrayOf<CharSequence>(source.get(instance) as? CharSequence ?: "")
                    val entities = extract.invoke(null, raw, false)
                    Opening(TranslationRequest(TranslationText(raw[0].toString(), t.readEntities(entities)),
                        settings().targetLanguage, account.getInt(instance)), settings().config.providerId, false)
                }
                State(selection)
            }
            current.job?.cancel()
            account.setInt(instance, current.opening.request.account)
            val generation = ++current.generation
            val language = (toLanguage.get(instance) as? String)?.replace('_', '-')?.let { if (it == "nb") "no" else it }
                ?: settings().targetLanguage
            val request = current.opening.request.copy(toLanguage = language)
            current.job = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    TranslationSelection.error(current.opening.provider, settings().aiConfigured)?.let { throw TranslationException(it) }
                    val result = manager.translate(request, current.opening.provider, force = current.opening.force)
                    ensureActive()
                    if (states[instance] === current && current.generation == generation) {
                        render.invoke(null, instance, t.native(request.content), t.native(result.content), null)
                        if (result.formattingFallback) notify(instance, "\u683c\u5f0f\u672a\u80fd\u5b8c\u6574\u6062\u590d\uff0c\u5df2\u663e\u793a\u65e0\u683c\u5f0f\u8bd1\u6587")
                        if (!persistSelection(current.opening.provider, language))
                            notify(instance, "\u672c\u6b21\u7ffb\u8bd1\u5df2\u5b8c\u6210\uff0c\u4f46\u672a\u80fd\u4fdd\u5b58\u7ffb\u8bd1\u9009\u62e9")
                    }
                } catch (e: CancellationException) { throw e }
                catch (e: Exception) {
                    if (states[instance] === current && current.generation == generation) {
                        val code = (e as? TranslationException)?.code ?: TranslationError.INVALID_RESPONSE
                        Logger.w("Translation failed provider=${current.opening.provider} code=$code", "Translation", xposed = true)
                        notify(instance, "\u7ffb\u8bd1\u5931\u8d25: $code")
                        runCatching { render.invoke(null, instance, t.native(request.content), null, null) }
                    }
                }
            }
            current.job!!.start()
            null
        }
        for (name in listOf("dismiss", "dismissInternal")) {
            xposed.hook(sheet.exactMethod(name, Void.TYPE)).intercept { chain ->
                states.remove(chain.thisObject)?.job?.cancel()
                chain.proceed()
            }
        }

        fun show(selection: MessageMenuActions.Selection, providerId: String) {
            val owner = c.ownerField.get(selection.message)
            val content = TranslationText(c.text.get(owner) as? String ?: "", t.readEntities(c.entities.get(owner)))
            if (content.text.isBlank()) return
            val context = Opening(TranslationRequest(content, settings().targetLanguage, c.messageAccount.getInt(selection.message)), providerId, true)
            opening.set(context)
            try {
                val instance = constructor.newInstance(selection.activity, "auto", context.request.toLanguage,
                    content.text, null, 0, false, null)
                (instance as Dialog).show()
            } finally { opening.remove() }
        }

        fun visible(chat: Any, message: Any): Boolean = settings().enabled &&
            (c.text.get(c.ownerField.get(message)) as? String)?.isNotBlank() == true &&
            c.richMessage.get(c.ownerField.get(message)) == null

        MessageMenuActions.register(MessageMenuActions.Action(
            0x746705, "\u7ffb\u8bd1 / \u91cd\u8bd1", "msg_translate", ::visible,
            { selection -> show(selection, settings().config.providerId) }, listOf("msg_language"),
        ))
        MessageMenuActions.register(MessageMenuActions.Action(
            0x746706, "\u9009\u62e9\u7ffb\u8bd1\u6e90", "msg_translate", ::visible,
            { selection ->
                val descriptors = TranslationProviderRegistry.descriptors
                val labels = descriptors.map {
                    when {
                        it.ai -> settings().aiName + if (settings().aiConfigured) "" else " (\u672a\u914d\u7f6e)"
                        !it.selectable -> it.name + " (\u63a5\u53e3\u53d7\u9650\uff0c\u6682\u4e0d\u542f\u7528)"
                        else -> it.name
                    } as CharSequence
                }.toTypedArray()
                val builder = c.type("org.telegram.ui.ActionBar.AlertDialog\$Builder")
                val provider = c.type("org.telegram.ui.ActionBar.j6")
                val getProvider = c.chat.exactMethod("getResourceProvider", provider)
                val dialog = builder.getConstructor(Context::class.java, provider).newInstance(selection.activity, getProvider.invoke(selection.chat))
                builder.exactMethod("l", Void.TYPE, CharSequence::class.java).invoke(dialog, "\u7ffb\u8bd1\u6e90")
                builder.exactMethod("f", Void.TYPE, Array<CharSequence>::class.java, DialogInterface.OnClickListener::class.java)
                    .invoke(dialog, labels, DialogInterface.OnClickListener { _, index ->
                        val id = descriptors.getOrNull(index)?.id ?: return@OnClickListener
                        if (!TranslationSelection.allowed(id, settings().aiConfigured)) {
                            MessageMenuActions.toast(selection.activity, if (id == "openai_compatible")
                                "\u8bf7\u5148\u5728\u6a21\u5757\u8bbe\u7f6e\u4e2d\u914d\u7f6e AI \u63a5\u53e3"
                                else "\u8be5\u7ffb\u8bd1\u6e90\u5f53\u524d\u4e0d\u53ef\u7528\uff0c\u672a\u53d1\u9001\u6d88\u606f\u5185\u5bb9")
                        } else {
                            scope.launch {
                                if (!persistSelection(id, settings().targetLanguage))
                                    MessageMenuActions.toast(selection.activity, "\u672a\u80fd\u4fdd\u5b58\u9ed8\u8ba4\u7ffb\u8bd1\u6e90")
                                show(selection, id)
                            }
                        }
                    })
                builder.exactMethod("o", c.type("org.telegram.ui.ActionBar.f2")).invoke(dialog)
            }, listOf("msg_language"),
        ))
    }
}
