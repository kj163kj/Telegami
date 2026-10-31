package com.aoya.telegami.hooks.messages

import android.app.Activity
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramForwardResolver
import com.aoya.telegami.core.TelegramHistoryResolver
import com.aoya.telegami.core.TelegramSendResolver
import com.aoya.telegami.service.Config
import com.aoya.telegami.service.MessageToolSettings
import com.aoya.telegami.util.Logger
import io.github.libxposed.api.XposedInterface
import java.lang.reflect.Proxy
import java.util.WeakHashMap

class MessageForwardPicker(private val target: TelegramSendResolver) {
    private val c = target.common
    private val native by lazy { TelegramForwardResolver(target) }
    private val codec by lazy { TelegramHistoryResolver(c) }
    private val sender = MessageSender(target)
    private val dialogs by lazy { NativeMessageDialogs(c) }
    private val preparation by lazy { ProtectedMediaPreparation(target) }

    fun open(original: MessageMenuActions.Selection) {
        check(Config.isFeatureEnabled(MessageToolSettings.SOURCELESS_FORWARD)) { "\u529f\u80fd\u5df2\u5173\u95ed" }
        val picker = native.newPicker(c.messageAccount.getInt(original.message))
        val selected =
            selectionHandler(
                listOf(original),
                picker,
                MessageToolSettings.SOURCELESS_FORWARD,
                MessageForwardSession(),
            )
        val proxy = Proxy.newProxyInstance(c.loader, arrayOf(native.delegate)) { proxyObject, method, args ->
            when (method) {
                native.defaultD, native.defaultJ -> false
                native.selected -> selected(args)
                else -> when (method.name) {
                    "toString" -> "TelegamiForwardDelegate"
                    "hashCode" -> System.identityHashCode(proxyObject)
                    "equals" -> proxyObject === args?.firstOrNull()
                    else -> error("Unexpected native delegate method $method")
                }
            }
        }
        native.pickerDelegate.set(picker, proxy)
        check(native.present.invoke(original.chat, picker) == true) { "\u65e0\u6cd5\u6253\u5f00 Telegram \u8f6c\u53d1\u9009\u62e9\u5668" }
        Logger.i("Opened sourceless forward native picker", "MessageTools", xposed = true)
    }

    /** Keep the original picker; replace only its protected-source submission path. */
    fun installNativeBridge(xposed: XposedInterface) {
        // Values contain only state, so a session cannot keep its weak picker key alive.
        val sessions = WeakHashMap<Any, MessageForwardSession>()
        xposed.hook(native.nativeForward).intercept { chain ->
            val picker = chain.args[0]!!
            val previous = sessions[picker]
            if (previous != null && !previous.acceptingSelection) return@intercept previous.submitted
            val unlockEnabled = Config.isFeatureEnabled("UnlockChannelFeatures")
            if (!unlockEnabled) {
                return@intercept chain.proceed(chain.args.toTypedArray())
            }
            val chat = chain.thisObject!!
            val activity = c.parentActivity.invoke(chat) as? Activity ?: return@intercept false
            val sources = runCatching { native.forwardSources(chat) }.getOrElse {
                report(activity, it)
                return@intercept false
            }
            val protected = runCatching { sources.any(sender::isProtectedSource) }.getOrElse {
                report(activity, it)
                return@intercept false
            }
            if (!ForwardMediaPolicy.rerouteNative(
                    unlockEnabled, protected,
                )) return@intercept chain.proceed(chain.args.toTypedArray())
            try {
                val session = previous ?: MessageForwardSession().also { sessions[picker] = it }
                val handler = selectionHandler(
                    sources.map { MessageMenuActions.Selection(chat, it, activity) },
                    picker, "UnlockChannelFeatures", session,
                    onConsumed = { native.clearForwardSelection(chat) },
                )
                Logger.i("Routing native protected forward messages=${sources.size}", "MessageTools", xposed = true)
                handler(chain.args.toTypedArray())
            } catch (error: Throwable) {
                report(activity, error)
                false
            }
        }
        Logger.i("Installed native protected-forward bridge", "MessageTools", xposed = true)
    }

    private fun selectionHandler(
        originals: List<MessageMenuActions.Selection>,
        picker: Any,
        featureKey: String,
        session: MessageForwardSession,
        onConsumed: () -> Unit = {},
    ): (Array<out Any?>?) -> Boolean {
        val original = originals.first()
        val slot = c.messageAccount.getInt(original.message)
        val accountId = Telegami.telegram.accountIdForSlot(slot)
        val sourceDialog = Telegami.telegram.chatDialog.getLong(original.chat)
        val selections = originals.map {
            check(c.messageAccount.getInt(it.message) == slot) { "Mixed source accounts" }
            val owner = sender.validateSource(it.message)
            val detached = codec.cloneOwner(owner)
            c.attachPath.set(detached, c.attachPath.get(owner))
            it.copy(message = native.detachedMessage(slot, detached))
        }

        fun validateIdentity() {
            check(Telegami.telegram.accountIdForSlot(slot) == accountId &&
                native.currentAccount.invoke(picker) == slot && native.currentAccount.invoke(original.chat) == slot) {
                "\u8d26\u53f7\u5df2\u5207\u6362\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u6d88\u606f"
            }
            check(!original.activity.isFinishing && !original.activity.isDestroyed) { "\u804a\u5929\u9875\u9762\u5df2\u5173\u95ed" }
            check(Telegami.telegram.chatDialog.getLong(original.chat) == sourceDialog) { "\u6765\u6e90\u4f1a\u8bdd\u5df2\u53d8\u5316" }
        }

        fun validate() {
            validateIdentity()
            check(Config.isFeatureEnabled(featureKey)) { "\u529f\u80fd\u5df2\u5173\u95ed" }
        }

        validate()
        return selected@{ args ->
            if (!session.acceptingSelection) return@selected session.submitted
            try {
                validate()
                val targets = (args?.get(1) as? List<*>)?.filterNotNull()
                    ?.distinctBy(native::destinationIdentity).orEmpty()
                if (session.select(targets.map(native::destinationIdentity)) != null) {
                    val comment = args?.get(2) as? CharSequence
                    val notify = args?.get(4) as Boolean
                    val schedule = args[5] as Int
                    val scheduleRepeat = args[6] as Int
                    val fromTopicUi = args[7] != null
                    val send: () -> Unit = {
                        try {
                            session.submitToDestination(
                                openDestination = {
                                    validateIdentity()
                                    native.openDestination(original.chat, picker, targets.first(), slot, fromTopicUi)
                                    runCatching(onConsumed).onFailure {
                                        Logger.e("Unable to clear native forward selection", it, "MessageTools")
                                    }
                                    Logger.i("Opened sourceless forward destination chat", "MessageTools", xposed = true)
                                },
                                send = {
                                    validate()
                                    preparation.prepare(
                                        selections, ::validate,
                                        onReady = { prepared ->
                                            validate()
                                            val messages = prepared.filterNot {
                                                it.textOnly && (c.text.get(c.ownerField.get(it.selection.message)) as? String).isNullOrEmpty()
                                            }
                                            check(messages.isNotEmpty() || !comment.isNullOrEmpty()) {
                                                "\u8be5\u6d88\u606f\u6ca1\u6709\u53ef\u8f6c\u53d1\u7684\u6587\u672c\uff0c\u672a\u53d1\u9001"
                                            }
                                            val jobs = targets.flatMap { key ->
                                                val destination = native.destination(key, slot)
                                                buildList {
                                                    if (!comment.isNullOrEmpty()) {
                                                        add(sender.prepareComment(slot, destination, comment, notify, schedule, scheduleRepeat))
                                                    }
                                                    messages.forEach {
                                                        add(sender.prepare(
                                                            it.selection, destination, true, notify, schedule, scheduleRepeat,
                                                            it.localMedia, it.textOnly,
                                                        ))
                                                    }
                                                }
                                            }
                                            jobs.forEach { it() }
                                            Logger.i("Sourceless forward queued destinations=${targets.size} messages=${messages.size}", "MessageTools", xposed = true)
                                            MessageMenuActions.toast(original.activity, "\u5df2\u63d0\u4ea4\u5230 Telegram")
                                        },
                                        onFailure = { report(original.activity, it) },
                                        onCancel = { MessageMenuActions.toast(original.activity, "\u5df2\u53d6\u6d88\uff0c\u672a\u53d1\u9001") },
                                    )
                                },
                            )
                        } catch (error: Throwable) {
                            report(original.activity, error)
                            session.cancelConfirmation()
                        }
                    }
                    if (Config.getBoolean("enable_copy_confirmation", true)) {
                        dialogs.show(
                            original.activity, original.chat, "\u65e0\u6765\u6e90\u8f6c\u53d1",
                            "\u5c06 ${selections.size} \u6761\u6d88\u606f\u53d1\u9001\u5230\u9009\u4e2d\u7684 ${targets.size} \u4e2a\u4f1a\u8bdd\u6216\u8bdd\u9898\uff1f",
                            positiveText = "\u53d1\u9001", onPositive = send,
                            onNegative = session::cancelConfirmation, onCancel = session::cancelConfirmation,
                        )
                    } else send()
                }
            } catch (error: Throwable) {
                session.cancelConfirmation()
                report(original.activity, error)
            }
            session.submitted
        }
    }

    private fun report(activity: Activity, error: Throwable) {
        Logger.e("Sourceless forward rejected", error, "MessageTools")
        MessageMenuActions.toast(activity, error.cause?.message ?: error.message ?: "\u65e0\u6765\u6e90\u8f6c\u53d1\u5931\u8d25")
    }
}
