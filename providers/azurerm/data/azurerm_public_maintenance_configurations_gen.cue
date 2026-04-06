package data

#azurerm_public_maintenance_configurations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_public_maintenance_configurations")
	close({
		timeouts?: #timeouts
		configs?: [...close({
			description?:       string
			duration?:          string
			id?:                string
			location?:          string
			maintenance_scope?: string
			name?:              string
			recur_every?:       string
			time_zone?:         string
		})]
		id?:          string
		location?:    string
		recur_every?: string
		scope?:       string
	})

	#timeouts: close({
		read?: string
	})
}
