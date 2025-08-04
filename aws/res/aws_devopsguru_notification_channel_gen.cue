package res

#aws_devopsguru_notification_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_notification_channel")
	close({
		filters?: matchN(1, [#filters, [...#filters]])
		sns?: matchN(1, [#sns, [...#sns]])
		id?:     string
		region?: string
	})

	#filters: close({
		message_types?: [...string]
		severities?: [...string]
	})

	#sns: close({
		topic_arn!: string
	})
}
