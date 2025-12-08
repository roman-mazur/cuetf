package data

#azurerm_app_service_environment_v3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_app_service_environment_v3")
	close({
		allow_new_private_endpoint_connections?: bool
		cluster_setting?: [...close({
			name?:  string
			value?: string
		})]
		dedicated_host_count?: number
		dns_suffix?:           string
		external_inbound_ip_addresses?: [...string]
		id?: string
		inbound_network_dependencies?: [...close({
			description?: string
			ip_addresses?: [...string]
			ports?: [...string]
		})]
		internal_inbound_ip_addresses?: [...string]
		internal_load_balancing_mode?: string
		ip_ssl_address_count?:         number
		linux_outbound_ip_addresses?: [...string]
		timeouts?:                 #timeouts
		location?:                 string
		name!:                     string
		pricing_tier?:             string
		remote_debugging_enabled?: bool
		resource_group_name!:      string
		subnet_id?:                string
		tags?: [string]: string
		windows_outbound_ip_addresses?: [...string]
		zone_redundant?: bool
	})

	#timeouts: close({
		read?: string
	})
}
