package data

#azurerm_container_registry_scope_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_registry_scope_map")
	close({
		timeouts?: #timeouts
		actions?: [...string]
		container_registry_name!: string
		description?:             string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
	})

	#timeouts: close({
		read?: string
	})
}
