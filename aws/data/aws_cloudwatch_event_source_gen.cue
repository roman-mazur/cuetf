package data

#aws_cloudwatch_event_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_source")
	arn?:         string
	created_by?:  string
	id?:          string
	name?:        string
	name_prefix?: string
	state?:       string
}
