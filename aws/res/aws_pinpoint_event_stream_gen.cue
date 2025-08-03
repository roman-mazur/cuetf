package res

#aws_pinpoint_event_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_event_stream")
	close({
		application_id!:         string
		destination_stream_arn!: string
		id?:                     string
		region?:                 string
		role_arn!:               string
	})
}
