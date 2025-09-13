package res

#google_network_security_gateway_security_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_gateway_security_policy_rule")
	close({
		// CEL expression for matching on L7/application level criteria.
		application_matcher?: string

		// Profile which tells what the primitive action should be.
		// Possible values are: * ALLOW * DENY. Possible values:
		// ["BASIC_PROFILE_UNSPECIFIED", "ALLOW", "DENY"]
		basic_profile!: string

		// The timestamp when the resource was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// Free-text description of the resource.
		description?: string

		// Whether the rule is enforced.
		enabled!: bool

		// The name of the gatewat security policy this rule belongs to.
		gateway_security_policy!: string
		id?:                      string

		// The location of the gateway security policy.
		location!: string

		// Name of the resource. ame is the full resource name so
		// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
		// rule should match the pattern: (^a-z?$).
		name!: string

		// Priority of the rule. Lower number corresponds to higher
		// precedence.
		priority!: number
		timeouts?: #timeouts

		// Server-defined URL of this resource.
		self_link?: string
		project?:   string

		// CEL expression for matching on session criteria.
		session_matcher!: string

		// Flag to enable TLS inspection of traffic matching on. Can only
		// be true if the
		// parent GatewaySecurityPolicy references a TLSInspectionConfig.
		tls_inspection_enabled?: bool

		// The timestamp when the resource was updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
