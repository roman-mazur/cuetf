package res

#azurerm_lb_backend_address_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_lb_backend_address_pool")
	close({
		backend_ip_configurations?: [...string]
		id?: string
		inbound_nat_rules?: [...string]
		load_balancing_rules?: [...string]
		timeouts?:        #timeouts
		loadbalancer_id!: string
		name!:            string
		outbound_rules?: [...string]
		synchronous_mode?:   string
		virtual_network_id?: string
		tunnel_interface?: matchN(1, [#tunnel_interface, [...#tunnel_interface]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#tunnel_interface: close({
		identifier!: number
		port!:       number
		protocol!:   string
		type!:       string
	})
}
