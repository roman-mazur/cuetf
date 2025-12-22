package data

#aws_waf_subscribed_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_waf_subscribed_rule_group")
	close({
		id?:          string
		metric_name?: string
		name?:        string
	})
}
