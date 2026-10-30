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
}
