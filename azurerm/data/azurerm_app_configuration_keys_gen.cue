package data

#azurerm_app_configuration_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_configuration_keys")
	close({
		timeouts?:               #timeouts
		configuration_store_id!: string
		id?:                     string
		items?: [...close({
			content_type?: string
			etag?:         string
			key?:          string
			label?:        string
			locked?:       bool
			tags?: [string]: string
			type?:                string
			value?:               string
			vault_key_reference?: string
		})]
		key?:   string
		label?: string
	})

	#timeouts: close({
		read?: string
	})
}
