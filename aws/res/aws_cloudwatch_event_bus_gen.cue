package res

#aws_cloudwatch_event_bus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_bus")
	arn?:               string
	event_source_name?: string
	id?:                string
	name:               string
	tags?: [string]: string
	tags_all?: [string]: string
}
