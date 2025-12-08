package data

#azurerm_blueprint_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_blueprint_definition")
	close({
		timeouts?:      #timeouts
		description?:   string
		display_name?:  string
		id?:            string
		last_modified?: string
		name!:          string
		scope_id!:      string
		target_scope?:  string
		time_created?:  string
		versions?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
