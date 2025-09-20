package data

#azurerm_api_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_connection")
	close({
		timeouts?:       #timeouts
		display_name?:   string
		id?:             string
		location?:       string
		managed_api_id?: string
		name!:           string
		parameter_values?: [string]: string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
