package com.aoya.telegami.ui.fragment

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.lifecycleScope
import androidx.lifecycle.repeatOnLifecycle
import androidx.preference.Preference
import androidx.preference.PreferenceDataStore
import androidx.preference.PreferenceFragmentCompat
import androidx.preference.PreferenceGroup
import com.aoya.telegami.R
import com.aoya.telegami.databinding.FragmentSettingsBinding
import com.aoya.telegami.service.PrefManager
import com.aoya.telegami.ui.util.navController
import com.aoya.telegami.ui.util.setEdge2EdgeFlags
import com.aoya.telegami.ui.util.setupToolbar
import com.aoya.telegami.util.toPascalCase
import dev.androidbroadcast.vbpd.viewBinding
import kotlinx.coroutines.launch

class FeaturesFragment :
    Fragment(R.layout.fragment_settings),
    PreferenceFragmentCompat.OnPreferenceStartFragmentCallback {
    private val binding by viewBinding(FragmentSettingsBinding::bind)

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        setupToolbar(
            toolbar = binding.toolbar,
            title = getString(R.string.title_features),
            navigationIcon = R.drawable.baseline_arrow_back_24,
            navigationOnClick = { navController.navigateUp() },
        )

        setEdge2EdgeFlags(binding.root)

        if (childFragmentManager.findFragmentById(R.id.settings_container) == null) {
            childFragmentManager
                .beginTransaction()
                .replace(R.id.settings_container, SettingsPreferenceFragment())
                .commit()
        }
    }

    override fun onPreferenceStartFragment(
        caller: PreferenceFragmentCompat,
        pref: androidx.preference.Preference,
    ): Boolean {
        val fragment =
            childFragmentManager.fragmentFactory.instantiate(
                requireContext().classLoader,
                pref.fragment!!,
            )
        fragment.arguments = pref.extras
        childFragmentManager
            .beginTransaction()
            .replace(R.id.settings_container, fragment)
            .addToBackStack(null)
            .commit()
        return true
    }

    class SettingsPreferenceDataStore : PreferenceDataStore() {
        private val booleanKeys =
            setOf(
                "hideOnlineStatus",
                "hideTyping",
                "hideStoryViewStatus",
                "showDeletedMessages",
                "preventSecretMediaDeletion",
                "allowSaveVideos",
                "unlockChannelFeatures",
                "fakePremium",
                "disableAds",
            )

        private val stringKeys = setOf("boostDownload")

        private val multiSelectKeys = setOf("hideSeen", "markMessages")

        override fun getBoolean(
            key: String,
            defValue: Boolean,
        ): Boolean =
            if (key in booleanKeys) {
                PrefManager.isFeatureEnabled(key.toPascalCase())
            } else {
                throw IllegalArgumentException("Invalid key: $key")
            }

        override fun getString(
            key: String,
            defValue: String?,
        ): String =
            if (key in stringKeys) {
                PrefManager.getFeatureValue(key.toPascalCase(), 0).toString()
            } else {
                throw IllegalArgumentException("Invalid key: $key")
            }

        override fun getStringSet(
            key: String,
            defValues: MutableSet<String>?,
        ): MutableSet<String> =
            if (key in multiSelectKeys) {
                val enabledOptions = mutableSetOf<String>()
                when (key) {
                    "hideSeen" -> {
                        if (PrefManager.isFeatureEnabled("HideSeenPrivateChat")) enabledOptions.add("private_chat")
                        if (PrefManager.isFeatureEnabled("HideSeenChannel")) enabledOptions.add("channel")
                    }

                    "markMessages" -> {
                        if (PrefManager.isFeatureEnabled("MarkMessagesDeleted")) enabledOptions.add("deleted")
                        if (PrefManager.isFeatureEnabled("MarkMessagesEdited")) enabledOptions.add("edited")
                    }
                }
                enabledOptions
            } else {
                throw IllegalArgumentException("Invalid key: $key")
            }

    }

    class SettingsPreferenceFragment : PreferenceFragmentCompat() {
        private var saving = false

        override fun onCreatePreferences(
            savedInstanceState: Bundle?,
            rootKey: String?,
        ) {
            preferenceManager.preferenceDataStore = SettingsPreferenceDataStore()
            reloadPreferences()
        }

        override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
            super.onViewCreated(view, savedInstanceState)
            viewLifecycleOwner.lifecycleScope.launch {
                viewLifecycleOwner.repeatOnLifecycle(Lifecycle.State.STARTED) {
                    PrefManager.serviceAvailable.collect {
                        if (!saving) reloadPreferences()
                    }
                }
            }
        }

        private fun reloadPreferences() {
            preferenceScreen = null
            setPreferencesFromResource(R.xml.features, null)
            val available = PrefManager.serviceAvailable.value
            if (!available) {
                preferenceScreen.addPreference(
                    Preference(requireContext()).apply {
                        title = getString(R.string.remote_preferences_unavailable)
                        summary = getString(R.string.remote_preferences_unavailable_hint)
                        order = -1
                        isSelectable = false
                    },
                )
            }
            bindChanges(preferenceScreen)
            preferenceScreen.isEnabled = available && !saving
        }

        private fun bindChanges(group: PreferenceGroup) {
            for (index in 0 until group.preferenceCount) {
                val preference = group.getPreference(index)
                if (preference is PreferenceGroup) {
                    bindChanges(preference)
                } else if (preference.key != null) {
                    preference.setOnPreferenceChangeListener { _, value ->
                        if (!saving && PrefManager.serviceAvailable.value) {
                            saving = true
                            preferenceScreen.isEnabled = false
                            // Keep AndroidX's optimistic value out of the UI until IPC
                            // confirms the whole edit, including multi-select switches.
                            lifecycleScope.launch {
                                val success =
                                    try {
                                        writeChange(preference.key, value)
                                    } finally {
                                        saving = false
                                    }
                                if (view != null) {
                                    reloadPreferences()
                                    if (!success) {
                                        Toast.makeText(requireContext(), R.string.remote_preferences_write_failed, Toast.LENGTH_LONG).show()
                                    }
                                }
                            }
                        }
                        false
                    }
                }
            }
        }

        private suspend fun writeChange(key: String, value: Any): Boolean =
            when (key) {
                "hideSeen" -> {
                    val values = value as Set<*>
                    PrefManager.updateFeatures(
                        mapOf(
                            "HideSeenPrivateChat" to ("private_chat" in values),
                            "HideSeenChannel" to ("channel" in values),
                        ),
                    )
                }
                "markMessages" -> {
                    val values = value as Set<*>
                    PrefManager.updateFeatures(
                        mapOf(
                            "MarkMessagesDeleted" to ("deleted" in values),
                            "MarkMessagesEdited" to ("edited" in values),
                        ),
                    )
                }
                "boostDownload" -> PrefManager.updateFeatures(integers = mapOf("BoostDownload" to value.toString().toInt()))
                else -> PrefManager.updateFeatures(mapOf(key.toPascalCase() to (value as Boolean)))
            }
    }
}
