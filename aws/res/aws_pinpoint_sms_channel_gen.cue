package res

#aws_pinpoint_sms_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_sms_channel")
	close({
		application_id!:                    string
		enabled?:                           bool
		id?:                                string
		promotional_messages_per_second?:   number
		region?:                            string
		sender_id?:                         string
		short_code?:                        string
		transactional_messages_per_second?: number
	})
}
