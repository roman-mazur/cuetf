package res

import "list"

#aws_config_remediation_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_remediation_configuration")
	close({
		arn?:              string
		automatic?:        bool
		config_rule_name!: string
		id?:               string
		execution_controls?: matchN(1, [#execution_controls, list.MaxItems(1) & [...#execution_controls]])
		maximum_automatic_attempts?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		resource_type?:         string
		retry_attempt_seconds?: number
		target_id!:             string
		target_type!:           string
		parameter?: matchN(1, [#parameter, list.MaxItems(25) & [...#parameter]])
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
