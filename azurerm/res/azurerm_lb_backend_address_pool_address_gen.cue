package res

#azurerm_lb_backend_address_pool_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_lb_backend_address_pool_address")
	close({
		// For global load balancer, user needs to specify the
		// `backend_address_ip_configuration_id` of the added regional
		// load balancers
		backend_address_ip_configuration_id?: string
		backend_address_pool_id!:             string
		id?:                                  string
		inbound_nat_rule_port_mapping?: [...close({
			backend_port?:          number
			frontend_port?:         number
			inbound_nat_rule_name?: string
		})]
		ip_address?:         string
		name!:               string
		virtual_network_id?: string
		timeouts?:           #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
