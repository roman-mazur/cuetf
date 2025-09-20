package res

#azurerm_management_group_policy_remediation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_management_group_policy_remediation")
	close({
		timeouts?:           #timeouts
		failure_percentage?: number
		id?:                 string
		location_filters?: [...string]
		management_group_id!:            string
		name!:                           string
		parallel_deployments?:           number
		policy_assignment_id!:           string
		policy_definition_reference_id?: string
		resource_count?:                 number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
