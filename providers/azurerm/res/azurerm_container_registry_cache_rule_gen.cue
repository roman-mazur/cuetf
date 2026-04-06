package res

#azurerm_container_registry_cache_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_registry_cache_rule")
	close({
		timeouts?:              #timeouts
		container_registry_id!: string

		// The ARM resource ID of the credential store which is associated
		// with the cache rule.
		credential_set_id?: string
		id?:                string

		// The name of the cache rule.
		name!: string

		// The full source repository path such as
		// 'docker.io/library/ubuntu'.
		source_repo!: string

		// The target repository namespace such as 'ubuntu'.
		target_repo!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
