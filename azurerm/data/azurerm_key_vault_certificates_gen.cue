package data

#azurerm_key_vault_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_certificates")
	close({
		timeouts?: #timeouts
		certificates?: [...close({
			enabled?: bool
			id?:      string
			name?:    string
			tags?: [string]: string
		})]
		id?:              string
		include_pending?: bool
		key_vault_id!:    string
		names?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
