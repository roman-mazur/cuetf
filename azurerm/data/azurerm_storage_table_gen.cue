package data

#azurerm_storage_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_table")
	close({
		timeouts?: #timeouts
		acl?: [...close({
			access_policy?: [...close({
				expiry?:      string
				permissions?: string
				start?:       string
			})]
			id?: string
		})]
		id?:                   string
		name!:                 string
		resource_manager_id?:  string
		storage_account_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
