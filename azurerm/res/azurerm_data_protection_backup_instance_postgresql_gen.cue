package res

#azurerm_data_protection_backup_instance_postgresql: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_instance_postgresql")
	close({
		timeouts?:                                #timeouts
		backup_policy_id!:                        string
		database_credential_key_vault_secret_id?: string
		database_id!:                             string
		id?:                                      string
		location!:                                string
		name!:                                    string
		protection_state?:                        string
		vault_id!:                                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
