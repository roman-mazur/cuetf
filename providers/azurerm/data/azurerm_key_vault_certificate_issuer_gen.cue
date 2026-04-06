package data

#azurerm_key_vault_certificate_issuer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_key_vault_certificate_issuer")
	close({
		timeouts?:   #timeouts
		account_id?: string
		admin?: [...close({
			email_address?: string
			first_name?:    string
			last_name?:     string
			phone?:         string
		})]
		id?:            string
		key_vault_id!:  string
		name!:          string
		org_id?:        string
		provider_name?: string
	})

	#timeouts: close({
		read?: string
	})
}
