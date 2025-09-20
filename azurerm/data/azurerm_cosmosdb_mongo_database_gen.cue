package data

#azurerm_cosmosdb_mongo_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_mongo_database")
	close({
		timeouts?:            #timeouts
		account_name!:        string
		id?:                  string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
