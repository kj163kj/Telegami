package com.aoya.telegami.util

import java.lang.reflect.Field
import java.lang.reflect.Method

fun Class<*>.exactMethod(name: String, result: Class<*>, vararg parameters: Class<*>): Method {
    var type: Class<*>? = this
    while (type != null) {
        val method = type.declaredMethods.firstOrNull {
            it.name == name && it.returnType == result && it.parameterTypes.contentEquals(parameters)
        }
        if (method != null) return method.apply { isAccessible = true }
        type = type.superclass
    }
    error("Missing exact method $this.$name(${parameters.joinToString { it.name }}):${result.name}")
}

fun Class<*>.exactField(name: String, fieldType: Class<*>): Field {
    var type: Class<*>? = this
    while (type != null) {
        val field = type.declaredFields.singleOrNull { it.name == name && it.type == fieldType }
        if (field != null) return field.apply { isAccessible = true }
        type = type.superclass
    }
    error("Missing exact field $this.$name:${fieldType.name}")
}
