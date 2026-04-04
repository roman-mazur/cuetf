package res

#azurerm_cosmosdb_sql_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_sql_trigger")
	close({
		timeouts?:     #timeouts
		body!:         string
		container_id!: string
		id?:           string
		name!:         string
		operation!:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
