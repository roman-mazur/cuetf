package data

#azurerm_eventhub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub")
	close({
		timeouts?:        #timeouts
		id?:              string
		name!:            string
		namespace_name!:  string
		partition_count?: number
		partition_ids?: [...string]
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
