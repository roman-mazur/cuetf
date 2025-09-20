package res

#azurerm_digital_twins_endpoint_servicebus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_digital_twins_endpoint_servicebus")
	close({
		timeouts?:                               #timeouts
		dead_letter_storage_secret?:             string
		digital_twins_id!:                       string
		id?:                                     string
		name!:                                   string
		servicebus_primary_connection_string!:   string
		servicebus_secondary_connection_string!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
