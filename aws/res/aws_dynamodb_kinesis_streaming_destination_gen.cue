package res

#aws_dynamodb_kinesis_streaming_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_kinesis_streaming_destination")
	close({
		approximate_creation_date_time_precision?: string
		id?:                                       string
		region?:                                   string
		stream_arn!:                               string
		table_name!:                               string
	})
}
