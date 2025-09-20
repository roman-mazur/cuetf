package res

#azurerm_redis_cache_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_cache_access_policy")
	close({
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		permissions!:    string
		redis_cache_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
