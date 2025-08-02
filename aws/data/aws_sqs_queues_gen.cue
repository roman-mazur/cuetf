package data

#aws_sqs_queues: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sqs_queues")
	close({
		id?:                string
		queue_name_prefix?: string
		queue_urls?: [...string]
		region?: string
	})
}
