package data

cloudflare_email_security_block_senders: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_block_senders")
	close({
		// Identifier.
		account_id!: string

		// The sorting direction.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to sort by.
		// Available values: "pattern", "created_at".
		order?: string

		// Filter by pattern value.
		pattern?: string

		// Filter by pattern type.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			comments?: string

			// Blocked sender pattern identifier.
			id?:         string
			created_at?: string

			// The pattern value to match. The format depends on `pattern_type`: a valid
			// email address for EMAIL (e.g. `user@example.com`), a valid domain name for
			// DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block
			// for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or
			// `2606:4700:4700::/48`); the API rejects private or unique-local, loopback,
			// link-local, unspecified, and IPv4 broadcast addresses, including their
			// IPv4-mapped IPv6 equivalents.
			pattern?: string

			// Type of pattern matching.
			// - EMAIL: matches a full email address (e.g. `user@example.com`)
			// - DOMAIN: matches a domain name (e.g. `example.com`)
			// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or
			// `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or
			// `2606:4700:4700::/48`). The API rejects private or unique-local, loopback,
			// link-local, unspecified, and IPv4 broadcast addresses, including their
			// IPv4-mapped IPv6 equivalents.
			// - UNKNOWN: deprecated; you cannot use this when creating or updating
			// policies, but it may appear on existing entries.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			is_regex?:     bool
			modified_at?:  string
		}), [...close({
			comments?: string

			// Blocked sender pattern identifier.
			id?:         string
			created_at?: string

			// The pattern value to match. The format depends on `pattern_type`: a valid
			// email address for EMAIL (e.g. `user@example.com`), a valid domain name for
			// DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block
			// for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or
			// `2606:4700:4700::/48`); the API rejects private or unique-local, loopback,
			// link-local, unspecified, and IPv4 broadcast addresses, including their
			// IPv4-mapped IPv6 equivalents.
			pattern?: string

			// Type of pattern matching.
			// - EMAIL: matches a full email address (e.g. `user@example.com`)
			// - DOMAIN: matches a domain name (e.g. `example.com`)
			// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or
			// `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or
			// `2606:4700:4700::/48`). The API rejects private or unique-local, loopback,
			// link-local, unspecified, and IPv4 broadcast addresses, including their
			// IPv4-mapped IPv6 equivalents.
			// - UNKNOWN: deprecated; you cannot use this when creating or updating
			// policies, but it may appear on existing entries.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			is_regex?:     bool
			modified_at?:  string
		})]])

		// Search term for filtering records. Behavior may change.
		search?: string
	})
}
