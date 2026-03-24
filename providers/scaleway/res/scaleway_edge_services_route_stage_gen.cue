package res

import "list"

#scaleway_edge_services_route_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_route_stage")
	close({
		// The date and time of the creation of the route stage
		created_at?: string
		rule?: matchN(1, [#rule, [...#rule]])
		id?: string

		// The ID of the pipeline
		pipeline_id!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The date and time of the last update of the route stage
		updated_at?: string

		// The ID of the WAF stage HTTP requests should be forwarded to
		// when no rules are matched
		waf_stage_id?: string
	})

	#rule: close({
		rule_http_match?: matchN(1, [_#defs."/$defs/rule/$defs/rule_http_match", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule_http_match"]])

		// ID of the backend stage that requests matching the rule should
		// be forwarded to
		backend_stage_id!: string
	})

	_#defs: "/$defs/rule/$defs/rule_http_match": close({
		path_filter?: matchN(1, [_#defs."/$defs/rule/$defs/rule_http_match/$defs/path_filter", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule_http_match/$defs/path_filter"]])

		// HTTP methods to filter for. A request using any of these
		// methods will be considered to match the rule. Possible values
		// are `get`, `post`, `put`, `patch`, `delete`, `head`,
		// `options`. All methods will match if none is provided
		method_filters?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule_http_match/$defs/path_filter": close({
		// The type of filter to match for the HTTP URL path. For now, all
		// path filters must be written in regex and use the `regex` type
		path_filter_type!: string

		// The value to be matched for the HTTP URL path
		value!: string
	})
}
