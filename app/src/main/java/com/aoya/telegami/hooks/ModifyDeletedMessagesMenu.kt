package com.aoya.telegami.hooks

import android.util.Log
import com.aoya.telegami.Telegami
import com.aoya.telegami.service.Config
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
                    val ids = chain.args[1] as? ArrayList<Int> ?: return@intercept result
                    val labels = chain.args[2] as? ArrayList<String> ?: return@intercept result
                    val icons = chain.args[3] as? ArrayList<Int> ?: return@intercept result
                    if (3 !in ids) {
                        labels.add(Telegami.getResource("Copy", "string").let { id ->
                            if (id == 0) return@let "Copy"
                            com.aoya.telegami.virt.messenger.LocaleController.getString(id)
                        })
                        labels.add(Telegami.getResource("Delete", "string").let { id ->
                            if (id == 0) return@let "Delete"
                            com.aoya.telegami.virt.messenger.LocaleController.getString(id)
                        })
                        ids.add(3)
                        ids.add(1)
                        icons.add(Telegami.getResource("msg_copy", "drawable"))
                        icons.add(Telegami.getResource("msg_delete", "drawable"))
                    }
                }
            } catch (error: Throwable) {
                Log.e("Telegami", "Failed to extend the retained-message menu", error)
            }
            result
        }
    }
}
