package res

#aws_cloudwatch_contributor_insight_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_contributor_insight_rule")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		resource_arn?:    string
		rule_definition!: string
		rule_name!:       string
		rule_state?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
