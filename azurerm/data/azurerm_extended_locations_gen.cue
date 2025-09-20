package data

#azurerm_extended_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_extended_locations")
	close({
		timeouts?: #timeouts
		extended_locations?: [...string]
		id?:       string
		location!: string
	})

	#timeouts: close({
		read?: string
	})
}
