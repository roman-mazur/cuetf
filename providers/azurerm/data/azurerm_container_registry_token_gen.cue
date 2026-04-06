package data

#azurerm_container_registry_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_container_registry_token")
	close({
		timeouts?:                #timeouts
		container_registry_name!: string
		enabled?:                 bool
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		scope_map_id?:            string
	})

	#timeouts: close({
		read?: string
	})
}
