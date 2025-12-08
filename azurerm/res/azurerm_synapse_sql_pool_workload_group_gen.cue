package res

#azurerm_synapse_sql_pool_workload_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_sql_pool_workload_group")
	close({
		timeouts?:                           #timeouts
		id?:                                 string
		importance?:                         string
		max_resource_percent!:               number
		max_resource_percent_per_request?:   number
		min_resource_percent!:               number
		min_resource_percent_per_request?:   number
		name!:                               string
		query_execution_timeout_in_seconds?: number
		sql_pool_id!:                        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
