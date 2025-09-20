package res

#azurerm_app_service_custom_hostname_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_custom_hostname_binding")
	close({
		timeouts?:            #timeouts
		app_service_name!:    string
		hostname!:            string
		id?:                  string
		resource_group_name!: string
		ssl_state?:           string
		thumbprint?:          string
		virtual_ip?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
