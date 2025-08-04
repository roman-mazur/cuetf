package res

#aws_sqs_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sqs_queue")
	close({
		arn?:                               string
		content_based_deduplication?:       bool
		deduplication_scope?:               string
		delay_seconds?:                     number
		fifo_queue?:                        bool
		fifo_throughput_limit?:             string
		id?:                                string
		kms_data_key_reuse_period_seconds?: number
		kms_master_key_id?:                 string
		max_message_size?:                  number
		message_retention_seconds?:         number
		name?:                              string
		name_prefix?:                       string
		policy?:                            string
		timeouts?:                          #timeouts
		receive_wait_time_seconds?:         number
		redrive_allow_policy?:              string
		redrive_policy?:                    string
		region?:                            string
		sqs_managed_sse_enabled?:           bool
		tags?: [string]:     string
		tags_all?: [string]: string
		url?:                        string
		visibility_timeout_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
