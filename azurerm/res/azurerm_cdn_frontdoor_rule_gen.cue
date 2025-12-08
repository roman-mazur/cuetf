package res

import "list"

#azurerm_cdn_frontdoor_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_rule")
	close({
		actions!: matchN(1, [#actions, list.MaxItems(1) & [_, ...] & [...#actions]])
		behavior_on_match?:           string
		cdn_frontdoor_rule_set_id!:   string
		cdn_frontdoor_rule_set_name?: string
		id?:                          string
		name!:                        string
		order!:                       number
		conditions?: matchN(1, [#conditions, list.MaxItems(1) & [...#conditions]])
		timeouts?: #timeouts
	})

	#actions: close({
		request_header_action?: matchN(1, [_#defs."/$defs/actions/$defs/request_header_action", [..._#defs."/$defs/actions/$defs/request_header_action"]])
		response_header_action?: matchN(1, [_#defs."/$defs/actions/$defs/response_header_action", [..._#defs."/$defs/actions/$defs/response_header_action"]])
		route_configuration_override_action?: matchN(1, [_#defs."/$defs/actions/$defs/route_configuration_override_action", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/route_configuration_override_action"]])
		url_redirect_action?: matchN(1, [_#defs."/$defs/actions/$defs/url_redirect_action", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/url_redirect_action"]])
		url_rewrite_action?: matchN(1, [_#defs."/$defs/actions/$defs/url_rewrite_action", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/url_rewrite_action"]])
	})

	#conditions: close({
		client_port_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/client_port_condition", [..._#defs."/$defs/conditions/$defs/client_port_condition"]])
		cookies_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/cookies_condition", [..._#defs."/$defs/conditions/$defs/cookies_condition"]])
		host_name_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/host_name_condition", [..._#defs."/$defs/conditions/$defs/host_name_condition"]])
		http_version_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/http_version_condition", [..._#defs."/$defs/conditions/$defs/http_version_condition"]])
		is_device_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/is_device_condition", [..._#defs."/$defs/conditions/$defs/is_device_condition"]])
		post_args_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/post_args_condition", [..._#defs."/$defs/conditions/$defs/post_args_condition"]])
		query_string_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/query_string_condition", [..._#defs."/$defs/conditions/$defs/query_string_condition"]])
		remote_address_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/remote_address_condition", [..._#defs."/$defs/conditions/$defs/remote_address_condition"]])
		request_body_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/request_body_condition", [..._#defs."/$defs/conditions/$defs/request_body_condition"]])
		request_header_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/request_header_condition", [..._#defs."/$defs/conditions/$defs/request_header_condition"]])
		request_method_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/request_method_condition", [..._#defs."/$defs/conditions/$defs/request_method_condition"]])
		request_scheme_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/request_scheme_condition", [..._#defs."/$defs/conditions/$defs/request_scheme_condition"]])
		request_uri_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/request_uri_condition", [..._#defs."/$defs/conditions/$defs/request_uri_condition"]])
		server_port_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/server_port_condition", [..._#defs."/$defs/conditions/$defs/server_port_condition"]])
		socket_address_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/socket_address_condition", [..._#defs."/$defs/conditions/$defs/socket_address_condition"]])
		ssl_protocol_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/ssl_protocol_condition", [..._#defs."/$defs/conditions/$defs/ssl_protocol_condition"]])
		url_file_extension_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/url_file_extension_condition", [..._#defs."/$defs/conditions/$defs/url_file_extension_condition"]])
		url_filename_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/url_filename_condition", [..._#defs."/$defs/conditions/$defs/url_filename_condition"]])
		url_path_condition?: matchN(1, [_#defs."/$defs/conditions/$defs/url_path_condition", [..._#defs."/$defs/conditions/$defs/url_path_condition"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/actions/$defs/request_header_action": close({
		header_action!: string
		header_name!:   string
		value?:         string
	})

	_#defs: "/$defs/actions/$defs/response_header_action": close({
		header_action!: string
		header_name!:   string
		value?:         string
	})

	_#defs: "/$defs/actions/$defs/route_configuration_override_action": close({
		cache_behavior?:                string
		cache_duration?:                string
		cdn_frontdoor_origin_group_id?: string
		compression_enabled?:           bool
		forwarding_protocol?:           string
		query_string_caching_behavior?: string
		query_string_parameters?: [...string]
	})

	_#defs: "/$defs/actions/$defs/url_redirect_action": close({
		destination_fragment?: string
		destination_hostname!: string
		destination_path?:     string
		query_string?:         string
		redirect_protocol?:    string
		redirect_type!:        string
	})

	_#defs: "/$defs/actions/$defs/url_rewrite_action": close({
		destination!:             string
		preserve_unmatched_path?: bool
		source_pattern!:          string
	})

	_#defs: "/$defs/conditions/$defs/client_port_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
	})

	_#defs: "/$defs/conditions/$defs/cookies_condition": close({
		cookie_name!: string
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/host_name_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/http_version_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/is_device_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/post_args_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		post_args_name!:   string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/query_string_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/remote_address_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/request_body_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/request_header_condition": close({
		header_name!: string
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/request_method_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/request_scheme_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/request_uri_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/server_port_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator!:         string
	})

	_#defs: "/$defs/conditions/$defs/socket_address_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/ssl_protocol_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator?:         string
	})

	_#defs: "/$defs/conditions/$defs/url_file_extension_condition": close({
		match_values!: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/url_filename_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})

	_#defs: "/$defs/conditions/$defs/url_path_condition": close({
		match_values?: [...string]
		negate_condition?: bool
		operator!:         string
		transforms?: [...string]
	})
}
