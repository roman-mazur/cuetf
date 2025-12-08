package res

#azurerm_iothub_consumer_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_consumer_group")
	close({
		timeouts?:               #timeouts
		eventhub_endpoint_name!: string
		id?:                     string
		iothub_name!:            string
		name!:                   string
		resource_group_name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
