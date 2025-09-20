package data

#azurerm_cosmosdb_sql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_sql_database")
	close({
		timeouts?:     #timeouts
		account_name!: string
		autoscale_settings?: [...close({
			max_throughput?: number
		})]
		id?:                  string
		name!:                string
		resource_group_name!: string
		throughput?:          number
	})

	#timeouts: close({
		read?: string
	})
}
