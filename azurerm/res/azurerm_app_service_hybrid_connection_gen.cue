package res

#azurerm_app_service_hybrid_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_service_hybrid_connection")
	close({
		app_service_name!:      string
		hostname!:              string
		id?:                    string
		namespace_name?:        string
		port!:                  number
		relay_id!:              string
		relay_name?:            string
		resource_group_name!:   string
		timeouts?:              #timeouts
		send_key_name?:         string
		send_key_value?:        string
		service_bus_namespace?: string
		service_bus_suffix?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
