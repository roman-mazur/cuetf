package res

#azurerm_data_factory_linked_service_web: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_web")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		authentication_type!:      string
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		timeouts?:                 #timeouts
		parameters?: [string]: string
		password?: string
		url!:      string
		username?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
