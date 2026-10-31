package com.aoya.telegami.hooks.messages

import org.junit.Assert.assertEquals
import org.junit.Test

class MessageMenuListsTest {
    @Test
    fun nativeArgumentOrderIsIconsLabelsIds() {
        val icons = arrayListOf(0x7f08056a)
        val labels = arrayListOf<CharSequence>("Copy")
        val ids = arrayListOf(3)
        val menu = MessageMenuLists(listOf(null, icons, labels, ids))
        menu.append(0x746701, "Repeat", 0x7f0805a8)
        assertEquals(listOf(0x7f08056a, 0x7f0805a8), icons)
        assertEquals(listOf("Copy", "Repeat"), labels)
        assertEquals(listOf(3, 0x746701), ids)
    }

    @Test
    fun repeatedExtensionDoesNotDuplicateActions() {
        val menu = MessageMenuLists(listOf(null, arrayListOf<Int>(), arrayListOf<CharSequence>(), arrayListOf<Int>()))
        menu.append(3, "Copy", 0x7f08056a)
        menu.append(3, "Copy again", 0x7f08056a)
        assertEquals(1, menu.ids.size)
        assertEquals(1, menu.labels.size)
        assertEquals(1, menu.icons.size)
    }

    @Test(expected = IllegalArgumentException::class)
    fun rejectsMisalignedNativeLists() {
        MessageMenuLists(listOf(null, arrayListOf(1), arrayListOf<CharSequence>(), arrayListOf(3)))
    }
}
