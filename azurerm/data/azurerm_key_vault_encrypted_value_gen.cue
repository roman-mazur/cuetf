package data

#azurerm_key_vault_encrypted_value: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_encrypted_value")
	close({
		timeouts?:                 #timeouts
		algorithm!:                string
		decoded_plain_text_value?: string
		encrypted_data?:           string
		id?:                       string
		key_vault_key_id!:         string
		plain_text_value?:         string
	})

	#timeouts: close({
		read?: string
	})
}
