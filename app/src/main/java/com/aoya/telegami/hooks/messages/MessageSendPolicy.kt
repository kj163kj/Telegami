package com.aoya.telegami.hooks.messages

data class MessageDestinationKey(val dialogId: Long, val topicId: Long = 0, val monoForumPeer: Long = 0)

object MessageSendPolicy {
    // ttl_period is chat auto-delete retention, not a self-destruct media timer.
    @Suppress("UNUSED_PARAMETER")
    fun isSelfDestructing(ttl: Int, mediaTtl: Int, ttlPeriod: Int): Boolean =
        ttl != 0 || mediaTtl != 0

    fun requiresCopy(protectedGroup: Boolean, noForwards: Boolean, canForward: Boolean): Boolean =
        protectedGroup || noForwards || !canForward
}
