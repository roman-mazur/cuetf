package res

#azurerm_digital_twins_endpoint_eventhub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_digital_twins_endpoint_eventhub")
	close({
		timeouts?:                             #timeouts
		dead_letter_storage_secret?:           string
		digital_twins_id!:                     string
		eventhub_primary_connection_string!:   string
		eventhub_secondary_connection_string!: string
		id?:                                   string
		name!:                                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
