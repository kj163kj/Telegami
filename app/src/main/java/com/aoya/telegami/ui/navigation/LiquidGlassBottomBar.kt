package com.aoya.telegami.ui.navigation

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.EaseOut
import androidx.compose.animation.core.VectorConverter
import androidx.compose.animation.core.VisibilityThreshold
import androidx.compose.animation.core.spring
import androidx.compose.foundation.MutatorMutex
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.asPaddingValues
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.requiredWidth
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ShaderBrush
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerInputScope
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.util.VelocityTracker
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.util.fastCoerceIn
import androidx.compose.ui.util.fastFirstOrNull
import androidx.compose.ui.util.lerp
import com.aoya.telegami.ui.util.AccessibilityUtils
import com.kyant.backdrop.Backdrop
import com.kyant.backdrop.RuntimeShader
import com.kyant.backdrop.asComposeShader
import com.kyant.backdrop.backdrops.layerBackdrop
import com.kyant.backdrop.backdrops.rememberCombinedBackdrop
import com.kyant.backdrop.backdrops.rememberLayerBackdrop
import com.kyant.backdrop.drawBackdrop
import com.kyant.backdrop.effects.blur
import com.kyant.backdrop.effects.lens
import com.kyant.backdrop.effects.vibrancy
import com.kyant.backdrop.highlight.Highlight
import com.kyant.backdrop.highlight.HighlightStyle
import com.kyant.backdrop.isRenderEffectSupported
import com.kyant.backdrop.isRuntimeShaderSupported
import com.kyant.backdrop.shadow.InnerShadow
import com.kyant.backdrop.shadow.Shadow
import com.kyant.shapes.Capsule
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Job
import kotlinx.coroutines.android.awaitFrame
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.theme.LocalContentColor
import top.yukonga.miuix.kmp.theme.MiuixTheme
import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.roundToInt
import kotlin.math.sign
import kotlin.time.TimeSource

private val LocalFloatingBottomBarTabScale = staticCompositionLocalOf { { 1f } }

internal data class BottomBarReleaseOutcome(
    val visualTarget: Float,
    val newlyCommittedIndex: Int?,
)

internal object BottomBarGestureMath {
    fun tabIndexAtPosition(
        xPx: Float,
        barWidthPx: Float,
        horizontalPadPx: Float,
        tabsCount: Int,
        isLtr: Boolean,
    ): Int {
        if (tabsCount <= 1) return 0
        val innerWidth = (barWidthPx - horizontalPadPx * 2f).coerceAtLeast(1f)
        val tabWidth = innerWidth / tabsCount
        val logicalX = if (isLtr) xPx else barWidthPx - xPx
        return floor((logicalX - horizontalPadPx) / tabWidth)
            .toInt()
            .coerceIn(0, tabsCount - 1)
    }

    fun continuousTabAtPosition(
        xPx: Float,
        barWidthPx: Float,
        horizontalPadPx: Float,
        tabsCount: Int,
        isLtr: Boolean,
    ): Float {
        if (tabsCount <= 1) return 0f
        val innerWidth = (barWidthPx - horizontalPadPx * 2f).coerceAtLeast(1f)
        val tabWidth = innerWidth / tabsCount
        val logicalX = if (isLtr) xPx else barWidthPx - xPx
        return ((logicalX - horizontalPadPx) / tabWidth - 0.5f)
            .coerceIn(0f, (tabsCount - 1).toFloat())
    }

    fun clampedHorizontalDelta(
        previousXPx: Float,
        currentXPx: Float,
        barWidthPx: Float,
    ): Float {
        if (barWidthPx <= 0f) return 0f
        return currentXPx.coerceIn(0f, barWidthPx) - previousXPx.coerceIn(0f, barWidthPx)
    }

    fun updatedDragTarget(
        currentTargetValue: Float,
        dragDeltaXPx: Float,
        tabWidthPx: Float,
        tabsCount: Int,
        isLtr: Boolean,
    ): Float {
        if (tabsCount <= 1 || tabWidthPx <= 0f) return 0f
        val dir = if (isLtr) 1f else -1f
        return (currentTargetValue + (dragDeltaXPx / tabWidthPx) * dir)
            .coerceIn(0f, (tabsCount - 1).toFloat())
    }

    fun settledTabIndex(
        targetValue: Float,
        velocityXPxPerSec: Float,
        tabWidthPx: Float,
        tabsCount: Int,
        isLtr: Boolean,
        totalDragDistancePx: Float = Float.MAX_VALUE,
        dragSlopPx: Float = 0f,
        lastLogicalDragDir: Float = 0f,
    ): Int {
        if (tabsCount <= 1) return 0
        val safeTabWidth = tabWidthPx.coerceAtLeast(1f)
        val ltrSign = if (isLtr) 1f else -1f
        val velocityTabsPerSec = (velocityXPxPerSec * ltrSign) / safeTabWidth
        val draggedPastSlop = totalDragDistancePx > dragSlopPx
        val alignedWithDrag =
            lastLogicalDragDir == 0f || velocityTabsPerSec * lastLogicalDragDir > 0f
        val projectedDelta =
            if (draggedPastSlop && alignedWithDrag && abs(velocityTabsPerSec) >= 1.5f) {
                (velocityTabsPerSec * 0.08f).coerceIn(-0.35f, 0.35f)
            } else {
                0f
            }
        return (targetValue + projectedDelta).roundToInt().coerceIn(0, tabsCount - 1)
    }

    fun isVerticalDragCancelled(
        yPx: Float,
        barHeightPx: Float,
        verticalCancelSlopPx: Float,
    ): Boolean = yPx < -verticalCancelSlopPx || yPx > barHeightPx + verticalCancelSlopPx
}

internal class BottomBarGestureSession(
    private val barWidthPx: Float,
    private val barHeightPx: Float,
    private val horizontalPadPx: Float,
    private val tabWidthPx: Float,
    private val tabsCount: Int,
    private val isLtr: Boolean,
    private val dragSlopPx: Float,
    private val verticalCancelSlopPx: Float,
) {
    var visualTarget: Float = 0f
        private set
    var totalDragDistancePx: Float = 0f
        private set
    var lastLogicalDragDir: Float = 0f
        private set

    fun onDown(
        downPosition: Offset,
        fallbackIndex: Int,
    ): Float {
        totalDragDistancePx = 0f
        lastLogicalDragDir = 0f
        visualTarget =
            if (tabWidthPx <= 0f || barWidthPx <= 0f) {
                fallbackIndex.toFloat()
            } else {
                BottomBarGestureMath
                    .tabIndexAtPosition(
                        xPx = downPosition.x,
                        barWidthPx = barWidthPx,
                        horizontalPadPx = horizontalPadPx,
                        tabsCount = tabsCount,
                        isLtr = isLtr,
                    ).toFloat()
            }
        return visualTarget
    }

    fun onMove(
        previousPosition: Offset,
        currentPosition: Offset,
    ): Float {
        val rawDx = currentPosition.x - previousPosition.x
        totalDragDistancePx += abs(rawDx)
        if (abs(rawDx) >= 2f) {
            lastLogicalDragDir = rawDx * if (isLtr) 1f else -1f
        }
        val verticallyCancelled =
            barHeightPx > 0f &&
                BottomBarGestureMath.isVerticalDragCancelled(
                    yPx = currentPosition.y,
                    barHeightPx = barHeightPx,
                    verticalCancelSlopPx = verticalCancelSlopPx,
                )
        if (!verticallyCancelled && totalDragDistancePx > dragSlopPx && tabWidthPx > 0f && barWidthPx > 0f) {
            visualTarget =
                BottomBarGestureMath.continuousTabAtPosition(
                    xPx = currentPosition.x,
                    barWidthPx = barWidthPx,
                    horizontalPadPx = horizontalPadPx,
                    tabsCount = tabsCount,
                    isLtr = isLtr,
                )
        }
        return visualTarget
    }

    fun onUp(
        upPosition: Offset,
        velocityXPxPerSec: Float,
        committedIndex: Int,
    ): BottomBarReleaseOutcome {
        val cancelledVertically =
            barHeightPx > 0f &&
                BottomBarGestureMath.isVerticalDragCancelled(
                    yPx = upPosition.y,
                    barHeightPx = barHeightPx,
                    verticalCancelSlopPx = verticalCancelSlopPx,
                )
        if (cancelledVertically) {
            visualTarget = committedIndex.toFloat()
            return BottomBarReleaseOutcome(
                visualTarget = visualTarget,
                newlyCommittedIndex = null,
            )
        }
        val settledIndex =
            BottomBarGestureMath.settledTabIndex(
                targetValue = visualTarget,
                velocityXPxPerSec = velocityXPxPerSec,
                tabWidthPx = tabWidthPx,
                tabsCount = tabsCount,
                isLtr = isLtr,
                totalDragDistancePx = totalDragDistancePx,
                dragSlopPx = dragSlopPx,
                lastLogicalDragDir = lastLogicalDragDir,
            )
        visualTarget = settledIndex.toFloat()
        return BottomBarReleaseOutcome(
            visualTarget = visualTarget,
            newlyCommittedIndex = settledIndex.takeIf { it != committedIndex },
        )
    }

    fun onCancel(committedIndex: Int): BottomBarReleaseOutcome {
        visualTarget = committedIndex.toFloat()
        return BottomBarReleaseOutcome(
            visualTarget = visualTarget,
            newlyCommittedIndex = null,
        )
    }
}

@Composable
fun LiquidGlassBottomBar(
    selectedTab: BottomTab,
    onTabSelected: (BottomTab) -> Unit,
    backdrop: Backdrop,
    isDarkTheme: Boolean,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val animationsEnabled =
        AccessibilityUtils.isAnimationEnabled(context.contentResolver)
    val tabs = BottomTab.entries
    val horizontalInsets =
        WindowInsets.systemBars
            .union(WindowInsets.displayCutout)
            .only(WindowInsetsSides.Horizontal)
    val navBarBottomInset = WindowInsets.navigationBars.asPaddingValues().calculateBottomPadding()
    val bottomPadding = if (navBarBottomInset != 0.dp) 8.dp + navBarBottomInset else 24.dp
    val isBlurEnabled = isRenderEffectSupported()

    Box(
        modifier =
            modifier
                .fillMaxWidth()
                .windowInsetsPadding(horizontalInsets)
                .consumeUnconsumedTouches()
                .padding(start = 28.dp, end = 28.dp, bottom = bottomPadding),
        contentAlignment = Alignment.Center,
    ) {
        FloatingBottomBar(
            selectedIndex = selectedTab.ordinal,
            onSelected = { index ->
                tabs.getOrNull(index)?.let(onTabSelected)
            },
            backdrop = backdrop,
            tabsCount = tabs.size,
            isDarkTheme = isDarkTheme,
            isBlurEnabled = isBlurEnabled,
            animationsEnabled = animationsEnabled,
        ) { activateTab ->
            tabs.forEachIndexed { index, tab ->
                val label = stringResource(tab.titleRes)
                FloatingBottomBarItem(
                    selected = selectedTab.ordinal == index,
                    onClick = { activateTab(index) },
                    modifier = Modifier.defaultMinSize(minWidth = 88.dp),
                ) {
                    Icon(
                        painter = painterResource(tab.iconRes),
                        contentDescription = null,
                        modifier = Modifier.size(24.dp),
                    )
                    Text(
                        text = label,
                        fontSize = 11.sp,
                        lineHeight = 14.sp,
                        maxLines = 1,
                        softWrap = false,
                        overflow = TextOverflow.Visible,
                    )
                }
            }
        }
    }
}

@Composable
private fun RowScope.FloatingBottomBarItem(
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    val scale = LocalFloatingBottomBarTabScale.current
    val currentOnClick by rememberUpdatedState(onClick)
    Column(
        modifier =
            modifier
                .semantics(mergeDescendants = true) {
                    this.selected = selected
                    role = Role.Tab
                    onClick {
                        currentOnClick()
                        true
                    }
                }.onKeyEvent { event ->
                    val activationKey =
                        event.key == Key.Enter ||
                            event.key == Key.NumPadEnter ||
                            event.key == Key.Spacebar
                    if (activationKey) {
                        if (event.type == KeyEventType.KeyUp) currentOnClick()
                        true
                    } else {
                        false
                    }
                }.focusable()
                .fillMaxHeight()
                .weight(1f)
                .graphicsLayer {
                    val currentScale = scale()
                    scaleX = currentScale
                    scaleY = currentScale
                },
        verticalArrangement = Arrangement.spacedBy(1.dp, Alignment.CenterVertically),
        horizontalAlignment = Alignment.CenterHorizontally,
        content = content,
    )
}

@Composable
private fun FloatingBottomBar(
    selectedIndex: Int,
    onSelected: (index: Int) -> Unit,
    backdrop: Backdrop,
    tabsCount: Int,
    isDarkTheme: Boolean,
    isBlurEnabled: Boolean,
    animationsEnabled: Boolean,
    modifier: Modifier = Modifier,
    content: @Composable RowScope.((Int) -> Unit) -> Unit,
) {
    val pillShape = remember { Capsule() }
    val accentColor = MiuixTheme.colorScheme.primary
    val tabContentColor = MiuixTheme.colorScheme.onSurface
    val surfaceContainer = MiuixTheme.colorScheme.surfaceContainer
    val containerColor = if (isBlurEnabled) surfaceContainer.copy(alpha = 0.4f) else surfaceContainer

    val tabsBackdrop = rememberLayerBackdrop()
    val density = LocalDensity.current
    val isLtr = LocalLayoutDirection.current == LayoutDirection.Ltr
    val animationScope = rememberCoroutineScope()

    var tabWidthPx by remember { mutableFloatStateOf(0f) }
    var totalWidthPx by remember { mutableFloatStateOf(0f) }
    var totalHeightPx by remember { mutableFloatStateOf(0f) }

    val horizontalPadPx = with(density) { 4.dp.toPx() }
    val rubberBandPx = with(density) { 4.dp.toPx() }
    val dragSlopPx = with(density) { 8.dp.toPx() }
    val verticalCancelSlopPx = with(density) { 72.dp.toPx() }

    val offsetAnimation = remember { Animatable(0f) }
    val panelOffset by
        remember(rubberBandPx) {
            derivedStateOf {
                if (totalWidthPx == 0f) {
                    0f
                } else {
                    val fraction = (offsetAnimation.value / totalWidthPx).fastCoerceIn(-1f, 1f)
                    rubberBandPx * fraction.sign * EaseOut.transform(abs(fraction))
                }
            }
        }

    var currentIndex by remember { mutableIntStateOf(selectedIndex) }
    val onSelectedUpdated by rememberUpdatedState(onSelected)

    val dampedDragAnimation =
        remember(animationScope, tabsCount, animationsEnabled) {
            DampedDragAnimation(
                animationScope = animationScope,
                initialValue = currentIndex.toFloat(),
                valueRange = 0f..(tabsCount - 1).toFloat(),
                visibilityThreshold = 0.001f,
                initialScale = 1f,
                pressedScale = if (animationsEnabled) 78f / 56f else 1f,
                animationsEnabled = animationsEnabled,
            )
        }

    LaunchedEffect(selectedIndex) {
        if (currentIndex != selectedIndex) {
            currentIndex = selectedIndex
            dampedDragAnimation.animateToValue(selectedIndex.toFloat())
        }
    }

    fun activateTab(index: Int) {
        if (index !in 0 until tabsCount) return
        if (currentIndex != index) {
            currentIndex = index
            onSelectedUpdated(index)
        }
        dampedDragAnimation.animateToValue(index.toFloat())
    }

    val interactiveHighlight =
        remember(animationScope, tabWidthPx, dampedDragAnimation, isLtr, animationsEnabled) {
            InteractiveHighlight(
                animationScope = animationScope,
                animationsEnabled = animationsEnabled,
                position = { size, _ ->
                    Offset(
                        if (isLtr) {
                            (dampedDragAnimation.value + 0.5f) * tabWidthPx + panelOffset
                        } else {
                            size.width - (dampedDragAnimation.value + 0.5f) * tabWidthPx + panelOffset
                        },
                        size.height / 2f,
                    )
                },
            )
        }

    fun resetPanelOffset() {
        animationScope.launch {
            if (animationsEnabled) {
                offsetAnimation.animateTo(0f, spring(1f, 300f, 0.5f))
            } else {
                offsetAnimation.snapTo(0f)
            }
        }
    }

    val baseHighlight =
        remember {
            Highlight(
                width = 0.8.dp,
                alpha = 0.75f,
                style = HighlightStyle.Default(angle = -45f),
            )
        }
    val pillHighlightStyle = remember { HighlightStyle.Default(angle = 90f) }
    val combinedBackdrop = rememberCombinedBackdrop(backdrop, tabsBackdrop)

    Box(
        modifier = modifier.width(IntrinsicSize.Min),
        contentAlignment = Alignment.CenterStart,
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(64.dp)
                    .onGloballyPositioned { coords ->
                        totalWidthPx = coords.size.width.toFloat()
                        totalHeightPx = coords.size.height.toFloat()
                        val contentWidthPx = totalWidthPx - with(density) { 8.dp.toPx() }
                        tabWidthPx = (contentWidthPx / tabsCount).coerceAtLeast(0f)
                    }.selectableGroup()
                    .pointerInput(tabsCount, isLtr, animationsEnabled, density) {
                        var activeSession: BottomBarGestureSession? = null
                        detectBottomBarGestures(
                            onPressStart = { downPosition ->
                                val widthPx = if (totalWidthPx > 0f) totalWidthPx else size.width.toFloat()
                                val heightPx = if (totalHeightPx > 0f) totalHeightPx else size.height.toFloat()
                                val computedTabWidthPx =
                                    if (tabWidthPx > 0f) {
                                        tabWidthPx
                                    } else {
                                        ((widthPx - horizontalPadPx * 2f) / tabsCount).coerceAtLeast(0f)
                                    }
                                val session =
                                    BottomBarGestureSession(
                                        barWidthPx = widthPx,
                                        barHeightPx = heightPx,
                                        horizontalPadPx = horizontalPadPx,
                                        tabWidthPx = computedTabWidthPx,
                                        tabsCount = tabsCount,
                                        isLtr = isLtr,
                                        dragSlopPx = dragSlopPx,
                                        verticalCancelSlopPx = verticalCancelSlopPx,
                                    )
                                activeSession = session
                                val downTarget =
                                    session.onDown(
                                        downPosition = downPosition,
                                        fallbackIndex = currentIndex,
                                    )
                                dampedDragAnimation.updateValue(downTarget)
                                dampedDragAnimation.press()
                                interactiveHighlight.onPressStart(downPosition)
                            },
                            onMove = { prevPosition, currPosition ->
                                val session = activeSession ?: return@detectBottomBarGestures
                                val moveTarget =
                                    session.onMove(
                                        previousPosition = prevPosition,
                                        currentPosition = currPosition,
                                    )
                                dampedDragAnimation.updateValue(moveTarget)
                                interactiveHighlight.onMove(currPosition)
                                val rawDx = currPosition.x - prevPosition.x
                                val widthPx = if (totalWidthPx > 0f) totalWidthPx else size.width.toFloat()
                                if (rawDx != 0f && widthPx > 0f) {
                                    animationScope.launch {
                                        offsetAnimation.snapTo(
                                            (offsetAnimation.value + rawDx).coerceIn(-widthPx, widthPx),
                                        )
                                    }
                                }
                            },
                            onReleaseUp = { upPosition, velocityXPxPerSec ->
                                val session = activeSession
                                activeSession = null
                                if (session != null) {
                                    val outcome =
                                        session.onUp(
                                            upPosition = upPosition,
                                            velocityXPxPerSec = velocityXPxPerSec,
                                            committedIndex = currentIndex,
                                        )
                                    // Commit tab selection EXCLUSIVELY here after finger release (ACTION_UP).
                                    outcome.newlyCommittedIndex?.let { targetIndex ->
                                        currentIndex = targetIndex
                                        onSelectedUpdated(targetIndex)
                                    }
                                    dampedDragAnimation.updateValue(outcome.visualTarget)
                                } else {
                                    dampedDragAnimation.updateValue(currentIndex.toFloat())
                                }
                                dampedDragAnimation.release()
                                interactiveHighlight.onRelease()
                                resetPanelOffset()
                            },
                            onCancel = {
                                val session = activeSession
                                activeSession = null
                                val outcome = session?.onCancel(currentIndex)
                                dampedDragAnimation.updateValue(outcome?.visualTarget ?: currentIndex.toFloat())
                                dampedDragAnimation.release()
                                interactiveHighlight.onRelease()
                                resetPanelOffset()
                            },
                        )
                    }.graphicsLayer { translationX = panelOffset }
                    .then(
                        if (isBlurEnabled) {
                            Modifier.drawBackdrop(
                                backdrop = backdrop,
                                shape = { pillShape },
                                effects = {
                                    vibrancy()
                                    blur(4.dp.toPx())
                                    lens(
                                        refractionHeight = 24.dp.toPx(),
                                        refractionAmount = 24.dp.toPx(),
                                    )
                                },
                                highlight = { baseHighlight },
                                shadow = {
                                    Shadow(
                                        radius = 10.dp,
                                        color = Color.Black.copy(alpha = if (isDarkTheme) 0.22f else 0.1f),
                                    )
                                },
                                layerBlock = {
                                    val width = size.width.coerceAtLeast(1f)
                                    val s = lerp(1f, 1f + 16.dp.toPx() / width, dampedDragAnimation.pressProgress)
                                    scaleX = s
                                    scaleY = s
                                },
                                onDrawSurface = { drawRect(containerColor) },
                            )
                        } else {
                            Modifier.background(containerColor, pillShape)
                        },
                    ).then(
                        if (isBlurEnabled) {
                            interactiveHighlight.modifier
                        } else {
                            Modifier
                        },
                    )
                    .padding(4.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            CompositionLocalProvider(LocalContentColor provides tabContentColor) {
                content(::activateTab)
            }
        }

        if (isBlurEnabled) {
            CompositionLocalProvider(
                LocalFloatingBottomBarTabScale provides {
                    lerp(1f, 1.2f, dampedDragAnimation.pressProgress)
                },
                LocalContentColor provides accentColor,
            ) {
                Row(
                    modifier =
                        Modifier
                            .clearAndSetSemantics {}
                            .alpha(0f)
                            .layerBackdrop(tabsBackdrop)
                            .graphicsLayer { translationX = panelOffset }
                            .drawBackdrop(
                                backdrop = backdrop,
                                shape = { pillShape },
                                effects = {
                                    vibrancy()
                                    blur(4.dp.toPx())
                                    lens(
                                        refractionHeight = 24.dp.toPx(),
                                        refractionAmount = 24.dp.toPx(),
                                    )
                                },
                                onDrawSurface = { drawRect(containerColor) },
                            ).then(interactiveHighlight.modifier)
                            .height(56.dp)
                            .fillMaxWidth()
                            .padding(horizontal = 4.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    content = { content(::activateTab) },
                )
            }
        }

        if (tabWidthPx > 0f) {
            val tabWidthDp = with(density) { tabWidthPx.toDp() }
            if (isBlurEnabled) {
                Box(
                    modifier =
                        Modifier
                            .padding(horizontal = 4.dp)
                            .graphicsLayer {
                                val progressOffset = dampedDragAnimation.value * tabWidthPx
                                translationX =
                                    if (isLtr) {
                                        progressOffset + panelOffset
                                    } else {
                                        -progressOffset + panelOffset
                                    }
                            }.drawBackdrop(
                                backdrop = combinedBackdrop,
                                shape = { pillShape },
                                effects = {
                                    val progress = dampedDragAnimation.pressProgress
                                    lens(
                                        refractionHeight = 10.dp.toPx() * progress,
                                        refractionAmount = 14.dp.toPx() * progress,
                                        depthEffect = true,
                                        chromaticAberration = true,
                                    )
                                },
                                highlight = {
                                    Highlight(
                                        width = 1.dp,
                                        alpha = dampedDragAnimation.pressProgress,
                                        style = pillHighlightStyle,
                                    )
                                },
                                innerShadow = {
                                    val progress = dampedDragAnimation.pressProgress
                                    InnerShadow(
                                        radius = 8.dp * progress,
                                        color = Color.Black.copy(alpha = 0.15f),
                                        alpha = progress,
                                    )
                                },
                                layerBlock = {
                                    scaleX = dampedDragAnimation.scaleX
                                    scaleY = dampedDragAnimation.scaleY
                                    val velocity = dampedDragAnimation.velocity / 10f
                                    scaleX /= 1f - (velocity * 0.75f).fastCoerceIn(-0.2f, 0.2f)
                                    scaleY *= 1f - (velocity * 0.25f).fastCoerceIn(-0.2f, 0.2f)
                                },
                                onDrawSurface = {
                                    val progress = dampedDragAnimation.pressProgress
                                    drawRect(
                                        color =
                                            if (!isDarkTheme) {
                                                Color.Black.copy(alpha = 0.1f)
                                            } else {
                                                Color.White.copy(alpha = 0.1f)
                                            },
                                        alpha = 1f - progress,
                                    )
                                    drawRect(Color.Black.copy(alpha = 0.03f * progress))
                                },
                            ).height(56.dp)
                            .width(tabWidthDp),
                )
            } else {
                Box(
                    modifier =
                        Modifier
                            .padding(horizontal = 4.dp)
                            .graphicsLayer {
                                val progressOffset = dampedDragAnimation.value * tabWidthPx
                                translationX =
                                    if (isLtr) {
                                        progressOffset + panelOffset
                                    } else {
                                        -progressOffset + panelOffset
                                    }
                            }.clip(pillShape)
                            .background(accentColor.copy(alpha = 0.15f), pillShape)
                            .height(56.dp)
                            .width(tabWidthDp),
                    contentAlignment = Alignment.CenterStart,
                ) {
                    CompositionLocalProvider(LocalContentColor provides accentColor) {
                        Row(
                            modifier =
                                Modifier
                                    .clearAndSetSemantics {}
                                    .wrapContentWidth(align = Alignment.Start, unbounded = true)
                                    .requiredWidth(with(density) { (totalWidthPx - 8.dp.toPx()).coerceAtLeast(1f).toDp() })
                                    .height(56.dp)
                                    .graphicsLayer {
                                        val progressOffset = dampedDragAnimation.value * tabWidthPx
                                        translationX = if (isLtr) -progressOffset else progressOffset
                                    },
                            verticalAlignment = Alignment.CenterVertically,
                            content = { content(::activateTab) },
                        )
                    }
                }
            }
        }
    }
}

private class DampedDragAnimation(
    private val animationScope: CoroutineScope,
    val initialValue: Float,
    val valueRange: ClosedRange<Float>,
    val visibilityThreshold: Float,
    val initialScale: Float,
    val pressedScale: Float,
    val animationsEnabled: Boolean,
) {
    private val valueAnimationSpec = spring(1f, 1000f, visibilityThreshold)
    private val velocityAnimationSpec = spring(0.5f, 300f, visibilityThreshold * 10f)
    private val pressProgressAnimationSpec = spring(1f, 1000f, 0.001f)
    private val scaleXAnimationSpec = spring(0.6f, 250f, 0.001f)
    private val scaleYAnimationSpec = spring(0.7f, 250f, 0.001f)

    private val valueAnimation = Animatable(initialValue, visibilityThreshold)
    private val velocityAnimation = Animatable(0f, 5f)
    private val pressProgressAnimation = Animatable(0f, 0.001f)
    private val scaleXAnimation = Animatable(initialScale, 0.001f)
    private val scaleYAnimation = Animatable(initialScale, 0.001f)

    private val mutatorMutex = MutatorMutex()
    private var pressJob: Job? = null
    private var releaseJob: Job? = null

    private val velocityTracker = VelocityTracker()
    private val startMark = TimeSource.Monotonic.markNow()

    val value: Float get() = valueAnimation.value
    val pressProgress: Float get() = pressProgressAnimation.value
    val scaleX: Float get() = scaleXAnimation.value
    val scaleY: Float get() = scaleYAnimation.value
    val velocity: Float get() = velocityAnimation.value

    fun press() {
        releaseJob?.cancel()
        pressJob?.cancel()
        velocityTracker.resetTracking()
        pressJob =
            animationScope.launch {
                if (animationsEnabled) {
                    launch { pressProgressAnimation.animateTo(1f, pressProgressAnimationSpec) }
                    launch { scaleXAnimation.animateTo(pressedScale, scaleXAnimationSpec) }
                    launch { scaleYAnimation.animateTo(pressedScale, scaleYAnimationSpec) }
                } else {
                    pressProgressAnimation.snapTo(1f)
                    scaleXAnimation.snapTo(pressedScale)
                    scaleYAnimation.snapTo(pressedScale)
                }
            }
    }

    fun release() {
        releaseJob?.cancel()
        releaseJob =
            animationScope.launch {
                awaitFrame()
                if (animationsEnabled && value != valueAnimation.targetValue) {
                    val threshold = (valueRange.endInclusive - valueRange.start) * 0.025f
                    snapshotFlow { valueAnimation.value }
                        .first { abs(it - valueAnimation.targetValue) < threshold }
                }
                if (animationsEnabled) {
                    launch { pressProgressAnimation.animateTo(0f, pressProgressAnimationSpec) }
                    launch { scaleXAnimation.animateTo(initialScale, scaleXAnimationSpec) }
                    launch { scaleYAnimation.animateTo(initialScale, scaleYAnimationSpec) }
                } else {
                    pressProgressAnimation.snapTo(0f)
                    scaleXAnimation.snapTo(initialScale)
                    scaleYAnimation.snapTo(initialScale)
                }
            }
    }

    fun updateValue(value: Float) {
        val clampedTarget = value.coerceIn(valueRange)
        animationScope.launch(start = CoroutineStart.UNDISPATCHED) {
            if (animationsEnabled) {
                valueAnimation.animateTo(clampedTarget, valueAnimationSpec) {
                    updateVelocity()
                }
            } else {
                valueAnimation.snapTo(clampedTarget)
            }
        }
    }

    fun animateToValue(value: Float) {
        animationScope.launch {
            mutatorMutex.mutate {
                val clampedTarget = value.coerceIn(valueRange)
                if (animationsEnabled) {
                    press()
                    launch { valueAnimation.animateTo(clampedTarget, valueAnimationSpec) }
                    if (velocity != 0f) {
                        launch { velocityAnimation.animateTo(0f, velocityAnimationSpec) }
                    }
                    release()
                } else {
                    valueAnimation.snapTo(clampedTarget)
                    velocityAnimation.snapTo(0f)
                    pressProgressAnimation.snapTo(0f)
                    scaleXAnimation.snapTo(initialScale)
                    scaleYAnimation.snapTo(initialScale)
                }
            }
        }
    }

    private fun updateVelocity() {
        velocityTracker.addPosition(
            startMark.elapsedNow().inWholeMilliseconds,
            Offset(value, 0f),
        )
        val span = (valueRange.endInclusive - valueRange.start).coerceAtLeast(1e-6f)
        val targetVelocity = velocityTracker.calculateVelocity().x / span
        animationScope.launch(start = CoroutineStart.UNDISPATCHED) {
            velocityAnimation.snapTo(targetVelocity)
        }
    }
}

private class InteractiveHighlight(
    val animationScope: CoroutineScope,
    val animationsEnabled: Boolean,
    val position: (size: Size, offset: Offset) -> Offset = { _, offset -> offset },
) {
    private val pressProgressAnimationSpec = spring(0.5f, 300f, 0.001f)
    private val positionAnimationSpec = spring(0.5f, 300f, Offset.VisibilityThreshold)

    private val pressProgressAnimation = Animatable(0f, 0.001f)
    private val positionAnimation = Animatable(Offset.Zero, Offset.VectorConverter, Offset.VisibilityThreshold)

    private var startPosition = Offset.Zero

    private val shader =
        if (isRuntimeShaderSupported()) {
            RuntimeShader(
                """
uniform float2 size;
layout(color) uniform half4 color;
uniform float radius;
uniform float2 position;

half4 main(float2 coord) {
    float dist = distance(coord, position);
    float intensity = smoothstep(radius, radius * 0.5, dist);
    return color * intensity;
}""",
            )
        } else {
            null
        }

    val modifier: Modifier =
        Modifier.drawWithContent {
            val progress = pressProgressAnimation.value
            if (progress > 0f) {
                if (shader != null) {
                    drawRect(
                        Color.White.copy(alpha = 0.06f * progress),
                        blendMode = BlendMode.Plus,
                    )
                    shader.apply {
                        val pos = position(size, positionAnimation.value)
                        setFloatUniform("size", size.width, size.height)
                        setColorUniform("color", Color.White.copy(alpha = 0.12f * progress))
                        setFloatUniform("radius", size.minDimension * 1.2f)
                        setFloatUniform(
                            "position",
                            pos.x.fastCoerceIn(0f, size.width.coerceAtLeast(1f)),
                            pos.y.fastCoerceIn(0f, size.height.coerceAtLeast(1f)),
                        )
                    }
                    drawRect(
                        ShaderBrush(shader.asComposeShader()),
                        blendMode = BlendMode.Plus,
                    )
                } else {
                    drawRect(
                        Color.White.copy(alpha = 0.18f * progress),
                        blendMode = BlendMode.Plus,
                    )
                }
            }

            drawContent()
        }

    fun onPressStart(downPosition: Offset) {
        startPosition = downPosition
        animationScope.launch {
            if (animationsEnabled) {
                launch { pressProgressAnimation.animateTo(1f, pressProgressAnimationSpec) }
            } else {
                pressProgressAnimation.snapTo(1f)
            }
            launch { positionAnimation.snapTo(startPosition) }
        }
    }

    fun onMove(currentPosition: Offset) {
        animationScope.launch {
            positionAnimation.snapTo(currentPosition)
        }
    }

    fun onRelease() {
        animationScope.launch {
            if (animationsEnabled) {
                launch { pressProgressAnimation.animateTo(0f, pressProgressAnimationSpec) }
                launch { positionAnimation.animateTo(startPosition, positionAnimationSpec) }
            } else {
                pressProgressAnimation.snapTo(0f)
                positionAnimation.snapTo(startPosition)
            }
        }
    }
}

private fun Modifier.consumeUnconsumedTouches(): Modifier =
    pointerInput(Unit) {
        awaitEachGesture {
            val down = awaitFirstDown(requireUnconsumed = true, pass = PointerEventPass.Main)
            down.consume()
            while (true) {
                val event = awaitPointerEvent(PointerEventPass.Main)
                event.changes.forEach { it.consume() }
                if (event.changes.none { it.pressed }) break
            }
        }
    }

private suspend fun PointerInputScope.detectBottomBarGestures(
    onPressStart: (downPosition: Offset) -> Unit,
    onMove: (previousPosition: Offset, currentPosition: Offset) -> Unit,
    onReleaseUp: (upPosition: Offset, velocityXPxPerSec: Float) -> Unit,
    onDragCancel: () -> Unit = {},
    onCancel: () -> Unit = onDragCancel,
) {
    awaitEachGesture {
        val down =
            awaitFirstDown(
                requireUnconsumed = false,
                pass = PointerEventPass.Main,
            )
        down.consume()

        val pointerId = down.id
        val velocityTracker = VelocityTracker()
        velocityTracker.addPosition(down.uptimeMillis, down.position)
        var lastPosition = down.position

        onPressStart(down.position)

        var completedNormally = false
        try {
            while (true) {
                val event = awaitPointerEvent(PointerEventPass.Main)
                val trackedChange = event.changes.fastFirstOrNull { it.id == pointerId }
                if (trackedChange == null) {
                    event.changes.forEach { it.consume() }
                    break
                }

                // ACTION_CANCEL arrives with pressed=false AND isConsumed=true: never commit on cancel.
                if (!trackedChange.pressed && trackedChange.isConsumed) {
                    event.changes.forEach { it.consume() }
                    break
                }

                if (!trackedChange.pressed) {
                    velocityTracker.addPosition(trackedChange.uptimeMillis, trackedChange.position)
                    val vx = velocityTracker.calculateVelocity().x
                    val upPosition = trackedChange.position
                    event.changes.forEach { it.consume() }
                    completedNormally = true
                    onReleaseUp(upPosition, vx)
                    break
                }

                val prevPosition = lastPosition
                val currPosition = trackedChange.position
                lastPosition = currPosition
                velocityTracker.addPosition(trackedChange.uptimeMillis, currPosition)
                event.changes.forEach { it.consume() }

                if (currPosition != prevPosition) {
                    onMove(prevPosition, currPosition)
                }
            }
        } finally {
            if (!completedNormally) {
                onCancel()
            }
        }
    }
}
