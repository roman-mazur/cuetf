package res

#azurerm_cosmosdb_sql_dedicated_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_sql_dedicated_gateway")
	close({
		timeouts?:            #timeouts
		cosmosdb_account_id!: string
		id?:                  string
		instance_count!:      number
		instance_size!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
