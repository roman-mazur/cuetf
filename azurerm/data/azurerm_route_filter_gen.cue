package data

#azurerm_route_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_route_filter")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		rule?: [...close({
			access?: string
			communities?: [...string]
			name?:      string
			rule_type?: string
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
