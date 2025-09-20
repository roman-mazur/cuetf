package res

#azurerm_security_center_subscription_pricing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_security_center_subscription_pricing")
	close({
		extension?: matchN(1, [#extension, [...#extension]])
		id?:            string
		resource_type?: string
		subplan?:       string
		tier!:          string
		timeouts?:      #timeouts
	})

	#extension: close({
		additional_extension_properties?: [string]: string
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
