package res

import "list"

#aws_kinesis_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_stream")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		arn?:                       string
		encryption_type?:           string
		enforce_consumer_deletion?: bool
		id?:                        string
		kms_key_id?:                string
		name!:                      string
		stream_mode_details?: matchN(1, [#stream_mode_details, list.MaxItems(1) & [...#stream_mode_details]])
		timeouts?:         #timeouts
		retention_period?: number
		shard_count?:      number
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
