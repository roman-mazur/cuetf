package res

#azurerm_static_web_app_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_static_web_app_custom_domain")
	close({
		timeouts?:          #timeouts
		domain_name!:       string
		id?:                string
		static_web_app_id!: string
		validation_token?:  string
		validation_type!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
