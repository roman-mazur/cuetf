package res

#azurerm_resource_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_resource_group")
	close({
		timeouts?:   #timeouts
		id?:         string
		location!:   string
		managed_by?: string
		name!:       string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
