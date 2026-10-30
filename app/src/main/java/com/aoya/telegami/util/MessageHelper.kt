package com.aoya.telegami.util

import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.drawable.Drawable
import android.text.Layout
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.TextPaint
import android.text.style.ReplacementSpan
import com.aoya.telegami.Telegami
import com.aoya.telegami.virt.messenger.AndroidUtilities

object MessageHelper {
    private const val EDIT_COLOR = 0xFF5FA8D3.toInt()
    private const val DELETE_COLOR = 0xFFFF6B6B.toInt()

    fun appendEdited(text: CharSequence): CharSequence {
        if (hasIcon(text, "msg_edit")) return text
        val icon = iconSpan("msg_edit", EDIT_COLOR) ?: return text
        val labelId = Telegami.getResource("EditedMessage", "string")
        val label = labelId.takeIf { it != 0 }?.let {
            runCatching { Telegami.telegram.localizedString.invoke(null, it) as? String }.getOrNull()
        }
        val start = label?.takeIf { it.isNotEmpty() }?.let { text.indexOf(it) } ?: -1
        return if (start >= 0 && label != null) {
            SpannableStringBuilder(text).replace(start, start + label.length, icon)
        } else {
            appendIcon(text, icon)
        }
    }

    fun appendDeleted(text: CharSequence): CharSequence {
        if (hasIcon(text, "msg_delete")) return text
        val icon = iconSpan("msg_delete", DELETE_COLOR) ?: return text
        return appendIcon(text, icon)
    }

    private fun hasIcon(text: CharSequence, resource: String): Boolean =
        text is Spanned && text.getSpans(0, text.length, TimeIconSpan::class.java).any { it.resourceName == resource }

    private fun appendIcon(text: CharSequence, icon: CharSequence): CharSequence =
        SpannableStringBuilder(text).append(' ').append(icon)

    fun measured(text: CharSequence, paint: TextPaint): Int =
        Layout.getDesiredWidth(text, paint).let { kotlin.math.ceil(it.toDouble()).toInt() }

    private fun iconSpan(resourceName: String, color: Int): CharSequence? {
        val id = Telegami.getResource(resourceName, "drawable").takeIf { it != 0 } ?: return null
        val drawable = Telegami.context.getDrawable(id)?.mutate() ?: return null
        val textSize = (Telegami.telegram.timePaint.get(null) as TextPaint).textSize
        val size = textSize.toInt().coerceAtLeast(AndroidUtilities.dp(8f))
        drawable.setBounds(0, 0, size, size)
        return SpannableStringBuilder("\u200B").apply {
            setSpan(TimeIconSpan(resourceName, drawable, color), 0, 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }
}

private class TimeIconSpan(
    val resourceName: String,
    private val icon: Drawable,
    private val color: Int,
) : ReplacementSpan() {
    override fun getSize(
        paint: Paint,
        text: CharSequence?,
        start: Int,
        end: Int,
        fm: Paint.FontMetricsInt?,
    ): Int = icon.bounds.width()

    override fun draw(
        canvas: Canvas,
        text: CharSequence?,
        start: Int,
        end: Int,
        x: Float,
        top: Int,
        y: Int,
        bottom: Int,
        paint: Paint,
    ) {
        val baseline = icon.bounds.height().coerceAtMost(bottom - top)
        val offset = (bottom - top - baseline) / 2
        icon.setBounds(x.toInt(), top + offset, x.toInt() + icon.bounds.width(), top + offset + baseline)
        icon.setTint(color)
        icon.draw(canvas)
    }
}
