package com.aoya.telegami.hooks

import android.util.Log
import com.aoya.telegami.Telegami
import com.aoya.telegami.service.Config
import com.aoya.telegami.hooks.messages.MessageMenuLists
import io.github.libxposed.api.XposedInterface

object ModifyDeletedMessagesMenu {
    fun install(xposed: XposedInterface, classLoader: ClassLoader) {
        val target = Telegami.telegram
        xposed.hook(target.fillMenu).intercept { chain ->
            val result = chain.proceed(chain.args.toTypedArray())
            try {
                val message = chain.args[0] ?: return@intercept result
                val accountId = target.accountIdForSlot(target.messageAccount.getInt(message))
                val dialogId = target.messageDialog.invoke(message) as Long
                val messageId = target.messageId.invoke(message) as Int
                if (Config.isFeatureEnabled("ShowDeletedMessages") &&
                    Globals.isDeletedMessage(dialogId, messageId, accountId)
                ) {
                    val menu = MessageMenuLists(chain.args.toList())
                    if (3 !in menu.ids) {
                        val copyLabel = Telegami.getResource("Copy", "string").let { id ->
                            if (id == 0) return@let "Copy"
                            com.aoya.telegami.virt.messenger.LocaleController.getString(id)
                        }
                        val deleteLabel = Telegami.getResource("Delete", "string").let { id ->
                            if (id == 0) return@let "Delete"
                            com.aoya.telegami.virt.messenger.LocaleController.getString(id)
                        }
                        menu.append(3, copyLabel, Telegami.getResource("msg_copy", "drawable"))
                        menu.append(1, deleteLabel, Telegami.getResource("msg_delete", "drawable"))
                    }
                }
            } catch (error: Throwable) {
                Log.e("Telegami", "Failed to extend the retained-message menu", error)
            }
            result
        }
    }
}
