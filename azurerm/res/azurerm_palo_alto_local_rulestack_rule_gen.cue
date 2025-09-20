package res

import "list"

#azurerm_palo_alto_local_rulestack_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_local_rulestack_rule")
	close({
		action!: string
		applications!: [...string]
		audit_comment?:             string
		decryption_rule_type?:      string
		description?:               string
		enabled?:                   bool
		id?:                        string
		inspection_certificate_id?: string
		logging_enabled?:           bool
		name!:                      string
		negate_destination?:        bool
		category?: matchN(1, [#category, list.MaxItems(1) & [...#category]])
		negate_source?: bool
		priority!:      number
		protocol?:      string
		protocol_ports?: [...string]
		rulestack_id!: string
		tags?: [string]: string
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		timeouts?: #timeouts
	})

	#category: close({
		custom_urls!: [...string]
		feeds?: [...string]
	})

	#destination: close({
		cidrs?: [...string]
		countries?: [...string]
		feeds?: [...string]
		local_rulestack_fqdn_list_ids?: [...string]
		local_rulestack_prefix_list_ids?: [...string]
	})

	#source: close({
		cidrs?: [...string]
		countries?: [...string]
		feeds?: [...string]
		local_rulestack_prefix_list_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
