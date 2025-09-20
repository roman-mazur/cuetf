package data

#azurerm_redis_enterprise_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_enterprise_database")
	close({
		timeouts?:                       #timeouts
		cluster_id!:                     string
		id?:                             string
		linked_database_group_nickname?: string
		linked_database_id?: [...string]
		name!:                 string
		primary_access_key?:   string
		secondary_access_key?: string
	})

	#timeouts: close({
		read?: string
	})
}
