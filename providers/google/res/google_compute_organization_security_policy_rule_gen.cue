package res

import "list"

#google_compute_organization_security_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy_rule")
	close({
		header_action?: matchN(1, [#header_action, list.MaxItems(1) & [...#header_action]])
		match!: matchN(1, [#match, list.MaxItems(1) & [_, ...] & [...#match]])
		preconfigured_waf_config?: matchN(1, [#preconfigured_waf_config, list.MaxItems(1) & [...#preconfigured_waf_config]])
		redirect_options?: matchN(1, [#redirect_options, list.MaxItems(1) & [...#redirect_options]])
		timeouts?: #timeouts

		// The Action to perform when the client connection triggers the
		// rule. Valid actions are:
		// "allow": allow access to target.
		// "deny": deny access to target.
		// "goto_next": forward the request to the next hierarchical
		// policy for evaluation.
		// "redirect": redirect to a different target. Parameters for this
		// action can be configured via redirectOptions. Only
		// EXTERNAL_302 redirect type is supported for organization
		// security policies.
		action!: string

		// A description of the rule.
		description?: string
		id?:          string

		// The ID of the OrganizationSecurityPolicy this rule applies to.
		policy_id!: string

		// If set to true, the specified action is not enforced.
		preview?: bool

		// An integer indicating the priority of a rule in the list. The
		// priority must be a value
		// between 0 and 2147483647. Rules are evaluated from highest to
		// lowest priority where 0 is the
		// highest priority and 2147483647 is the lowest prority.
		priority!: number
	})

	#header_action: close({
		request_headers_to_adds?: matchN(1, [_#defs."/$defs/header_action/$defs/request_headers_to_adds", [..._#defs."/$defs/header_action/$defs/request_headers_to_adds"]])
	})

	#match: close({
		config?: matchN(1, [_#defs."/$defs/match/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/config"]])
		expr?: matchN(1, [_#defs."/$defs/match/$defs/expr", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/expr"]])

		// A description of the rule.
		description?: string

		// Preconfigured versioned expression. For organization security
		// policy rules,
		// the only supported type is "SRC_IPS_V1".
		// **NOTE** : 'FIREWALL' type is deprecated. Please use
		// 'google_compute_firewall_policy_rule' resource instead.
		versioned_expr?: string
	})

	#preconfigured_waf_config: close({
		exclusion?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion"]])
	})

	#redirect_options: close({
		// Target for the redirect action. This is required if the type is
		// EXTERNAL_302.
		target?: string

		// Type of the redirect action. For organization security
		// policies, only EXTERNAL_302 is supported.
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/header_action/$defs/request_headers_to_adds": close({
		// The name of the header to set.
		header_name?: string

		// The value to set the named header to.
		header_value?: string
	})

	_#defs: "/$defs/match/$defs/config": close({
		// Source IP address range in CIDR format. Required for
		// INGRESS rules.
		src_ip_ranges?: [...string]
	})

	_#defs: "/$defs/match/$defs/expr": close({
		// Textual representation of an expression in Common Expression
		// Language syntax. The application context of the containing
		// message determines which well-known feature set of CEL is
		// supported.
		expression!: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion": close({
		request_cookie?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie"]])
		request_header?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header"]])
		request_query_param?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param"]])
		request_uri?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri"]])

		// A list of target rule IDs under the WAF rule set to apply the
		// preconfigured WAF exclusion.
		// If omitted, it refers to all the rule IDs under the WAF rule
		// set.
		target_rule_ids?: [...string]

		// Target WAF rule set to apply the preconfigured WAF exclusion.
		target_rule_set!: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})
}
