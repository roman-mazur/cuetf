package res

import "list"

#google_model_armor_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_model_armor_template")
	close({
		// Create time stamp
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. name of resource
		name?:    string
		project?: string

		// Id of the requesting object
		// If auto-generating Id server-side, remove this field and
		// template_id from the method_signature of Create RPC
		template_id!: string
		filter_config!: matchN(1, [#filter_config, list.MaxItems(1) & [_, ...] & [...#filter_config]])
		template_metadata?: matchN(1, [#template_metadata, list.MaxItems(1) & [...#template_metadata]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update time stamp
		update_time?: string
	})

	#filter_config: close({
		malicious_uri_filter_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/malicious_uri_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/malicious_uri_filter_settings"]])
		pi_and_jailbreak_filter_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/pi_and_jailbreak_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/pi_and_jailbreak_filter_settings"]])
		rai_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/rai_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/rai_settings"]])
		sdp_settings?: matchN(1, [_#defs."/$defs/filter_config/$defs/sdp_settings", list.MaxItems(1) & [..._#defs."/$defs/filter_config/$defs/sdp_settings"]])
	})

	#template_metadata: close({
		// Indicates the custom error code set by the user to be returned
		// to the end
		// user if the LLM response trips Model Armor filters.
		custom_llm_response_safety_error_code?: number

		// Indicates the custom error message set by the user to be
		// returned to the
		// end user if the LLM response trips Model Armor filters.
		custom_llm_response_safety_error_message?: string

		// Indicates the custom error code set by the user to be returned
		// to the end
		// user by the service extension if the prompt trips Model Armor
		// filters.
		custom_prompt_safety_error_code?: number

		// Indicates the custom error message set by the user to be
		// returned to the
		// end user if the prompt trips Model Armor filters.
		custom_prompt_safety_error_message?: string

		// Possible values:
		// INSPECT_ONLY
		// INSPECT_AND_BLOCK
		enforcement_type?: string

		// If true, partial detector failures should be ignored.
		ignore_partial_invocation_failures?: bool
		multi_language_detection?: matchN(1, [_#defs."/$defs/template_metadata/$defs/multi_language_detection", list.MaxItems(1) & [..._#defs."/$defs/template_metadata/$defs/multi_language_detection"]])

		// If true, log sanitize operations.
		log_sanitize_operations?: bool

		// If true, log template crud operations.
		log_template_operations?: bool
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
		// If provided then DeidentifyContent action is performed during
		// Sanitization
		// using this template and inspect template. The De-identified
		// data will
		// be returned in SdpDeidentifyResult.
		// Note that all info-types present in the deidentify template
		// must be present
		// in inspect template.
		// e.g.
		// 'projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}'
		deidentify_template?: string

		// Sensitive Data Protection inspect template resource name
		// If only inspect template is provided (de-identify template not
		// provided),
		// then Sensitive Data Protection InspectContent action is
		// performed during
		// Sanitization. All Sensitive Data Protection findings identified
		// during
		// inspection will be returned as SdpFinding in
		// SdpInsepctionResult.
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

	_#defs: "/$defs/template_metadata/$defs/multi_language_detection": close({
		// If true, multi language detection will be enabled.
		enable_multi_language_detection!: bool
	})
}
