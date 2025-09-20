package res

#azurerm_lb_nat_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_lb_nat_rule")
	close({
		backend_address_pool_id?:        string
		backend_ip_configuration_id?:    string
		backend_port!:                   number
		floating_ip_enabled?:            bool
		frontend_ip_configuration_id?:   string
		frontend_ip_configuration_name!: string
		frontend_port?:                  number
		frontend_port_end?:              number
		frontend_port_start?:            number
		timeouts?:                       #timeouts
		id?:                             string
		idle_timeout_in_minutes?:        number
		loadbalancer_id!:                string
		name!:                           string
		protocol!:                       string
		resource_group_name!:            string
		tcp_reset_enabled?:              bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
