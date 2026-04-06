package data

#azurerm_resource_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_resource_group")
	close({
		timeouts?:   #timeouts
		id?:         string
		location?:   string
		managed_by?: string
		name!:       string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
