package res

#google_app_engine_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_firewall_rule")
	close({
		// The action to take if this rule matches. Possible values:
		// ["UNSPECIFIED_ACTION", "ALLOW", "DENY"]
		action!: string

		// An optional string description of this rule.
		description?: string
		id?:          string

		// A positive integer that defines the order of rule evaluation.
		// Rules with the lowest priority are evaluated first.
		//
		// A default rule at priority Int32.MaxValue matches all IPv4 and
		// IPv6 traffic when no previous rule matches. Only the action of
		// this rule can be modified by the user.
		priority?: number
		project?:  string
		timeouts?: #timeouts

		// IP address or range, defined using CIDR notation, of requests
		// that this rule applies to.
		source_range!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
