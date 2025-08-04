package res

import "list"

#aws_config_remediation_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_remediation_configuration")
	close({
		arn?:                        string
		automatic?:                  bool
		config_rule_name!:           string
		id?:                         string
		maximum_automatic_attempts?: number
		region?:                     string
		execution_controls?: matchN(1, [#execution_controls, list.MaxItems(1) & [...#execution_controls]])
		resource_type?:         string
		retry_attempt_seconds?: number
		parameter?: matchN(1, [#parameter, list.MaxItems(25) & [...#parameter]])
		target_id!:      string
		target_type!:    string
		target_version?: string
	})

	#execution_controls: close({
		ssm_controls?: matchN(1, [_#defs."/$defs/execution_controls/$defs/ssm_controls", list.MaxItems(1) & [..._#defs."/$defs/execution_controls/$defs/ssm_controls"]])
	})

	#parameter: close({
		name!:           string
		resource_value?: string
		static_value?:   string
		static_values?: [...string]
	})

	_#defs: "/$defs/execution_controls/$defs/ssm_controls": close({
		concurrent_execution_rate_percentage?: number
		error_percentage?:                     number
	})
}
