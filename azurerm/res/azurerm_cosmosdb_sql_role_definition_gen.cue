package res

#azurerm_cosmosdb_sql_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_sql_role_definition")
	close({
		permissions!: matchN(1, [#permissions, [_, ...] & [...#permissions]])
		account_name!: string
		assignable_scopes!: [...string]
		id?:                  string
		name!:                string
		resource_group_name!: string
		role_definition_id?:  string
		type?:                string
		timeouts?:            #timeouts
	})

	#permissions: close({
		data_actions!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
