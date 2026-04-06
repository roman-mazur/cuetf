package data

#azurerm_container_registry_cache_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_container_registry_cache_rule")
	close({
		timeouts?:              #timeouts
		container_registry_id!: string
		credential_set_id?:     string
		id?:                    string
		name!:                  string
		source_repo?:           string
		target_repo?:           string
	})

	#timeouts: close({
		read?: string
	})
}
