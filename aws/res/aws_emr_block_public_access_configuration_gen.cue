package res

#aws_emr_block_public_access_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_emr_block_public_access_configuration")
	close({
		permitted_public_security_group_rule_range?: matchN(1, [#permitted_public_security_group_rule_range, [...#permitted_public_security_group_rule_range]])
		block_public_security_group_rules!: bool
		id?:                                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#permitted_public_security_group_rule_range: close({
		max_range!: number
		min_range!: number
	})
}
