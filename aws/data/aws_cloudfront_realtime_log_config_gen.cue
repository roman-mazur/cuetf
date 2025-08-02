package data

#aws_cloudfront_realtime_log_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_realtime_log_config")
	close({
		arn?: string
		endpoint?: [...close({
			kinesis_stream_config?: [...close({
				role_arn?:   string
				stream_arn?: string
			})]
			stream_type?: string
		})]
		fields?: [...string]
		id?:            string
		name!:          string
		sampling_rate?: number
	})
}
