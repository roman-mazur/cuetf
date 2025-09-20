package data

#azurerm_key_vault_certificate_data: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_certificate_data")
	close({
		certificates_count?: number
		expires?:            string
		hex?:                string
		id?:                 string
		key?:                string
		key_vault_id!:       string
		name!:               string
		not_before?:         string
		pem?:                string
		timeouts?:           #timeouts
		tags?: [string]: string
		version?: string
	})

	#timeouts: close({
		read?: string
	})
}
