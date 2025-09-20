package res

#azurerm_cosmosdb_mongo_user_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_mongo_user_definition")
	close({
		timeouts?:                 #timeouts
		cosmos_mongo_database_id!: string
		id?:                       string
		inherited_role_names?: [...string]
		password!: string
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
