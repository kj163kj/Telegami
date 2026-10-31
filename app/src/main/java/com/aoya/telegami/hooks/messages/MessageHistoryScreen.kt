package com.aoya.telegami.hooks.messages

import android.app.Activity
import android.app.Dialog
import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.os.Build
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.Window
import android.view.WindowInsets
import android.view.WindowManager
import android.widget.BaseAdapter
import android.widget.FrameLayout
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ListView
import android.widget.SearchView
import android.widget.TextView
import com.aoya.telegami.Telegami

internal data class HistoryVersion(
    val title: String,
    val time: String,
    val captured: String,
    val text: String,
    val entities: List<TextEntity>,
    val media: String,
    val preview: Bitmap?,
    val current: Boolean = false,
) {
    fun matches(query: String): Boolean = query.isBlank() ||
        listOf(title, time, captured, text, media).any { it.contains(query.trim(), ignoreCase = true) }
}

/** NagramX AyuMessageHistory interaction adapted to host-safe Android views. */
internal object MessageHistoryScreen {
    fun show(activity: Activity, messageId: Int, versions: List<HistoryVersion>, notice: String, onDismiss: () -> Unit) {
        val dark = activity.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK == Configuration.UI_MODE_NIGHT_YES
        val dialog = Dialog(activity, if (dark) android.R.style.Theme_DeviceDefault_NoActionBar else android.R.style.Theme_DeviceDefault_Light_NoActionBar)
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)
        val context = dialog.context
        fun dp(value: Int) = (value * context.resources.displayMetrics.density).toInt()
        val pageColor = if (dark) Color.rgb(24, 25, 27) else Color.rgb(240, 242, 244)
        val surface = if (dark) Color.rgb(39, 41, 44) else Color.WHITE
        val primary = if (dark) Color.rgb(238, 240, 242) else Color.rgb(28, 31, 34)
        val secondary = if (dark) Color.rgb(175, 181, 187) else Color.rgb(95, 103, 111)
        val accent = if (dark) Color.rgb(124, 201, 178) else Color.rgb(33, 115, 95)
        fun label(value: CharSequence, size: Float, color: Int) = TextView(context).apply {
            text = value
            textSize = size
            setTextColor(color)
        }

        val root = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(pageColor)
        }
        val toolbar = LinearLayout(context).apply {
            gravity = Gravity.CENTER_VERTICAL
            minimumHeight = dp(64)
            setBackgroundColor(surface)
        }
        val close = ImageButton(context).apply {
            val icon = Telegami.getResource("ic_ab_back", "drawable")
            setImageResource(if (icon != 0) icon else android.R.drawable.ic_menu_close_clear_cancel)
            setColorFilter(primary)
            background = null
            contentDescription = "\u5173\u95ed"
            tooltipText = contentDescription
            setOnClickListener { dialog.dismiss() }
        }
        toolbar.addView(close, LinearLayout.LayoutParams(dp(56), dp(56)))
        val headings = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(0, dp(8), dp(16), dp(8))
            addView(label("\u7f16\u8f91\u5386\u53f2", 20f, primary))
            addView(label("#${messageId}  \u00b7  ${versions.count { !it.current }} \u4e2a\u5df2\u6355\u83b7\u7248\u672c", 13f, secondary))
        }
        toolbar.addView(headings, LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f))
        root.addView(toolbar)
        val search = SearchView(context).apply {
            setIconifiedByDefault(false)
            queryHint = "\u641c\u7d22\u5386\u53f2\u7248\u672c"
            setBackgroundColor(surface)
        }
        root.addView(search, LinearLayout.LayoutParams(-1, -2))
        root.addView(label(notice, 12f, secondary).apply {
            setPadding(dp(16), dp(12), dp(16), dp(8))
        })

        val listArea = FrameLayout(context)
        val list = ListView(context).apply {
            divider = null
            clipToPadding = false
            setPadding(dp(12), dp(4), dp(12), dp(12))
        }
        val empty = label("\u6ca1\u6709\u5339\u914d\u7684\u5386\u53f2\u7248\u672c", 15f, secondary).apply {
            gravity = Gravity.CENTER
            setPadding(dp(24), dp(24), dp(24), dp(24))
        }
        listArea.addView(list, FrameLayout.LayoutParams(-1, -1))
        listArea.addView(empty, FrameLayout.LayoutParams(-1, -1))
        list.emptyView = empty
        root.addView(listArea, LinearLayout.LayoutParams(-1, 0, 1f))

        var filtered = versions
        val previews = mutableSetOf<Dialog>()
        val adapter = object : BaseAdapter() {
            override fun getCount() = filtered.size
            override fun getItem(position: Int) = filtered[position]
            override fun getItemId(position: Int) = position.toLong()
            override fun isEnabled(position: Int) = false

            override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
                val version = getItem(position)
                val bubble = LinearLayout(context).apply {
                    orientation = LinearLayout.VERTICAL
                    setPadding(dp(16), dp(12), dp(16), dp(12))
                    background = GradientDrawable().apply {
                        setColor(surface)
                        cornerRadius = dp(8).toFloat()
                        if (version.current) setStroke(dp(1).coerceAtLeast(1), accent)
                    }
                }
                bubble.addView(label(version.title, 14f, accent))
                bubble.addView(label(version.time, 12f, secondary).apply { setPadding(0, dp(4), 0, dp(12)) })
                if (version.text.isNotEmpty()) bubble.addView(label(MessageText.styled(version.text, version.entities), 16f, primary).apply {
                    setTextIsSelectable(true)
                })
                bubble.addView(label(version.media, 12f, secondary).apply { setPadding(0, dp(8), 0, 0) })
                if (version.captured.isNotEmpty()) bubble.addView(label(version.captured, 12f, secondary))
                version.preview?.let { bitmap ->
                    bubble.addView(ImageView(context).apply {
                        setImageBitmap(bitmap)
                        scaleType = ImageView.ScaleType.FIT_CENTER
                        contentDescription = "\u672c\u5730\u5386\u53f2\u56fe\u7247"
                        setPadding(0, dp(12), 0, 0)
                        setOnClickListener {
                            val preview = Dialog(activity, if (dark) android.R.style.Theme_DeviceDefault_NoActionBar else android.R.style.Theme_DeviceDefault_Light_NoActionBar)
                            preview.setContentView(ImageView(preview.context).apply {
                                setImageBitmap(bitmap)
                                scaleType = ImageView.ScaleType.FIT_CENTER
                                contentDescription = "\u672c\u5730\u5386\u53f2\u56fe\u7247"
                                setOnClickListener { preview.dismiss() }
                            })
                            previews.add(preview)
                            preview.setOnDismissListener { previews.remove(preview) }
                            preview.show()
                            preview.window?.setLayout(-1, -1)
                        }
                    }, LinearLayout.LayoutParams(-1, dp(200)))
                }
                return FrameLayout(context).apply {
                    setPadding(0, dp(4), 0, dp(4))
                    addView(bubble, FrameLayout.LayoutParams(-1, -2))
                }
            }
        }
        list.adapter = adapter
        search.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?) = true
            override fun onQueryTextChange(newText: String?): Boolean {
                filtered = versions.filter { it.matches(newText.orEmpty()) }
                adapter.notifyDataSetChanged()
                if (filtered.isNotEmpty()) list.setSelection(0)
                return true
            }
        })
        dialog.setContentView(root)
        dialog.setOnDismissListener {
            previews.toList().forEach { it.dismiss() }
            // Detach image views before the caller releases their bitmaps.
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
            } else {
                root.fitsSystemWindows = true
            }
        }
        dialog.show()
        dialog.window?.setLayout(-1, -1)
        root.requestApplyInsets()
        list.setSelection((versions.size - 1).coerceAtLeast(0))
    }
}
