package res

#azurerm_data_protection_backup_instance_blob_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_instance_blob_storage")
	close({
		timeouts?:         #timeouts
		backup_policy_id!: string
		id?:               string
		location!:         string
		name!:             string
		storage_account_container_names?: [...string]
		storage_account_id!: string
		vault_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
