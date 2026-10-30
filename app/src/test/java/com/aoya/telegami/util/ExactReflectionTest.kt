package com.aoya.telegami.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class ExactReflectionTest {
    private open class Parent {
        private val account: Long = 42L
        private fun lookup(id: Int): String = "message:$id"
        private fun lookup(id: Long): Long = id
    }

    private class Child : Parent()

    @Test
    fun resolvesInheritedPrivateMembersWithExactDescriptors() {
        val child = Child()
        val method = Child::class.java.exactMethod("lookup", String::class.java, Int::class.javaPrimitiveType!!)
        val field = Child::class.java.exactField("account", Long::class.javaPrimitiveType!!)

        assertEquals("message:7", method.invoke(child, 7))
        assertEquals(42L, field.getLong(child))
    }

    @Test
    fun rejectsWrongReturnParameterAndFieldTypes() {
        assertThrows(IllegalStateException::class.java) {
            Child::class.java.exactMethod("lookup", String::class.java, Long::class.javaPrimitiveType!!)
        }
        assertThrows(IllegalStateException::class.java) {
            Child::class.java.exactMethod("lookup", String::class.java, Int::class.javaObjectType)
        }
        assertThrows(IllegalStateException::class.java) {
            Child::class.java.exactField("account", Int::class.javaPrimitiveType!!)
        }
    }
}
