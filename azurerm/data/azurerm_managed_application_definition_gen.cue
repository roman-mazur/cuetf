package data

#azurerm_managed_application_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_application_definition")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
