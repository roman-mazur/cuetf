package res

import "list"

#aws_securityhub_configuration_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_configuration_policy")
	close({
		arn?: string
		configuration_policy?: matchN(1, [#configuration_policy, list.MaxItems(1) & [_, ...] & [...#configuration_policy]])
		description?: string
		id?:          string
		name!:        string
		region?:      string
	})

	#configuration_policy: close({
		enabled_standard_arns?: [...string]
		service_enabled!: bool
		security_controls_configuration?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration"]])
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration": close({
		disabled_control_identifiers?: [...string]
		enabled_control_identifiers?: [...string]
		security_control_custom_parameter?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter", [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter"]])
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter": close({
		security_control_id!: string
		parameter?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter", [_, ...] & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter"]])
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter": close({
		bool?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/bool", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/bool"]])
		double?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/double", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/double"]])
		enum?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum"]])
		enum_list?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum_list", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum_list"]])
		name!:       string
		value_type!: string
		int?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int"]])
		int_list?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int_list", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int_list"]])
		"string"?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string"]])
		string_list?: matchN(1, [_#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string_list", list.MaxItems(1) & [..._#defs."/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string_list"]])
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/bool": close({
		value!: bool
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/double": close({
		value!: number
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum": close({
		value!: string
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/enum_list": close({
		value!: [...string]
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int": close({
		value!: number
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/int_list": close({
		value!: [...number]
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string": close({
		value!: string
	})

	_#defs: "/$defs/configuration_policy/$defs/security_controls_configuration/$defs/security_control_custom_parameter/$defs/parameter/$defs/string_list": close({
		value!: [...string]
	})
}
