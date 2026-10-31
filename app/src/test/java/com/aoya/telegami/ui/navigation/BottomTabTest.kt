package com.aoya.telegami.ui.navigation

import com.aoya.telegami.R
import com.aoya.telegami.ui.theme.TelegamiColorOptions
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
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
            )
        assertEquals(1, flickToNext)

        // Tiny micro-jiggle does not switch tabs
        val tinyJiggle =
            BottomBarGestureMath.settledTabIndex(
                targetValue = 0.08f,
                velocityXPxPerSec = 90f,
                tabWidthPx = tabWidth,
                tabsCount = 3,
                isLtr = true,
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
}
