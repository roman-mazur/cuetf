package res

#google_vertex_ai_cache_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_cache_config")
	close({
		// If set to true, disables GenAI caching. Otherwise caching is
		// enabled.
		disable_cache!: bool

		// Identifier. name of the cache config. Format: -
		// 'projects/{project}/cacheConfig'.
		name?:     string
		id?:       string
		timeouts?: #timeouts
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
