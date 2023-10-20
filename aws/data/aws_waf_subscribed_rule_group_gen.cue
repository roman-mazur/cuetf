package data

#aws_waf_subscribed_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_subscribed_rule_group")
	id?:          string
	metric_name?: string
	name?:        string
}
