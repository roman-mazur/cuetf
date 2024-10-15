package res

#aws_sqs_queue_redrive_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sqs_queue_redrive_policy")
	id?:             string
	queue_url!:      string
	redrive_policy!: string
}
