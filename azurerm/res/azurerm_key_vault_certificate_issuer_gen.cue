package res

#azurerm_key_vault_certificate_issuer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_certificate_issuer")
	close({
		admin?: matchN(1, [#admin, [...#admin]])
		account_id?:    string
		id?:            string
		key_vault_id!:  string
		name!:          string
		org_id?:        string
		password?:      string
		provider_name!: string
		timeouts?:      #timeouts
	})

	#admin: close({
		email_address!: string
		first_name?:    string
		last_name?:     string
		phone?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
