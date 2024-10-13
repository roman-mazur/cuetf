package res

#aws_cloudwatch_event_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_rule")
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
}
