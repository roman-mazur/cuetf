package res

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
		tags?: [string]: string
		value?:            string
		value_wo?:         string
		value_wo_version?: number
		timeouts?:         #timeouts
		version?:          string
		versionless_id?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
