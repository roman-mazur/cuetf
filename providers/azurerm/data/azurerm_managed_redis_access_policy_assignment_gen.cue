package data

#azurerm_managed_redis_access_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_managed_redis_access_policy_assignment")
	close({
		timeouts?:            #timeouts
		id?:                  string
		managed_redis_name!:  string
		object_id!:           string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
