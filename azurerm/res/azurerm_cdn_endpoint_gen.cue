package res

import "list"

#azurerm_cdn_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_endpoint")
	close({
		content_types_to_compress?: [...string]
		fqdn?:                   string
		id?:                     string
		is_compression_enabled?: bool
		is_http_allowed?:        bool
		is_https_allowed?:       bool
		location!:               string
		name!:                   string
		optimization_type?:      string
		origin_host_header?:     string
		origin_path?:            string
		delivery_rule?: matchN(1, [#delivery_rule, [...#delivery_rule]])
		probe_path?:   string
		profile_name!: string
		geo_filter?: matchN(1, [#geo_filter, [...#geo_filter]])
		querystring_caching_behaviour?: string
		global_delivery_rule?: matchN(1, [#global_delivery_rule, list.MaxItems(1) & [...#global_delivery_rule]])
		origin!: matchN(1, [#origin, [_, ...] & [...#origin]])
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
	})

	#delivery_rule: close({
		cache_expiration_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/cache_expiration_action", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/cache_expiration_action"]])
		cache_key_query_string_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/cache_key_query_string_action", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/cache_key_query_string_action"]])
		name!:  string
		order!: number
		cookies_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/cookies_condition", [..._#defs."/$defs/delivery_rule/$defs/cookies_condition"]])
		device_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/device_condition", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/device_condition"]])
		http_version_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/http_version_condition", [..._#defs."/$defs/delivery_rule/$defs/http_version_condition"]])
		modify_request_header_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/modify_request_header_action", [..._#defs."/$defs/delivery_rule/$defs/modify_request_header_action"]])
		modify_response_header_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/modify_response_header_action", [..._#defs."/$defs/delivery_rule/$defs/modify_response_header_action"]])
		post_arg_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/post_arg_condition", [..._#defs."/$defs/delivery_rule/$defs/post_arg_condition"]])
		query_string_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/query_string_condition", [..._#defs."/$defs/delivery_rule/$defs/query_string_condition"]])
		remote_address_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/remote_address_condition", [..._#defs."/$defs/delivery_rule/$defs/remote_address_condition"]])
		request_body_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/request_body_condition", [..._#defs."/$defs/delivery_rule/$defs/request_body_condition"]])
		request_header_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/request_header_condition", [..._#defs."/$defs/delivery_rule/$defs/request_header_condition"]])
		request_method_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/request_method_condition", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/request_method_condition"]])
		request_scheme_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/request_scheme_condition", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/request_scheme_condition"]])
		request_uri_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/request_uri_condition", [..._#defs."/$defs/delivery_rule/$defs/request_uri_condition"]])
		url_file_extension_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/url_file_extension_condition", [..._#defs."/$defs/delivery_rule/$defs/url_file_extension_condition"]])
		url_file_name_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/url_file_name_condition", [..._#defs."/$defs/delivery_rule/$defs/url_file_name_condition"]])
		url_path_condition?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/url_path_condition", [..._#defs."/$defs/delivery_rule/$defs/url_path_condition"]])
		url_redirect_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/url_redirect_action", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/url_redirect_action"]])
		url_rewrite_action?: matchN(1, [_#defs."/$defs/delivery_rule/$defs/url_rewrite_action", list.MaxItems(1) & [..._#defs."/$defs/delivery_rule/$defs/url_rewrite_action"]])
	})

	#geo_filter: close({
		action!: string
		country_codes!: [...string]
		relative_path!: string
	})

	#global_delivery_rule: close({
		cache_expiration_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/cache_expiration_action", list.MaxItems(1) & [..._#defs."/$defs/global_delivery_rule/$defs/cache_expiration_action"]])
		cache_key_query_string_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/cache_key_query_string_action", list.MaxItems(1) & [..._#defs."/$defs/global_delivery_rule/$defs/cache_key_query_string_action"]])
		modify_request_header_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/modify_request_header_action", [..._#defs."/$defs/global_delivery_rule/$defs/modify_request_header_action"]])
		modify_response_header_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/modify_response_header_action", [..._#defs."/$defs/global_delivery_rule/$defs/modify_response_header_action"]])
		url_redirect_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/url_redirect_action", list.MaxItems(1) & [..._#defs."/$defs/global_delivery_rule/$defs/url_redirect_action"]])
		url_rewrite_action?: matchN(1, [_#defs."/$defs/global_delivery_rule/$defs/url_rewrite_action", list.MaxItems(1) & [..._#defs."/$defs/global_delivery_rule/$defs/url_rewrite_action"]])
	})

	#origin: close({
		host_name!:  string
		http_port?:  number
		https_port?: number
		name!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/delivery_rule/$defs/cache_expiration_action": close({
		behavior!: string
		duration?: string
	})

	_#defs: "/$defs/delivery_rule/$defs/cache_key_query_string_action": close({
		behavior!:   string
		parameters?: string
	})

	_#defs: "/$defs/delivery_rule/$defs/cookies_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		selector!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/device_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/delivery_rule/$defs/http_version_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/delivery_rule/$defs/modify_request_header_action": close({
		action!: string
		name!:   string
		value?:  string
	})

	_#defs: "/$defs/delivery_rule/$defs/modify_response_header_action": close({
		action!: string
		name!:   string
		value?:  string
	})

	_#defs: "/$defs/delivery_rule/$defs/post_arg_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		selector!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/query_string_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/remote_address_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
	})

	_#defs: "/$defs/delivery_rule/$defs/request_body_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/request_header_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		selector!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/request_method_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/delivery_rule/$defs/request_scheme_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/delivery_rule/$defs/request_uri_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/url_file_extension_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/url_file_name_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/url_path_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/delivery_rule/$defs/url_redirect_action": close({
		fragment?:      string
		hostname?:      string
		path?:          string
		protocol?:      string
		query_string?:  string
		redirect_type!: string
	})

	_#defs: "/$defs/delivery_rule/$defs/url_rewrite_action": close({
		destination!:             string
		preserve_unmatched_path?: bool
		source_pattern!:          string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/cache_expiration_action": close({
		behavior!: string
		duration?: string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/cache_key_query_string_action": close({
		behavior!:   string
		parameters?: string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/modify_request_header_action": close({
		action!: string
		name!:   string
		value?:  string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/modify_response_header_action": close({
		action!: string
		name!:   string
		value?:  string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/url_redirect_action": close({
		fragment?:      string
		hostname?:      string
		path?:          string
		protocol?:      string
		query_string?:  string
		redirect_type!: string
	})

	_#defs: "/$defs/global_delivery_rule/$defs/url_rewrite_action": close({
		destination!:             string
		preserve_unmatched_path?: bool
		source_pattern!:          string
	})
}
