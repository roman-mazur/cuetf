package res

#azurerm_managed_redis_access_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_managed_redis_access_policy_assignment")
	close({
		timeouts?:         #timeouts
		id?:               string
		managed_redis_id!: string
		object_id!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
