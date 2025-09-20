package data

#azurerm_key_vault_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_secret")
	close({
		content_type?:            string
		expiration_date?:         string
		id?:                      string
		key_vault_id!:            string
		name!:                    string
		not_before_date?:         string
		resource_id?:             string
		resource_versionless_id?: string
		timeouts?:                #timeouts
		tags?: [string]: string
		value?:          string
		version?:        string
		versionless_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
