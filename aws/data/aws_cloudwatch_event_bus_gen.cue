package data

#aws_cloudwatch_event_bus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_bus")
	arn?: string
	id?:  string
	name: string
}
