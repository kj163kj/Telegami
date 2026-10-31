package com.aoya.telegami.hooks.messages

import android.app.Activity
import android.widget.Toast
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramMessageResolver
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
            val result = chain.proceed(chain.args.toTypedArray())
            try {
                val chat = chain.thisObject!!
                val message = chain.args[0] ?: return@intercept result
                @Suppress("UNCHECKED_CAST")
                val ids = chain.args[1] as ArrayList<Int>
                @Suppress("UNCHECKED_CAST")
                val labels = chain.args[2] as ArrayList<String>
                @Suppress("UNCHECKED_CAST")
                val icons = chain.args[3] as ArrayList<Int>
                if (ids.size != labels.size || ids.size != icons.size) return@intercept result
                val snapshot = synchronized(this) { actions.values.toList() }
                snapshot.forEach { action ->
                    if (action.id !in ids && action.visible(chat, message)) {
                        ids.add(action.id)
                        labels.add(action.label)
                        icons.add(Telegami.getResource(action.icon, "drawable"))
                    }
                }
            } catch (error: Throwable) {
                Logger.e("Unable to extend message menu", error, "MessageTools")
            }
            result
        }
        xposed.hook(target.dispatch).intercept { chain ->
            val id = chain.args[0] as Int
            val action = synchronized(this) { actions[id] }
                ?: return@intercept chain.proceed(chain.args.toTypedArray())
            val chat = chain.thisObject!!
            val selection = try {
                val message = target.selected.get(chat)
                val activity = target.parentActivity.invoke(chat) as? Activity
                if (message != null && activity != null) Selection(chat, message, activity) else null
            } catch (error: Throwable) {
                Logger.e("Unable to capture selected message", error, "MessageTools")
                null
            }
            // Unknown native IDs take the verified selection/popup cleanup tail.
            val result = chain.proceed(chain.args.toTypedArray())
            if (selection != null) {
                try {
                    if (action.visible(chat, selection.message)) action.execute(selection)
                } catch (error: Throwable) {
                    Logger.e("Message action failed", error, "MessageTools")
                    toast(selection.activity, "操作失败，请查看模块日志")
                }
            }
            result
        }
        installed = true
        Logger.i("Installed exact message menu hooks", "MessageTools", xposed = true)
    }

    fun toast(activity: Activity, text: String) {
        Toast.makeText(activity, text, Toast.LENGTH_LONG).show()
    }
}
