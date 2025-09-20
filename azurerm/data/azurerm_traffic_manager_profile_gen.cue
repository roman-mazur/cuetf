package data

#azurerm_traffic_manager_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_traffic_manager_profile")
	close({
		dns_config?: [...close({
			relative_name?: string
			ttl?:           number
		})]
		fqdn?: string
		id?:   string
		monitor_config?: [...close({
			custom_header?: [...close({
				name?:  string
				value?: string
			})]
			expected_status_code_ranges?: [...string]
			interval_in_seconds?:          number
			path?:                         string
			port?:                         number
			protocol?:                     string
			timeout_in_seconds?:           number
			tolerated_number_of_failures?: number
		})]
		name!:                string
		profile_status?:      string
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		traffic_routing_method?: string
		traffic_view_enabled?:   bool
	})

	#timeouts: close({
		read?: string
	})
}
