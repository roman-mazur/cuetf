package res

import "list"

#aws_cloudfront_realtime_log_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_realtime_log_config")
	close({
		endpoint!: matchN(1, [#endpoint, list.MaxItems(1) & [_, ...] & [...#endpoint]])
		arn?: string
		fields!: [...string]
		id?:            string
		name!:          string
		sampling_rate!: number
	})

	#endpoint: close({
		kinesis_stream_config!: matchN(1, [_#defs."/$defs/endpoint/$defs/kinesis_stream_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/endpoint/$defs/kinesis_stream_config"]])
		stream_type!: string
	})

	_#defs: "/$defs/endpoint/$defs/kinesis_stream_config": close({
		role_arn!:   string
		stream_arn!: string
	})
}
