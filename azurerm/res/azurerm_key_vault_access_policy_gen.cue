package res

#azurerm_key_vault_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_key_vault_access_policy")
	close({
		timeouts?:       #timeouts
		application_id?: string
		certificate_permissions?: [...string]
		id?: string
		key_permissions?: [...string]
		key_vault_id!: string
		object_id!:    string
		secret_permissions?: [...string]
		storage_permissions?: [...string]
		tenant_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
