package com.aoya.telegami.util

import java.lang.reflect.Modifier
import java.util.IdentityHashMap

/** TL serialization drops local-only PhotoSize.location fields required for fresh uploads. */
fun copyLocalMediaGraph(root: Any, isMediaNode: (Any) -> Boolean): Any {
    val copies = IdentityHashMap<Any, Any>()
    fun copy(value: Any?): Any? {
        if (value == null) return null
        copies[value]?.let { return it }
        if (value is ByteArray) return value.clone()
        if (value is ArrayList<*>) {
            val result = arrayListOf<Any?>()
            copies[value] = result
            value.forEach { result += copy(it) }
            return result
        }
        if (!isMediaNode(value)) return value
        val result = value.javaClass.getDeclaredConstructor().apply { isAccessible = true }.newInstance()
        copies[value] = result
        var type: Class<*>? = value.javaClass
        while (type != null && type != Any::class.java) {
            type.declaredFields.filterNot { Modifier.isStatic(it.modifiers) }.forEach { field ->
                field.isAccessible = true
                field.set(result, copy(field.get(value)))
            }
            type = type.superclass
        }
        return result
    }
    return requireNotNull(copy(root))
}
