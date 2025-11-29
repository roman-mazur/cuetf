package res

#google_discovery_engine_serving_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_serving_config")
	close({
		// The resource IDs of the boost controls to be applied.
		boost_control_ids?: [...string]

		// The collection ID. Currently only accepts "default_collection".
		collection_id?: string

		// The ID of the engine associated with the serving config.
		engine_id!: string

		// The resource IDs of the filter controls to be applied.
		filter_control_ids?: [...string]

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string
		id?:       string

		// The unique full resource name of the serving config. Values are
		// of the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}'.
		name?:    string
		project?: string

		// The resource IDs of the promote controls to be applied.
		promote_control_ids?: [...string]
		timeouts?: #timeouts

		// The resource IDs of the redirect controls to be applied.
		redirect_control_ids?: [...string]

		// 'The unique ID of the serving config. Currently only accepts
		// "default_search".'
		serving_config_id?: string

		// The resource IDs of the synonyms controls to be applied.
		synonyms_control_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
