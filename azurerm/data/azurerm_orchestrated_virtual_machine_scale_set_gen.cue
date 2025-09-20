package data

#azurerm_orchestrated_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_orchestrated_virtual_machine_scale_set")
	close({
		timeouts?: #timeouts
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?: string
		name!:     string
		network_interface?: [...close({
			accelerated_networking_enabled?: bool
			dns_servers?: [...string]
			ip_configuration?: [...close({
				application_gateway_backend_address_pool_ids?: [...string]
				application_security_group_ids?: [...string]
				load_balancer_backend_address_pool_ids?: [...string]
				load_balancer_inbound_nat_rules_ids?: [...string]
				name?:    string
				primary?: bool
				public_ip_address?: [...close({
					domain_name_label?:       string
					idle_timeout_in_minutes?: number
					ip_tag?: [...close({
						tag?:  string
						type?: string
					})]
					name?:                string
					public_ip_prefix_id?: string
					version?:             string
				})]
				subnet_id?: string
				version?:   string
			})]
			ip_forwarding_enabled?:     bool
			name?:                      string
			network_security_group_id?: string
			primary?:                   bool
		})]
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
