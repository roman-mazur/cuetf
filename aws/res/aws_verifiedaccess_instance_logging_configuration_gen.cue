package res

import "list"

#aws_verifiedaccess_instance_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_instance_logging_configuration")
	close({
		id?:                         string
		region?:                     string
		verifiedaccess_instance_id!: string
		access_logs?: matchN(1, [#access_logs, list.MaxItems(1) & [_, ...] & [...#access_logs]])
	})

	#access_logs: close({
		include_trust_context?: bool
		log_version?:           string
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/access_logs/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/cloudwatch_logs"]])
		kinesis_data_firehose?: matchN(1, [_#defs."/$defs/access_logs/$defs/kinesis_data_firehose", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/kinesis_data_firehose"]])
		s3?: matchN(1, [_#defs."/$defs/access_logs/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/access_logs/$defs/s3"]])
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
