package res

#azurerm_cosmosdb_sql_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_sql_function")
	close({
		timeouts?:     #timeouts
		body!:         string
		container_id!: string
		id?:           string
		name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
