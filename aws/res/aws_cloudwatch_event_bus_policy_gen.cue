package res

#aws_cloudwatch_event_bus_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_bus_policy")
	event_bus_name?: string
	id?:             string
	policy!:         string
}
