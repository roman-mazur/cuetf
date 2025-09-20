package data

#azurerm_storage_encryption_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_encryption_scope")
	close({
		timeouts?:           #timeouts
		id?:                 string
		key_vault_key_id?:   string
		name!:               string
		source?:             string
		storage_account_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
