package res

import "list"

#google_compute_organization_security_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy_rule")
	close({
		match!: matchN(1, [#match, list.MaxItems(1) & [_, ...] & [...#match]])
		timeouts?: #timeouts

		// The Action to perform when the client connection triggers the
		// rule. Can currently be either
		// "allow", "deny" or "goto_next".
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

	#match: close({
		config!: matchN(1, [_#defs."/$defs/match/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/match/$defs/config"]])

		// A description of the rule.
		description?: string

		// Preconfigured versioned expression. For organization security
		// policy rules,
		// the only supported type is "SRC_IPS_V1".
		// **NOTE** : 'FIREWALL' type is deprecated. Please use
		// 'google_compute_firewall_policy_rule' resource instead.
		versioned_expr?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/match/$defs/config": close({
		// Source IP address range in CIDR format. Required for
		// INGRESS rules.
		src_ip_ranges?: [...string]
	})
}
