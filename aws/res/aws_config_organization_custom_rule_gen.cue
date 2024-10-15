package res

#aws_config_organization_custom_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_organization_custom_rule")
	arn?:         string
	description?: string
	excluded_accounts?: [...string]
	id?:                          string
	input_parameters?:            string
	lambda_function_arn!:         string
	maximum_execution_frequency?: string
	name!:                        string
	resource_id_scope?:           string
	resource_types_scope?: [...string]
	tag_key_scope?:   string
	tag_value_scope?: string
	trigger_types!: [...string]
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
