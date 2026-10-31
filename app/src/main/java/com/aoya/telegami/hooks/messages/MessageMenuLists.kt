package com.aoya.telegami.hooks.messages

/** q8(message, icons, labels, ids), verified by its native msg_copy branch. */
class MessageMenuLists(arguments: List<Any?>) {
    @Suppress("UNCHECKED_CAST")
    val icons = arguments[1] as ArrayList<Int>
    @Suppress("UNCHECKED_CAST")
    val labels = arguments[2] as ArrayList<CharSequence>
    @Suppress("UNCHECKED_CAST")
    val ids = arguments[3] as ArrayList<Int>

    init {
        require(icons.size == labels.size && ids.size == labels.size) { "Native menu lists are not aligned" }
    }

    fun append(id: Int, label: CharSequence, icon: Int) {
        if (id in ids) return
        icons.add(icon)
        labels.add(label)
        ids.add(id)
    }
}
