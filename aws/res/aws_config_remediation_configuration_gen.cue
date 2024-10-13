package res

import "list"

#aws_config_remediation_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_remediation_configuration")
	arn?:                        string
	automatic?:                  bool
	config_rule_name!:           string
	id?:                         string
	maximum_automatic_attempts?: number
	resource_type?:              string
	retry_attempt_seconds?:      number
	target_id!:                  string
	target_type!:                string
	target_version?:             string
	execution_controls?: #execution_controls | list.MaxItems(1) & [...#execution_controls]
	parameter?: #parameter | list.MaxItems(25) & [...#parameter]

	#execution_controls: {
		ssm_controls?: #execution_controls.#ssm_controls | list.MaxItems(1) & [...#execution_controls.#ssm_controls]

		#ssm_controls: {
			concurrent_execution_rate_percentage?: number
			error_percentage?:                     number
		}
	}

	#parameter: {
		name!:           string
		resource_value?: string
		static_value?:   string
		static_values?: [...string]
	}
}
