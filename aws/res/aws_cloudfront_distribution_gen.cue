package res

import "list"

#aws_cloudfront_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_distribution")
	close({
		aliases?: [...string]
		anycast_ip_list_id?:              string
		arn?:                             string
		caller_reference?:                string
		comment?:                         string
		continuous_deployment_policy_id?: string
		default_root_object?:             string
		domain_name?:                     string
		enabled!:                         bool
		etag?:                            string
		hosted_zone_id?:                  string
		http_version?:                    string
		id?:                              string
		in_progress_validation_batches?:  number
		is_ipv6_enabled?:                 bool
		last_modified_time?:              string
		custom_error_response?: matchN(1, [#custom_error_response, [...#custom_error_response]])
		logging_v1_enabled?: bool
		price_class?:        string
		retain_on_delete?:   bool
		staging?:            bool
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		trusted_key_groups?: [...close({
			enabled?: bool
			items?: [...close({
				key_group_id?: string
				key_pair_ids?: [...string]
			})]
		})]
		trusted_signers?: [...close({
			enabled?: bool
			items?: [...close({
				aws_account_number?: string
				key_pair_ids?: [...string]
			})]
		})]
		wait_for_deployment?: bool
		web_acl_id?:          string
		default_cache_behavior!: matchN(1, [#default_cache_behavior, list.MaxItems(1) & [_, ...] & [...#default_cache_behavior]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		ordered_cache_behavior?: matchN(1, [#ordered_cache_behavior, [...#ordered_cache_behavior]])
		origin!: matchN(1, [#origin, [_, ...] & [...#origin]])
		origin_group?: matchN(1, [#origin_group, [...#origin_group]])
		restrictions!: matchN(1, [#restrictions, list.MaxItems(1) & [_, ...] & [...#restrictions]])
		viewer_certificate!: matchN(1, [#viewer_certificate, list.MaxItems(1) & [_, ...] & [...#viewer_certificate]])
	})

	#custom_error_response: close({
		error_caching_min_ttl?: number
		error_code!:            number
		response_code?:         number
		response_page_path?:    string
	})

	#default_cache_behavior: close({
		allowed_methods!: [...string]
		cache_policy_id?: string
		cached_methods!: [...string]
		compress?:                  bool
		default_ttl?:               number
		field_level_encryption_id?: string
		max_ttl?:                   number
		min_ttl?:                   number
		origin_request_policy_id?:  string
		realtime_log_config_arn?:   string
		forwarded_values?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/forwarded_values", list.MaxItems(1) & [..._#defs."/$defs/default_cache_behavior/$defs/forwarded_values"]])
		function_association?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/function_association", list.MaxItems(2) & [..._#defs."/$defs/default_cache_behavior/$defs/function_association"]])
		grpc_config?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/grpc_config", list.MaxItems(1) & [..._#defs."/$defs/default_cache_behavior/$defs/grpc_config"]])
		response_headers_policy_id?: string
		smooth_streaming?:           bool
		target_origin_id!:           string
		trusted_key_groups?: [...string]
		trusted_signers?: [...string]
		viewer_protocol_policy!: string
		lambda_function_association?: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/lambda_function_association", list.MaxItems(4) & [..._#defs."/$defs/default_cache_behavior/$defs/lambda_function_association"]])
	})

	#logging_config: close({
		bucket?:          string
		include_cookies?: bool
		prefix?:          string
	})

	#ordered_cache_behavior: close({
		allowed_methods!: [...string]
		cache_policy_id?: string
		cached_methods!: [...string]
		compress?:                  bool
		default_ttl?:               number
		field_level_encryption_id?: string
		max_ttl?:                   number
		min_ttl?:                   number
		origin_request_policy_id?:  string
		path_pattern!:              string
		realtime_log_config_arn?:   string
		forwarded_values?: matchN(1, [_#defs."/$defs/ordered_cache_behavior/$defs/forwarded_values", list.MaxItems(1) & [..._#defs."/$defs/ordered_cache_behavior/$defs/forwarded_values"]])
		response_headers_policy_id?: string
		smooth_streaming?:           bool
		target_origin_id!:           string
		trusted_key_groups?: [...string]
		trusted_signers?: [...string]
		viewer_protocol_policy!: string
		function_association?: matchN(1, [_#defs."/$defs/ordered_cache_behavior/$defs/function_association", list.MaxItems(2) & [..._#defs."/$defs/ordered_cache_behavior/$defs/function_association"]])
		grpc_config?: matchN(1, [_#defs."/$defs/ordered_cache_behavior/$defs/grpc_config", list.MaxItems(1) & [..._#defs."/$defs/ordered_cache_behavior/$defs/grpc_config"]])
		lambda_function_association?: matchN(1, [_#defs."/$defs/ordered_cache_behavior/$defs/lambda_function_association", list.MaxItems(4) & [..._#defs."/$defs/ordered_cache_behavior/$defs/lambda_function_association"]])
	})

	#origin: close({
		connection_attempts?:         number
		connection_timeout?:          number
		domain_name!:                 string
		origin_access_control_id?:    string
		origin_id!:                   string
		origin_path?:                 string
		response_completion_timeout?: number
		custom_header?: matchN(1, [_#defs."/$defs/origin/$defs/custom_header", [..._#defs."/$defs/origin/$defs/custom_header"]])
		custom_origin_config?: matchN(1, [_#defs."/$defs/origin/$defs/custom_origin_config", list.MaxItems(1) & [..._#defs."/$defs/origin/$defs/custom_origin_config"]])
		origin_shield?: matchN(1, [_#defs."/$defs/origin/$defs/origin_shield", list.MaxItems(1) & [..._#defs."/$defs/origin/$defs/origin_shield"]])
		s3_origin_config?: matchN(1, [_#defs."/$defs/origin/$defs/s3_origin_config", list.MaxItems(1) & [..._#defs."/$defs/origin/$defs/s3_origin_config"]])
		vpc_origin_config?: matchN(1, [_#defs."/$defs/origin/$defs/vpc_origin_config", list.MaxItems(1) & [..._#defs."/$defs/origin/$defs/vpc_origin_config"]])
	})

	#origin_group: close({
		failover_criteria!: matchN(1, [_#defs."/$defs/origin_group/$defs/failover_criteria", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/origin_group/$defs/failover_criteria"]])
		member!: matchN(1, [_#defs."/$defs/origin_group/$defs/member", list.MaxItems(2) & [_, _, ...] & [..._#defs."/$defs/origin_group/$defs/member"]])
		origin_id!: string
	})

	#restrictions: close({
		geo_restriction!: matchN(1, [_#defs."/$defs/restrictions/$defs/geo_restriction", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/restrictions/$defs/geo_restriction"]])
	})

	#viewer_certificate: close({
		acm_certificate_arn?:            string
		cloudfront_default_certificate?: bool
		iam_certificate_id?:             string
		minimum_protocol_version?:       string
		ssl_support_method?:             string
	})

	_#defs: "/$defs/default_cache_behavior/$defs/forwarded_values": close({
		cookies!: matchN(1, [_#defs."/$defs/default_cache_behavior/$defs/forwarded_values/$defs/cookies", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/default_cache_behavior/$defs/forwarded_values/$defs/cookies"]])
		headers?: [...string]
		query_string!: bool
		query_string_cache_keys?: [...string]
	})

	_#defs: "/$defs/default_cache_behavior/$defs/forwarded_values/$defs/cookies": close({
		forward!: string
		whitelisted_names?: [...string]
	})

	_#defs: "/$defs/default_cache_behavior/$defs/function_association": close({
		event_type!:   string
		function_arn!: string
	})

	_#defs: "/$defs/default_cache_behavior/$defs/grpc_config": close({
		enabled?: bool
	})

	_#defs: "/$defs/default_cache_behavior/$defs/lambda_function_association": close({
		event_type!:   string
		include_body?: bool
		lambda_arn!:   string
	})

	_#defs: "/$defs/ordered_cache_behavior/$defs/forwarded_values": close({
		cookies!: matchN(1, [_#defs."/$defs/ordered_cache_behavior/$defs/forwarded_values/$defs/cookies", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/ordered_cache_behavior/$defs/forwarded_values/$defs/cookies"]])
		headers?: [...string]
		query_string!: bool
		query_string_cache_keys?: [...string]
	})

	_#defs: "/$defs/ordered_cache_behavior/$defs/forwarded_values/$defs/cookies": close({
		forward!: string
		whitelisted_names?: [...string]
	})

	_#defs: "/$defs/ordered_cache_behavior/$defs/function_association": close({
		event_type!:   string
		function_arn!: string
	})

	_#defs: "/$defs/ordered_cache_behavior/$defs/grpc_config": close({
		enabled?: bool
	})

	_#defs: "/$defs/ordered_cache_behavior/$defs/lambda_function_association": close({
		event_type!:   string
		include_body?: bool
		lambda_arn!:   string
	})

	_#defs: "/$defs/origin/$defs/custom_header": close({
		name!:  string
		value!: string
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

	_#defs: "/$defs/origin/$defs/s3_origin_config": close({
		origin_access_identity!: string
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
		locations?: [...string]
		restriction_type!: string
	})
}
