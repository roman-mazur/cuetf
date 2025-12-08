package data

#azurerm_cosmosdb_restorable_database_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cosmosdb_restorable_database_accounts")
	close({
		timeouts?: #timeouts
		accounts?: [...close({
			api_type?:      string
			creation_time?: string
			deletion_time?: string
			id?:            string
			restorable_locations?: [...close({
				creation_time?:                         string
				deletion_time?:                         string
				location?:                              string
				regional_database_account_instance_id?: string
			})]
		})]
		id?:       string
		location!: string
		name!:     string
	})

	#timeouts: close({
		read?: string
	})
}
