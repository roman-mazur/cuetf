package data

import "list"

#aws_networkmanager_core_network_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_core_network_policy_document")
	id?:      string
	json?:    string
	version?: string
	attachment_policies?: #attachment_policies | [...#attachment_policies]
	core_network_configuration?: #core_network_configuration | [_, ...] & [...#core_network_configuration]
	segment_actions?: #segment_actions | [...#segment_actions]
	segments?: #segments | [_, ...] & [...#segments]

	#attachment_policies: {
		condition_logic?: string
		description?:     string
		rule_number!:     number
		action?: #attachment_policies.#action | list.MaxItems(1) & [_, ...] & [...#attachment_policies.#action]
		conditions?: #attachment_policies.#conditions | [_, ...] & [...#attachment_policies.#conditions]

		#action: {
			association_method!: string
			require_acceptance?: bool
			segment?:            string
			tag_value_of_key?:   string
		}

		#conditions: {
			key?:      string
			operator?: string
			type!:     string
			value?:    string
		}
	}

	#core_network_configuration: {
		asn_ranges!: [...string]
		inside_cidr_blocks?: [...string]
		vpn_ecmp_support?: bool
		edge_locations?: #core_network_configuration.#edge_locations | list.MaxItems(17) & [_, ...] & [...#core_network_configuration.#edge_locations]

		#edge_locations: {
			asn?: string
			inside_cidr_blocks?: [...string]
			location!: string
		}
	}

	#segment_actions: {
		action!:      string
		description?: string
		destination_cidr_blocks?: [...string]
		destinations?: [...string]
		mode?:    string
		segment!: string
		share_with?: [...string]
		share_with_except?: [...string]
	}

	#segments: {
		allow_filter?: [...string]
		deny_filter?: [...string]
		description?: string
		edge_locations?: [...string]
		isolate_attachments?:           bool
		name!:                          string
		require_attachment_acceptance?: bool
	}
}
