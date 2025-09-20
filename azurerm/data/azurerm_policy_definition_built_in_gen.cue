package data

#azurerm_policy_definition_built_in: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_policy_definition_built_in")
	close({
		description?:           string
		display_name?:          string
		id?:                    string
		management_group_name?: string
		metadata?:              string
		mode?:                  string
		name?:                  string
		parameters?:            string
		timeouts?:              #timeouts
		policy_rule?:           string
		policy_type?:           string
		role_definition_ids?: [...string]
		type?: string
	})

	#timeouts: close({
		read?: string
	})
}
