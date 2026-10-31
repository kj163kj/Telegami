package com.aoya.telegami.core

import com.aoya.telegami.util.exactField
import com.aoya.telegami.util.exactMethod
import java.io.File

/** Storage/TL contracts from edit_storage.smali, methods.txt and history_methods.txt. */
class TelegramHistoryResolver(val c: TelegramMessageResolver) {
    val storage = c.type("org.telegram.messenger.MessagesStorage")
    val batch = c.type("org.telegram.tgnet.TLRPC\$messages_Messages")
    val edit = storage.exactMethod(
        "lambda\$putMessages\$238", Void.TYPE, c.int, batch, c.long, c.long, c.int, c.int, c.bool,
    )
    val messages = batch.exactField("messages", c.list)
    val account = c.type("org.telegram.messenger.BaseController").exactField("currentAccount", c.int)
    val input = c.type("org.telegram.tgnet.InputSerializedData")
    val output = c.type("org.telegram.tgnet.OutputSerializedData")
    val serialized = c.type("org.telegram.tgnet.SerializedData")
    val nativeBuffer = c.type("org.telegram.tgnet.NativeByteBuffer")
    val cursor = c.type("org.telegram.SQLite.SQLiteCursor")
    val cursorBytes = cursor.exactMethod("byteBufferValue", nativeBuffer, c.int)
    val readInt = input.exactMethod("readInt32", c.int, c.bool)
    val reuse = nativeBuffer.exactMethod("reuse", Void.TYPE)
    val deserialize = c.owner.exactMethod("TLdeserialize", c.owner, input, c.int, c.bool)
    val readPath = c.owner.exactMethod("readAttachPath", Void.TYPE, input, c.long)
    val serialize = c.type("org.telegram.tgnet.TLObject").exactMethod("serializeToStream", Void.TYPE, output)
    val bytes = serialized.exactMethod("toByteArray", ByteArray::class.java)
    val cleanup = serialized.exactMethod("cleanup", Void.TYPE)
    private val fileLoader = c.type("org.telegram.messenger.FileLoader")
    val fileLoaderInstance = fileLoader.exactMethod("getInstance", fileLoader, c.int)
    val messageFile = fileLoader.exactMethod("getPathToMessage", File::class.java, c.owner)

    fun encode(value: Any): ByteArray {
        val stream = serialized.getConstructor().newInstance()
        return try {
            serialize.invoke(value, stream)
            (bytes.invoke(stream) as ByteArray).clone()
        } finally {
            cleanup.invoke(stream)
        }
    }

    fun cloneOwner(owner: Any): Any {
        val stream = serialized.getConstructor(ByteArray::class.java).newInstance(encode(owner))
        return try {
            deserialize.invoke(null, stream, readInt.invoke(stream, true), true)!!
        } finally {
            cleanup.invoke(stream)
        }
    }
}
