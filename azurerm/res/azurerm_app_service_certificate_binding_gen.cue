package res

#azurerm_app_service_certificate_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_certificate_binding")
	close({
		timeouts?:            #timeouts
		app_service_name?:    string
		certificate_id!:      string
		hostname?:            string
		hostname_binding_id!: string
		id?:                  string
		ssl_state!:           string
		thumbprint?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
