package res

#aws_cloudwatch_event_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_rule")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		arn?:                 string
		description?:         string
		event_bus_name?:      string
		event_pattern?:       string
		force_destroy?:       bool
		id?:                  string
		name?:                string
		name_prefix?:         string
		role_arn?:            string
		schedule_expression?: string
		state?:               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
