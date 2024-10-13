package data

#aws_lambda_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_function")
	architectures?: [...string]
	arn?:                     string
	code_sha256?:             string
	code_signing_config_arn?: string
	dead_letter_config?: [...{
		target_arn?: string
	}]
	description?: string
	environment?: [...{
		variables?: [string]: string
	}]
	ephemeral_storage?: [...{
		size?: number
	}]
	file_system_config?: [...{
		arn?:              string
		local_mount_path?: string
	}]
	function_name!: string
	handler?:       string
	id?:            string
	image_uri?:     string
	invoke_arn?:    string
	kms_key_arn?:   string
	last_modified?: string
	layers?: [...string]
	logging_config?: [...{
		application_log_level?: string
		log_format?:            string
		log_group?:             string
		system_log_level?:      string
	}]
	memory_size?:                    number
	qualified_arn?:                  string
	qualified_invoke_arn?:           string
	qualifier?:                      string
	reserved_concurrent_executions?: number
	role?:                           string
	runtime?:                        string
	signing_job_arn?:                string
	signing_profile_version_arn?:    string
	source_code_size?:               number
	tags?: [string]: string
	timeout?: number
	tracing_config?: [...{
		mode?: string
	}]
	version?: string
	vpc_config?: [...{
		ipv6_allowed_for_dual_stack?: bool
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_id?: string
	}]
}
