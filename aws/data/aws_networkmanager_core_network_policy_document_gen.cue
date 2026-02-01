package data

import "list"

#aws_networkmanager_core_network_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_networkmanager_core_network_policy_document")
	close({
		attachment_policies?: matchN(1, [#attachment_policies, [...#attachment_policies]])
		attachment_routing_policy_rules?: matchN(1, [#attachment_routing_policy_rules, [...#attachment_routing_policy_rules]])
		id?:      string
		json?:    string
		version?: string
		core_network_configuration!: matchN(1, [#core_network_configuration, [_, ...] & [...#core_network_configuration]])
		network_function_groups?: matchN(1, [#network_function_groups, [...#network_function_groups]])
		routing_policies?: matchN(1, [#routing_policies, [...#routing_policies]])
		segment_actions?: matchN(1, [#segment_actions, [...#segment_actions]])
		segments!: matchN(1, [#segments, [_, ...] & [...#segments]])
	})

	#attachment_policies: close({
		action!: matchN(1, [_#defs."/$defs/attachment_policies/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/attachment_policies/$defs/action"]])
		conditions!: matchN(1, [_#defs."/$defs/attachment_policies/$defs/conditions", [_, ...] & [..._#defs."/$defs/attachment_policies/$defs/conditions"]])
		condition_logic?: string
		description?:     string
		rule_number!:     number
	})

	#attachment_routing_policy_rules: close({
		action!: matchN(1, [_#defs."/$defs/attachment_routing_policy_rules/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/attachment_routing_policy_rules/$defs/action"]])
		conditions!: matchN(1, [_#defs."/$defs/attachment_routing_policy_rules/$defs/conditions", [_, ...] & [..._#defs."/$defs/attachment_routing_policy_rules/$defs/conditions"]])
		description?: string
		edge_locations?: [...string]
		rule_number!: number
	})

	#core_network_configuration: close({
		edge_locations!: matchN(1, [_#defs."/$defs/core_network_configuration/$defs/edge_locations", [_, ...] & [..._#defs."/$defs/core_network_configuration/$defs/edge_locations"]])
		asn_ranges!: [...string]
		dns_support?: bool
		inside_cidr_blocks?: [...string]
		security_group_referencing_support?: bool
		vpn_ecmp_support?:                   bool
	})

	#network_function_groups: close({
		description?:                   string
		name!:                          string
		require_attachment_acceptance!: bool
	})

	#routing_policies: close({
		routing_policy_rules!: matchN(1, [_#defs."/$defs/routing_policies/$defs/routing_policy_rules", [_, ...] & [..._#defs."/$defs/routing_policies/$defs/routing_policy_rules"]])
		routing_policy_description?: string
		routing_policy_direction!:   string
		routing_policy_name!:        string
		routing_policy_number!:      number
	})

	#segment_actions: close({
		action!:      string
		description?: string
		destination_cidr_blocks?: [...string]
		destinations?: [...string]
		mode?: string
		routing_policy_names?: [...string]
		segment!: string
		edge_location_association?: matchN(1, [_#defs."/$defs/segment_actions/$defs/edge_location_association", list.MaxItems(1) & [..._#defs."/$defs/segment_actions/$defs/edge_location_association"]])
		share_with?: [...string]
		via?: matchN(1, [_#defs."/$defs/segment_actions/$defs/via", list.MaxItems(1) & [..._#defs."/$defs/segment_actions/$defs/via"]])
		when_sent_to?: matchN(1, [_#defs."/$defs/segment_actions/$defs/when_sent_to", list.MaxItems(1) & [..._#defs."/$defs/segment_actions/$defs/when_sent_to"]])
		share_with_except?: [...string]
	})

	#segments: close({
		allow_filter?: [...string]
		deny_filter?: [...string]
		description?: string
		edge_locations?: [...string]
		isolate_attachments?:           bool
		name!:                          string
		require_attachment_acceptance?: bool
	})

	_#defs: "/$defs/attachment_policies/$defs/action": close({
		add_to_network_function_group?: string
		association_method?:            string
		require_acceptance?:            bool
		segment?:                       string
		tag_value_of_key?:              string
	})

	_#defs: "/$defs/attachment_policies/$defs/conditions": close({
		key?:      string
		operator?: string
		type!:     string
		value?:    string
	})

	_#defs: "/$defs/attachment_routing_policy_rules/$defs/action": close({
		associate_routing_policies!: [...string]
	})

	_#defs: "/$defs/attachment_routing_policy_rules/$defs/conditions": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/core_network_configuration/$defs/edge_locations": close({
		asn?: string
		inside_cidr_blocks?: [...string]
		location!: string
	})

	_#defs: "/$defs/routing_policies/$defs/routing_policy_rules": close({
		rule_definition!: matchN(1, [_#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition"]])
		rule_number!: number
	})

	_#defs: "/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition": close({
		action!: matchN(1, [_#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/action"]])
		match_conditions?: matchN(1, [_#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/match_conditions", [..._#defs."/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/match_conditions"]])
		condition_logic?: string
	})

	_#defs: "/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/action": close({
		type!:  string
		value?: string
	})

	_#defs: "/$defs/routing_policies/$defs/routing_policy_rules/$defs/rule_definition/$defs/match_conditions": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/segment_actions/$defs/edge_location_association": close({
		edge_location!:      string
		peer_edge_location!: string
		routing_policy_names!: [...string]
	})

	_#defs: "/$defs/segment_actions/$defs/via": close({
		with_edge_override?: matchN(1, [_#defs."/$defs/segment_actions/$defs/via/$defs/with_edge_override", [..._#defs."/$defs/segment_actions/$defs/via/$defs/with_edge_override"]])
		network_function_groups?: [...string]
	})

	_#defs: "/$defs/segment_actions/$defs/via/$defs/with_edge_override": close({
		edge_sets?: [...[...string]]
		use_edge_location?: string
	})

	_#defs: "/$defs/segment_actions/$defs/when_sent_to": close({
		segments?: [...string]
	})
}
