package res

#aws_devopsguru_notification_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_devopsguru_notification_channel")
	id?: string
	filters?: #filters | [...#filters]
	sns?: #sns | [...#sns]

	#filters: {
		message_types?: [...string]
		severities?: [...string]
	}

	#sns: topic_arn!: string
}
