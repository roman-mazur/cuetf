package res

#azurerm_synapse_role_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_role_assignment")
	close({
		timeouts?:              #timeouts
		id?:                    string
		principal_id!:          string
		principal_type?:        string
		role_name!:             string
		synapse_spark_pool_id?: string
		synapse_workspace_id?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
