package res

#azurerm_custom_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_custom_provider")
	close({
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		action?: matchN(1, [#action, [...#action]])
		resource_type?: matchN(1, [#resource_type, [...#resource_type]])
		timeouts?: #timeouts
		validation?: matchN(1, [#validation, [...#validation]])
	})

	#action: close({
		endpoint!: string
		name!:     string
	})

	#resource_type: close({
		endpoint!:     string
		name!:         string
		routing_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#validation: close({
		specification!: string
	})
}
