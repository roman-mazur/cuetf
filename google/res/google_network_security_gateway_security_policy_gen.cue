package res

#google_network_security_gateway_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_gateway_security_policy")
	close({
		// The timestamp when the resource was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// The location of the gateway security policy.
		// The default value is 'global'.
		location?: string
		id?:       string

		// Name of the resource. Name is of the form
		// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
		// gatewaySecurityPolicy should match the pattern:(^a-z?$).
		name!: string

		// Server-defined URL of this resource.
		self_link?: string
		project?:   string
		timeouts?:  #timeouts

		// Name of a TlsInspectionPolicy resource that defines how TLS
		// inspection is performed for any rule that enables it.
		tls_inspection_policy?: string

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
