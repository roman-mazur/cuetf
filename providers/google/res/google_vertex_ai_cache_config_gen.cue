package res

google_vertex_ai_cache_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_cache_config")
	close({
		timeouts?: #timeouts

		// If set to true, disables GenAI caching. Otherwise caching is enabled.
		disable_cache!: bool
		id?:            string

		// Identifier. name of the cache config. Format: - 'projects/{project}/cacheConfig'.
		name?: string

		// The region of the Vertex AI API endpoint used to manage the cache config, e.g. 'us-central1'.
		// The cache config is a project-level setting, so this only selects which regional endpoint
		// requests are sent to. If not specified, the provider-level region is used.
		region?:  string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
