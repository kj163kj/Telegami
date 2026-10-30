package com.aoya.telegami.ui.navigation

import android.os.SystemClock
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.EaseOut
import androidx.compose.animation.core.VectorConverter
import androidx.compose.animation.core.VisibilityThreshold
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.MutatorMutex
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
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
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.ShaderBrush
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.AwaitPointerEventScope
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerId
import androidx.compose.ui.input.pointer.PointerInputChange
import androidx.compose.ui.input.pointer.PointerInputScope
import androidx.compose.ui.input.pointer.changedToUpIgnoreConsumed
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.positionChange
import androidx.compose.ui.input.pointer.util.VelocityTracker
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.util.fastCoerceIn
import androidx.compose.ui.util.fastFirstOrNull
import androidx.compose.ui.util.fastRoundToInt
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
import com.kyant.backdrop.isRenderEffectSupported
import com.kyant.backdrop.isRuntimeShaderSupported
import com.kyant.backdrop.shadow.InnerShadow
import com.kyant.backdrop.shadow.Shadow
import com.kyant.shapes.Capsule
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.android.awaitFrame
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.drop
import kotlinx.coroutines.flow.filter
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.theme.MiuixTheme
import kotlin.math.abs
import kotlin.math.sign

private val LocalLiquidBottomTabScale = staticCompositionLocalOf { { 1f } }

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
    val bottomInsets =
        WindowInsets.systemBars
            .union(WindowInsets.displayCutout)
            .only(WindowInsetsSides.Horizontal + WindowInsetsSides.Bottom)

    Box(
        modifier =
            modifier
                .fillMaxWidth()
                .windowInsetsPadding(bottomInsets)
                .padding(horizontal = 28.dp, vertical = 12.dp),
        contentAlignment = Alignment.Center,
    ) {
        val glassSupported = isRenderEffectSupported()
        if (glassSupported) {
            val contentColor =
                if (isDarkTheme) {
                    Color(0xFFEAEAEA)
                } else {
                    Color(0xFF1C1C1E)
                }
            LiquidBottomTabs(
                selectedTabIndex = { selectedTab.ordinal },
                onTabSelected = { index ->
                    tabs.getOrNull(index)?.let(onTabSelected)
                },
                backdrop = backdrop,
                tabsCount = tabs.size,
                isDarkTheme = isDarkTheme,
                animationsEnabled = animationsEnabled,
                modifier =
                    Modifier
                        .widthIn(max = 420.dp)
                        .fillMaxWidth(),
            ) {
                tabs.forEachIndexed { index, tab ->
                    val title = stringResource(tab.titleRes)
                    val isSelected = selectedTab.ordinal == index
                    LiquidBottomTab(
                        selected = isSelected,
                        title = title,
                        onClick = { onTabSelected(tab) },
                    ) {
                        Icon(
                            painter = painterResource(tab.iconRes),
                            contentDescription = null,
                            tint = contentColor,
                            modifier = Modifier.size(24.dp),
                        )
                        Text(
                            text = title,
                            fontSize = 11.sp,
                            lineHeight = 13.sp,
                            fontWeight = FontWeight.Medium,
                            color = contentColor,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
            }
        } else {
            FallbackBottomTabs(
                tabs = tabs,
                selectedTab = selectedTab,
                onTabSelected = onTabSelected,
                isDarkTheme = isDarkTheme,
                animationsEnabled = animationsEnabled,
                modifier =
                    Modifier
                        .widthIn(max = 420.dp)
                        .fillMaxWidth(),
            )
        }
    }
}

@Composable
private fun LiquidBottomTabs(
    selectedTabIndex: () -> Int,
    onTabSelected: (index: Int) -> Unit,
    backdrop: Backdrop,
    tabsCount: Int,
    isDarkTheme: Boolean,
    animationsEnabled: Boolean,
    modifier: Modifier = Modifier,
    content: @Composable RowScope.() -> Unit,
) {
    val accentColor = MiuixTheme.colorScheme.primary
    val containerColor =
        if (!isDarkTheme) {
            Color(0xFFFAFAFA).copy(alpha = 0.42f)
        } else {
            Color(0xFF141416).copy(alpha = 0.46f)
        }

    val tabsBackdrop = rememberLayerBackdrop()

    BoxWithConstraints(
        modifier = modifier,
        contentAlignment = Alignment.CenterStart,
    ) {
        val density = LocalDensity.current
        val tabWidth =
            with(density) {
                ((constraints.maxWidth.toFloat() - 8.dp.toPx()).coerceAtLeast(1f)) / tabsCount
            }

        val offsetAnimation = remember { Animatable(0f) }
        val panelOffset by
            remember(density, constraints.maxWidth) {
                derivedStateOf {
                    val maxW = constraints.maxWidth.coerceAtLeast(1)
                    val fraction = (offsetAnimation.value / maxW).fastCoerceIn(-1f, 1f)
                    with(density) {
                        4.dp.toPx() * fraction.sign * EaseOut.transform(abs(fraction))
                    }
                }
            }

        val isLtr = LocalLayoutDirection.current == LayoutDirection.Ltr
        val animationScope = rememberCoroutineScope()
        var currentIndex by
            remember(selectedTabIndex) {
                mutableIntStateOf(selectedTabIndex())
            }

        val dampedDragAnimation =
            remember(animationScope, tabsCount, animationsEnabled) {
                DampedDragAnimation(
                    animationScope = animationScope,
                    initialValue = selectedTabIndex().toFloat(),
                    valueRange = 0f..(tabsCount - 1).toFloat(),
                    visibilityThreshold = 0.001f,
                    initialScale = 1f,
                    pressedScale = if (animationsEnabled) 78f / 56f else 1f,
                    animationsEnabled = animationsEnabled,
                    onDragStarted = {},
                    onDragStopped = {
                        val targetIndex = targetValue.fastRoundToInt().fastCoerceIn(0, tabsCount - 1)
                        currentIndex = targetIndex
                        animateToValue(targetIndex.toFloat())
                        animationScope.launch {
                            if (animationsEnabled) {
                                offsetAnimation.animateTo(
                                    0f,
                                    spring(1f, 300f, 0.5f),
                                )
                            } else {
                                offsetAnimation.snapTo(0f)
                            }
                        }
                    },
                    onDrag = { _, dragAmount ->
                        updateValue(
                            (targetValue + dragAmount.x / tabWidth * if (isLtr) 1f else -1f)
                                .fastCoerceIn(0f, (tabsCount - 1).toFloat()),
                        )
                        animationScope.launch {
                            offsetAnimation.snapTo(offsetAnimation.value + dragAmount.x)
                        }
                    },
                )
            }

        LaunchedEffect(selectedTabIndex) {
            snapshotFlow { selectedTabIndex() }
                .collectLatest { index ->
                    currentIndex = index
                }
        }

        LaunchedEffect(dampedDragAnimation) {
            snapshotFlow { currentIndex }
                .drop(1)
                .collectLatest { index ->
                    dampedDragAnimation.animateToValue(index.toFloat())
                    onTabSelected(index)
                }
        }

        val interactiveHighlight =
            remember(animationScope, tabWidth, isLtr) {
                InteractiveHighlight(
                    animationScope = animationScope,
                    position = { size, _ ->
                        Offset(
                            if (isLtr) {
                                (dampedDragAnimation.value + 0.5f) * tabWidth + panelOffset
                            } else {
                                size.width - (dampedDragAnimation.value + 0.5f) * tabWidth + panelOffset
                            },
                            size.height / 2f,
                        )
                    },
                )
            }

        Row(
            modifier =
                Modifier
                    .graphicsLayer {
                        translationX = panelOffset
                    }.drawBackdrop(
                        backdrop = backdrop,
                        shape = { Capsule() },
                        effects = {
                            vibrancy()
                            blur(8.dp.toPx())
                            lens(24.dp.toPx(), 24.dp.toPx())
                        },
                        layerBlock = {
                            val progress = dampedDragAnimation.pressProgress
                            val scale = lerp(1f, 1f + 16.dp.toPx() / size.width.coerceAtLeast(1f), progress)
                            scaleX = scale
                            scaleY = scale
                        },
                        onDrawSurface = { drawRect(containerColor) },
                    ).then(interactiveHighlight.modifier)
                    .height(64.dp)
                    .fillMaxWidth()
                    .padding(4.dp),
            verticalAlignment = Alignment.CenterVertically,
            content = content,
        )

        CompositionLocalProvider(
            LocalLiquidBottomTabScale provides {
                lerp(1f, 1.16f, dampedDragAnimation.pressProgress)
            },
        ) {
            Row(
                modifier =
                    Modifier
                        .clearAndSetSemantics {}
                        .alpha(0f)
                        .layerBackdrop(tabsBackdrop)
                        .graphicsLayer {
                            translationX = panelOffset
                        }.drawBackdrop(
                            backdrop = backdrop,
                            shape = { Capsule() },
                            effects = {
                                val progress = dampedDragAnimation.pressProgress
                                vibrancy()
                                blur(8.dp.toPx())
                                lens(
                                    24.dp.toPx() * progress,
                                    24.dp.toPx() * progress,
                                )
                            },
                            highlight = {
                                val progress = dampedDragAnimation.pressProgress
                                Highlight.Default.copy(alpha = progress)
                            },
                            onDrawSurface = { drawRect(containerColor) },
                        ).then(interactiveHighlight.modifier)
                        .height(56.dp)
                        .fillMaxWidth()
                        .padding(horizontal = 4.dp)
                        .graphicsLayer(colorFilter = ColorFilter.tint(accentColor)),
                verticalAlignment = Alignment.CenterVertically,
                content = content,
            )
        }

        val combinedPillBackdrop = rememberCombinedBackdrop(backdrop, tabsBackdrop)
        Box(
            modifier =
                Modifier
                    .padding(horizontal = 4.dp)
                    .graphicsLayer {
                        translationX =
                            if (isLtr) {
                                dampedDragAnimation.value * tabWidth + panelOffset
                            } else {
                                size.width - (dampedDragAnimation.value + 1f) * tabWidth + panelOffset
                            }
                    }.then(interactiveHighlight.gestureModifier)
                    .then(dampedDragAnimation.modifier)
                    .drawBackdrop(
                        backdrop = combinedPillBackdrop,
                        shape = { Capsule() },
                        effects = {
                            val progress = dampedDragAnimation.pressProgress
                            lens(
                                10.dp.toPx() * progress,
                                14.dp.toPx() * progress,
                                chromaticAberration = true,
                            )
                        },
                        highlight = {
                            val progress = dampedDragAnimation.pressProgress
                            Highlight.Default.copy(alpha = 0.35f + 0.65f * progress)
                        },
                        shadow = {
                            val progress = dampedDragAnimation.pressProgress
                            Shadow(alpha = 0.25f + 0.75f * progress)
                        },
                        innerShadow = {
                            val progress = dampedDragAnimation.pressProgress
                            InnerShadow(
                                radius = 8.dp * progress,
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
                                        accentColor.copy(alpha = 0.14f)
                                    } else {
                                        accentColor.copy(alpha = 0.22f)
                                    },
                                alpha = 1f - progress * 0.5f,
                            )
                            drawRect(Color.Black.copy(alpha = 0.03f * progress))
                        },
                    ).height(56.dp)
                    .fillMaxWidth(1f / tabsCount),
        )
    }
}

@Composable
private fun RowScope.LiquidBottomTab(
    selected: Boolean,
    title: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    val scale = LocalLiquidBottomTabScale.current
    Column(
        modifier =
            modifier
                .clip(Capsule())
                .semantics(mergeDescendants = true) {
                    role = Role.Tab
                    this.selected = selected
                    contentDescription = title
                }.clickable(
                    interactionSource = null,
                    indication = null,
                    role = Role.Tab,
                    onClick = onClick,
                ).fillMaxHeight()
                .weight(1f)
                .graphicsLayer {
                    val currentScale = scale()
                    scaleX = currentScale
                    scaleY = currentScale
                },
        verticalArrangement = Arrangement.spacedBy(2.dp, Alignment.CenterVertically),
        horizontalAlignment = Alignment.CenterHorizontally,
        content = content,
    )
}

@Composable
private fun FallbackBottomTabs(
    tabs: List<BottomTab>,
    selectedTab: BottomTab,
    onTabSelected: (BottomTab) -> Unit,
    isDarkTheme: Boolean,
    animationsEnabled: Boolean,
    modifier: Modifier = Modifier,
) {
    val density = LocalDensity.current
    val isLtr = LocalLayoutDirection.current == LayoutDirection.Ltr
    val accentColor = MiuixTheme.colorScheme.primary
    val containerColor =
        if (isDarkTheme) {
            Color(0xFF1E1E22).copy(alpha = 0.94f)
        } else {
            Color(0xFFF6F6F9).copy(alpha = 0.94f)
        }
    val borderColor =
        if (isDarkTheme) {
            Color.White.copy(alpha = 0.12f)
        } else {
            Color.Black.copy(alpha = 0.08f)
        }

    val tabIndicatorOffset = remember { Animatable(selectedTab.ordinal.toFloat()) }
    LaunchedEffect(selectedTab, animationsEnabled) {
        if (animationsEnabled) {
            tabIndicatorOffset.animateTo(
                targetValue = selectedTab.ordinal.toFloat(),
                animationSpec = spring(dampingRatio = 0.9f, stiffness = 450f),
            )
        } else {
            tabIndicatorOffset.snapTo(selectedTab.ordinal.toFloat())
        }
    }

    BoxWithConstraints(
        modifier =
            modifier
                .height(64.dp)
                .clip(Capsule())
                .background(containerColor)
                .border(1.dp, borderColor, Capsule())
                .padding(4.dp),
        contentAlignment = Alignment.CenterStart,
    ) {
        val tabWidthPx =
            with(density) {
                (constraints.maxWidth.toFloat().coerceAtLeast(1f)) / tabs.size
            }

        Box(
            modifier =
                Modifier
                    .graphicsLayer {
                        translationX =
                            if (isLtr) {
                                tabIndicatorOffset.value * tabWidthPx
                            } else {
                                size.width - (tabIndicatorOffset.value + 1f) * tabWidthPx
                            }
                    }.clip(Capsule())
                    .background(accentColor.copy(alpha = if (isDarkTheme) 0.24f else 0.16f))
                    .height(56.dp)
                    .fillMaxWidth(1f / tabs.size),
        )

        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(56.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            tabs.forEach { tab ->
                val isSelected = tab == selectedTab
                val title = stringResource(tab.titleRes)
                val tintColor =
                    if (isSelected) {
                        accentColor
                    } else {
                        MiuixTheme.colorScheme.onSurfaceVariantSummary
                    }

                Column(
                    modifier =
                        Modifier
                            .weight(1f)
                            .fillMaxHeight()
                            .clip(Capsule())
                            .semantics(mergeDescendants = true) {
                                role = Role.Tab
                                selected = isSelected
                                contentDescription = title
                            }.clickable {
                                onTabSelected(tab)
                            },
                    verticalArrangement = Arrangement.spacedBy(2.dp, Alignment.CenterVertically),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Icon(
                        painter = painterResource(tab.iconRes),
                        contentDescription = null,
                        tint = tintColor,
                        modifier = Modifier.size(24.dp),
                    )
                    Text(
                        text = title,
                        fontSize = 11.sp,
                        lineHeight = 13.sp,
                        fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
                        color = tintColor,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
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
    val onDragStarted: DampedDragAnimation.(position: Offset) -> Unit,
    val onDragStopped: DampedDragAnimation.() -> Unit,
    val onDrag: DampedDragAnimation.(size: IntSize, dragAmount: Offset) -> Unit,
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
    private val velocityTracker = VelocityTracker()

    val value: Float get() = valueAnimation.value
    val targetValue: Float get() = valueAnimation.targetValue
    val pressProgress: Float get() = pressProgressAnimation.value
    val scaleX: Float get() = scaleXAnimation.value
    val scaleY: Float get() = scaleYAnimation.value
    val velocity: Float get() = velocityAnimation.value

    val modifier: Modifier =
        Modifier.pointerInput(Unit) {
            inspectDragGestures(
                onDragStart = { down ->
                    onDragStarted(down.position)
                    press()
                },
                onDragEnd = {
                    onDragStopped()
                    release()
                },
                onDragCancel = {
                    onDragStopped()
                    release()
                },
            ) { _, dragAmount ->
                onDrag(size, dragAmount)
            }
        }

    fun press() {
        velocityTracker.resetTracking()
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
        animationScope.launch {
            awaitFrame()
            if (animationsEnabled && value != targetValue) {
                val threshold = (valueRange.endInclusive - valueRange.start) * 0.025f
                snapshotFlow { valueAnimation.value }
                    .filter { abs(it - valueAnimation.targetValue) < threshold }
                    .first()
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
        val targetValue = value.coerceIn(valueRange)
        animationScope.launch {
            if (animationsEnabled) {
                launch {
                    valueAnimation.animateTo(targetValue, valueAnimationSpec) {
                        updateVelocity()
                    }
                }
            } else {
                valueAnimation.snapTo(targetValue)
            }
        }
    }

    fun animateToValue(value: Float) {
        animationScope.launch {
            mutatorMutex.mutate {
                val targetValue = value.coerceIn(valueRange)
                if (animationsEnabled) {
                    press()
                    launch { valueAnimation.animateTo(targetValue, valueAnimationSpec) }
                    if (velocity != 0f) {
                        launch { velocityAnimation.animateTo(0f, velocityAnimationSpec) }
                    }
                    release()
                } else {
                    valueAnimation.snapTo(targetValue)
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
            SystemClock.uptimeMillis(),
            Offset(value, 0f),
        )
        val span = (valueRange.endInclusive - valueRange.start).coerceAtLeast(1f)
        val targetVelocity = velocityTracker.calculateVelocity().x / span
        animationScope.launch {
            velocityAnimation.animateTo(targetVelocity, velocityAnimationSpec)
        }
    }
}

private class InteractiveHighlight(
    val animationScope: CoroutineScope,
    val position: (size: Size, offset: Offset) -> Offset = { _, offset -> offset },
) {
    private val pressProgressAnimationSpec = spring(0.5f, 300f, 0.001f)
    private val positionAnimationSpec = spring(0.5f, 300f, Offset.VisibilityThreshold)

    private val pressProgressAnimation = Animatable(0f, 0.001f)
    private val positionAnimation =
        Animatable(Offset.Zero, Offset.VectorConverter, Offset.VisibilityThreshold)

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
                        Color.White.copy(alpha = 0.08f * progress),
                        blendMode = BlendMode.Plus,
                    )
                    shader.apply {
                        val pos = position(size, positionAnimation.value)
                        setFloatUniform("size", size.width, size.height)
                        setColorUniform("color", Color.White.copy(alpha = 0.15f * progress))
                        setFloatUniform("radius", size.minDimension * 1.5f)
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
                        Color.White.copy(alpha = 0.22f * progress),
                        blendMode = BlendMode.Plus,
                    )
                }
            }

            drawContent()
        }

    val gestureModifier: Modifier =
        Modifier.pointerInput(animationScope) {
            inspectDragGestures(
                onDragStart = { down ->
                    startPosition = down.position
                    animationScope.launch {
                        launch { pressProgressAnimation.animateTo(1f, pressProgressAnimationSpec) }
                        launch { positionAnimation.snapTo(startPosition) }
                    }
                },
                onDragEnd = {
                    animationScope.launch {
                        launch { pressProgressAnimation.animateTo(0f, pressProgressAnimationSpec) }
                        launch { positionAnimation.animateTo(startPosition, positionAnimationSpec) }
                    }
                },
                onDragCancel = {
                    animationScope.launch {
                        launch { pressProgressAnimation.animateTo(0f, pressProgressAnimationSpec) }
                        launch { positionAnimation.animateTo(startPosition, positionAnimationSpec) }
                    }
                },
            ) { change, _ ->
                animationScope.launch { positionAnimation.snapTo(change.position) }
            }
        }
}

private suspend fun PointerInputScope.inspectDragGestures(
    onDragStart: (down: PointerInputChange) -> Unit = {},
    onDragEnd: (change: PointerInputChange) -> Unit = {},
    onDragCancel: () -> Unit = {},
    onDrag: (change: PointerInputChange, dragAmount: Offset) -> Unit,
) {
    awaitEachGesture {
        val initialDown = awaitFirstDown(false, PointerEventPass.Initial)
        val down = awaitFirstDown(false)
        val drag = initialDown

        onDragStart(down)
        onDrag(drag, Offset.Zero)
        val upEvent =
            dragGestureLoop(
                pointerId = drag.id,
                onDrag = { onDrag(it, it.positionChange()) },
            )
        if (upEvent == null) {
            onDragCancel()
        } else {
            onDragEnd(upEvent)
        }
    }
}

private suspend inline fun AwaitPointerEventScope.dragGestureLoop(
    pointerId: PointerId,
    onDrag: (PointerInputChange) -> Unit,
): PointerInputChange? {
    val isPointerUp = currentEvent.changes.fastFirstOrNull { it.id == pointerId }?.pressed != true
    if (isPointerUp) {
        return null
    }
    var pointer = pointerId
    while (true) {
        val change = awaitDragOrUpEvent(pointer) ?: return null
        if (change.isConsumed) {
            return null
        }
        if (change.changedToUpIgnoreConsumed()) {
            return change
        }
        onDrag(change)
        pointer = change.id
    }
}

private suspend inline fun AwaitPointerEventScope.awaitDragOrUpEvent(
    pointerId: PointerId,
): PointerInputChange? {
    var pointer = pointerId
    while (true) {
        val event = awaitPointerEvent()
        val dragEvent = event.changes.fastFirstOrNull { it.id == pointer } ?: return null
        if (dragEvent.changedToUpIgnoreConsumed()) {
            val otherDown = event.changes.fastFirstOrNull { it.pressed }
            if (otherDown == null) {
                return dragEvent
            } else {
                pointer = otherDown.id
            }
        } else {
            val hasDragged = dragEvent.previousPosition != dragEvent.position
            if (hasDragged) {
                return dragEvent
            }
        }
    }
}
