package res

#aws_config_organization_managed_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_organization_managed_rule")
	close({
		arn?:         string
		description?: string
		excluded_accounts?: [...string]
		id?:                          string
		input_parameters?:            string
		maximum_execution_frequency?: string
		name!:                        string
		region?:                      string
		timeouts?:                    #timeouts
		resource_id_scope?:           string
		resource_types_scope?: [...string]
		rule_identifier!: string
		tag_key_scope?:   string
		tag_value_scope?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
