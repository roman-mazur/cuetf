package res

#aws_dynamodb_kinesis_streaming_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_kinesis_streaming_destination")
	id?:        string
	stream_arn: string
	table_name: string
}
