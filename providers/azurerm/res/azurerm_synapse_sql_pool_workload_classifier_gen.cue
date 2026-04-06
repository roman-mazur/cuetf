package res

#azurerm_synapse_sql_pool_workload_classifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_sql_pool_workload_classifier")
	close({
		timeouts?:          #timeouts
		context?:           string
		end_time?:          string
		id?:                string
		importance?:        string
		label?:             string
		member_name!:       string
		name!:              string
		start_time?:        string
		workload_group_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
