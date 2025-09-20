package res

#azurerm_cosmosdb_sql_role_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_sql_role_assignment")
	close({
		timeouts?:            #timeouts
		account_name!:        string
		id?:                  string
		name?:                string
		principal_id!:        string
		resource_group_name!: string
		role_definition_id!:  string
		scope!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
