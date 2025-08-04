package res

#aws_emr_block_public_access_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_block_public_access_configuration")
	close({
		permitted_public_security_group_rule_range?: matchN(1, [#permitted_public_security_group_rule_range, [...#permitted_public_security_group_rule_range]])
		block_public_security_group_rules!: bool
		id?:                                string
		region?:                            string
	})

	#permitted_public_security_group_rule_range: close({
		max_range!: number
		min_range!: number
	})
}
