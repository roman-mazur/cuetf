package res

#azurerm_resource_group_policy_remediation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_resource_group_policy_remediation")
	close({
		failure_percentage?: number
		id?:                 string
		location_filters?: [...string]
		name!:                           string
		parallel_deployments?:           number
		policy_assignment_id!:           string
		policy_definition_reference_id?: string
		timeouts?:                       #timeouts
		resource_count?:                 number
		resource_discovery_mode?:        string
		resource_group_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
