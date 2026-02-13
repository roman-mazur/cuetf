package res

import "list"

#google_discovery_engine_search_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_search_engine")
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

		// A map of the feature config for the engine to opt in or opt out
		// of features.
		features?: [string]: string
		id?: string

		// The industry vertical that the engine registers. The
		// restriction of the Engine industry vertical is based on
		// DataStore: If unspecified, default to GENERIC. Vertical on
		// Engine has to match vertical of the DataStore liniked to the
		// engine. Default value: "GENERIC" Possible values: ["GENERIC",
		// "MEDIA", "HEALTHCARE_FHIR"]
		industry_vertical?: string
		common_config?: matchN(1, [#common_config, list.MaxItems(1) & [...#common_config]])
		knowledge_graph_config?: matchN(1, [#knowledge_graph_config, list.MaxItems(1) & [...#knowledge_graph_config]])
		search_engine_config!: matchN(1, [#search_engine_config, list.MaxItems(1) & [_, ...] & [...#search_engine_config]])
		timeouts?: #timeouts

		// The KMS key to be used to protect this Engine at creation time.
		//
		// Must be set for requests that need to comply with CMEK Org
		// Policy
		// protections.
		//
		// If this field is set and processed successfully, the Engine
		// will be
		// protected by the KMS key, as indicated in the cmek_config
		// field.
		kms_key_name?: string

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

	#knowledge_graph_config: close({
		// Specify entity types to support.
		cloud_knowledge_graph_types?: [...string]
		feature_config?: matchN(1, [_#defs."/$defs/knowledge_graph_config/$defs/feature_config", list.MaxItems(1) & [..._#defs."/$defs/knowledge_graph_config/$defs/feature_config"]])

		// Whether to enable the Cloud Knowledge Graph for the engine.
		enable_cloud_knowledge_graph?: bool

		// Whether to enable the Private Knowledge Graph for the engine.
		enable_private_knowledge_graph?: bool
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

	_#defs: "/$defs/knowledge_graph_config/$defs/feature_config": close({
		// Whether to disable the private KG auto complete for the engine.
		disable_private_kg_auto_complete?: bool

		// Whether to disable the private KG enrichment for the engine.
		disable_private_kg_enrichment?: bool

		// Whether to disable the private KG for query UI chips.
		disable_private_kg_query_ui_chips?: bool

		// Whether to disable the private KG query understanding for the
		// engine.
		disable_private_kg_query_understanding?: bool
	})
}
