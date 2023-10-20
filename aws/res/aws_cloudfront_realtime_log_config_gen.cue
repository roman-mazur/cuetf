package res

import "list"

#aws_cloudfront_realtime_log_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_realtime_log_config")
	arn?: string
	fields: [...string]
	id?:           string
	name:          string
	sampling_rate: number
	endpoint?:     #endpoint | list.MaxItems(1) & [_, ...] & [...#endpoint]

	#endpoint: {
		stream_type:            string
		kinesis_stream_config?: #endpoint.#kinesis_stream_config | list.MaxItems(1) & [_, ...] & [...#endpoint.#kinesis_stream_config]

		#kinesis_stream_config: {
			role_arn:   string
			stream_arn: string
		}
	}
}
