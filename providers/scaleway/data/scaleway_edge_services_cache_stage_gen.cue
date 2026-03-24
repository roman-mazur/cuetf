package data

#scaleway_edge_services_cache_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_cache_stage")
	close({
		// The backend stage ID the cache stage will be linked to
		backend_stage_id?: string

		// The ID of the cache stage
		cache_stage_id?: string

		// The date and time of the creation of the cache stage
		created_at?: string

		// The Time To Live (TTL) in seconds. Defines how long content is
		// cached
		fallback_ttl?: number
		id?:           string

		// Defines whether responses to requests with cookies must be
		// stored in the cache
		include_cookies?: bool

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Set of purge requests
		purge_requests?: [...close({
			all?: bool
			assets?: [...string]
			pipeline_id?: string
		})]

		// Trigger a refresh of the cache by changing this field's value
		refresh_cache?: string

		// The route stage ID the cache stage will be linked to
		route_stage_id?: string

		// The date and time of the last update of the cache stage
		updated_at?: string

		// The WAF stage ID the cache stage will be linked to
		waf_stage_id?: string
	})
}
