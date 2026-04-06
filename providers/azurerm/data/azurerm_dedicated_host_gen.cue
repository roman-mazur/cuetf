package data

#azurerm_dedicated_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dedicated_host")
	close({
		timeouts?:                  #timeouts
		dedicated_host_group_name!: string
		id?:                        string
		location?:                  string
		name!:                      string
		resource_group_name!:       string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
