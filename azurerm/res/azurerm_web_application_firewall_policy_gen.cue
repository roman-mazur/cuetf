package res

import "list"

#azurerm_web_application_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_application_firewall_policy")
	close({
		http_listener_ids?: [...string]
		id?:       string
		location!: string
		name!:     string
		path_based_rule_ids?: [...string]
		resource_group_name!: string
		custom_rules?: matchN(1, [#custom_rules, [...#custom_rules]])
		tags?: [string]: string
		managed_rules!: matchN(1, [#managed_rules, list.MaxItems(1) & [_, ...] & [...#managed_rules]])
		policy_settings?: matchN(1, [#policy_settings, list.MaxItems(1) & [...#policy_settings]])
		timeouts?: #timeouts
	})

	#custom_rules: close({
		match_conditions!: matchN(1, [_#defs."/$defs/custom_rules/$defs/match_conditions", [_, ...] & [..._#defs."/$defs/custom_rules/$defs/match_conditions"]])
		action!:               string
		enabled?:              bool
		group_rate_limit_by?:  string
		name?:                 string
		priority!:             number
		rate_limit_duration?:  string
		rate_limit_threshold?: number
		rule_type!:            string
	})

	#managed_rules: close({
		exclusion?: matchN(1, [_#defs."/$defs/managed_rules/$defs/exclusion", [..._#defs."/$defs/managed_rules/$defs/exclusion"]])
		managed_rule_set!: matchN(1, [_#defs."/$defs/managed_rules/$defs/managed_rule_set", [_, ...] & [..._#defs."/$defs/managed_rules/$defs/managed_rule_set"]])
	})

	#policy_settings: close({
		log_scrubbing?: matchN(1, [_#defs."/$defs/policy_settings/$defs/log_scrubbing", list.MaxItems(1) & [..._#defs."/$defs/policy_settings/$defs/log_scrubbing"]])
		enabled?:                                   bool
		file_upload_enforcement?:                   bool
		file_upload_limit_in_mb?:                   number
		js_challenge_cookie_expiration_in_minutes?: number
		max_request_body_size_in_kb?:               number
		mode?:                                      string
		request_body_check?:                        bool
		request_body_enforcement?:                  bool
		request_body_inspect_limit_in_kb?:          number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/custom_rules/$defs/match_conditions": close({
		match_variables!: matchN(1, [_#defs."/$defs/custom_rules/$defs/match_conditions/$defs/match_variables", [_, ...] & [..._#defs."/$defs/custom_rules/$defs/match_conditions/$defs/match_variables"]])
		match_values?: [...string]
		negation_condition?: bool
		operator!:           string
		transforms?: [...string]
	})

	_#defs: "/$defs/custom_rules/$defs/match_conditions/$defs/match_variables": close({
		selector?:      string
		variable_name!: string
	})

	_#defs: "/$defs/managed_rules/$defs/exclusion": close({
		excluded_rule_set?: matchN(1, [_#defs."/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set", list.MaxItems(1) & [..._#defs."/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set"]])
		match_variable!:          string
		selector!:                string
		selector_match_operator!: string
	})

	_#defs: "/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set": close({
		rule_group?: matchN(1, [_#defs."/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set/$defs/rule_group", [..._#defs."/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set/$defs/rule_group"]])
		type?:    string
		version?: string
	})

	_#defs: "/$defs/managed_rules/$defs/exclusion/$defs/excluded_rule_set/$defs/rule_group": close({
		excluded_rules?: [...string]
		rule_group_name!: string
	})

	_#defs: "/$defs/managed_rules/$defs/managed_rule_set": close({
		rule_group_override?: matchN(1, [_#defs."/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override", [..._#defs."/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override"]])
		type?:    string
		version!: string
	})

	_#defs: "/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override": close({
		rule?: matchN(1, [_#defs."/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override/$defs/rule", [..._#defs."/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override/$defs/rule"]])
		rule_group_name!: string
	})

	_#defs: "/$defs/managed_rules/$defs/managed_rule_set/$defs/rule_group_override/$defs/rule": close({
		action?:  string
		enabled?: bool
		id!:      string
	})

	_#defs: "/$defs/policy_settings/$defs/log_scrubbing": close({
		rule?: matchN(1, [_#defs."/$defs/policy_settings/$defs/log_scrubbing/$defs/rule", [..._#defs."/$defs/policy_settings/$defs/log_scrubbing/$defs/rule"]])
		enabled?: bool
	})

	_#defs: "/$defs/policy_settings/$defs/log_scrubbing/$defs/rule": close({
		enabled?:        bool
		match_variable!: string

		// When matchVariable is a collection, operator used to specify
		// which elements in the collection this rule applies to.
		selector?:                string
		selector_match_operator?: string
	})
}
