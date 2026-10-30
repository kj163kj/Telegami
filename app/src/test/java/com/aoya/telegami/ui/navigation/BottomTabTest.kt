package com.aoya.telegami.ui.navigation

import com.aoya.telegami.R
import com.aoya.telegami.ui.theme.TelegamiColorOptions
import org.junit.Assert.assertEquals
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
    fun bottomBarGestureMath_drags1To1FromSelectedTabAndScrubsFromUnselected() {
        val barWidth = 916f
        val pad = 8f // tabWidth = 300f

        // Dragging right by +300px from Features (0f) moves smoothly to Settings (1f)
        val draggedToSettings =
            BottomBarGestureMath.draggedTabValue(
                startedOnSelectedTab = true,
                dragStartTabValue = 0f,
                totalDragDxPx = 300f,
                currentPointerXPx = 458f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(1f, draggedToSettings, 0.001f)

        // Dragging right by +600px from Features (0f) moves smoothly to About (2f)
        val draggedToAbout =
            BottomBarGestureMath.draggedTabValue(
                startedOnSelectedTab = true,
                dragStartTabValue = 0f,
                totalDragDxPx = 600f,
                currentPointerXPx = 758f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(2f, draggedToAbout, 0.001f)

        // Scrubbing starting on unselected area tracks the pointer directly
        val scrubbedToCenter =
            BottomBarGestureMath.draggedTabValue(
                startedOnSelectedTab = false,
                dragStartTabValue = 0f,
                totalDragDxPx = -120f,
                currentPointerXPx = 458f, // center of Settings tab (8 + 450)
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(1f, scrubbedToCenter, 0.001f)
    }

    @Test
    fun bottomBarGestureMath_projectsFlickVelocityWithoutSkippingNeighborTab() {
        val barWidth = 916f
        val pad = 8f // tabWidth = 300f

        // Short fast flick right from Features (finger lifts at 0.22 of tab, vx = +1800 px/s -> 6 tabs/s)
        val flickToNext =
            BottomBarGestureMath.settledTabIndex(
                currentTabValue = 0.22f,
                velocityXPxPerSec = 1800f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(1, flickToNext)

        // Tiny micro-jiggle does not accidentally switch tabs
        val tinyJiggle =
            BottomBarGestureMath.settledTabIndex(
                currentTabValue = 0.08f,
                velocityXPxPerSec = 90f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(0, tinyJiggle)

        // Leftward flick from About (2.0 -> 1.75 with vx = -1500 px/s) lands on Settings (1)
        val flickLeftFromAbout =
            BottomBarGestureMath.settledTabIndex(
                currentTabValue = 1.75f,
                velocityXPxPerSec = -1500f,
                barWidthPx = barWidth,
                horizontalPadPx = pad,
                tabsCount = 3,
                isLtr = true,
            )
        assertEquals(1, flickLeftFromAbout)
    }
}
