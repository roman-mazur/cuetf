package data

#aws_kinesis_firehose_delivery_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kinesis_firehose_delivery_stream")
	arn?: string
	id?:  string
	name: string
}