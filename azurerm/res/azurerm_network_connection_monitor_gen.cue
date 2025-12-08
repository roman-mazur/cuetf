package res

import "list"

#azurerm_network_connection_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_connection_monitor")
	close({
		id?:                 string
		location!:           string
		name!:               string
		network_watcher_id!: string
		notes?:              string
		output_workspace_resource_ids?: [...string]
		endpoint!: matchN(1, [#endpoint, [_, ...] & [...#endpoint]])
		tags?: [string]: string
		test_configuration!: matchN(1, [#test_configuration, [_, ...] & [...#test_configuration]])
		test_group!: matchN(1, [#test_group, [_, ...] & [...#test_group]])
		timeouts?: #timeouts
	})

	#endpoint: close({
		filter?: matchN(1, [_#defs."/$defs/endpoint/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/endpoint/$defs/filter"]])
		address?:        string
		coverage_level?: string
		excluded_ip_addresses?: [...string]
		included_ip_addresses?: [...string]
		name!:                 string
		target_resource_id?:   string
		target_resource_type?: string
	})

	#test_configuration: close({
		http_configuration?: matchN(1, [_#defs."/$defs/test_configuration/$defs/http_configuration", list.MaxItems(1) & [..._#defs."/$defs/test_configuration/$defs/http_configuration"]])
		name!:                      string
		preferred_ip_version?:      string
		protocol!:                  string
		test_frequency_in_seconds?: number
		icmp_configuration?: matchN(1, [_#defs."/$defs/test_configuration/$defs/icmp_configuration", list.MaxItems(1) & [..._#defs."/$defs/test_configuration/$defs/icmp_configuration"]])
		success_threshold?: matchN(1, [_#defs."/$defs/test_configuration/$defs/success_threshold", list.MaxItems(1) & [..._#defs."/$defs/test_configuration/$defs/success_threshold"]])
		tcp_configuration?: matchN(1, [_#defs."/$defs/test_configuration/$defs/tcp_configuration", list.MaxItems(1) & [..._#defs."/$defs/test_configuration/$defs/tcp_configuration"]])
	})

	#test_group: close({
		destination_endpoints!: [...string]
		enabled?: bool
		name!:    string
		source_endpoints!: [...string]
		test_configuration_names!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/endpoint/$defs/filter": close({
		item?: matchN(1, [_#defs."/$defs/endpoint/$defs/filter/$defs/item", [..._#defs."/$defs/endpoint/$defs/filter/$defs/item"]])
		type?: string
	})

	_#defs: "/$defs/endpoint/$defs/filter/$defs/item": close({
		address?: string
		type?:    string
	})

	_#defs: "/$defs/test_configuration/$defs/http_configuration": close({
		request_header?: matchN(1, [_#defs."/$defs/test_configuration/$defs/http_configuration/$defs/request_header", [..._#defs."/$defs/test_configuration/$defs/http_configuration/$defs/request_header"]])
		method?:       string
		path?:         string
		port?:         number
		prefer_https?: bool
		valid_status_code_ranges?: [...string]
	})

	_#defs: "/$defs/test_configuration/$defs/http_configuration/$defs/request_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/test_configuration/$defs/icmp_configuration": close({
		trace_route_enabled?: bool
	})

	_#defs: "/$defs/test_configuration/$defs/success_threshold": close({
		checks_failed_percent?: number
		round_trip_time_ms?:    number
	})

	_#defs: "/$defs/test_configuration/$defs/tcp_configuration": close({
		destination_port_behavior?: string
		port!:                      number
		trace_route_enabled?:       bool
	})
}
