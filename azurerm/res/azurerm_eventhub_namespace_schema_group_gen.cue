package res

#azurerm_eventhub_namespace_schema_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventhub_namespace_schema_group")
	close({
		timeouts?:             #timeouts
		id?:                   string
		name!:                 string
		namespace_id!:         string
		schema_compatibility!: string
		schema_type!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
