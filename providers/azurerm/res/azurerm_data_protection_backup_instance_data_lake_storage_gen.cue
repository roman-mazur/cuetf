package res

#azurerm_data_protection_backup_instance_data_lake_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_instance_data_lake_storage")
	close({
		timeouts?:                           #timeouts
		backup_policy_data_lake_storage_id!: string
		data_protection_backup_vault_id!:    string
		id?:                                 string
		location!:                           string
		name!:                               string
		protection_state?:                   string
		storage_account_id!:                 string
		storage_container_names!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
