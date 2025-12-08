package res

#azurerm_data_factory_managed_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_managed_private_endpoint")
	close({
		timeouts?:        #timeouts
		data_factory_id!: string
		fqdns?: [...string]
		id?:                 string
		name!:               string
		subresource_name?:   string
		target_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
