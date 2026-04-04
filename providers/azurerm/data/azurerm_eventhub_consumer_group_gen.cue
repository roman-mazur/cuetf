package data

#azurerm_eventhub_consumer_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_eventhub_consumer_group")
	close({
		timeouts?:            #timeouts
		eventhub_name!:       string
		id?:                  string
		name!:                string
		namespace_name!:      string
		resource_group_name!: string
		user_metadata?:       string
	})

	#timeouts: close({
		read?: string
	})
}
