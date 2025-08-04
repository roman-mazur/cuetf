package res

import "list"

#aws_networkfirewall_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_rule_group")
	close({
		arn?:         string
		capacity!:    number
		description?: string
		id?:          string
		name!:        string
		region?:      string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		rules?: string
		tags?: [string]: string
		rule_group?: matchN(1, [#rule_group, list.MaxItems(1) & [...#rule_group]])
		tags_all?: [string]: string
		type!:         string
		update_token?: string
	})

	#encryption_configuration: close({
		key_id?: string
		type!:   string
	})

	#rule_group: close({
		reference_sets?: matchN(1, [_#defs."/$defs/rule_group/$defs/reference_sets", list.MaxItems(1) & [..._#defs."/$defs/rule_group/$defs/reference_sets"]])
		rule_variables?: matchN(1, [_#defs."/$defs/rule_group/$defs/rule_variables", list.MaxItems(1) & [..._#defs."/$defs/rule_group/$defs/rule_variables"]])
		rules_source?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source"]])
		stateful_rule_options?: matchN(1, [_#defs."/$defs/rule_group/$defs/stateful_rule_options", list.MaxItems(1) & [..._#defs."/$defs/rule_group/$defs/stateful_rule_options"]])
	})

	_#defs: "/$defs/rule_group/$defs/reference_sets": close({
		ip_set_references?: matchN(1, [_#defs."/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references", list.MaxItems(5) & [..._#defs."/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references"]])
	})

	_#defs: "/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references": close({
		ip_set_reference?: matchN(1, [_#defs."/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references/$defs/ip_set_reference", [_, ...] & [..._#defs."/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references/$defs/ip_set_reference"]])
		key!: string
	})

	_#defs: "/$defs/rule_group/$defs/reference_sets/$defs/ip_set_references/$defs/ip_set_reference": close({
		reference_arn!: string
	})

	_#defs: "/$defs/rule_group/$defs/rule_variables": close({
		ip_sets?: matchN(1, [_#defs."/$defs/rule_group/$defs/rule_variables/$defs/ip_sets", [..._#defs."/$defs/rule_group/$defs/rule_variables/$defs/ip_sets"]])
		port_sets?: matchN(1, [_#defs."/$defs/rule_group/$defs/rule_variables/$defs/port_sets", [..._#defs."/$defs/rule_group/$defs/rule_variables/$defs/port_sets"]])
	})

	_#defs: "/$defs/rule_group/$defs/rule_variables/$defs/ip_sets": close({
		ip_set?: matchN(1, [_#defs."/$defs/rule_group/$defs/rule_variables/$defs/ip_sets/$defs/ip_set", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rule_variables/$defs/ip_sets/$defs/ip_set"]])
		key!: string
	})

	_#defs: "/$defs/rule_group/$defs/rule_variables/$defs/ip_sets/$defs/ip_set": close({
		definition!: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/rule_variables/$defs/port_sets": close({
		port_set?: matchN(1, [_#defs."/$defs/rule_group/$defs/rule_variables/$defs/port_sets/$defs/port_set", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rule_variables/$defs/port_sets/$defs/port_set"]])
		key!: string
	})

	_#defs: "/$defs/rule_group/$defs/rule_variables/$defs/port_sets/$defs/port_set": close({
		definition!: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/rules_source": close({
		rules_source_list?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/rules_source_list", list.MaxItems(1) & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/rules_source_list"]])
		stateful_rule?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule"]])
		stateless_rules_and_custom_actions?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions", list.MaxItems(1) & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions"]])
		rules_string?: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/rules_source_list": close({
		generated_rules_type!: string
		target_types!: [...string]
		targets!: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateful_rule": close({
		header?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/header", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/header"]])
		rule_option?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/rule_option", [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/rule_option"]])
		action!: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/header": close({
		destination!:      string
		destination_port!: string
		direction!:        string
		protocol!:         string
		source!:           string
		source_port!:      string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateful_rule/$defs/rule_option": close({
		keyword!: string
		settings?: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions": close({
		custom_action?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action"]])
		stateless_rule?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule", [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule"]])
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action": close({
		action_definition?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition"]])
		action_name!: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition": close({
		publish_metric_action?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action"]])
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action": close({
		dimension?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension", [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension"]])
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension": close({
		value!: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule": close({
		rule_definition?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition"]])
		priority!: number
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition": close({
		match_attributes?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes"]])
		actions!: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes": close({
		destination?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination"]])
		destination_port?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination_port", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination_port"]])
		source?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source"]])
		source_port?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source_port", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source_port"]])
		tcp_flag?: matchN(1, [_#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/tcp_flag", [..._#defs."/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/tcp_flag"]])
		protocols?: [...number]
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination": close({
		address_definition!: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/destination_port": close({
		from_port!: number
		to_port?:   number
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source": close({
		address_definition!: string
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/source_port": close({
		from_port!: number
		to_port?:   number
	})

	_#defs: "/$defs/rule_group/$defs/rules_source/$defs/stateless_rules_and_custom_actions/$defs/stateless_rule/$defs/rule_definition/$defs/match_attributes/$defs/tcp_flag": close({
		flags!: [...string]
		masks?: [...string]
	})

	_#defs: "/$defs/rule_group/$defs/stateful_rule_options": close({
		rule_order!: string
	})
}
