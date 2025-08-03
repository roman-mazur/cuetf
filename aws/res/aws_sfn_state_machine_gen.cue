package res

import "list"

#aws_sfn_state_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_state_machine")
	close({
		arn?:           string
		creation_date?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		timeouts?: #timeouts
		tracing_configuration?: matchN(1, [#tracing_configuration, list.MaxItems(1) & [...#tracing_configuration]])
		definition!:                string
		description?:               string
		id?:                        string
		name?:                      string
		name_prefix?:               string
		publish?:                   bool
		region?:                    string
		revision_id?:               string
		role_arn!:                  string
		state_machine_version_arn?: string
		status?:                    string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:                string
		version_description?: string
	})

	#encryption_configuration: close({
		kms_data_key_reuse_period_seconds?: number
		kms_key_id?:                        string
		type?:                              string
	})

	#logging_configuration: close({
		include_execution_data?: bool
		level?:                  string
		log_destination?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tracing_configuration: close({
		enabled?: bool
	})
}
