package res

import "list"

#aws_api_gateway_method_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_method_settings")
	close({
		id?:          string
		method_path!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		rest_api_id!: string
		stage_name!:  string
		settings!: matchN(1, [#settings, list.MaxItems(1) & [_, ...] & [...#settings]])
	})

	#settings: close({
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
	})
}
