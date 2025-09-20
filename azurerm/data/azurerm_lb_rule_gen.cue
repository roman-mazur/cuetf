package data

#azurerm_lb_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_lb_rule")
	close({
		backend_address_pool_id?:        string
		backend_port?:                   number
		disable_outbound_snat?:          bool
		floating_ip_enabled?:            bool
		frontend_ip_configuration_name?: string
		frontend_port?:                  number
		id?:                             string
		idle_timeout_in_minutes?:        number
		load_distribution?:              string
		loadbalancer_id!:                string
		name!:                           string
		probe_id?:                       string
		timeouts?:                       #timeouts
		protocol?:                       string
		tcp_reset_enabled?:              bool
	})

	#timeouts: close({
		read?: string
	})
}
