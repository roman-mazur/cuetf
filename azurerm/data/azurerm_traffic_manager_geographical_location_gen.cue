package data

#azurerm_traffic_manager_geographical_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_traffic_manager_geographical_location")
	close({
		timeouts?: #timeouts
		id?:       string
		name!:     string
	})

	#timeouts: close({
		read?: string
	})
}
