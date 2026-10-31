package com.aoya.telegami.hooks.messages

/** Runs before native writes. One corrupt old row must not discard the incoming revision. */
internal class HistoryCapturePipeline<T : Any, S : Any>(
    private val readOld: (T) -> T?,
    private val snapshot: (T) -> S?,
    private val persist: (List<S>) -> Unit,
    private val failed: (Throwable) -> Unit,
) {
    data class Counts(var messages: Int = 0, var oldFound: Int = 0, var snapshots: Int = 0, var failures: Int = 0)

    fun capture(owners: List<T>): Counts {
        val counts = Counts()
        fun <R> attempt(block: () -> R): R? = try { block() } catch (error: Throwable) {
            counts.failures++
            failed(error)
            null
        }
        owners.forEach { owner ->
            counts.messages++
            val old = attempt { readOld(owner) }
            if (old != null) counts.oldFound++
            val candidates = listOfNotNull(old?.let { attempt { snapshot(it) } }, attempt { snapshot(owner) })
            if (candidates.isNotEmpty()) attempt {
                persist(candidates)
                counts.snapshots += candidates.size
            }
        }
        return counts
    }
}
