package res

#azurerm_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_interface")
	close({
		accelerated_networking_enabled?: bool
		applied_dns_servers?: [...string]
		auxiliary_mode?: string
		auxiliary_sku?:  string
		dns_servers?: [...string]
		edge_zone?:                   string
		id?:                          string
		internal_dns_name_label?:     string
		internal_domain_name_suffix?: string
		ip_forwarding_enabled?:       bool
		ip_configuration!: matchN(1, [#ip_configuration, [_, ...] & [...#ip_configuration]])
		location!:           string
		mac_address?:        string
		name!:               string
		private_ip_address?: string
		timeouts?:           #timeouts
		private_ip_addresses?: [...string]
		resource_group_name!: string
		tags?: [string]: string
		virtual_machine_id?: string
	})

	#ip_configuration: close({
		gateway_load_balancer_frontend_ip_configuration_id?: string
		name!:                                               string
		primary?:                                            bool
		private_ip_address?:                                 string
		private_ip_address_allocation!:                      string
		private_ip_address_version?:                         string
		public_ip_address_id?:                               string
		subnet_id?:                                          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
