package res

#aws_cloudfront_multitenant_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_multitenant_distribution")
	close({
		arn?: string
		active_trusted_key_groups?: matchN(1, [#active_trusted_key_groups, [...#active_trusted_key_groups]])
		caller_reference?:                 string
		comment!:                          string
		connection_mode?:                  string
		default_root_object?:              string
		domain_name?:                      string
		enabled!:                          bool
		etag?:                             string
		http_version?:                     string
		id?:                               string
		in_progress_invalidation_batches?: number
		cache_behavior?: matchN(1, [#cache_behavior, [...#cache_behavior]])
		custom_error_response?: matchN(1, [#custom_error_response, [...#custom_error_response]])
		last_modified_time?: string
		default_cache_behavior?: matchN(1, [#default_cache_behavior, [...#default_cache_behavior]])
		origin?: matchN(1, [#origin, [...#origin]])
		status?: string
		tags?: [string]: string
		origin_group?: matchN(1, [#origin_group, [...#origin_group]])
		restrictions?: matchN(1, [#restrictions, [...#restrictions]])
		tenant_config?: matchN(1, [#tenant_config, [...#tenant_config]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		web_acl_id?: string
		viewer_certificate?: matchN(1, [#viewer_certificate, [...#viewer_certificate]])
	})

	#active_trusted_key_groups: close({
		items?: matchN(1, [_#defs."/$defs/active_trusted_key_groups/$defs/items", [..._#defs."/$defs/active_trusted_key_groups/$defs/items"]])
		enabled?: bool
	})

	#cache_behavior: close({
		cache_policy_id?:           string
		compress?:                  bool
		field_level_encryption_id?: string
		origin_request_policy_id?:  string
		path_pattern!:              string
		allowed_methods?: matchN(1, [_#defs."/$defs/cache_behavior/$defs/allowed_methods", [..._#defs."/$defs/cache_behavior/$defs/allowed_methods"]])
		realtime_log_config_arn?: string
		function_association?: matchN(1, [_#defs."/$defs/cache_behavior/$defs/function_association", [..._#defs."/$defs/cache_behavior/$defs/function_association"]])
		response_headers_policy_id?: string
		target_origin_id!:           string
		lambda_function_association?: matchN(1, [_#defs."/$defs/cache_behavior/$defs/lambda_function_association", [..._#defs."/$defs/cache_behavior/$defs/lambda_function_association"]])
		trusted_key_groups?: matchN(1, [_#defs."/$defs/cache_behavior/$defs/trusted_key_groups", [..._#defs."/$defs/cache_behavior/$defs/trusted_key_groups"]])
		viewer_protocol_policy!: string
	})

	#custom_error_response: close({
		error_caching_min_ttl?: number
		error_code!:            number
		response_code?:         string
		response_page_path?:    string
	})

	#default_cache_behavior: close({
		cache_policy_id?: string
		allowed_methods?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/allowed_methods", [..._#defs."/$defs/default_cache_behavior/$defs/allowed_methods"]])
		compress?:                  bool
		field_level_encryption_id?: string
		origin_request_policy_id?:  string
		function_association?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/function_association", [..._#defs."/$defs/default_cache_behavior/$defs/function_association"]])
		realtime_log_config_arn?: string
		lambda_function_association?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/lambda_function_association", [..._#defs."/$defs/default_cache_behavior/$defs/lambda_function_association"]])
		response_headers_policy_id?: string
		target_origin_id!:           string
		viewer_protocol_policy!:     string
		trusted_key_groups?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/trusted_key_groups", [..._#defs."/$defs/default_cache_behavior/$defs/trusted_key_groups"]])
	})

	#origin: close({
		connection_attempts?:      number
		connection_timeout?:       number
		domain_name!:              string
		id!:                       string
		origin_access_control_id?: string
		origin_path?:              string
		custom_header?: matchN(1, [_#defs."/$defs/origin/$defs/custom_header", [..._#defs."/$defs/origin/$defs/custom_header"]])
		response_completion_timeout?: number
		custom_origin_config?: matchN(1, [_#defs."/$defs/origin/$defs/custom_origin_config", [..._#defs."/$defs/origin/$defs/custom_origin_config"]])
		origin_shield?: matchN(1, [_#defs."/$defs/origin/$defs/origin_shield", [..._#defs."/$defs/origin/$defs/origin_shield"]])
		vpc_origin_config?: matchN(1, [_#defs."/$defs/origin/$defs/vpc_origin_config", [..._#defs."/$defs/origin/$defs/vpc_origin_config"]])
	})

	#origin_group: close({
		failover_criteria?: matchN(1, [_#defs."/$defs/origin_group/$defs/failover_criteria", [..._#defs."/$defs/origin_group/$defs/failover_criteria"]])
		member?: matchN(1, [_#defs."/$defs/origin_group/$defs/member", [..._#defs."/$defs/origin_group/$defs/member"]])
		id!: string
	})

	#restrictions: close({
		geo_restriction?: matchN(1, [_#defs."/$defs/restrictions/$defs/geo_restriction", [..._#defs."/$defs/restrictions/$defs/geo_restriction"]])
	})

	#tenant_config: close({
		parameter_definition?: matchN(1, [_#defs."/$defs/tenant_config/$defs/parameter_definition", [..._#defs."/$defs/tenant_config/$defs/parameter_definition"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	#viewer_certificate: close({
		acm_certificate_arn?:            string
		cloudfront_default_certificate?: bool
		minimum_protocol_version?:       string
		ssl_support_method?:             string
	})

	_#defs: "/$defs/active_trusted_key_groups/$defs/items": close({
		key_group_id?: string
		key_pair_ids?: [...string]
	})

	_#defs: "/$defs/cache_behavior/$defs/allowed_methods": close({
		cached_methods!: [...string]
		items!: [...string]
	})

	_#defs: "/$defs/cache_behavior/$defs/function_association": close({
		event_type!:   string
		function_arn!: string
	})

	_#defs: "/$defs/cache_behavior/$defs/lambda_function_association": close({
		event_type!:          string
		include_body?:        bool
		lambda_function_arn!: string
	})

	_#defs: "/$defs/cache_behavior/$defs/trusted_key_groups": close({
		enabled?: bool
		items?: [...string]
	})

	_#defs: "/$defs/default_cache_behavior/$defs/allowed_methods": close({
		cached_methods!: [...string]
		items!: [...string]
	})

	_#defs: "/$defs/default_cache_behavior/$defs/function_association": close({
		event_type!:   string
		function_arn!: string
	})

	_#defs: "/$defs/default_cache_behavior/$defs/lambda_function_association": close({
		event_type!:          string
		include_body?:        bool
		lambda_function_arn!: string
	})

	_#defs: "/$defs/default_cache_behavior/$defs/trusted_key_groups": close({
		enabled?: bool
		items?: [...string]
	})

	_#defs: "/$defs/origin/$defs/custom_header": close({
		header_name!:  string
		header_value!: string
	})

	_#defs: "/$defs/origin/$defs/custom_origin_config": close({
		http_port!:                number
		https_port!:               number
		ip_address_type?:          string
		origin_keepalive_timeout?: number
		origin_protocol_policy!:   string
		origin_read_timeout?:      number
		origin_ssl_protocols!: [...string]
	})

	_#defs: "/$defs/origin/$defs/origin_shield": close({
		enabled!:              bool
		origin_shield_region?: string
	})

	_#defs: "/$defs/origin/$defs/vpc_origin_config": close({
		origin_keepalive_timeout?: number
		origin_read_timeout?:      number
		vpc_origin_id!:            string
	})

	_#defs: "/$defs/origin_group/$defs/failover_criteria": close({
		status_codes!: [...number]
	})

	_#defs: "/$defs/origin_group/$defs/member": close({
		origin_id!: string
	})

	_#defs: "/$defs/restrictions/$defs/geo_restriction": close({
		items?: [...string]
		restriction_type!: string
	})

	_#defs: "/$defs/tenant_config/$defs/parameter_definition": close({
		definition?: matchN(1, [_#defs."/$defs/tenant_config/$defs/parameter_definition/$defs/definition", [..._#defs."/$defs/tenant_config/$defs/parameter_definition/$defs/definition"]])
		name!: string
	})

	_#defs: "/$defs/tenant_config/$defs/parameter_definition/$defs/definition": close({
		string_schema?: matchN(1, [_#defs."/$defs/tenant_config/$defs/parameter_definition/$defs/definition/$defs/string_schema", [..._#defs."/$defs/tenant_config/$defs/parameter_definition/$defs/definition/$defs/string_schema"]])
	})

	_#defs: "/$defs/tenant_config/$defs/parameter_definition/$defs/definition/$defs/string_schema": close({
		comment?:       string
		default_value?: string
		required!:      bool
	})
}
