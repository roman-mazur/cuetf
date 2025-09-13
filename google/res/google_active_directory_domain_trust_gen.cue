package res

#google_active_directory_domain_trust: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_active_directory_domain_trust")
	close({
		// The fully qualified domain name. e.g.
		// mydomain.myorganization.com, with the restrictions
		// of
		// https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
		domain!: string

		// Whether the trusted side has forest/domain wide access or
		// selective access to an approved set of resources.
		selective_authentication?: bool
		id?:                       string

		// The target DNS server IP addresses which can resolve the remote
		// domain involved in the trust.
		target_dns_ip_addresses!: [...string]
		project?: string

		// The fully qualified target domain name which will be in trust
		// with the current domain.
		target_domain_name!: string

		// The trust direction, which decides if the current domain is
		// trusted, trusting, or both. Possible values: ["INBOUND",
		// "OUTBOUND", "BIDIRECTIONAL"]
		trust_direction!: string

		// The trust secret used for the handshake with the target domain.
		// This will not be stored.
		trust_handshake_secret!: string
		timeouts?:               #timeouts

		// The type of trust represented by the trust resource. Possible
		// values: ["FOREST", "EXTERNAL"]
		trust_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
