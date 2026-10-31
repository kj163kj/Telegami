package com.aoya.telegami.hooks.messages

import java.io.File

object ForwardMediaPolicy {
    const val AUTO_DOWNLOAD_LIMIT = 100L * 1024 * 1024
    enum class Transfer { REMOTE, LOCAL, ASK }

    fun transfer(protectedSource: Boolean, hasMedia: Boolean, bytes: Long): Transfer = when {
        !protectedSource || !hasMedia -> Transfer.REMOTE
        bytes in 1..AUTO_DOWNLOAD_LIMIT -> Transfer.LOCAL
        else -> Transfer.ASK
    }

    fun rerouteNative(unlockEnabled: Boolean, protectedSource: Boolean) = unlockEnabled && protectedSource

    fun completeLocalFile(file: File?, expectedBytes: Long): Boolean =
        file != null && file.isFile && file.canRead() && file.length() > 0 &&
            (expectedBytes <= 0 || file.length() >= expectedBytes)
}

/** Late downloads and dismissed dialogs cannot complete a cancelled preparation. */
class ForwardPreparationState {
    enum class State { ACTIVE, SUCCEEDED, FAILED, CANCELLED }
    var state = State.ACTIVE
        private set

    @Synchronized
    fun finish(result: State): Boolean {
        require(result != State.ACTIVE)
        if (state != State.ACTIVE) return false
        state = result
        return true
    }

    val active: Boolean
        @Synchronized get() = state == State.ACTIVE
}
