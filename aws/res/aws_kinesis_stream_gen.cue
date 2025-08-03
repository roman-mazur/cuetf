package res

import "list"

#aws_kinesis_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_stream")
	close({
		arn?:             string
		encryption_type?: string
		stream_mode_details?: matchN(1, [#stream_mode_details, list.MaxItems(1) & [...#stream_mode_details]])
		timeouts?:                  #timeouts
		enforce_consumer_deletion?: bool
		id?:                        string
		kms_key_id?:                string
		name!:                      string
		region?:                    string
		retention_period?:          number
		shard_count?:               number
		shard_level_metrics?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#stream_mode_details: close({
		stream_mode!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
