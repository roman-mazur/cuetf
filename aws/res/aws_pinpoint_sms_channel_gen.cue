package res

#aws_pinpoint_sms_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_sms_channel")
	application_id:                     string
	enabled?:                           bool
	id?:                                string
	promotional_messages_per_second?:   number
	sender_id?:                         string
	short_code?:                        string
	transactional_messages_per_second?: number
}
