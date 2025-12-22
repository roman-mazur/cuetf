package res

#aws_bedrock_model_invocation_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrock_model_invocation_logging_configuration")
	close({
		logging_config?: matchN(1, [#logging_config, [...#logging_config]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#logging_config: close({
		cloudwatch_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/cloudwatch_config", [..._#defs."/$defs/logging_config/$defs/cloudwatch_config"]])
		embedding_data_delivery_enabled?: bool
		image_data_delivery_enabled?:     bool
		text_data_delivery_enabled?:      bool
		video_data_delivery_enabled?:     bool
		s3_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/s3_config", [..._#defs."/$defs/logging_config/$defs/s3_config"]])
	})

	_#defs: "/$defs/logging_config/$defs/cloudwatch_config": close({
		large_data_delivery_s3_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config", [..._#defs."/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config"]])
		log_group_name!: string
		role_arn!:       string
	})

	_#defs: "/$defs/logging_config/$defs/cloudwatch_config/$defs/large_data_delivery_s3_config": close({
		bucket_name!: string
		key_prefix?:  string
	})

	_#defs: "/$defs/logging_config/$defs/s3_config": close({
		bucket_name!: string
		key_prefix?:  string
	})
}
