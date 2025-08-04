package res

import "list"

#aws_ivschat_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivschat_logging_configuration")
	close({
		arn?: string
		destination_configuration?: matchN(1, [#destination_configuration, list.MaxItems(1) & [...#destination_configuration]])
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		state?:  string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#destination_configuration: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/destination_configuration/$defs/cloudwatch_logs"]])
		firehose?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/firehose", list.MaxItems(1) & [..._#defs."/$defs/destination_configuration/$defs/firehose"]])
		s3?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/destination_configuration/$defs/s3"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destination_configuration/$defs/cloudwatch_logs": close({
		log_group_name!: string
	})

	_#defs: "/$defs/destination_configuration/$defs/firehose": close({
		delivery_stream_name!: string
	})

	_#defs: "/$defs/destination_configuration/$defs/s3": close({
		bucket_name!: string
	})
}
