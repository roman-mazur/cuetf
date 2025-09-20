package data

#azurerm_cosmosdb_sql_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_sql_role_definition")
	close({
		timeouts?:     #timeouts
		account_name!: string
		assignable_scopes?: [...string]
		id?:   string
		name?: string
		permissions?: [...close({
			data_actions?: [...string]
		})]
		resource_group_name!: string
		role_definition_id!:  string
		type?:                string
	})

	#timeouts: close({
		read?: string
	})
}
