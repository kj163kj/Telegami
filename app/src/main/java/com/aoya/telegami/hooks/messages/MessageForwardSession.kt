package com.aoya.telegami.hooks.messages

/** A picker may call back again while a confirmation is open or after submission. */
class MessageForwardSession {
    private enum class State { SELECTING, CONFIRMING, SUBMITTED }
    private var state = State.SELECTING

    val acceptingSelection: Boolean
        @Synchronized get() = state == State.SELECTING

    @Synchronized
    fun select(destinations: List<MessageDestinationKey>): List<MessageDestinationKey>? {
        if (state != State.SELECTING || destinations.isEmpty()) return null
        state = State.CONFIRMING
        return destinations.distinct()
    }

    @Synchronized
    fun cancelConfirmation() {
        if (state == State.CONFIRMING) state = State.SELECTING
    }

    @Synchronized
    fun submit(): Boolean {
        if (state != State.CONFIRMING) return false
        // Consume before calling native code: a partial failure must never resend earlier targets.
        state = State.SUBMITTED
        return true
    }

    companion object {
        fun visible(enabled: Boolean): Boolean = enabled
    }
}
