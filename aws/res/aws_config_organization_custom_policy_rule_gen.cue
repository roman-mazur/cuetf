package res

#aws_config_organization_custom_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_organization_custom_policy_rule")
	close({
		arn?: string
		debug_log_delivery_accounts?: [...string]
		description?: string
		excluded_accounts?: [...string]
		id?:                          string
		input_parameters?:            string
		maximum_execution_frequency?: string
		name!:                        string
		policy_runtime!:              string
		timeouts?:                    #timeouts
		policy_text!:                 string
		region?:                      string
		resource_id_scope?:           string
		resource_types_scope?: [...string]
		tag_key_scope?:   string
		tag_value_scope?: string
		trigger_types!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
