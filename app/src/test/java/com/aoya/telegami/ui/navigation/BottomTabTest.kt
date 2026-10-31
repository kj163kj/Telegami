package com.aoya.telegami.ui.navigation

import androidx.compose.ui.geometry.Offset
import com.aoya.telegami.R
import com.aoya.telegami.ui.theme.TelegamiColorOptions
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class BottomTabTest {
    @Test
    fun bottomTabs_haveExactFixedOrderAndResources() {
        val tabs = BottomTab.entries
        assertEquals(3, tabs.size)

        assertEquals(BottomTab.Features, tabs[0])
        assertEquals(R.string.title_features, tabs[0].titleRes)
        assertEquals(R.drawable.outline_extension_24, tabs[0].iconRes)

        assertEquals(BottomTab.Settings, tabs[1])
        assertEquals(R.string.title_settings, tabs[1].titleRes)
        assertEquals(R.drawable.outline_settings_24, tabs[1].iconRes)

        assertEquals(BottomTab.About, tabs[2])
        assertEquals(R.string.title_about, tabs[2].titleRes)
        assertEquals(R.drawable.outline_info_24, tabs[2].iconRes)
    }

    @Test
    fun themeColorOptions_containAllOriginal19Presets() {
        val expectedKeys =
            listOf(
                "SAKURA",
                "MATERIAL_RED",
                "MATERIAL_PINK",
                "MATERIAL_PURPLE",
                "MATERIAL_DEEP_PURPLE",
                "MATERIAL_INDIGO",
                "MATERIAL_BLUE",
                "MATERIAL_LIGHT_BLUE",
                "MATERIAL_CYAN",
                "MATERIAL_TEAL",
                "MATERIAL_GREEN",
                "MATERIAL_LIGHT_GREEN",
                "MATERIAL_LIME",
                "MATERIAL_YELLOW",
                "MATERIAL_AMBER",
                "MATERIAL_ORANGE",
                "MATERIAL_DEEP_ORANGE",
                "MATERIAL_BROWN",
                "MATERIAL_BLUE_GREY",
            )
        val actualKeys = TelegamiColorOptions.map { it.first }
        assertEquals(expectedKeys, actualKeys)
        assertTrue(TelegamiColorOptions.all { it.second.alpha == 1f })
    }

    @Test
    fun bottomBarGestureMath_mapsTapPositionsInLtrAndRtl() {
        val barWidth = 916f
        val pad = 8f // innerWidth = 900f, tabWidth = 300f

        assertEquals(0, BottomBarGestureMath.tabIndexAtPosition(20f, barWidth, pad, 3, isLtr = true))
        assertEquals(0, BottomBarGestureMath.tabIndexAtPosition(307f, barWidth, pad, 3, isLtr = true))
        assertEquals(1, BottomBarGestureMath.tabIndexAtPosition(310f, barWidth, pad, 3, isLtr = true))
        assertEquals(1, BottomBarGestureMath.tabIndexAtPosition(600f, barWidth, pad, 3, isLtr = true))
        assertEquals(2, BottomBarGestureMath.tabIndexAtPosition(620f, barWidth, pad, 3, isLtr = true))
        assertEquals(2, BottomBarGestureMath.tabIndexAtPosition(915f, barWidth, pad, 3, isLtr = true))

        // RTL mirrors left and right tabs
        assertEquals(2, BottomBarGestureMath.tabIndexAtPosition(20f, barWidth, pad, 3, isLtr = false))
        assertEquals(1, BottomBarGestureMath.tabIndexAtPosition(458f, barWidth, pad, 3, isLtr = false))
        assertEquals(0, BottomBarGestureMath.tabIndexAtPosition(880f, barWidth, pad, 3, isLtr = false))
    }

    @Test
    fun bottomBarGestureMath_updatesContinuousTargetFromTouchDownAndRelativeDrag() {
        val barWidth = 764f
        val pad = 10f // innerWidth = 744f, tabWidth = 248f
        val tabWidth = 248f

        // Touching down on About (tab 2) snaps initial droplet target to 2f (KSU FloatingBottomBar behavior)
        val initialDownIndex =
            BottomBarGestureMath.tabIndexAtPosition(
                xPx = 620f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(2, initialDownIndex)

        // Dragging right by +248px from Features (0f) moves smoothly to Settings (1f)
        val afterFirstTab =
            BottomBarGestureMath.updatedDragTarget(
                currentTargetValue = 0f,
                dragDeltaXPx = 248f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(1f, afterFirstTab, 0.001f)

        // Dragging another +248px moves smoothly to About (2f)
        val afterSecondTab =
            BottomBarGestureMath.updatedDragTarget(
                currentTargetValue = afterFirstTab,
                dragDeltaXPx = 248f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(2f, afterSecondTab, 0.001f)

        // RTL reverses horizontal delta direction
        val rtlDragged =
            BottomBarGestureMath.updatedDragTarget(
                currentTargetValue = 0f,
                dragDeltaXPx = -248f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = false,
            )
        assertEquals(1f, rtlDragged, 0.001f)
    }

    @Test
    fun bottomBarGestureMath_settlesCleanlyOnTapDragAndFlick() {
        val tabWidth = 248f

        // Stationary tap on About (targetValue = 2.0f) never overshoots even with lift velocity
        val tapOnAbout =
            BottomBarGestureMath.settledTabIndex(
                targetValue = 2f,
                velocityXPxPerSec = -900f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
                totalDragDistancePx = 6f,
                dragSlopPx = 24f,
                lastLogicalDragDir = -1f,
            )
        assertEquals(2, tapOnAbout)

        // Short fast flick right from Features (targetValue = 0.25f, vx = +1400 px/s) lands on Settings (1)
        val flickToNext =
            BottomBarGestureMath.settledTabIndex(
                targetValue = 0.25f,
                velocityXPxPerSec = 1400f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
                totalDragDistancePx = 64f,
                dragSlopPx = 24f,
                lastLogicalDragDir = 1f,
            )
        assertEquals(1, flickToNext)

        // Reverse thumb-lift twitch after sliding right into About (targetValue = 1.65f, vx = -1100 px/s) stays on About (2)
        val reverseLiftTwitch =
            BottomBarGestureMath.settledTabIndex(
                targetValue = 1.65f,
                velocityXPxPerSec = -1100f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
                totalDragDistancePx = 420f,
                dragSlopPx = 24f,
                lastLogicalDragDir = 1f,
            )
        assertEquals(2, reverseLiftTwitch)

        // Tiny micro-jiggle does not switch tabs
        val tinyJiggle =
            BottomBarGestureMath.settledTabIndex(
                targetValue = 0.08f,
                velocityXPxPerSec = 90f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
                totalDragDistancePx = 12f,
                dragSlopPx = 24f,
                lastLogicalDragDir = 1f,
            )
        assertEquals(0, tinyJiggle)
    }

    @Test
    fun bottomBarGestureMath_detectsVerticalPullAwayCancellation() {
        val barHeight = 192f // 64dp @ 3x
        val slop = 216f // 72dp @ 3x

        // Thumb drifting slightly above the pill during horizontal drag is NOT cancelled
        assertFalse(BottomBarGestureMath.isVerticalDragCancelled(-80f, barHeight, slop))
        assertFalse(BottomBarGestureMath.isVerticalDragCancelled(100f, barHeight, slop))

        // Pulling finger far up into the page (> 72dp above bar) cancels tab switch
        assertTrue(BottomBarGestureMath.isVerticalDragCancelled(-260f, barHeight, slop))
    }

    @Test
    fun bottomBarGestureSession_neverCommitsWhileFingerDownAndCommitsOnlyOnRelease() {
        val barWidth = 816f // pad = 12f -> innerWidth = 792f -> tabWidth = 264f
        val barHeight = 192f
        val pad = 12f
        val tabWidth = 264f
        val session =
            BottomBarGestureSession(
                barWidthPx = barWidth,
                barHeightPx = barHeight,
                horizontalPadPx = pad,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
                dragSlopPx = 24f,
                verticalCancelSlopPx = 216f,
            )

        val committedHistory = mutableListOf<Int>()

        // 1. Finger presses down on Features (tab 0): visual target = 0f, committedHistory stays empty
        var prev = Offset(140f, 96f)
        assertEquals(0f, session.onDown(prev, fallbackIndex = 0), 0.001f)
        assertTrue(committedHistory.isEmpty())

        // 2. Finger slides all the way across Settings (tab 1) to About (tab 2) and even past the right edge ("滑到底")
        val moveXs = listOf(180f, 260f, 408f, 540f, 672f, 790f, 880f)
        for (x in moveXs) {
            val curr = Offset(x, 92f)
            session.onMove(prev, curr)
            prev = curr
            assertTrue("Tab must NEVER switch before finger release", committedHistory.isEmpty())
        }
        // Visual droplet has reached About (2.0f) while screen still has 0 committed switches
        assertEquals(2f, session.visualTarget, 0.001f)
        assertTrue(committedHistory.isEmpty())

        // 3. Only when finger lifts (ACTION_UP) does onUp produce newlyCommittedIndex = 2
        val releaseOutcome = session.onUp(upPosition = prev, velocityXPxPerSec = 0f, committedIndex = 0)
        releaseOutcome.newlyCommittedIndex?.let(committedHistory::add)
        assertEquals(listOf(2), committedHistory)
        assertEquals(2f, releaseOutcome.visualTarget, 0.001f)
    }

    @Test
    fun bottomBarGestureSession_cancelOrVerticalPullAwayRevertsWithoutSwitching() {
        val session =
            BottomBarGestureSession(
                barWidthPx = 816f,
                barHeightPx = 192f,
                horizontalPadPx = 12f,
                tabWidthPx = 264f,
                tabsCount = 3,
                isLtr = true,
                dragSlopPx = 24f,
                verticalCancelSlopPx = 216f,
            )

        // Press on Features (0) and slide to Settings (1), then ACTION_CANCEL occurs
        session.onDown(Offset(120f, 96f), fallbackIndex = 0)
        session.onMove(Offset(120f, 96f), Offset(408f, 96f))
        assertEquals(1f, session.visualTarget, 0.01f)

        val cancelOutcome = session.onCancel(committedIndex = 0)
        assertNull(cancelOutcome.newlyCommittedIndex)
        assertEquals(0f, cancelOutcome.visualTarget, 0.001f)

        // Press on About (2) while on Features (0), then pull finger far up above bar and release
        session.onDown(Offset(700f, 96f), fallbackIndex = 0)
        val verticalCancelOutcome =
            session.onUp(
                upPosition = Offset(700f, -260f),
                velocityXPxPerSec = 0f,
                committedIndex = 0,
            )
        assertNull(verticalCancelOutcome.newlyCommittedIndex)
        assertEquals(0f, verticalCancelOutcome.visualTarget, 0.001f)
    }
}
