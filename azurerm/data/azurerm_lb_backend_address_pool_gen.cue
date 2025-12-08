package data

#azurerm_lb_backend_address_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_lb_backend_address_pool")
	close({
		timeouts?: #timeouts
		backend_address?: [...close({
			inbound_nat_rule_port_mapping?: [...close({
				backend_port?:          number
				frontend_port?:         number
				inbound_nat_rule_name?: string
			})]
			ip_address?:         string
			name?:               string
			virtual_network_id?: string
		})]
		backend_ip_configurations?: [...close({
			id?: string
		})]
		id?: string
		inbound_nat_rules?: [...string]
		load_balancing_rules?: [...string]
		loadbalancer_id!: string
		name!:            string
		outbound_rules?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
