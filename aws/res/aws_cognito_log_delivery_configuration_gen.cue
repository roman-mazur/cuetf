package res

#aws_cognito_log_delivery_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_log_delivery_configuration")
	close({
		log_configurations?: matchN(1, [#log_configurations, [...#log_configurations]])
		region?:       string
		user_pool_id!: string
	})

	#log_configurations: close({
		cloud_watch_logs_configuration?: matchN(1, [_#defs."/$defs/log_configurations/$defs/cloud_watch_logs_configuration", [..._#defs."/$defs/log_configurations/$defs/cloud_watch_logs_configuration"]])
		firehose_configuration?: matchN(1, [_#defs."/$defs/log_configurations/$defs/firehose_configuration", [..._#defs."/$defs/log_configurations/$defs/firehose_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/log_configurations/$defs/s3_configuration", [..._#defs."/$defs/log_configurations/$defs/s3_configuration"]])
		event_source!: string
		log_level!:    string
	})

	_#defs: "/$defs/log_configurations/$defs/cloud_watch_logs_configuration": close({
		log_group_arn?: string
	})

	_#defs: "/$defs/log_configurations/$defs/firehose_configuration": close({
		stream_arn?: string
	})

	_#defs: "/$defs/log_configurations/$defs/s3_configuration": close({
		bucket_arn?: string
	})
}
