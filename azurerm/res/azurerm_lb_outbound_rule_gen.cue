package res

#azurerm_lb_outbound_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_lb_outbound_rule")
	close({
		frontend_ip_configuration?: matchN(1, [#frontend_ip_configuration, [...#frontend_ip_configuration]])
		allocated_outbound_ports?: number
		backend_address_pool_id!:  string
		id?:                       string
		idle_timeout_in_minutes?:  number
		loadbalancer_id!:          string
		name!:                     string
		protocol!:                 string
		tcp_reset_enabled?:        bool
		timeouts?:                 #timeouts
	})

	#frontend_ip_configuration: close({
		id?:   string
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
