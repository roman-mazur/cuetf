package res

#azurerm_application_load_balancer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_load_balancer")
	close({
		timeouts?:                       #timeouts
		id?:                             string
		location!:                       string
		name!:                           string
		primary_configuration_endpoint?: string
		resource_group_name!:            string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
