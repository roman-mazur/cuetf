package res

#azurerm_backup_protected_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_backup_protected_file_share")
	close({
		timeouts?:                  #timeouts
		backup_policy_id!:          string
		id?:                        string
		recovery_vault_name!:       string
		resource_group_name!:       string
		source_file_share_name!:    string
		source_storage_account_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
