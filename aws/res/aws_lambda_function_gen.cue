package res

import "list"

#aws_lambda_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_function")
	close({
		architectures?: [...string]
		arn?:                     string
		code_sha256?:             string
		code_signing_config_arn?: string
		description?:             string
		filename?:                string
		function_name!:           string
		handler?:                 string
		id?:                      string
		image_uri?:               string
		invoke_arn?:              string
		dead_letter_config?: matchN(1, [#dead_letter_config, list.MaxItems(1) & [...#dead_letter_config]])
		kms_key_arn?:   string
		last_modified?: string
		layers?: [...string]
		memory_size?:          number
		package_type?:         string
		publish?:              bool
		qualified_arn?:        string
		qualified_invoke_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                             string
		replace_security_groups_on_destroy?: bool
		environment?: matchN(1, [#environment, list.MaxItems(1) & [...#environment]])
		replacement_security_group_ids?: [...string]
		reserved_concurrent_executions?: number
		role!:                           string
		runtime?:                        string
		ephemeral_storage?: matchN(1, [#ephemeral_storage, list.MaxItems(1) & [...#ephemeral_storage]])
		s3_bucket?: string
		file_system_config?: matchN(1, [#file_system_config, list.MaxItems(1) & [...#file_system_config]])
		s3_key?:                      string
		s3_object_version?:           string
		signing_job_arn?:             string
		signing_profile_version_arn?: string
		skip_destroy?:                bool
		source_code_hash?:            string
		source_code_size?:            number
		source_kms_key_arn?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		image_config?: matchN(1, [#image_config, list.MaxItems(1) & [...#image_config]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		snap_start?: matchN(1, [#snap_start, list.MaxItems(1) & [...#snap_start]])
		tenancy_config?: matchN(1, [#tenancy_config, list.MaxItems(1) & [...#tenancy_config]])
		timeout?:  number
		version?:  string
		timeouts?: #timeouts
		tracing_config?: matchN(1, [#tracing_config, list.MaxItems(1) & [...#tracing_config]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
	})

	#dead_letter_config: close({
		target_arn!: string
	})

	#environment: close({
		variables?: [string]: string
	})

	#ephemeral_storage: close({
		size?: number
	})

	#file_system_config: close({
		arn!:              string
		local_mount_path!: string
	})

	#image_config: close({
		command?: [...string]
		entry_point?: [...string]
		working_directory?: string
	})

	#logging_config: close({
		application_log_level?: string
		log_format!:            string
		log_group?:             string
		system_log_level?:      string
	})

	#snap_start: close({
		apply_on!:            string
		optimization_status?: string
	})

	#tenancy_config: close({
		tenant_isolation_mode!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tracing_config: close({
		mode!: string
	})

	#vpc_config: close({
		ipv6_allowed_for_dual_stack?: bool
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	})
}
