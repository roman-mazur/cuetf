package data

#aws_lambda_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lambda_function")
	close({
		architectures?: [...string]
		arn?: string
		capacity_provider_config?: [...close({
			lambda_managed_instances_capacity_provider_config?: [...close({
				capacity_provider_arn?:                     string
				execution_environment_memory_gib_per_vcpu?: number
				per_execution_environment_max_concurrency?: number
			})]
		})]
		code_sha256?:             string
		code_signing_config_arn?: string
		dead_letter_config?: [...close({
			target_arn?: string
		})]
		description?: string
		durable_config?: [...close({
			execution_timeout?: number
			retention_period?:  number
		})]
		environment?: [...close({
			variables?: [string]: string
		})]
		ephemeral_storage?: [...close({
			size?: number
		})]
		file_system_config?: [...close({
			arn?:              string
			local_mount_path?: string
		})]
		function_name!: string
		handler?:       string
		id?:            string
		image_uri?:     string
		invoke_arn?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		kms_key_arn?:   string
		last_modified?: string
		layers?: [...string]
		logging_config?: [...close({
			application_log_level?: string
			log_format?:            string
			log_group?:             string
			system_log_level?:      string
		})]
		memory_size?:                    number
		qualified_arn?:                  string
		qualified_invoke_arn?:           string
		qualifier?:                      string
		reserved_concurrent_executions?: number
		response_streaming_invoke_arn?:  string
		role?:                           string
		runtime?:                        string
		signing_job_arn?:                string
		signing_profile_version_arn?:    string
		source_code_size?:               number
		source_kms_key_arn?:             string
		tags?: [string]: string
		tenancy_config?: [...close({
			tenant_isolation_mode?: string
		})]
		timeout?: number
		tracing_config?: [...close({
			mode?: string
		})]
		version?: string
		vpc_config?: [...close({
			ipv6_allowed_for_dual_stack?: bool
			security_group_ids?: [...string]
			subnet_ids?: [...string]
			vpc_id?: string
		})]
	})
}
