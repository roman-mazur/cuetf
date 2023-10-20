package res

#aws_emr_block_public_access_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_emr_block_public_access_configuration")
	block_public_security_group_rules:           bool
	id?:                                         string
	permitted_public_security_group_rule_range?: #permitted_public_security_group_rule_range | [...#permitted_public_security_group_rule_range]

	#permitted_public_security_group_rule_range: {
		max_range: number
		min_range: number
	}
}
