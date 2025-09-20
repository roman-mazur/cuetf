package data

#azurerm_key_vault_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_access_policy")
	close({
		timeouts?: #timeouts
		certificate_permissions?: [...string]
		id?: string
		key_permissions?: [...string]
		name!: string
		secret_permissions?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
