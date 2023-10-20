package data

#aws_kinesis_stream_consumer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kinesis_stream_consumer")
	arn?:                string
	creation_timestamp?: string
	id?:                 string
	name?:               string
	status?:             string
	stream_arn:          string
}
