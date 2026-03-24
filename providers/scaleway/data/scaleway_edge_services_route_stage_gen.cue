package data

#scaleway_edge_services_route_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_route_stage")
	close({
		// The ID of the backend stage HTTP requests should be forwarded
		// to when no rules are matched
		backend_stage_id?: string

		// The date and time of the creation of the route stage
		created_at?: string
		id?:         string

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The ID of the route stage
		route_stage_id?: string

		// List of rules to be checked against every HTTP request. The
		// first matching rule will forward the request to its specified
		// backend stage. If no rules are matched, the request is
		// forwarded to the WAF stage defined by `waf_stage_id`
		rule?: [...close({
			backend_stage_id?: string
			rule_http_match?: [...close({
				method_filters?: [...string]
				path_filter?: [...close({
					path_filter_type?: string
					value?:            string
				})]
			})]
			waf_stage_id?: string
		})]

		// The date and time of the last update of the route stage
		updated_at?: string

		// The ID of the WAF stage HTTP requests should be forwarded to
		// when no rules are matched
		waf_stage_id?: string
	})
}
