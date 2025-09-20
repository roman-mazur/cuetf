package res

#azurerm_spring_cloud_app_redis_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_app_redis_association")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		redis_access_key!:    string
		redis_cache_id!:      string
		spring_cloud_app_id!: string
		ssl_enabled?:         bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
