package res

#azurerm_subscription_policy_exemption: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_subscription_policy_exemption")
	close({
		description?:          string
		display_name?:         string
		exemption_category!:   string
		expires_on?:           string
		id?:                   string
		metadata?:             string
		name!:                 string
		timeouts?:             #timeouts
		policy_assignment_id!: string
		policy_definition_reference_ids?: [...string]
		subscription_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
