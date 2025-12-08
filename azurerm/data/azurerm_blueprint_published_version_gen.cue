package data

#azurerm_blueprint_published_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_blueprint_published_version")
	close({
		blueprint_name!: string
		description?:    string
		display_name?:   string
		id?:             string
		last_modified?:  string
		scope_id!:       string
		target_scope?:   string
		timeouts?:       #timeouts
		time_created?:   string
		type?:           string
		version!:        string
	})

	#timeouts: close({
		read?: string
	})
}
