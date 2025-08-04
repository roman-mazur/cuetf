package res

import "list"

#aws_sfn_state_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_state_machine")
	close({
		arn?:           string
		creation_date?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		definition!:  string
		description?: string
		id?:          string
		name?:        string
		name_prefix?: string
		publish?:     bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		revision_id?: string
		role_arn!:    string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		state_machine_version_arn?: string
		status?:                    string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:                string
		version_description?: string
		timeouts?:            #timeouts
		tracing_configuration?: matchN(1, [#tracing_configuration, list.MaxItems(1) & [...#tracing_configuration]])
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
