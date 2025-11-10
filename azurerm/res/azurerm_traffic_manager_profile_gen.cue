package res

import "list"

#azurerm_traffic_manager_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_traffic_manager_profile")
	close({
		fqdn?:                string
		id?:                  string
		max_return?:          number
		name!:                string
		profile_status?:      string
		resource_group_name!: string
		tags?: [string]: string
		dns_config!: matchN(1, [#dns_config, list.MaxItems(1) & [_, ...] & [...#dns_config]])
		traffic_routing_method!: string
		monitor_config!: matchN(1, [#monitor_config, list.MaxItems(1) & [_, ...] & [...#monitor_config]])
		timeouts?:             #timeouts
		traffic_view_enabled?: bool
	})

	#dns_config: close({
		relative_name!: string
		ttl!:           number
	})

	#monitor_config: close({
		custom_header?: matchN(1, [_#defs."/$defs/monitor_config/$defs/custom_header", [..._#defs."/$defs/monitor_config/$defs/custom_header"]])
		expected_status_code_ranges?: [...string]
		interval_in_seconds?:          number
		path?:                         string
		port!:                         number
		protocol!:                     string
		timeout_in_seconds?:           number
		tolerated_number_of_failures?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/monitor_config/$defs/custom_header": close({
		name!:  string
		value!: string
	})
}
