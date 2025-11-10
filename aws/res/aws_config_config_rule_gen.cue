package res

import "list"

#aws_config_config_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_config_rule")
	close({
		arn?:                         string
		description?:                 string
		id?:                          string
		input_parameters?:            string
		maximum_execution_frequency?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		evaluation_mode?: matchN(1, [#evaluation_mode, [...#evaluation_mode]])
		scope?: matchN(1, [#scope, list.MaxItems(1) & [...#scope]])
		name!:    string
		rule_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
	})

	#evaluation_mode: close({
		mode?: string
	})

	#scope: close({
		compliance_resource_id?: string
		compliance_resource_types?: [...string]
		tag_key?:   string
		tag_value?: string
	})

	#source: close({
		custom_policy_details?: matchN(1, [_#defs."/$defs/source/$defs/custom_policy_details", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/custom_policy_details"]])
		source_detail?: matchN(1, [_#defs."/$defs/source/$defs/source_detail", list.MaxItems(25) & [..._#defs."/$defs/source/$defs/source_detail"]])
		owner!:             string
		source_identifier?: string
	})

	_#defs: "/$defs/source/$defs/custom_policy_details": close({
		enable_debug_log_delivery?: bool
		policy_runtime!:            string
		policy_text!:               string
	})

	_#defs: "/$defs/source/$defs/source_detail": close({
		event_source?:                string
		maximum_execution_frequency?: string
		message_type?:                string
	})
}
