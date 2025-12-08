package res

#azurerm_iothub_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_route")
	close({
		timeouts?:  #timeouts
		condition?: string
		enabled!:   bool
		endpoint_names!: [...string]
		id?:                  string
		iothub_name!:         string
		name!:                string
		resource_group_name!: string
		source!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
