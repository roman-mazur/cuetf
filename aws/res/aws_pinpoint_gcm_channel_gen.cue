package res

#aws_pinpoint_gcm_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_gcm_channel")
	api_key:        string
	application_id: string
	enabled?:       bool
	id?:            string
}
