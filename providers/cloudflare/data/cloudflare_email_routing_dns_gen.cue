package data

cloudflare_email_routing_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_routing_dns")
	close({
		dns?: matchN(1, [close({
			// DNS record content.
			content?: string

			// DNS record name (or @ for the zone apex).
			name?: string

			// Required for MX, SRV and URI records. Unused by other record types. Records
			// with lower priorities are preferred.
			priority?: number

			// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
			ttl?: number

			// DNS record type.
			// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX",
			// "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA",
			// "URI".
			type?: string
		}), [...close({
			// DNS record content.
			content?: string

			// DNS record name (or @ for the zone apex).
			name?: string

			// Required for MX, SRV and URI records. Unused by other record types. Records
			// with lower priorities are preferred.
			priority?: number

			// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
			ttl?: number

			// DNS record type.
			// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX",
			// "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA",
			// "URI".
			type?: string
		})]])

		// Identifier.
		id?: string

		// Deprecated. When supplied, the response shape differs from the documented
		// default and is not modeled in generated SDKs. Do not rely on this parameter.
		subdomain?: string

		// Identifier.
		zone_id!: string
	})
}
