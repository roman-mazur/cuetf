package res

#azurerm_management_group_policy_set_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_management_group_policy_set_definition")
	close({
		description?:         string
		display_name!:        string
		id?:                  string
		management_group_id!: string
		policy_definition_group?: matchN(1, [#policy_definition_group, [...#policy_definition_group]])
		metadata?:    string
		name!:        string
		parameters?:  string
		policy_type!: string
		policy_definition_reference!: matchN(1, [#policy_definition_reference, [_, ...] & [...#policy_definition_reference]])
		timeouts?: #timeouts
	})

	#policy_definition_group: close({
		additional_metadata_resource_id?: string
		category?:                        string
		description?:                     string
		display_name?:                    string
		name!:                            string
	})

	#policy_definition_reference: close({
		parameter_values?:     string
		policy_definition_id!: string
		policy_group_names?: [...string]
		reference_id?: string
		version?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
