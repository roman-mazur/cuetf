package res

#aws_pinpoint_event_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_event_stream")
	application_id!:         string
	destination_stream_arn!: string
	id?:                     string
	role_arn!:               string
}
