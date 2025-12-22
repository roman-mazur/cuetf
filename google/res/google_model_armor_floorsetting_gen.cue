package res

import "list"

#google_model_armor_floorsetting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_model_armor_floorsetting")
	close({
		// [Output only] Create timestamp
		create_time?: string

		// Floor Settings enforcement status.
		enable_floor_setting_enforcement?: bool

		// List of integrated services for which the floor setting is
		// applicable.
		integrated_services?: [...string]
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name.
		name?: string
		ai_platform_floor_setting?: matchN(1, [#ai_platform_floor_setting, list.MaxItems(1) & [...#ai_platform_floor_setting]])
		filter_config!: matchN(1, [#filter_config, list.MaxItems(1) & [_, ...] & [...#filter_config]])
		floor_setting_metadata?: matchN(1, [#floor_setting_metadata, list.MaxItems(1) & [...#floor_setting_metadata]])
		google_mcp_server_floor_setting?: matchN(1, [#google_mcp_server_floor_setting, list.MaxItems(1) & [...#google_mcp_server_floor_setting]])

		// Will be any one of these:
		//
		// * 'projects/{project}'
		// * 'folders/{folder}'
		// * 'organizations/{organizationId}'
		parent!: string

		// [Output only] Update timestamp
		update_time?: string
		timeouts?:    #timeouts
	})

	#ai_platform_floor_setting: close({
		// If true, log Model Armor filter results to Cloud Logging.
		enable_cloud_logging?: bool

		// If true, Model Armor filters will be run in inspect and block
		// mode.
		// Requests that trip Model Armor filters will be blocked.
		inspect_and_block?: bool

		// If true, Model Armor filters will be run in inspect only mode.
		// No action
		// will be taken on the request.
		inspect_only?: bool
	})

	#filter_config: close({
		malicious_uri_filter_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/malicious_uri_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/malicious_uri_filter_settings"]])
		pi_and_jailbreak_filter_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/pi_and_jailbreak_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/pi_and_jailbreak_filter_settings"]])
		rai_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/rai_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/rai_settings"]])
		sdp_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/sdp_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/sdp_settings"]])
	})

	#floor_setting_metadata: close({
		multi_language_detection?: matchN(1, [_#defs."/$defs/floor_setting_metadata/$defs/multi_language_detection", list.MaxItems(1) & [..._#defs."/$defs/floor_setting_metadata/$defs/multi_language_detection"]])
	})

	#google_mcp_server_floor_setting: close({
		// If true, log Model Armor filter results to Cloud Logging.
		enable_cloud_logging?: bool

		// If true, Model Armor filters will be run in inspect and block
		// mode.
		// Requests that trip Model Armor filters will be blocked.
		inspect_and_block?: bool

		// If true, Model Armor filters will be run in inspect only mode.
		// No action
		// will be taken on the request.
		inspect_only?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/filter_config/$defs/malicious_uri_filter_settings": close({
		// Tells whether the Malicious URI filter is enabled or disabled.
		// Possible values:
		// ENABLED
		// DISABLED
		filter_enforcement?: string
	})

	_#defs: "/$defs/filter_config/$defs/pi_and_jailbreak_filter_settings": close({
		// Possible values:
		// LOW_AND_ABOVE
		// MEDIUM_AND_ABOVE
		// HIGH
		confidence_level?: string

		// Tells whether Prompt injection and Jailbreak filter is enabled
		// or
		// disabled.
		// Possible values:
		// ENABLED
		// DISABLED
		filter_enforcement?: string
	})

	_#defs: "/$defs/filter_config/$defs/rai_settings": close({
		rai_filters!: matchN(1, [_#defs."/$defs/filter_config/$defs/rai_settings/$defs/rai_filters", [_, ...] & [..._#defs."/$defs/filter_config/$defs/rai_settings/$defs/rai_filters"]])
	})

	_#defs: "/$defs/filter_config/$defs/rai_settings/$defs/rai_filters": close({
		// Possible values:
		// LOW_AND_ABOVE
		// MEDIUM_AND_ABOVE
		// HIGH
		confidence_level?: string

		// Possible values:
		// SEXUALLY_EXPLICIT
		// HATE_SPEECH
		// HARASSMENT
		// DANGEROUS
		filter_type!: string
	})

	_#defs: "/$defs/filter_config/$defs/sdp_settings": close({
		advanced_config?: matchN(1, [_#defs."/$defs/filter_config/$defs/sdp_settings/$defs/advanced_config", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/sdp_settings/$defs/advanced_config"]])
		basic_config?: matchN(1, [_#defs."/$defs/filter_config/$defs/sdp_settings/$defs/basic_config", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/sdp_settings/$defs/basic_config"]])
	})

	_#defs: "/$defs/filter_config/$defs/sdp_settings/$defs/advanced_config": close({
		// Optional Sensitive Data Protection Deidentify template resource
		// name.
		//
		// If provided then DeidentifyContent action is performed during
		// Sanitization
		// using this template and inspect template. The De-identified
		// data will
		// be returned in SdpDeidentifyResult.
		// Note that all info-types present in the deidentify template
		// must be present
		// in inspect template.
		//
		// e.g.
		// 'projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}'
		deidentify_template?: string

		// Sensitive Data Protection inspect template resource name
		//
		// If only inspect template is provided (de-identify template not
		// provided),
		// then Sensitive Data Protection InspectContent action is
		// performed during
		// Sanitization. All Sensitive Data Protection findings identified
		// during
		// inspection will be returned as SdpFinding in
		// SdpInsepctionResult.
		//
		// e.g:-
		// 'projects/{project}/locations/{location}/inspectTemplates/{inspect_template}'
		inspect_template?: string
	})

	_#defs: "/$defs/filter_config/$defs/sdp_settings/$defs/basic_config": close({
		// Tells whether the Sensitive Data Protection basic config is
		// enabled or
		// disabled.
		// Possible values:
		// ENABLED
		// DISABLED
		filter_enforcement?: string
	})

	_#defs: "/$defs/floor_setting_metadata/$defs/multi_language_detection": close({
		// If true, multi language detection will be enabled.
		enable_multi_language_detection!: bool
	})
}
