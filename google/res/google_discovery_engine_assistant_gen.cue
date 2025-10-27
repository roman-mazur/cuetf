package res

import "list"

#google_discovery_engine_assistant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_assistant")
	close({
		// The unique id of the assistant.
		assistant_id!: string

		// The unique id of the collection.
		collection_id!: string

		// Description for additional information. Expected to be shown on
		// the
		// configuration UI, not to the users of the assistant.
		description?: string

		// The assistant display name.
		//
		// It must be a UTF-8 encoded string with a length limit of 128
		// characters.
		display_name!: string

		// The unique id of the engine.
		engine_id!: string
		id?:        string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// Resource name of the assistant.
		// Format:
		// 'projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}'
		//
		// It must be a UTF-8 encoded string with a length limit of 1024
		// characters.
		name?: string
		customer_policy?: matchN(1, [#customer_policy, list.MaxItems(1) & [...#customer_policy]])
		generation_config?: matchN(1, [#generation_config, list.MaxItems(1) & [...#generation_config]])
		timeouts?: #timeouts
		project?:  string

		// The type of web grounding to use.
		// The supported values: 'WEB_GROUNDING_TYPE_DISABLED',
		// 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH',
		// 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
		web_grounding_type?: string
	})

	#customer_policy: close({
		banned_phrases?: matchN(1, [_#defs."/$defs/customer_policy/$defs/banned_phrases", [..._#defs."/$defs/customer_policy/$defs/banned_phrases"]])
		model_armor_config?: matchN(1, [_#defs."/$defs/customer_policy/$defs/model_armor_config", list.MaxItems(1) & [..._#defs."/$defs/customer_policy/$defs/model_armor_config"]])
	})

	#generation_config: close({
		system_instruction?: matchN(1, [_#defs."/$defs/generation_config/$defs/system_instruction", list.MaxItems(1) & [..._#defs."/$defs/generation_config/$defs/system_instruction"]])

		// The default language to use for the generation of the assistant
		// response.
		// Use an ISO 639-1 language code such as 'en'.
		// If not specified, the language will be automatically detected.
		default_language?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/customer_policy/$defs/banned_phrases": close({
		// If true, diacritical marks (e.g., accents, umlauts) are ignored
		// when
		// matching banned phrases. For example, "cafe" would match
		// "café".
		ignore_diacritics?: bool

		// Match type for the banned phrase.
		// The supported values: 'SIMPLE_STRING_MATCH',
		// 'WORD_BOUNDARY_STRING_MATCH'.
		match_type?: string

		// The raw string content to be banned.
		phrase!: string
	})

	_#defs: "/$defs/customer_policy/$defs/model_armor_config": close({
		// Defines the failure mode for Model Armor sanitization.
		// The supported values: 'FAIL_OPEN', 'FAIL_CLOSED'.
		failure_mode?: string

		// The resource name of the Model Armor template for sanitizing
		// assistant
		// responses. Format:
		// 'projects/{project}/locations/{location}/templates/{template_id}'
		//
		// If not specified, no sanitization will be applied to the
		// assistant
		// response.
		response_template!: string

		// The resource name of the Model Armor template for sanitizing
		// user
		// prompts. Format:
		// 'projects/{project}/locations/{location}/templates/{template_id}'
		//
		// If not specified, no sanitization will be applied to the user
		// prompt.
		user_prompt_template!: string
	})

	_#defs: "/$defs/generation_config/$defs/system_instruction": close({
		// Additional system instruction that will be added to the default
		// system instruction.
		additional_system_instruction?: string
	})
}
