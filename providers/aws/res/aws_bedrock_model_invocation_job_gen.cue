package res

aws_bedrock_model_invocation_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrock_model_invocation_job")
	close({
		input_data_config?: matchN(1, [#input_data_config, [...#input_data_config]])
		output_data_config?: matchN(1, [#output_data_config, [...#output_data_config]])
		timeouts?: #timeouts
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
		end_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		error_record_count?:        number
		job_arn?:                   string
		job_expiration_time?:       string
		job_name!:                  string
		model_id!:                  string
		model_invocation_type?:     string
		processed_record_count?:    number
		role_arn!:                  string
		skip_destroy?:              bool
		status?:                    string
		submit_time?:               string
		success_record_count?:      number
		timeout_duration_in_hours?: number
		total_record_count?:        number
	})

	#input_data_config: close({
		s3_input_data_config?: matchN(1, [_#defs."/$defs/input_data_config/$defs/s3_input_data_config", [..._#defs."/$defs/input_data_config/$defs/s3_input_data_config"]])
	})

	#output_data_config: close({
		s3_output_data_config?: matchN(1, [_#defs."/$defs/output_data_config/$defs/s3_output_data_config", [..._#defs."/$defs/output_data_config/$defs/s3_output_data_config"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	})

	_#defs: "/$defs/input_data_config/$defs/s3_input_data_config": close({
		s3_bucket_owner?: string
		s3_input_format?: string
		s3_uri!:          string
	})

	_#defs: "/$defs/output_data_config/$defs/s3_output_data_config": close({
		s3_bucket_owner?:      string
		s3_encryption_key_id?: string
		s3_uri!:               string
	})
}
