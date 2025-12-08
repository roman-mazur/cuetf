package res

#azurerm_management_group_policy_exemption: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_management_group_policy_exemption")
	close({
		description?:          string
		display_name?:         string
		exemption_category!:   string
		expires_on?:           string
		id?:                   string
		management_group_id!:  string
		metadata?:             string
		timeouts?:             #timeouts
		name!:                 string
		policy_assignment_id!: string
		policy_definition_reference_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
