package res

#azurerm_app_configuration_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_configuration_key")
	close({
		timeouts?:               #timeouts
		configuration_store_id!: string
		content_type?:           string
		etag?:                   string
		id?:                     string
		key!:                    string
		label?:                  string
		locked?:                 bool
		tags?: [string]: string
		type?:                string
		value?:               string
		vault_key_reference?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
