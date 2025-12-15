package res

import "list"

#aws_verifiedaccess_instance_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_verifiedaccess_instance_logging_configuration")
	close({
		access_logs!: matchN(1, [#access_logs, list.MaxItems(1) & [_, ...] & [...#access_logs]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		verifiedaccess_instance_id!: string
	})

	#access_logs: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/access_logs/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/cloudwatch_logs"]])
		kinesis_data_firehose?: matchN(1, [_#defs."/$defs/access_logs/$defs/kinesis_data_firehose", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/kinesis_data_firehose"]])
		s3?: matchN(1, [_#defs."/$defs/access_logs/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/s3"]])
		include_trust_context?: bool
		log_version?:           string
	})

	_#defs: "/$defs/access_logs/$defs/cloudwatch_logs": close({
		enabled!:   bool
		log_group?: string
	})

	_#defs: "/$defs/access_logs/$defs/kinesis_data_firehose": close({
		delivery_stream?: string
		enabled!:         bool
	})

	_#defs: "/$defs/access_logs/$defs/s3": close({
		bucket_name?:  string
		bucket_owner?: string
		enabled!:      bool
		prefix?:       string
	})
}
