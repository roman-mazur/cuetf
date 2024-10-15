package res

#aws_s3_bucket_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_notification")
	bucket!:      string
	eventbridge?: bool
	id?:          string
	lambda_function?: #lambda_function | [...#lambda_function]
	queue?: #queue | [...#queue]
	topic?: #topic | [...#topic]

	#lambda_function: {
		events!: [...string]
		filter_prefix?:       string
		filter_suffix?:       string
		id?:                  string
		lambda_function_arn?: string
	}

	#queue: {
		events!: [...string]
		filter_prefix?: string
		filter_suffix?: string
		id?:            string
		queue_arn!:     string
	}

	#topic: {
		events!: [...string]
		filter_prefix?: string
		filter_suffix?: string
		id?:            string
		topic_arn!:     string
	}
}
