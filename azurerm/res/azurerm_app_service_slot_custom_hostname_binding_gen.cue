package res

#azurerm_app_service_slot_custom_hostname_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_service_slot_custom_hostname_binding")
	close({
		timeouts?:            #timeouts
		app_service_slot_id!: string
		hostname!:            string
		id?:                  string
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
