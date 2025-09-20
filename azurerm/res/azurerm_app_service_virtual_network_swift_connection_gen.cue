package res

#azurerm_app_service_virtual_network_swift_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_virtual_network_swift_connection")
	close({
		timeouts?:       #timeouts
		app_service_id!: string
		id?:             string
		subnet_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
