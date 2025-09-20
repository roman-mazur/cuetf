package data

#azurerm_resources: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_resources")
	close({
		timeouts?: #timeouts
		id?:       string
		name?:     string
		required_tags?: [string]: string
		resource_group_name?: string
		resources?: [...close({
			id?:                  string
			location?:            string
			name?:                string
			resource_group_name?: string
			tags?: [string]: string
			type?: string
		})]
		type?: string
	})

	#timeouts: close({
		read?: string
	})
}
