package res

import "list"

#google_discovery_engine_search_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_search_engine")
	close({
		// This is the application type this engine resource represents.
		// The supported values: 'APP_TYPE_UNSPECIFIED',
		// 'APP_TYPE_INTRANET'.
		app_type?: string

		// The collection ID.
		collection_id!: string

		// Timestamp the Engine was created at.
		create_time?: string

		// The data stores associated with this engine. For
		// SOLUTION_TYPE_SEARCH type of engines, they can only associate
		// with at most one data store.
		data_store_ids!: [...string]

		// Required. The display name of the engine. Should be human
		// readable. UTF-8 encoded string with limit of 1024 characters.
		display_name!: string

		// Unique ID to use for Search Engine App.
		engine_id!: string
		id?:        string

		// The industry vertical that the engine registers. The
		// restriction of the Engine industry vertical is based on
		// DataStore: If unspecified, default to GENERIC. Vertical on
		// Engine has to match vertical of the DataStore liniked to the
		// engine. Default value: "GENERIC" Possible values: ["GENERIC",
		// "MEDIA", "HEALTHCARE_FHIR"]
		industry_vertical?: string
		common_config?: matchN(1, [#common_config, list.MaxItems(1) & [...#common_config]])
		search_engine_config?: matchN(1, [#search_engine_config, list.MaxItems(1) & [_, ...] & [...#search_engine_config]])
		timeouts?: #timeouts

		// Location.
		location!: string

		// The unique full resource name of the search engine. Values are
		// of the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?:    string
		project?: string

		// Timestamp the Engine was last updated.
		update_time?: string
	})

	#common_config: close({
		// The name of the company, business or entity that is associated
		// with the engine. Setting this may help improve LLM related
		// features.cd
		company_name?: string
	})

	#search_engine_config: close({
		// The add-on that this search engine enables. Possible values:
		// ["SEARCH_ADD_ON_LLM"]
		search_add_ons?: [...string]

		// The search feature tier of this engine. Defaults to
		// SearchTier.SEARCH_TIER_STANDARD if not specified. Default
		// value: "SEARCH_TIER_STANDARD" Possible values:
		// ["SEARCH_TIER_STANDARD", "SEARCH_TIER_ENTERPRISE"]
		search_tier?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
