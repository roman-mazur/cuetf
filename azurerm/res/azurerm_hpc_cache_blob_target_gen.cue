package res

#azurerm_hpc_cache_blob_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_hpc_cache_blob_target")
	close({
		timeouts?:             #timeouts
		access_policy_name?:   string
		cache_name!:           string
		id?:                   string
		name!:                 string
		namespace_path!:       string
		resource_group_name!:  string
		storage_container_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
