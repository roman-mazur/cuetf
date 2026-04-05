package res

#azurerm_resource_provider_feature_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_resource_provider_feature_registration")
	close({
		timeouts?:      #timeouts
		id?:            string
		name!:          string
		provider_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
