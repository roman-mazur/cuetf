package res

#azurerm_app_service_source_control_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_service_source_control_token")
	close({
		timeouts?:     #timeouts
		id?:           string
		token!:        string
		token_secret?: string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
