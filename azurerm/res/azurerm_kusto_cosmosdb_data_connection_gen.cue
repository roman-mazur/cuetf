package res

#azurerm_kusto_cosmosdb_data_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_cosmosdb_data_connection")
	close({
		timeouts?:              #timeouts
		cosmosdb_container_id!: string
		id?:                    string
		kusto_database_id!:     string
		location!:              string
		managed_identity_id!:   string
		mapping_rule_name?:     string
		name!:                  string
		retrieval_start_date?:  string
		table_name!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
