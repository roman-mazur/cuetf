package res

#azurerm_policy_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_policy_definition")
	close({
		description?:         string
		display_name!:        string
		id?:                  string
		management_group_id?: string
		metadata?:            string
		mode!:                string
		name!:                string
		parameters?:          string
		policy_rule?:         string
		timeouts?:            #timeouts
		policy_type!:         string
		role_definition_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
