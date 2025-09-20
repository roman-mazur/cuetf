package data

#azurerm_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_scale_set")
	close({
		timeouts?: #timeouts
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		instances?: [...close({
			computer_name?:        string
			instance_id?:          string
			latest_model_applied?: bool
			name?:                 string
			power_state?:          string
			private_ip_address?:   string
			private_ip_addresses?: [...string]
			public_ip_address?: string
			public_ip_addresses?: [...string]
			virtual_machine_id?: string
			zone?:               string
		})]
		location?: string
		name!:     string
		network_interface?: [...close({
			auxiliary_mode?: string
			auxiliary_sku?:  string
			dns_servers?: [...string]
			enable_accelerated_networking?: bool
			enable_ip_forwarding?:          bool
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
