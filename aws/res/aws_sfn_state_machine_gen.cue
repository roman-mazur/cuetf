package res

import "list"

#aws_sfn_state_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sfn_state_machine")
	arn?:                       string
	creation_date?:             string
	definition:                 string
	description?:               string
	id?:                        string
	name?:                      string
	name_prefix?:               string
	publish?:                   bool
	revision_id?:               string
	role_arn:                   string
	state_machine_version_arn?: string
	status?:                    string
	tags?: [string]: string
	tags_all?: [string]: string
	type?:                  string
	version_description?:   string
	logging_configuration?: #logging_configuration | list.MaxItems(1) & [...#logging_configuration]
	timeouts?:              #timeouts
	tracing_configuration?: #tracing_configuration | list.MaxItems(1) & [...#tracing_configuration]

	#logging_configuration: {
		include_execution_data?: bool
		level?:                  string
		log_destination?:        string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#tracing_configuration: enabled?: bool
}
