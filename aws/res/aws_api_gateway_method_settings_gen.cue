package res

import "list"

#aws_api_gateway_method_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_method_settings")
	id?:         string
	method_path: string
	rest_api_id: string
	stage_name:  string
	settings?:   #settings | list.MaxItems(1) & [_, ...] & [...#settings]

	#settings: {
		cache_data_encrypted?:                       bool
		cache_ttl_in_seconds?:                       number
		caching_enabled?:                            bool
		data_trace_enabled?:                         bool
		logging_level?:                              string
		metrics_enabled?:                            bool
		require_authorization_for_cache_control?:    bool
		throttling_burst_limit?:                     number
		throttling_rate_limit?:                      number
		unauthorized_cache_control_header_strategy?: string
	}
}
