package data

#azurerm_batch_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_batch_account")
	close({
		account_endpoint?: string
		encryption?: [...close({
			key_vault_key_id?: string
		})]
		id?: string
		key_vault_reference?: [...close({
			id?:  string
			url?: string
		})]
		location?:             string
		name!:                 string
		pool_allocation_mode?: string
		primary_access_key?:   string
		timeouts?:             #timeouts
		resource_group_name!:  string
		secondary_access_key?: string
		storage_account_id?:   string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
