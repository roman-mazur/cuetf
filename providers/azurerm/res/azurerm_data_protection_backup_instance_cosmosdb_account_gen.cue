package res

azurerm_data_protection_backup_instance_cosmosdb_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_instance_cosmosdb_account")
	close({
		timeouts?:                                          #timeouts
		cosmosdb_account_id!:                               string
		data_protection_backup_policy_cosmosdb_account_id!: string
		data_protection_backup_vault_id!:                   string
		id?:                                                string
		location!:                                          string
		name!:                                              string
		protection_state?:                                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
