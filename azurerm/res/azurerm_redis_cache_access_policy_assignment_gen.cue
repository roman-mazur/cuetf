package res

#azurerm_redis_cache_access_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_cache_access_policy_assignment")
	close({
		timeouts?:           #timeouts
		access_policy_name!: string
		id?:                 string
		name!:               string
		object_id!:          string
		object_id_alias!:    string
		redis_cache_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
