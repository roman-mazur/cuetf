package data

#azurerm_key_vault_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_secrets")
	close({
		timeouts?:     #timeouts
		id?:           string
		key_vault_id!: string
		names?: [...string]
		secrets?: [...close({
			enabled?: bool
			id?:      string
			name?:    string
			tags?: [string]: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
