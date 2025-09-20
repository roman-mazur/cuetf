package res

#azurerm_cosmosdb_sql_stored_procedure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_sql_stored_procedure")
	close({
		timeouts?:            #timeouts
		account_name!:        string
		body!:                string
		container_name!:      string
		database_name!:       string
		id?:                  string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
