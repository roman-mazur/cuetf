package data

#aws_wafv2_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_rule_group")
	close({
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		region?:      string
		scope!:       string
	})
}
