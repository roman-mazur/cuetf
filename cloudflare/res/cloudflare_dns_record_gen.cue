package res

#cloudflare_dns_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_record")
	close({
		// Comments or notes about the DNS record. This field has no
		// effect on DNS responses.
		comment?: string

		// When the record comment was last modified. Omitted if there is
		// no comment.
		comment_modified_on?: string

		// A valid IPv4 address.
		content?: string

		// When the record was created.
		created_on?: string

		// Components of a CAA record.
		data?: close({
			// Algorithm.
			algorithm?: number

			// Altitude of location in meters.
			altitude?: number

			// Certificate.
			certificate?: string

			// Digest.
			digest?: string

			// Digest Type.
			digest_type?: number

			// Fingerprint.
			fingerprint?: string

			// Flags for the CAA record.
			flags?: _

			// Key Tag.
			key_tag?: number

			// Degrees of latitude.
			lat_degrees?: number

			// Latitude direction.
			// Available values: "N", "S".
			lat_direction?: string

			// Minutes of latitude.
			lat_minutes?: number

			// Seconds of latitude.
			lat_seconds?: number

			// Degrees of longitude.
			long_degrees?: number

			// Longitude direction.
			// Available values: "E", "W".
			long_direction?: string

			// Minutes of longitude.
			long_minutes?: number

			// Seconds of longitude.
			long_seconds?: number

			// Matching Type.
			matching_type?: number

			// Order.
			order?: number

			// The port of the service.
			port?: number

			// Horizontal precision of location.
			precision_horz?: number

			// Vertical precision of location.
			precision_vert?: number

			// Preference.
			preference?: number

			// Priority.
			priority?: number

			// Protocol.
			protocol?: number

			// Public Key.
			public_key?: string

			// Regex.
			regex?: string

			// Replacement.
			replacement?: string

			// Selector.
			selector?: number

			// Service.
			service?: string

			// Size of location in meters.
			size?: number

			// Name of the property controlled by this record (e.g.: issue,
			// issuewild, iodef).
			tag?: string

			// Target.
			target?: string

			// Type.
			type?: number

			// Usage.
			usage?: number

			// Value of the record. This field's semantics depend on the
			// chosen tag.
			value?: string

			// The record weight.
			weight?: number
		})

		// Identifier.
		id?: string

		// Extra Cloudflare-specific information about the record.
		meta?: string

		// Settings for the DNS record.
		settings?: close({
			// If enabled, causes the CNAME record to be resolved externally
			// and the resulting address records (e.g., A and AAAA) to be
			// returned instead of the CNAME record itself. This setting is
			// unavailable for proxied records, since they are always
			// flattened.
			flatten_cname?: bool

			// When enabled, only A records will be generated, and AAAA
			// records will not be created. This setting is intended for
			// exceptional cases. Note that this option only applies to
			// proxied records and it has no effect on whether Cloudflare
			// communicates with the origin using IPv4 or IPv6.
			ipv4_only?: bool

			// When enabled, only AAAA records will be generated, and A
			// records will not be created. This setting is intended for
			// exceptional cases. Note that this option only applies to
			// proxied records and it has no effect on whether Cloudflare
			// communicates with the origin using IPv4 or IPv6.
			ipv6_only?: bool
		})

		// When the record was last modified.
		modified_on?: string

		// DNS record name (or @ for the zone apex) in Punycode.
		name!: string

		// Required for MX, SRV and URI records; unused by other record
		// types. Records with lower priorities are preferred.
		priority?: number

		// Whether the record can be proxied by Cloudflare or not.
		proxiable?: bool

		// Whether the record is receiving the performance and security
		// benefits of Cloudflare.
		proxied?: bool

		// Custom tags for the DNS record. This field has no effect on DNS
		// responses.
		tags?: [...string]

		// When the record tags were last modified. Omitted if there are
		// no tags.
		tags_modified_on?: string

		// Time To Live (TTL) of the DNS record in seconds. Setting to 1
		// means 'automatic'. Value must be between 60 and 86400, with
		// the minimum reduced to 30 for Enterprise zones.
		ttl!: number

		// Record type.
		// Available values: "A", "AAAA", "CNAME", "MX", "NS",
		// "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS",
		// "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB",
		// "TLSA", "URI".
		type!: string

		// Identifier.
		zone_id!: string
	})
}
