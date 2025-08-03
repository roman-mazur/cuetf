package res

#aws_cloudwatch_contributor_managed_insight_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_contributor_managed_insight_rule")
	close({
		arn?:          string
		region?:       string
		resource_arn!: string
		rule_name?:    string
		state?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		template_name!: string
	})
}
