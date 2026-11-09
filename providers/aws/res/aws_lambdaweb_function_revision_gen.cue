package res

aws_lambdaweb_function_revision: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambdaweb_function_revision")
	close({
		build_config?: matchN(1, [#build_config, [...#build_config]])
		service_config?: matchN(1, [#service_config, [...#service_config]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		description?:   string
		function_name!: string
		kms_key_arn?:   string
		revision_id?:   string
	})

	#build_config: close({
		code_config?: matchN(1, [_#defs."/$defs/build_config/$defs/code_config", [..._#defs."/$defs/build_config/$defs/code_config"]])
		runtime_config?: matchN(1, [_#defs."/$defs/build_config/$defs/runtime_config", [..._#defs."/$defs/build_config/$defs/runtime_config"]])
	})

	#service_config: close({
		telemetry_config?: matchN(1, [_#defs."/$defs/service_config/$defs/telemetry_config", [..._#defs."/$defs/service_config/$defs/telemetry_config"]])
		egress_network_connector_arn?: string
		environment_variables?: [string]: string
		execution_role_arn!:              string
		max_concurrency_per_environment?: number
		telemetry_config_actual?: [...close({
			logging_config?: [...close({
				application_log_level?: string
				log_group?:             string
				system_log_level?:      string
			})]
		})]
		timeout_seconds?: number
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string
	})

	_#defs: "/$defs/build_config/$defs/code_config": close({
		s3_object?: matchN(1, [_#defs."/$defs/build_config/$defs/code_config/$defs/s3_object", [..._#defs."/$defs/build_config/$defs/code_config/$defs/s3_object"]])
	})

	_#defs: "/$defs/build_config/$defs/code_config/$defs/s3_object": close({
		bucket!:     string
		key!:        string
		version_id?: string
	})

	_#defs: "/$defs/build_config/$defs/runtime_config": close({
		runtime!: string
	})

	_#defs: "/$defs/service_config/$defs/telemetry_config": close({
		logging_config?: matchN(1, [_#defs."/$defs/service_config/$defs/telemetry_config/$defs/logging_config", [..._#defs."/$defs/service_config/$defs/telemetry_config/$defs/logging_config"]])
	})

	_#defs: "/$defs/service_config/$defs/telemetry_config/$defs/logging_config": close({
		application_log_level?: string
		log_group?:             string
		system_log_level?:      string
	})
}
