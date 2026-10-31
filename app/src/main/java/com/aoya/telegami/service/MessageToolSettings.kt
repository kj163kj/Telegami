package com.aoya.telegami.service

/** Shared data contract for the separate Miuix settings implementation. */
object MessageToolSettings {
    const val REPEAT = "enable_message_repeat"
    const val COPY = "enable_message_copy"
    const val HISTORY = "enable_edit_history"
    const val REPEAT_CONFIRM = "enable_repeat_confirmation"
    const val COPY_CONFIRM = "enable_copy_confirmation"
    const val RETENTION = "edit_history_retention_days"
    const val MAX_VERSIONS = "edit_history_max_versions"

    val booleanDefaults = mapOf(
        REPEAT to false, COPY to false, HISTORY to false,
        REPEAT_CONFIRM to true, COPY_CONFIRM to true,
    )
    val integerDefaults = mapOf(RETENTION to 30, MAX_VERSIONS to 100)

    fun bounded(key: String, value: Int): Int = when (key) {
        RETENTION -> value.coerceIn(1, 3650)
        MAX_VERSIONS -> value.coerceIn(2, 1000)
        else -> error("Unknown message tool integer: $key")
    }
}
