package res

import "list"

#aws_synthetics_canary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_synthetics_canary")
	close({
		arn?:                  string
		artifact_s3_location!: string
		delete_lambda?:        bool
		engine_arn?:           string
		artifact_config?: matchN(1, [#artifact_config, list.MaxItems(1) & [...#artifact_config]])
		execution_role_arn!:       string
		failure_retention_period?: number
		handler!:                  string
		id?:                       string
		name!:                     string
		region?:                   string
		runtime_version!:          string
		run_config?: matchN(1, [#run_config, list.MaxItems(1) & [...#run_config]])
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [_, ...] & [...#schedule]])
		s3_bucket?:                string
		s3_key?:                   string
		s3_version?:               string
		source_location_arn?:      string
		start_canary?:             bool
		status?:                   string
		success_retention_period?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		timeline?: [...close({
			created?:       string
			last_modified?: string
			last_started?:  string
			last_stopped?:  string
		})]
		zip_file?: string
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
	})

	#artifact_config: close({
		s3_encryption?: matchN(1, [_#defs."/$defs/artifact_config/$defs/s3_encryption", list.MaxItems(1) & [..._#defs."/$defs/artifact_config/$defs/s3_encryption"]])
	})

	#run_config: close({
		active_tracing?: bool
		environment_variables?: [string]: string
		memory_in_mb?:       number
		timeout_in_seconds?: number
	})

	#schedule: close({
		duration_in_seconds?: number
		expression!:          string
	})

	#vpc_config: close({
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_id?: string
	})

	_#defs: "/$defs/artifact_config/$defs/s3_encryption": close({
		encryption_mode?: string
		kms_key_arn?:     string
	})
}
