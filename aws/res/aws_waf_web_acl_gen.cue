package res

import "list"

#aws_waf_web_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_web_acl")
	close({
		default_action!: matchN(1, [#default_action, list.MaxItems(1) & [_, ...] & [...#default_action]])
		arn?:         string
		id?:          string
		metric_name!: string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		rules?: matchN(1, [#rules, [...#rules]])
	})

	#default_action: close({
		type!: string
	})

	#logging_configuration: close({
		redacted_fields?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/redacted_fields", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/redacted_fields"]])
		log_destination!: string
	})

	#rules: close({
		action?: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action"]])
		override_action?: matchN(1, [_#defs."/$defs/rules/$defs/override_action", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/override_action"]])
		priority!: number
		rule_id!:  string
		type?:     string
	})

	_#defs: "/$defs/logging_configuration/$defs/redacted_fields": close({
		field_to_match!: matchN(1, [_#defs."/$defs/logging_configuration/$defs/redacted_fields/$defs/field_to_match", [_, ...] & [..._#defs."/$defs/logging_configuration/$defs/redacted_fields/$defs/field_to_match"]])
	})

	_#defs: "/$defs/logging_configuration/$defs/redacted_fields/$defs/field_to_match": close({
		data?: string
		type!: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		type!: string
	})

	_#defs: "/$defs/rules/$defs/override_action": close({
		type!: string
	})
}
