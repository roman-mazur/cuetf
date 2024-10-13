package res

import "list"

#aws_synthetics_canary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_synthetics_canary")
	arn?:                      string
	artifact_s3_location!:     string
	delete_lambda?:            bool
	engine_arn?:               string
	execution_role_arn!:       string
	failure_retention_period?: number
	handler!:                  string
	id?:                       string
	name!:                     string
	runtime_version!:          string
	s3_bucket?:                string
	s3_key?:                   string
	s3_version?:               string
	source_location_arn?:      string
	start_canary?:             bool
	status?:                   string
	success_retention_period?: number
	tags?: [string]:     string
	tags_all?: [string]: string
	timeline?: [...{
		created?:       string
		last_modified?: string
		last_started?:  string
		last_stopped?:  string
	}]
	zip_file?: string
	artifact_config?: #artifact_config | list.MaxItems(1) & [...#artifact_config]
	run_config?: #run_config | list.MaxItems(1) & [...#run_config]
	schedule?: #schedule | list.MaxItems(1) & [_, ...] & [...#schedule]
	vpc_config?: #vpc_config | list.MaxItems(1) & [...#vpc_config]

	#artifact_config: {
		s3_encryption?: #artifact_config.#s3_encryption | list.MaxItems(1) & [...#artifact_config.#s3_encryption]

		#s3_encryption: {
			encryption_mode?: string
			kms_key_arn?:     string
		}
	}

	#run_config: {
		active_tracing?: bool
		environment_variables?: [string]: string
		memory_in_mb?:       number
		timeout_in_seconds?: number
	}

	#schedule: {
		duration_in_seconds?: number
		expression!:          string
	}

	#vpc_config: {
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_id?: string
	}
}
