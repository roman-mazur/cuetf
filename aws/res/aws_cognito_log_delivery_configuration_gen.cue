package res

#aws_cognito_log_delivery_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cognito_log_delivery_configuration")
	close({
		log_configurations?: matchN(1, [#log_configurations, [...#log_configurations]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
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
