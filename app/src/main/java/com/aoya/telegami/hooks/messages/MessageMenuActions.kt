package com.aoya.telegami.hooks.messages

import android.app.Activity
import android.widget.Toast
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramMessageResolver
import com.aoya.telegami.hooks.UnlockChannelFeatures
import com.aoya.telegami.util.Logger
import io.github.libxposed.api.XposedInterface

object MessageMenuActions {
    const val REPEAT = 0x746701
    const val COPY = 0x746702
    const val SEND_COPY = 0x746703
    const val HISTORY = 0x746704

    data class Selection(val chat: Any, val message: Any, val activity: Activity)

    data class Action(
        val id: Int,
        val label: String,
        val icon: String,
        val visible: (Any, Any) -> Boolean,
        val execute: (Selection) -> Unit,
        val fallbackIcons: List<String> = emptyList(),
        val iconOverride: Int? = null,
    )

    private val actions = linkedMapOf<Int, Action>()
    lateinit var target: TelegramMessageResolver
        private set
    private var installed = false

    @Synchronized
    fun register(action: Action) {
        check(!actions.containsKey(action.id)) { "Duplicate message action ${action.id}" }
        actions[action.id] = action
    }

    @Synchronized
    fun install(xposed: XposedInterface, loader: ClassLoader) {
        if (installed) return
        target = TelegramMessageResolver(loader)
        xposed.hook(target.fillMenu).intercept { chain ->
            val result = UnlockChannelFeatures.withMenuAccess(chain.args[0]) {
                chain.proceed(chain.args.toTypedArray())
            }
            try {
                val chat = chain.thisObject!!
                val message = chain.args[0] ?: return@intercept result
                val menu = MessageMenuLists(chain.args.toList())
                val snapshot = synchronized(this) { actions.values.toList() }
                snapshot.forEach { action ->
                    if (action.id !in menu.ids && action.visible(chat, message)) {
                        menu.append(action.id, action.label, resolveIcon(chat, action))
                    }
                }
                Logger.i(
                    "Extended message menu custom=${snapshot.count { it.id in menu.ids }} total=${menu.ids.size}",
                    "MessageTools",
                    xposed = true,
                )
            } catch (error: Throwable) {
                Logger.e("Unable to extend message menu", error, "MessageTools")
            }
            result
        }

        xposed.hook(target.dispatch).intercept { chain ->
            val id = chain.args.firstOrNull() as? Int
            val action = id?.let { synchronized(this) { actions[it] } }
                ?: return@intercept chain.proceed(chain.args.toTypedArray())
            executeFor(chain.thisObject!!, id, action)
            // Telegram's native dispatcher still performs popup cleanup.
            chain.proceed(chain.args.toTypedArray())
        }
        installed = true
        Logger.i("Installed exact message menu hooks", "MessageTools", xposed = true)
    }

    private fun executeFor(chat: Any, id: Int, action: Action) {
        val selection = captureSelection(chat)
        if (selection == null) {
            Logger.w("Message action selection unavailable for id=$id", "MessageTools", xposed = true)
            return
        }
        try {
            if (!action.visible(chat, selection.message)) {
                Logger.i("Message action hidden at click time for id=$id", "MessageTools", xposed = true)
                return
            }
            Logger.i(
                "Message action clicked id=$id package=${selection.activity.packageName} " +
                    "dialog=${runCatching { Telegami.telegram.chatDialog.getLong(chat) }.getOrDefault(0L)}",
                "MessageTools",
                xposed = true,
            )
            action.execute(selection)
        } catch (error: Throwable) {
            Logger.e("Message action failed id=$id", error, "MessageTools")
            toast(selection.activity, error.message ?: "操作失败，请查看模块日志")
        }
    }

    private fun captureSelection(chat: Any): Selection? = try {
        val message = target.selected.get(chat)
        val activity = target.parentActivity.invoke(chat) as? Activity
        Logger.i(
            "Message action selection chat=${chat.javaClass.name} message=${message != null} " +
                "activity=${activity?.packageName}",
            "MessageTools",
            xposed = true,
        )
        if (message != null && activity != null) Selection(chat, message, activity) else null
    } catch (error: Throwable) {
        Logger.e("Unable to capture selected message", error, "MessageTools")
        null
    }

    private fun resolveIcon(chat: Any, action: Action): Int {
        action.iconOverride?.let { return it }
        val names = buildList {
            add(action.icon)
            addAll(action.fallbackIcons)
            add("msg_forward")
        }.distinct()
        val activity = runCatching { target.parentActivity.invoke(chat) as? Activity }.getOrNull()
        for (name in names) {
            // The website applicationId may differ from the compiled resource namespace.
            val id = activity?.resources?.getIdentifier(name, "drawable", activity.packageName)
                ?.takeIf { it != 0 }
                ?: Telegami.getResource(name, "drawable").takeIf { it != 0 }
                ?: Telegami.context.resources.getIdentifier(name, "drawable", "org.telegram.messenger").takeIf { it != 0 }
            if (id != null) {
                Logger.i(
                    "Resolved menu icon name=$name id=0x${id.toString(16)} " +
                        "package=${activity?.packageName ?: Telegami.packageName}",
                    "MessageTools",
                    xposed = true,
                )
                return id
            }
        }
        Logger.w("No drawable found for message action ${action.id}", "MessageTools", xposed = true)
        return 0
    }

    fun toast(activity: Activity, text: String) {
        Toast.makeText(activity, text, Toast.LENGTH_LONG).show()
    }
}
