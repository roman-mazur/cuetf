package res

#aws_s3_bucket_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_notification")
	close({
		bucket!:      string
		eventbridge?: bool
		id?:          string
		region?:      string
		lambda_function?: matchN(1, [#lambda_function, [...#lambda_function]])
		queue?: matchN(1, [#queue, [...#queue]])
		topic?: matchN(1, [#topic, [...#topic]])
	})

	#lambda_function: close({
		events!: [...string]
		filter_prefix?:       string
		filter_suffix?:       string
		id?:                  string
		lambda_function_arn?: string
	})

	#queue: close({
		events!: [...string]
		filter_prefix?: string
		filter_suffix?: string
		id?:            string
		queue_arn!:     string
	})

	#topic: close({
		events!: [...string]
		filter_prefix?: string
		filter_suffix?: string
		id?:            string
		topic_arn!:     string
	})
}
