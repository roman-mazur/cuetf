package res

#aws_bedrock_model_invocation_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_model_invocation_logging_configuration")
	close({
		region?: string
		logging_config?: matchN(1, [#logging_config, [...#logging_config]])
	})

	#logging_config: close({
		embedding_data_delivery_enabled?: bool
		image_data_delivery_enabled?:     bool
		text_data_delivery_enabled?:      bool
		video_data_delivery_enabled?:     bool
		cloudwatch_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/cloudwatch_config", [..._#defs."/$defs/logging_config/$defs/cloudwatch_config"]])
		s3_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/s3_config", [..._#defs."/$defs/logging_config/$defs/s3_config"]])
	})

	_#defs: "/$defs/logging_config/$defs/cloudwatch_config": close({
		log_group_name?: string
		role_arn?:       string
		large_data_delivery_s3_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config", [..._#defs."/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config"]])
	})

	_#defs: "/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config": close({
		bucket_name?: string
		key_prefix?:  string
	})

	_#defs: "/$defs/logging_config/$defs/s3_config": close({
		bucket_name?: string
		key_prefix?:  string
	})
}
