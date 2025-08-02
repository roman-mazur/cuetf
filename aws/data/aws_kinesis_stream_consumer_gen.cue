package data

#aws_kinesis_stream_consumer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_stream_consumer")
	close({
		arn?:                string
		creation_timestamp?: string
		id?:                 string
		name?:               string
		region?:             string
		status?:             string
		stream_arn!:         string
		tags?: [string]: string
	})
}
