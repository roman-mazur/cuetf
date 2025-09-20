package res

#azurerm_network_interface_application_gateway_backend_address_pool_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_interface_application_gateway_backend_address_pool_association")
	close({
		timeouts?:                #timeouts
		backend_address_pool_id!: string
		id?:                      string
		ip_configuration_name!:   string
		network_interface_id!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
