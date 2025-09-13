package res

import "list"

#google_discovery_engine_chat_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_chat_engine")
	close({
		// Additional information of the Chat Engine.
		chat_engine_metadata?: [...close({
			dialogflow_agent?: string
		})]

		// The collection ID.
		collection_id!: string

		// Timestamp the Engine was created at.
		create_time?: string

		// The data stores associated with this engine. Multiple
		// DataStores in the same Collection can be associated here. All
		// listed DataStores must be 'SOLUTION_TYPE_CHAT'.
		data_store_ids!: [...string]

		// The display name of the engine. Should be human readable. UTF-8
		// encoded string with limit of 1024 characters.
		display_name!: string

		// The ID to use for chat engine.
		engine_id!: string
		id?:        string

		// The industry vertical that the chat engine registers. Vertical
		// on Engine has to match vertical of the DataStore linked to the
		// engine. Default value: "GENERIC" Possible values: ["GENERIC"]
		industry_vertical?: string
		chat_engine_config?: matchN(1, [#chat_engine_config, list.MaxItems(1) & [_, ...] & [...#chat_engine_config]])
		common_config?: matchN(1, [#common_config, list.MaxItems(1) & [...#common_config]])
		timeouts?: #timeouts

		// Location.
		location!: string

		// The unique full resource name of the chat engine. Values are of
		// the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?:    string
		project?: string

		// Timestamp the Engine was last updated.
		update_time?: string
	})

	#chat_engine_config: close({
		agent_creation_config?: matchN(1, [_#defs."/$defs/chat_engine_config/$defs/agent_creation_config", list.MaxItems(1) & [..._#defs."/$defs/chat_engine_config/$defs/agent_creation_config"]])

		// If the flag set to true, we allow the agent and engine are in
		// different locations, otherwise the agent and engine are
		// required to be
		// in the same location. The flag is set to false by default.
		// Note that the 'allow_cross_region' are one-time consumed by and
		// passed
		// to EngineService.CreateEngine. It means they cannot be
		// retrieved using
		// EngineService.GetEngine or EngineService.ListEngines API after
		// engine
		// creation.
		allow_cross_region?: bool

		// The resource name of an existing Dialogflow agent to link to
		// this Chat Engine. Format:
		// 'projects/<Project_ID>/locations/<Location_ID>/agents/<Agent_ID>'.
		// Exactly one of 'agent_creation_config' or
		// 'dialogflow_agent_to_link' must be set.
		dialogflow_agent_to_link?: string
	})

	#common_config: close({
		// The name of the company, business or entity that is associated
		// with the engine. Setting this may help improve LLM related
		// features.
		company_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/chat_engine_config/$defs/agent_creation_config": close({
		// Name of the company, organization or other entity that the
		// agent represents. Used for knowledge connector LLM prompt and
		// for knowledge search.
		business?: string

		// The default language of the agent as a language tag. See
		// [Language
		// Support](https://cloud.google.com/dialogflow/docs/reference/language)
		// for a list of the currently supported language codes.
		default_language_code!: string

		// Agent location for Agent creation, currently supported values:
		// global/us/eu, it needs to be the same region as the Chat
		// Engine.
		location?: string

		// The time zone of the agent from the [time zone
		// database](https://www.iana.org/time-zones), e.g.,
		// America/New_York, Europe/Paris.
		time_zone!: string
	})
}
