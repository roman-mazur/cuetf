package res

#azurerm_resource_provider_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_resource_provider_registration")
	close({
		feature?: matchN(1, [#feature, [...#feature]])
		timeouts?: #timeouts
		id?:       string
		name!:     string
	})

	#feature: close({
		name!:       string
		registered!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
