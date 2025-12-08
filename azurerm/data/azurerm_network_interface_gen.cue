package data

#azurerm_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_network_interface")
	close({
		accelerated_networking_enabled?: bool
		applied_dns_servers?: [...string]
		dns_servers?: [...string]
		id?:                      string
		internal_dns_name_label?: string
		ip_configuration?: [...close({
			application_gateway_backend_address_pools_ids?: [...string]
			application_security_group_ids?: [...string]
			gateway_load_balancer_frontend_ip_configuration_id?: string
			load_balancer_backend_address_pools_ids?: [...string]
			load_balancer_inbound_nat_rules_ids?: [...string]
			name?:                          string
			primary?:                       bool
			private_ip_address?:            string
			private_ip_address_allocation?: string
			private_ip_address_version?:    string
			public_ip_address_id?:          string
			subnet_id?:                     string
		})]
		ip_forwarding_enabled?:     bool
		location?:                  string
		mac_address?:               string
		timeouts?:                  #timeouts
		name!:                      string
		network_security_group_id?: string
		private_ip_address?:        string
		private_ip_addresses?: [...string]
		resource_group_name!: string
		tags?: [string]: string
		virtual_machine_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
