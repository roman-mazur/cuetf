package data

#azurerm_managed_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_managed_api")
	close({
		timeouts?: #timeouts
		id?:       string
		location!: string
		name!:     string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
