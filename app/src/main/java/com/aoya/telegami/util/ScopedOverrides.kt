package com.aoya.telegami.util

import java.lang.reflect.Field

/** Restore shared host state even when a nested hook or the host throws. */
fun <T> withBooleanOverride(owner: Any, field: Field, value: Boolean, block: () -> T): T =
    synchronized(owner) {
        val previous = field.getBoolean(owner)
        field.setBoolean(owner, value)
        try {
            block()
        } finally {
            field.setBoolean(owner, previous)
        }
    }

class HookBypass {
    private val bypass = ThreadLocal<Boolean>()

    val active: Boolean get() = bypass.get() == true

    fun <T> run(block: () -> T): T {
        val previous = bypass.get()
        bypass.set(true)
        try {
            return block()
        } finally {
            if (previous == null) bypass.remove() else bypass.set(previous)
        }
    }
}
