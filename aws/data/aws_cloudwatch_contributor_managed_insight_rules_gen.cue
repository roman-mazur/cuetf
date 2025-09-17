package data

#aws_cloudwatch_contributor_managed_insight_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_contributor_managed_insight_rules")
	close({
		managed_rules?: [...close({
			resource_arn?: string
			rule_state?: [...close({
				rule_name?: string
				state?:     string
			})]
			template_name?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		resource_arn!: string
	})
}
