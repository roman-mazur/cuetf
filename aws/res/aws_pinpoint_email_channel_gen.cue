package res

#aws_pinpoint_email_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_email_channel")
	application_id!:      string
	configuration_set?:   string
	enabled?:             bool
	from_address!:        string
	id?:                  string
	identity!:            string
	messages_per_second?: number
	role_arn?:            string
}
