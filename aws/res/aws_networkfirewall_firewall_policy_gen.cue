package res

import "list"

#aws_networkfirewall_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_firewall_policy")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_token?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		firewall_policy!: matchN(1, [#firewall_policy, list.MaxItems(1) & [_, ...] & [...#firewall_policy]])
	})

	#encryption_configuration: close({
		key_id?: string
		type!:   string
	})

	#firewall_policy: close({
		stateful_default_actions?: [...string]
		policy_variables?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/policy_variables", list.MaxItems(1) & [..._#defs."/$defs/firewall_policy/$defs/policy_variables"]])
		stateless_default_actions!: [...string]
		stateless_fragment_default_actions!: [...string]
		tls_inspection_configuration_arn?: string
		stateful_engine_options?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateful_engine_options", list.MaxItems(1) & [..._#defs."/$defs/firewall_policy/$defs/stateful_engine_options"]])
		stateful_rule_group_reference?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateful_rule_group_reference", [..._#defs."/$defs/firewall_policy/$defs/stateful_rule_group_reference"]])
		stateless_custom_action?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateless_custom_action", [..._#defs."/$defs/firewall_policy/$defs/stateless_custom_action"]])
		stateless_rule_group_reference?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateless_rule_group_reference", [..._#defs."/$defs/firewall_policy/$defs/stateless_rule_group_reference"]])
	})

	_#defs: "/$defs/firewall_policy/$defs/policy_variables": close({
		rule_variables?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables", [..._#defs."/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables"]])
	})

	_#defs: "/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables": close({
		ip_set!: matchN(1, [_#defs."/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables/$defs/ip_set", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables/$defs/ip_set"]])
		key!: string
	})

	_#defs: "/$defs/firewall_policy/$defs/policy_variables/$defs/rule_variables/$defs/ip_set": close({
		definition!: [...string]
	})

	_#defs: "/$defs/firewall_policy/$defs/stateful_engine_options": close({
		flow_timeouts?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateful_engine_options/$defs/flow_timeouts", list.MaxItems(1) & [..._#defs."/$defs/firewall_policy/$defs/stateful_engine_options/$defs/flow_timeouts"]])
		rule_order?:              string
		stream_exception_policy?: string
	})

	_#defs: "/$defs/firewall_policy/$defs/stateful_engine_options/$defs/flow_timeouts": close({
		tcp_idle_timeout_seconds?: number
	})

	_#defs: "/$defs/firewall_policy/$defs/stateful_rule_group_reference": close({
		override?: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateful_rule_group_reference/$defs/override", list.MaxItems(1) & [..._#defs."/$defs/firewall_policy/$defs/stateful_rule_group_reference/$defs/override"]])
		deep_threat_inspection?: string
		priority?:               number
		resource_arn!:           string
	})

	_#defs: "/$defs/firewall_policy/$defs/stateful_rule_group_reference/$defs/override": close({
		action?: string
	})

	_#defs: "/$defs/firewall_policy/$defs/stateless_custom_action": close({
		action_definition!: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition"]])
		action_name!: string
	})

	_#defs: "/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition": close({
		publish_metric_action!: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action"]])
	})

	_#defs: "/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action": close({
		dimension!: matchN(1, [_#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension", [_, ...] & [..._#defs."/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension"]])
	})

	_#defs: "/$defs/firewall_policy/$defs/stateless_custom_action/$defs/action_definition/$defs/publish_metric_action/$defs/dimension": close({
		value!: string
	})

	_#defs: "/$defs/firewall_policy/$defs/stateless_rule_group_reference": close({
		priority!:     number
		resource_arn!: string
	})
}
