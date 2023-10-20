package data

#aws_appintegrations_event_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appintegrations_event_integration")
	arn?:         string
	description?: string
	event_filter?: [...{
		source?: string
	}]
	eventbridge_bus?: string
	id?:              string
	name:             string
	tags?: [string]: string
}
