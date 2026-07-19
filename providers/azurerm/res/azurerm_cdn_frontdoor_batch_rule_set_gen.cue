package res

import "list"

azurerm_cdn_frontdoor_batch_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_batch_rule_set")
	close({
		rule!: matchN(1, [#rule, list.MaxItems(100) & [_, ...] & [...#rule]])
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id!: string
		id?:                       string
		name!:                     string
	})

	#rule: close({
		actions!: matchN(1, [_#defs."/$defs/rule/$defs/actions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/actions"]])
		conditions?: matchN(1, [_#defs."/$defs/rule/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/conditions"]])
		behaviour_on_match?: string
		name!:               string
		order!:              number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/actions": close({
		modify_request_header?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/modify_request_header", [..._#defs."/$defs/rule/$defs/actions/$defs/modify_request_header"]])
		modify_response_header?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/modify_response_header", [..._#defs."/$defs/rule/$defs/actions/$defs/modify_response_header"]])
		route_configuration_override?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override"]])
		url_redirect?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/url_redirect", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/url_redirect"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/url_rewrite"]])
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/modify_request_header": close({
		header_name!:  string
		header_value?: string
		operator!:     string
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/modify_response_header": close({
		header_name!:  string
		header_value?: string
		operator!:     string
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/route_configuration_override": close({
		caching!: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/caching", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/caching"]])
		origin_group?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/origin_group", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/origin_group"]])
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/caching": close({
		behaviour!:              string
		compression_enabled?:    bool
		duration?:               string
		query_string_behaviour?: string
		query_string_parameters?: [...string]
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/route_configuration_override/$defs/origin_group": close({
		cdn_frontdoor_origin_group_id!: string
		forwarding_protocol!:           string
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/url_redirect": close({
		destination_fragment?:  string
		destination_host_name?: string
		destination_path?:      string
		query_string?:          string
		redirect_protocol?:     string
		redirect_type!:         string
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/url_rewrite": close({
		destination_path!:                string
		preserve_unmatched_path_enabled?: bool
		source_pattern!:                  string
	})

	_#defs: "/$defs/rule/$defs/conditions": close({
		client_port?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/client_port", [..._#defs."/$defs/rule/$defs/conditions/$defs/client_port"]])
		device_type?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/device_type", [..._#defs."/$defs/rule/$defs/conditions/$defs/device_type"]])
		host_name?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/host_name", [..._#defs."/$defs/rule/$defs/conditions/$defs/host_name"]])
		http_version?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/http_version", [..._#defs."/$defs/rule/$defs/conditions/$defs/http_version"]])
		post_argument?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/post_argument", [..._#defs."/$defs/rule/$defs/conditions/$defs/post_argument"]])
		query_string?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/query_string", [..._#defs."/$defs/rule/$defs/conditions/$defs/query_string"]])
		remote_address?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/remote_address", [..._#defs."/$defs/rule/$defs/conditions/$defs/remote_address"]])
		request_body?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_body", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_body"]])
		request_cookies?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_cookies", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_cookies"]])
		request_file_extension?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_file_extension", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_file_extension"]])
		request_filename?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_filename", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_filename"]])
		request_header?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_header", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_header"]])
		request_method?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_method", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_method"]])
		request_path?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_path", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_path"]])
		request_scheme?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_scheme", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_scheme"]])
		request_url?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/request_url", [..._#defs."/$defs/rule/$defs/conditions/$defs/request_url"]])
		server_port?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/server_port", [..._#defs."/$defs/rule/$defs/conditions/$defs/server_port"]])
		socket_address?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/socket_address", [..._#defs."/$defs/rule/$defs/conditions/$defs/socket_address"]])
		ssl_protocol?: matchN(1, [_#defs."/$defs/rule/$defs/conditions/$defs/ssl_protocol", [..._#defs."/$defs/rule/$defs/conditions/$defs/ssl_protocol"]])
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/client_port": close({
		operator!: string
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/device_type": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/host_name": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/http_version": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/post_argument": close({
		name!:     string
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/query_string": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/remote_address": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_body": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_cookies": close({
		name!:     string
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_file_extension": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_filename": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_header": close({
		name!:     string
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_method": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_path": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_scheme": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/request_url": close({
		operator!: string
		transforms?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/server_port": close({
		operator!: string
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/socket_address": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/conditions/$defs/ssl_protocol": close({
		operator!: string
		values!: [...string]
	})
}
