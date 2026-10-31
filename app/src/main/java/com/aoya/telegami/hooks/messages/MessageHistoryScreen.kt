package com.aoya.telegami.hooks.messages

import android.app.Activity
import android.app.Dialog
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.os.Build
import android.text.Editable
import android.text.TextWatcher
import android.view.GestureDetector
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.view.Window
import android.view.WindowInsets
import android.view.WindowManager
import android.widget.BaseAdapter
import android.widget.EditText
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ListView
import android.widget.TextView
import com.aoya.telegami.Telegami
import com.aoya.telegami.core.TelegramHistoryUiResolver
import com.aoya.telegami.util.Logger

internal data class HistoryVersion(
    val title: String,
    val time: String,
    val captured: String,
    val text: String,
    val entities: List<TextEntity>,
    val media: String,
    val preview: Bitmap?,
    val current: Boolean = false,
    val ownerTl: ByteArray = byteArrayOf(),
) {
    fun matches(query: String): Boolean = query.isBlank() ||
        listOf(title, time, captured, text, media).any { it.contains(query.trim(), ignoreCase = true) }
}

/** NagramX's chat-style layout using actual host ActionBar, ChatActionCell and ChatMessageCell. */
internal object MessageHistoryScreen {
    fun show(
        activity: Activity, chat: Any, slot: Int, target: TelegramHistoryUiResolver,
        messageId: Int, versions: List<HistoryVersion>, notice: String, onDismiss: () -> Unit,
    ) {
        val dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar)
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)
        val context = activity
        fun dp(value: Int) = (value * context.resources.displayMetrics.density).toInt()
        fun service(text: String) = (target.actionConstructor.newInstance(context) as View).apply {
            target.actionText.invoke(this, text)
            setOnTouchListener { _, _ -> true }
        }
        val toolbar = target.createBar.invoke(chat, context) as ViewGroup
        target.occupyStatus.invoke(toolbar, false)
        val sourceBar = target.getBar.invoke(chat)
        val peerName = sourceBar?.let { target.getTitle.invoke(it) as? String }
        target.title.invoke(toolbar, peerName?.takeIf { it.isNotBlank() } ?: "\u7f16\u8f91\u5386\u53f2")
        target.subtitle.invoke(toolbar, "\u7f16\u8f91\u5386\u53f2 \u00b7 $messageId")
        target.backImage.invoke(toolbar, Telegami.getResource("ic_ab_back", "drawable"))

        val root = LinearLayout(context).apply { orientation = LinearLayout.VERTICAL }
        root.addView(toolbar, LinearLayout.LayoutParams(-1, -2))
        val area = object : FrameLayout(context) {
            private val wallpaper = target.wallpaper.invoke(null) as? Drawable
            init { setWillNotDraw(false) }
            override fun onDraw(canvas: Canvas) {
                super.onDraw(canvas)
                // Do not steal the host wallpaper's callback or leave its shared bounds changed.
                wallpaper?.let {
                    val oldBounds = Rect(it.bounds)
                    val saved = canvas.save()
                    try {
                        val scale = maxOf(width.toFloat() / it.intrinsicWidth.coerceAtLeast(1), height.toFloat() / it.intrinsicHeight.coerceAtLeast(1))
                        val w = (it.intrinsicWidth.coerceAtLeast(1) * scale).toInt()
                        val h = (it.intrinsicHeight.coerceAtLeast(1) * scale).toInt()
                        it.setBounds((width - w) / 2, (height - h) / 2, (width + w) / 2, (height + h) / 2)
                        it.draw(canvas)
                    } finally { it.bounds = oldBounds; canvas.restoreToCount(saved) }
                }
            }
        }
        toolbar.background?.constantState?.newDrawable()?.let { root.background = it }
        val list = ListView(context).apply {
            divider = null
            cacheColorHint = android.graphics.Color.TRANSPARENT
            selector = android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT)
            clipToPadding = false
            setPadding(0, dp(8), 0, dp(12))
            setStackFromBottom(true)
            transcriptMode = ListView.TRANSCRIPT_MODE_DISABLED
        }
        val noticeView = service(notice)
        list.addHeaderView(noticeView, null, false)
        val empty = service("\u6ca1\u6709\u5339\u914d\u7684\u5386\u53f2\u7248\u672c")
        area.addView(list, FrameLayout.LayoutParams(-1, -1))
        area.addView(empty, FrameLayout.LayoutParams(-1, -2, Gravity.CENTER))
        root.addView(area, LinearLayout.LayoutParams(-1, 0, 1f))
        var filtered = versions
        val previews = mutableSetOf<Dialog>()
        val readonlyDelegate = target.readonlyDelegate()
        fun preview(bitmap: Bitmap) {
            val window = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar)
            window.setContentView(ImageView(activity).apply {
                setImageBitmap(bitmap)
                scaleType = ImageView.ScaleType.FIT_CENTER
                contentDescription = "\u672c\u5730\u5386\u53f2\u56fe\u7247"
                setOnClickListener { window.dismiss() }
            })
            previews.add(window)
            window.setOnDismissListener { previews.remove(window) }
            window.show()
            window.window?.setLayout(-1, -1)
        }
        val adapter = object : BaseAdapter() {
            override fun getCount() = filtered.size
            override fun getItem(position: Int) = filtered[position]
            override fun getItemId(position: Int) = position.toLong()
            override fun isEnabled(position: Int) = false
            override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
                val version = getItem(position)
                val row = LinearLayout(context).apply { orientation = LinearLayout.VERTICAL }
                row.addView(service("${version.title}\n${version.time}"), LinearLayout.LayoutParams(-1, -2))
                try {
                    val message = target.message(version.ownerTl, slot)
                    val cell = target.cellConstructor.newInstance(context, slot) as View
                    target.isChat.setBoolean(cell, true)
                    target.setDelegate.invoke(cell, readonlyDelegate)
                    target.fullyDraw.invoke(cell, true)
                    target.assistant.invoke(cell, false)
                    Telegami.telegram.bindMessage.invoke(cell, message, null, false, false, false, false)
                    version.preview?.let { target.setBitmap.invoke(target.photoImage.invoke(cell), it) }
                    val gesture = GestureDetector(context, object : GestureDetector.SimpleOnGestureListener() {
                        override fun onDown(event: MotionEvent) = true
                        override fun onSingleTapUp(event: MotionEvent): Boolean {
                            version.preview?.let(::preview)
                            return true
                        }
                    })
                    // History is read-only: no sending, reply, poll vote, playback or download actions.
                    cell.setOnTouchListener { _, event -> gesture.onTouchEvent(event); true }
                    row.addView(cell, LinearLayout.LayoutParams(-1, -2))
                } catch (error: Throwable) {
                    Logger.e("Native history bubble failed", error, "EditHistory")
                    row.addView(service("\u6b64\u7248\u672c\u663e\u793a\u5931\u8d25"))
                    row.addView(TextView(context).apply {
                        text = MessageText.styled(version.text, version.entities)
                        setTextColor(android.graphics.Color.WHITE)
                        setPadding(dp(16), dp(8), dp(16), dp(8))
                        setTextIsSelectable(true)
                    })
                }
                return row
            }
        }
        list.adapter = adapter
        empty.visibility = View.GONE
        val menu = target.createMenu.invoke(toolbar)
        val search = target.addItem.invoke(menu, 0, Telegami.getResource("outline_header_search", "drawable")) as View
        target.searchEnabled.setBoolean(search, true)
        target.searchHint.invoke(search, "\u641c\u7d22")
        target.initSearch.invoke(search)
        val field = target.searchField.invoke(search) as EditText
        var searching = false
        fun toggleSearch() {
            searching = target.toggleSearch.invoke(search, true) as Boolean
            target.searchVisible.invoke(toolbar, searching)
            if (!searching) field.setText("")
        }
        search.setOnClickListener { toggleSearch() }
        (target.back.invoke(toolbar) as ImageView).setOnClickListener {
            if (searching) toggleSearch() else dialog.dismiss()
        }
        val watcher = object : TextWatcher {
            override fun beforeTextChanged(text: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(text: CharSequence?, start: Int, before: Int, count: Int) {
                filtered = versions.filter { it.matches(text?.toString().orEmpty()) }
                adapter.notifyDataSetChanged()
                empty.visibility = if (filtered.isEmpty()) View.VISIBLE else View.GONE
                if (filtered.isNotEmpty()) list.setSelection(0)
            }
            override fun afterTextChanged(text: Editable?) = Unit
        }
        field.addTextChangedListener(watcher)
        dialog.setContentView(root)
        dialog.setOnDismissListener {
            field.removeTextChangedListener(watcher)
            previews.toList().forEach { it.dismiss() }
            list.adapter = null
            onDismiss()
        }
        dialog.window?.apply {
            setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE or WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN)
            if (Build.VERSION.SDK_INT >= 30) {
                setDecorFitsSystemWindows(false)
                root.setOnApplyWindowInsetsListener { view, insets ->
                    val safe = insets.getInsets(WindowInsets.Type.systemBars() or WindowInsets.Type.displayCutout() or WindowInsets.Type.ime())
                    view.setPadding(safe.left, safe.top, safe.right, safe.bottom)
                    insets
                }
            } else root.fitsSystemWindows = true
        }
        dialog.show()
        dialog.window?.setLayout(-1, -1)
        root.requestApplyInsets()
        list.setSelection(versions.size)
    }
}
