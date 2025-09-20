package res

#azurerm_backup_container_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_backup_container_storage_account")
	close({
		timeouts?:            #timeouts
		id?:                  string
		recovery_vault_name!: string
		resource_group_name!: string
		storage_account_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
