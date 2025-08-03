package data

import "list"

#aws_networkmanager_core_network_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_core_network_policy_document")
	close({
		attachment_policies?: matchN(1, [#attachment_policies, [...#attachment_policies]])
		id?:      string
		json?:    string
		version?: string
		core_network_configuration?: matchN(1, [#core_network_configuration, [_, ...] & [...#core_network_configuration]])
		network_function_groups?: matchN(1, [#network_function_groups, [...#network_function_groups]])
		segment_actions?: matchN(1, [#segment_actions, [...#segment_actions]])
		segments?: matchN(1, [#segments, [_, ...] & [...#segments]])
	})

	#attachment_policies: close({
		condition_logic?: string
		description?:     string
		rule_number!:     number
		action?: matchN(1, [_#defs."/$defs/attachment_policies/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/attachment_policies/$defs/action"]])
		conditions?: matchN(1, [_#defs."/$defs/attachment_policies/$defs/conditions", [_, ...] & [..._#defs."/$defs/attachment_policies/$defs/conditions"]])
	})

	#core_network_configuration: close({
		asn_ranges!: [...string]
		edge_locations?: matchN(1, [_#defs."/$defs/core_network_configuration/$defs/edge_locations", [_, ...] & [..._#defs."/$defs/core_network_configuration/$defs/edge_locations"]])
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

	#segment_actions: close({
		action!:      string
		description?: string
		via?: matchN(1, [_#defs."/$defs/segment_actions/$defs/via", list.MaxItems(1) & [..._#defs."/$defs/segment_actions/$defs/via"]])
		when_sent_to?: matchN(1, [_#defs."/$defs/segment_actions/$defs/when_sent_to", list.MaxItems(1) & [..._#defs."/$defs/segment_actions/$defs/when_sent_to"]])
		destination_cidr_blocks?: [...string]
		destinations?: [...string]
		mode?:    string
		segment!: string
		share_with?: [...string]
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

	_#defs: "/$defs/core_network_configuration/$defs/edge_locations": close({
		asn?: string
		inside_cidr_blocks?: [...string]
		location!: string
	})

	_#defs: "/$defs/segment_actions/$defs/via": close({
		network_function_groups?: [...string]
		with_edge_override?: matchN(1, [_#defs."/$defs/segment_actions/$defs/via/$defs/with_edge_override", [..._#defs."/$defs/segment_actions/$defs/via/$defs/with_edge_override"]])
	})

	_#defs: "/$defs/segment_actions/$defs/via/$defs/with_edge_override": close({
		edge_sets?: [...[...string]]
		use_edge_location?: string
	})

	_#defs: "/$defs/segment_actions/$defs/when_sent_to": close({
		segments?: [...string]
	})
}
