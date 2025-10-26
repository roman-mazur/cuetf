package res

#azurerm_managed_redis_geo_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_redis_geo_replication")
	close({
		timeouts?: #timeouts
		id?:       string
		linked_managed_redis_ids!: [...string]
		managed_redis_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
