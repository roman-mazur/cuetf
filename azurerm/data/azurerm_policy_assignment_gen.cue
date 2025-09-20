package data

#azurerm_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_policy_assignment")
	close({
		description?:  string
		display_name?: string
		enforce?:      bool
		id?:           string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?: string
		metadata?: string
		name!:     string
		timeouts?: #timeouts
		non_compliance_message?: [...close({
			content?:                        string
			policy_definition_reference_id?: string
		})]
		not_scopes?: [...string]
		parameters?:           string
		policy_definition_id?: string
		scope_id!:             string
	})

	#timeouts: close({
		read?: string
	})
}
