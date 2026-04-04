package data

#azurerm_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_location")
	close({
		timeouts?:     #timeouts
		display_name?: string
		id?:           string
		location!:     string
		zone_mappings?: [...close({
			logical_zone?:  string
			physical_zone?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
