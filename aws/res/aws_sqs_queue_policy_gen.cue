package res

#aws_sqs_queue_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sqs_queue_policy")
	id?:        string
	policy!:    string
	queue_url!: string
}
