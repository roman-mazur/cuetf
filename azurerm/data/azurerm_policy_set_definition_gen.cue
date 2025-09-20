package data

#azurerm_policy_set_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_policy_set_definition")
	close({
		description?:           string
		display_name?:          string
		id?:                    string
		management_group_name?: string
		metadata?:              string
		name?:                  string
		parameters?:            string
		policy_definition_group?: [...close({
			additional_metadata_resource_id?: string
			category?:                        string
			description?:                     string
			display_name?:                    string
			name?:                            string
		})]
		policy_definition_reference?: [...close({
			parameter_values?: string
			parameters?: [string]: string
			policy_definition_id?: string
			policy_group_names?: [...string]
			reference_id?: string
		})]
		timeouts?:           #timeouts
		policy_definitions?: string
		policy_type?:        string
	})

	#timeouts: close({
		read?: string
	})
}
