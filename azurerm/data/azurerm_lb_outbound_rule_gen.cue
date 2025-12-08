package data

#azurerm_lb_outbound_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_lb_outbound_rule")
	close({
		allocated_outbound_ports?: number
		backend_address_pool_id?:  string
		enable_tcp_reset?:         bool
		frontend_ip_configuration?: [...close({
			id?:   string
			name?: string
		})]
		id?:                      string
		idle_timeout_in_minutes?: number
		loadbalancer_id!:         string
		timeouts?:                #timeouts
		name!:                    string
		protocol?:                string
		tcp_reset_enabled?:       bool
	})

	#timeouts: close({
		read?: string
	})
}
