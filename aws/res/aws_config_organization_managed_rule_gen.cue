package res

#aws_config_organization_managed_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_organization_managed_rule")
	arn?:         string
	description?: string
	excluded_accounts?: [...string]
	id?:                          string
	input_parameters?:            string
	maximum_execution_frequency?: string
	name!:                        string
	resource_id_scope?:           string
	resource_types_scope?: [...string]
	rule_identifier!: string
	tag_key_scope?:   string
	tag_value_scope?: string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
