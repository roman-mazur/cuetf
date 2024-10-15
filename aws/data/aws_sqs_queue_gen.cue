package data

#aws_sqs_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sqs_queue")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]: string
	url?: string
}
