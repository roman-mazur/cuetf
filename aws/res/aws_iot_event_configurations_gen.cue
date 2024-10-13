package res

#aws_iot_event_configurations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_event_configurations")
	event_configurations!: [string]: bool
	id?: string
}
