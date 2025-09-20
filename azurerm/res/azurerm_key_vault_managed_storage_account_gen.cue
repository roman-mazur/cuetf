package res

#azurerm_key_vault_managed_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_managed_storage_account")
	close({
		timeouts?:                     #timeouts
		id?:                           string
		key_vault_id!:                 string
		name!:                         string
		regenerate_key_automatically?: bool
		regeneration_period?:          string
		storage_account_id!:           string
		storage_account_key!:          string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
