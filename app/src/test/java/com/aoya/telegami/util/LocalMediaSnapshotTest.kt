package com.aoya.telegami.util

import org.junit.Assert.*
import org.junit.Test

class LocalMediaSnapshotTest {
    private open class Node { @JvmField var inherited = 12 }
    private class Location : Node() {
        @JvmField var volume = Long.MIN_VALUE
        @JvmField var localId = -34
    }
    private class Size : Node() {
        @JvmField var location = Location()
        @JvmField var bytes = byteArrayOf(1, 2)
    }
    private class Photo : Node() {
        @JvmField var sizes = arrayListOf(Size())
        @JvmField var reference = byteArrayOf()
        @JvmField var alias: Size? = null
    }

    private fun snapshot(photo: Photo) = copyLocalMediaGraph(photo) { it is Node } as Photo

    @Test fun localOnlyLocationsAndInheritedFieldsSurviveWithoutSharingMutableState() {
        val original = Photo()
        val copy = snapshot(original)
        assertNotSame(original, copy)
        assertNotSame(original.sizes, copy.sizes)
        assertNotSame(original.sizes[0], copy.sizes[0])
        assertNotSame(original.sizes[0].location, copy.sizes[0].location)
        assertEquals(Long.MIN_VALUE, copy.sizes[0].location.volume)
        assertEquals(-34, copy.sizes[0].location.localId)
        assertEquals(12, copy.sizes[0].inherited)
        copy.sizes[0].location.localId = 999
        copy.sizes[0].bytes[0] = 9
        assertEquals(-34, original.sizes[0].location.localId)
        assertEquals(1.toByte(), original.sizes[0].bytes[0])
    }

    @Test fun twoDestinationsGetIndependentSnapshotsAndInternalAliasesArePreserved() {
        val original = Photo().apply { alias = sizes[0] }
        val first = snapshot(original)
        val second = snapshot(original)
        assertSame(first.alias, first.sizes[0])
        assertNotSame(first.reference, second.reference)
        first.sizes[0].location.volume = 123
        first.sizes.clear()
        assertEquals(1, second.sizes.size)
        assertEquals(Long.MIN_VALUE, second.sizes[0].location.volume)
        assertEquals(1, original.sizes.size)
    }
}
