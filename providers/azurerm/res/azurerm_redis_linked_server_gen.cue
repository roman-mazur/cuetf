package res

#azurerm_redis_linked_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_redis_linked_server")
	close({
		timeouts?:                         #timeouts
		geo_replicated_primary_host_name?: string
		id?:                               string
		linked_redis_cache_id!:            string
		linked_redis_cache_location!:      string
		name?:                             string
		resource_group_name!:              string
		server_role!:                      string
		target_redis_cache_name!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
