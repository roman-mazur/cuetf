package res

import "list"

#azurerm_frontdoor_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_frontdoor_firewall_policy")
	close({
		custom_block_response_body?:        string
		custom_block_response_status_code?: number
		enabled?:                           bool
		frontend_endpoint_ids?: [...string]
		custom_rule?: matchN(1, [#custom_rule, list.MaxItems(100) & [...#custom_rule]])
		id?:                  string
		location?:            string
		mode?:                string
		name!:                string
		redirect_url?:        string
		resource_group_name!: string
		managed_rule?: matchN(1, [#managed_rule, list.MaxItems(100) & [...#managed_rule]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#custom_rule: close({
		match_condition?: matchN(1, [_#defs."/$defs/custom_rule/$defs/match_condition", list.MaxItems(10) & [..._#defs."/$defs/custom_rule/$defs/match_condition"]])
		action!:                         string
		enabled?:                        bool
		name!:                           string
		priority?:                       number
		rate_limit_duration_in_minutes?: number
		rate_limit_threshold?:           number
		type!:                           string
	})

	#managed_rule: close({
		exclusion?: matchN(1, [_#defs."/$defs/managed_rule/$defs/exclusion", list.MaxItems(100) & [..._#defs."/$defs/managed_rule/$defs/exclusion"]])
		override?: matchN(1, [_#defs."/$defs/managed_rule/$defs/override", list.MaxItems(100) & [..._#defs."/$defs/managed_rule/$defs/override"]])
		type!:    string
		version!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/custom_rule/$defs/match_condition": close({
		match_values!: [...string]
		match_variable!:     string
		negation_condition?: bool
		operator!:           string
		selector?:           string
		transforms?: [...string]
	})

	_#defs: "/$defs/managed_rule/$defs/exclusion": close({
		match_variable!: string
		operator!:       string
		selector!:       string
	})

	_#defs: "/$defs/managed_rule/$defs/override": close({
		exclusion?: matchN(1, [_#defs."/$defs/managed_rule/$defs/override/$defs/exclusion", list.MaxItems(100) & [..._#defs."/$defs/managed_rule/$defs/override/$defs/exclusion"]])
		rule?: matchN(1, [_#defs."/$defs/managed_rule/$defs/override/$defs/rule", list.MaxItems(1000) & [..._#defs."/$defs/managed_rule/$defs/override/$defs/rule"]])
		rule_group_name!: string
	})

	_#defs: "/$defs/managed_rule/$defs/override/$defs/exclusion": close({
		match_variable!: string
		operator!:       string
		selector!:       string
	})

	_#defs: "/$defs/managed_rule/$defs/override/$defs/rule": close({
		exclusion?: matchN(1, [_#defs."/$defs/managed_rule/$defs/override/$defs/rule/$defs/exclusion", list.MaxItems(100) & [..._#defs."/$defs/managed_rule/$defs/override/$defs/rule/$defs/exclusion"]])
		action!:  string
		enabled?: bool
		rule_id!: string
	})

	_#defs: "/$defs/managed_rule/$defs/override/$defs/rule/$defs/exclusion": close({
		match_variable!: string
		operator!:       string
		selector!:       string
	})
}
