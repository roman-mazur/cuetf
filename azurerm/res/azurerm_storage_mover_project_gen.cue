package res

#azurerm_storage_mover_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_mover_project")
	close({
		timeouts?:         #timeouts
		description?:      string
		id?:               string
		name!:             string
		storage_mover_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
