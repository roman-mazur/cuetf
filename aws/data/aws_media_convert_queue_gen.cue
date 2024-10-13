package data

#aws_media_convert_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_media_convert_queue")
	arn?:    string
	id!:     string
	name?:   string
	status?: string
	tags?: [string]: string
}
