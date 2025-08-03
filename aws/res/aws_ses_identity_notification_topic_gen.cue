package res

#aws_ses_identity_notification_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_identity_notification_topic")
	close({
		id?:                       string
		identity!:                 string
		include_original_headers?: bool
		notification_type!:        string
		region?:                   string
		topic_arn?:                string
	})
}
