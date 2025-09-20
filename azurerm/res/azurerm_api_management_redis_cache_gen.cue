package res

#azurerm_api_management_redis_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_redis_cache")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		cache_location?:    string
		connection_string!: string
		description?:       string
		id?:                string
		name!:              string
		redis_cache_id?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
